package kr.co.dong.service;

import kr.co.dong.DTO.UserDTO;

public interface UserService {
	
	// �α���
	public UserDTO login(UserDTO ud);
	
	// ���԰�� �˻�
	public UserDTO searchUser(UserDTO ud);
	
	// �̸��� �ߺ�üũ
	public UserDTO emailCheck(UserDTO ud);
	
	// �г��� �ߺ�üũ
	public UserDTO nickCheck(UserDTO ud);
	
	// �ڵ��� ��ȣ �ߺ�üũ
	public UserDTO phoneCheck(UserDTO ud);
	
	// ȸ������
	public int signup(UserDTO ud);
	


}
