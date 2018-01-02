package com.zomu.t.herbu.frontend.api.v100.server.control;

import com.zomu.t.herbu.frontend.api.v100.server.bean.SummaryProgram;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class StudyApiDelegateImpl implements StudyApiDelegate {

    @Override
    public ResponseEntity<List<SummaryProgram>> getNewEducationPrograms() {
        List<SummaryProgram> result = new ArrayList<>();

        // 1
        SummaryProgram row1 = new SummaryProgram();
        row1.setProgramId("1");
        row1.setProgramName("row1");
        result.add(row1);

        // 2
        SummaryProgram row2 = new SummaryProgram();
        row2.setProgramId("2");
        row2.setProgramName("row2");
        result.add(row2);

        // 3
        SummaryProgram row3 = new SummaryProgram();
        row3.setProgramId("3");
        row3.setProgramName("row3");
        result.add(row3);

        return new ResponseEntity<List<SummaryProgram>>(result, HttpStatus.OK);
    }
}
