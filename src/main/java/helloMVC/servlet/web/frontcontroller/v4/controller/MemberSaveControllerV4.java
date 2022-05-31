package helloMVC.servlet.web.frontcontroller.v4.controller;

import helloMVC.servlet.domain.member.Member;
import helloMVC.servlet.domain.member.MemberRepository;
import helloMVC.servlet.web.frontcontroller.ModelView;

import java.util.Map;

import static java.lang.Integer.parseInt;

public class MemberSaveControllerV4 implements ControllerV4{

    private MemberRepository memberRepository = MemberRepository.getInstance();

    @Override
    public String process(Map<String, String> paramMap, Map<String, Object> model) {
        String username = paramMap.get("username");
        int age = parseInt(paramMap.get("age"));

        Member member = new Member(username, age);
        memberRepository.save(member);

        model.put("member", member);
        return "save-result";

    }

}
