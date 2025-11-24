import SwiftUI

struct PhotoUploadView: View {
    @State private var selectedImage: Image?
    @State private var isImagePickerPresented = false
    
    var body: some View {
        VStack {
            if let image = selectedImage {
                image
                    .resizable()
                    .scaledToFit()
            } else {
                Text("No Image Selected")
            }
            
            Button("Upload Photo") {
                isImagePickerPresented = true
            }
            .sheet(isPresented: $isImagePickerPresented) {
                ImagePickerView(selectedImage: $selectedImage)
            }
        }
        .navigationTitle("Upload an image")
    }
}

struct ImagePickerView: View {
    @Binding var selectedImage: Image?
    @State private var isImagePickerPresented = false
    @State private var selectedUIImage: UIImage?
    
    var body: some View {
        ImagePicker(isPresented: $isImagePickerPresented, selectedImage: $selectedUIImage)
            .onDisappear {
                if let uiImage = selectedUIImage {
                    selectedImage = Image(uiImage: uiImage)
                }
            }
    }
}

struct ImagePicker: UIViewControllerRepresentable {
    @Binding var isPresented: Bool
    @Binding var selectedImage: UIImage?
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = context.coordinator
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            if let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                parent.selectedImage = uiImage
            }
            
            parent.isPresented = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.isPresented = false
        }
    }
}
