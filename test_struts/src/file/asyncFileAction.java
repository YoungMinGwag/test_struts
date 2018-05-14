package file;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.FileUtils;

import com.opensymphony.xwork2.ActionSupport;

public class asyncFileAction extends ActionSupport {

	private File[] uploads;
	private String[] uploadsFileName;
	private String[] uploadsContentType;
	
	private InputStream inputStream;
	private String contentDisposition;
	private long contentLength;
	private String fileDownloadName;

	private List<File> listFile = new ArrayList<File>();
	
	private String fileUploadPath = "C:\\Java\\upload\\";

	public String uploadList() throws Exception {
		File path = new File(fileUploadPath);
		File[] fileArray = path.listFiles();

		if (fileArray != null) {
			for (File f : fileArray) {
				if (f.isFile()) {
					listFile.add(f);
				}
			}
		}

		return SUCCESS;
	}

	public String upload() throws Exception {

		for (int i = 0; i < uploads.length; i++) {
			File destFile = new File(fileUploadPath + getUploadsFileName()[i]);
			FileUtils.copyFile(getUploads()[i], destFile);
		}

		return SUCCESS;
	}

	public String download() throws Exception {

		File fileInfo = new File(fileUploadPath + fileDownloadName);

		setContentLength(fileInfo.length());
		setContentDisposition("attachment;filename="
				+ URLEncoder.encode(fileDownloadName, "UTF-8"));
		setInputStream(new FileInputStream(fileUploadPath + fileDownloadName));

		return SUCCESS;
	}

	public File[] getUploads() {
		return uploads;
	}

	public void setUploads(File[] uploads) {
		this.uploads = uploads;
	}

	public String[] getUploadsFileName() {
		return uploadsFileName;
	}

	public void setUploadsFileName(String[] uploadsFileName) {
		this.uploadsFileName = uploadsFileName;
	}

	public String[] getUploadsContentType() {
		return uploadsContentType;
	}

	public void setUploadsContentType(String[] uploadsContentType) {
		this.uploadsContentType = uploadsContentType;
	}

	public List<File> getListFile() {
		return listFile;
	}

	public void setListFile(List<File> listFile) {
		this.listFile = listFile;
	}

	public String getFileUploadPath() {
		return fileUploadPath;
	}

	public void setFileUploadPath(String fileUploadPath) {
		this.fileUploadPath = fileUploadPath;
	}

	public InputStream getInputStream() {
		return inputStream;
	}

	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}

	public String getContentDisposition() {
		return contentDisposition;
	}

	public void setContentDisposition(String contentDisposition) {
		this.contentDisposition = contentDisposition;
	}

	public long getContentLength() {
		return contentLength;
	}

	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}

	public String getFileDownloadName() {
		return fileDownloadName;
	}

	public void setFileDownloadName(String fileDownloadName) {
		this.fileDownloadName = fileDownloadName;
	}

}