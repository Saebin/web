package edu.hkcity.cs;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class name {
	ArrayList<String> list = new ArrayList<String>();
	Scanner scanner = null;
	static public boolean simple = false;
	private String folderName;
	Input input;
	ArrayList<String> filename;

	public String fact() {// TODO Auto-generated method stub
		String path = input_folder_name("Please enter Folder name:");
	
		filename = new ArrayList<String>();
		filename.clear();
		File dirFile = new File(path);
		File[] fileList = dirFile.listFiles();

		for (File tempFile : fileList) {
			if (tempFile.isFile()) {
				String tempPath = tempFile.getParent();
//				System.out.println("1");
				tempPath = tempPath.replace("\\", "\\\\");
//				System.out.println("2");
				String tempFileName = tempFile.getName();
//				System.out.println("3");
				list.add(tempPath + "\\\\" + tempFileName);
//				System.out.println("4");
				filename.add(tempFileName);
				// System.out.println(list.size());
				// System.out.println(list.get(list.size() - 1));
				// System.out.println("Path=" + tempPath);
				// System.out.println("FileName=" + tempFileName);
			}
			
		}
		
		Output op = new Output();
//		ArrayList save_filename;
		for (int i = 0; i < list.size(); i++) {
//			save_filename = new ArrayList<String>();
//			save_filename.add(filename.get(i).toString());
			for (int j = i + 1; j < list.size(); j++) {
				//System.out.println(filename.size());
				//System.out.println(list.size());
				op.count = 0;
				System.out.println("----------------------------------------------------------------");
				System.out.println(filename.get(i).toString() + " 학생과 " + filename.get(j).toString() + "의 유사도 입니다.");
				System.out.println("----------------------------------------------------------------");
				input = new Input(list.get(i).toString(), list.get(j).toString());
				try {
					input.getInput();
//					if(simple == true){
//						save_filename.add(filename.get(j).toString());
//						System.out.println(filename.get(i).toString());
//						System.out.println(filename.get(j).toString());
//						
//					}
				} catch (IOException e) {
					e.printStackTrace();
				}
				System.out.println("----------------------------------------------------------------");
				System.out.println("");
				 if(op.count >= 2){
		         		name n = new name();
		         		n.simple = true;
		         		op.number++;
		      	 }
				op.count = 0;
				simple = false;
				
			}
//			if(save_filename.size() > 1){
//				for(int k = 0; k < save_filename.size(); k++){
//					System.out.println(save_filename.get(k).toString());
//				}
//				System.out.println("----------------------------------------------------------------");
//			}
		}
		//System.out.println(op.number);
		return null;
		
	}
	private String input_folder_name(String msg){
		String ori_path = "C:\\Users\\b10310\\workspace\\PRsystem\\WebContent\\code_similartiy";
		/* if (scanner==null)
	            scanner = new Scanner(System.in);
        String folderName = null;
		while (folderName == null) {
            System.out.print(msg);
            folderName = scanner.next();
		}
		ori_path = ori_path+folderName;*/
		return ori_path;
	}
}