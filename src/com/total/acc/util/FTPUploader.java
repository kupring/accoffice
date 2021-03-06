/**
 * 
 */
package com.total.acc.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;

/**
 * @author 006223
 * 
 */
public class FTPUploader {
	public FTPClient ftp = null;

	public FTPUploader(String host, String user, String pwd) throws Exception {
		ftp = new FTPClient();
//		ftp.addProtocolCommandListener(new PrintCommandListener(new PrintWriter(System.out)));
		int reply;
		ftp.connect(host);
		reply = ftp.getReplyCode();
		if (!FTPReply.isPositiveCompletion(reply)) {
			ftp.disconnect();
			throw new Exception("Exception in connecting to FTP Server");
		}
		ftp.login(user, pwd);
		ftp.setFileType(FTP.BINARY_FILE_TYPE);
		ftp.enterLocalPassiveMode();
	}
	
	public boolean checkDirectoryExists(String dirPath) throws IOException {
		this.ftp.changeWorkingDirectory(dirPath);
	    int returnCode = this.ftp.getReplyCode();
	    if (returnCode == 550) {
	        return false;
	    }
	    return true;
	}
	
	public boolean checkFileExists(String filePath) throws IOException {
		System.out.println(filePath);
	    InputStream inputStream = this.ftp.retrieveFileStream(filePath);
	    int returnCode = this.ftp.getReplyCode();
	    System.out.println(returnCode);
	    if (inputStream == null || returnCode == 550) {
	    	System.out.println(false);
	        return false;
	    }
	    System.out.println(true);
	    return true;
	}
	
	public void uploadFile(String localFileFullName, String fileName,
			String hostDir) throws Exception {
		try {
			InputStream input = new FileInputStream(new File(localFileFullName));
			this.ftp.storeFile(hostDir + fileName, input);
		} catch (Exception e) {

		}
	}
	
	public void uploadFileWithStream(InputStream localStream, String remoteFile) throws Exception {
		this.ftp.storeFile(remoteFile, localStream);
	}

	public void disconnect() {
		if (this.ftp.isConnected()) {
			try {
				this.ftp.logout();
				this.ftp.disconnect();
			} catch (IOException f) {
				// do nothing as file is already saved to server
			}
		}
	}
}
