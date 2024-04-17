package kr.co.dong.DAO;

import java.util.List;

import kr.co.dong.DTO.NoticeDTO;

public interface NoticeDAO {
	
	public List<NoticeDTO> list();

	//�������� �� �б�
	public NoticeDTO detail(int notice_no);
	
	//�������� ��ȸ��
	public int updateReadCnt(int notice_no);
	
	//�������� �߰�
	public int insert(NoticeDTO noticedto);
	
	//�������� ����
	public int update(NoticeDTO noticedto);
	
	//�������� ����
	public int delete(int notice_no);

	//�� �Ѱ���
	public int count();
	
	//��� + ����¡ + �˻�
	public List listPage(int displayPost, int postNum);
	

}
