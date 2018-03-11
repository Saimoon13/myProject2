package service;

import domain.Lecture;
import domain.Payment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import persistence.LectureDao;

import java.util.List;

@Service
public class LectureServiceImple implements LectureService {

    @Autowired private LectureDao lectureDao;

    @Override
    public int insertPayment(Payment payment) {
        return lectureDao.insertPayment(payment);
    }

    @Override
    public int selectLectureDetail(int lid) {
        return lectureDao.selectLectureDetail(lid);
    }

    @Override
    public List<Payment> selectPaymentById(String userid) {
        return lectureDao.selectPaymentById(userid);
    }

    @Override
    public List<Lecture> selectLectureBylId(String lid) {
        return lectureDao.selectLectureBylId(lid);
    }

}
