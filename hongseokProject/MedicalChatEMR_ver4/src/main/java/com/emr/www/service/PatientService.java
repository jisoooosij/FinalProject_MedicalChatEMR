package com.emr.www.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.emr.www.dto.PatientDTO;
import com.emr.www.entity.Patient;
import com.emr.www.repository.PatientRepository;

@Service
public class PatientService {

	@Autowired
	private PatientRepository patientRepository;

	private static final Logger log = LoggerFactory.getLogger(PatientService.class);

	// 주민등록번호 중복 여부 확인 메서드
	public boolean isSecurityNumExists(String securityNum) {
		return patientRepository.findBySecurityNum(securityNum) != null;
	}

	@Transactional
	public Patient registerPatient(PatientDTO patientDTO) {
		log.info("DTO로 환자 등록 프로세스 시작 : {}\n", patientDTO);

		// 이름 중복 체크 및 수정
		String originalName = patientDTO.getName();
		String uniqueName = getUniqueName(originalName);
		patientDTO.setName(uniqueName);

		// DTO를 엔티티로 변환
		Patient patient = new Patient();
		BeanUtils.copyProperties(patientDTO, patient);

		// ID를 null로 설정하여 자동 생성되도록 함
//        patient.setId(null);

		log.info("PatientDTO를 Patient 엔티티로 변환 : {}\n", patient);

		// 환자 정보 저장
		Patient savedPatient = patientRepository.save(patient);
		log.info("환자가 성공적으로 저장되었습니다. 생성된 ID : {}\n", savedPatient.getId_no());
		return savedPatient;
	}

	public PatientDTO getPatientBySecurityNum(String securityNum) {
		Patient patient = patientRepository.findBySecurityNum(securityNum);
		if (patient != null) {
			PatientDTO patientDTO = new PatientDTO();
			BeanUtils.copyProperties(patient, patientDTO);
			return patientDTO;
		}
		return null;
	}

//	private String getUniqueNameTest(String name) {
//		String newName = name;
//		String suffix = "";
//		int count = 1;
//
//		// 먼저 이름이 정확히 같은 환자가 있는지 확인하고, 있다면 (1)을 붙임
//		if (patientRepository.findByName(name) != null) {
//			suffix = "(1)";
//			newName = name + suffix;
//		}
//
//		// 동일한 이름을 가진 기존 환자들에 대해 (1), (2), (3) 등의 방법으로 이름 생성
//		while (patientRepository.findByName(newName) != null) {
//			count++;
//			suffix = "(" + count + ")";
//			newName = name + suffix;
//		}
//
//		return newName;
//	}
	
    private String getUniqueName(String name) {
        String newName = name;
        int count = 1;

        // 동일한 이름을 가진 기존 환자들에 대해 (1), (2), (3) 등의 방법으로 이름 생성
        while (patientRepository.findByName(newName) != null) {
            if (count == 1) {
                // 처음 발견된 이름의 경우 기존 이름을 "(1)"로 업데이트
                Patient existingPatient = patientRepository.findByName(name);
                existingPatient.setName(name + "(1)");
                patientRepository.save(existingPatient);
            }
            count++;
            newName = name + "(" + count + ")";
        }

        return newName;
    }

}