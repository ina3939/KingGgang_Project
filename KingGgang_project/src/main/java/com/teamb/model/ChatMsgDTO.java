package com.teamb.model;

import java.util.Date;

import com.google.gson.Gson;

public class ChatMsgDTO {
	
	private int msgId;
	private int comm_memberNum;
	private String comm_nickname;
	private int chatroom_id;
	private int msgSender;
	private int msgReceiver;
	private String msgContent;
	private Date msgSendTime;
	private Date msgReadTime;
	private int unReadCount;
	
	

	public int getMsgId() {
		return msgId;
	}

	public void setMsgId(int msgId) {
		this.msgId = msgId;
	}

	public int getComm_memberNum() {
		return comm_memberNum;
	}

	public void setComm_memberNum(int comm_memberNum) {
		this.comm_memberNum = comm_memberNum;
	}

	public String getComm_nickname() {
		return comm_nickname;
	}

	public void setComm_nickname(String comm_nickname) {
		this.comm_nickname = comm_nickname;
	}

	public int getChatroom_id() {
		return chatroom_id;
	}

	public void setChatroom_id(int chatroom_id) {
		this.chatroom_id = chatroom_id;
	}

	public int getMsgSender() {
		return msgSender;
	}

	public void setMsgSender(int msgSender) {
		this.msgSender = msgSender;
	}

	public int getMsgReceiver() {
		return msgReceiver;
	}

	public void setMsgReceiver(int msgReceiver) {
		this.msgReceiver = msgReceiver;
	}

	public String getMsgContent() {
		return msgContent;
	}

	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}

	public Date getMsgSendTime() {
		return msgSendTime;
	}

	public void setMsgSendTime(Date msgSendTime) {
		this.msgSendTime = msgSendTime;
	}

	public Date getMsgReadTime() {
		return msgReadTime;
	}

	public void setMsgReadTime(Date msgReadTime) {
		this.msgReadTime = msgReadTime;
	}

	public int getUnReadCount() {
		return unReadCount;
	}

	public void setUnReadCount(int unReadCount) {
		this.unReadCount = unReadCount;
	}

	public static ChatMsgDTO convertMessage(String source) {
		ChatMsgDTO message = new ChatMsgDTO();
		Gson gson = new Gson();
		message = gson.fromJson(source,  ChatMsgDTO.class);
		return message;
	}

	@Override
	public String toString() {
		return "ChatMsgDTO [msgId=" + msgId + ", comm_memberNum=" + comm_memberNum + ", comm_nickname=" + comm_nickname
				+ ", chatroom_id=" + chatroom_id + ", msgSender=" + msgSender + ", msgReceiver=" + msgReceiver
				+ ", msgContent=" + msgContent + ", msgSendTime=" + msgSendTime + ", msgReadTime=" + msgReadTime
				+ ", unReadCount=" + unReadCount + "]";
	}

	
	
	

}