# MSV: 21020781
# 1. Docker - Docker Compose
## Docker
### Overview 
Docker là một nền tảng mở để phát triển, vận chuyển và chạy ứng dụng. Docker cho phép bạn tách biệt ứng dụng của bạn khỏi hạ tầng của bạn để bạn có thể triển khai phần mềm một cách nhanh chóng. Với Docker, bạn có thể quản lý hạ tầng của mình theo cách bạn quản lý ứng dụng của mình.
### Engines
Docker Engine là một ứng dụng client-server với các thành phần chính sau:
+ Server
+ REST API 
+ Giao diện dòng lệnh (CLI) cho client ( `docker` command).
### Docker Architecture
+ Docker Daemon(`dockerd`): lắng nghe các yêu cầu API của Docker và quản lý các đối tượng Docker.
+ Docker Client(`docker`)
+ Docker Registries: lưu trữ các hình ảnh Docker
+ Docker Objects: images, containers, networks, volumes, plugins,...
## Docker Compose
### Overview
Docker Compose là một công cụ để định nghĩa và chạy ứng dụng Docker đa container. Với Docker Compose, bạn có thể định nghĩa toàn bộ ngăn xếp ứng dụng, bao gồm dịch vụ, mạng và khối lượng, trong một tệp duy nhất được gọi là docker-compose.yml. Tệp này chỉ định cách các container khác nhau nên được cấu hình và làm thế nào chúng nên tương tác với nhau. 

Docker Compose giúp đơn giản hóa quá trình quản lý ứng dụng đa container và cho phép nhà phát triển định nghĩa và triển khai các ứng dụng phức tạp một cách dễ dàng.
### Terms
+ Dịch vụ (Services): Mỗi container trong ứng dụng Docker Compose được gọi là một dịch vụ. Ví dụ: dịch vụ web, dịch vụ cơ sở dữ liệu, vv.
+ Khối lượng (Volumes): Docker Compose cho phép bạn định nghĩa các khối lượng có tên, được sử dụng để lưu trữ dữ liệu giữa các lần khởi động lại container hoặc thậm chí giữa các container khác nhau.
+ Mạng (Networks): Docker Compose cho phép bạn định nghĩa các mạng tùy chỉnh cho dịch vụ của bạn, hỗ trợ giao tiếp giữa các container.
# 2. Linux vs Unix vs BSD vs *nix? macOS thuộc loại nào
## Unix
+ Unix là hệ điều hành gốc, được phát triển ban đầu bởi AT&T Bell Labs.
+ Phát triển của Unix đã tạo ra nhiều phiên bản và biến thể, bao gồm System V, BSD, và nhiều hệ điều hành Unix khác.
+ Unix thường được phát triển và duy trì bởi các công ty và tổ chức lớn, với mục tiêu chủ yếu là sử dụng trong môi trường doanh nghiệp và máy chủ.
## Linux
+ Linux là một dự án mã nguồn mở, bắt đầu từ năm 1991 khi Linus Torvalds phát hành mã nguồn cho nhân Linux (kernel).
+ Có hàng trăm bản phân phối Linux khác nhau, mỗi bản có sự tinh chỉnh và mục tiêu sử dụng riêng biệt, từ các bản phân phối dành cho máy chủ đến các bản phân phối dành cho máy tính cá nhân và các thiết bị nhúng.
## BSD (Berkeley Software Distribution)
+ BSD bắt nguồn từ một nhánh của Unix được phát triển tại Đại học California, Berkeley.
+ BSD là một dự án mã nguồn mở, với các biến thể chính bao gồm FreeBSD, OpenBSD và NetBSD, cùng với một số dự án nhỏ khác.
+ Phát triển của BSD thường được tập trung vào sự ổn định, bảo mật và hiệu suất, đặc biệt là trong các ứng dụng như máy chủ và thiết bị nhúng.
## *nix (Unix-like)
*nix là một thuật ngữ được sử dụng để chỉ tập hợp các hệ điều hành giống Unix, bao gồm Linux, Unix và các biến thể BSD. Các hệ thống này chia sẻ các đặc điểm giống nhau về kiến ​​trúc, giao diện dòng lệnh và nhiều tiện ích.
## macOS
Hệ điều hành macOS thuộc loại ***Unix-like(*nix)***, tương tự như Linux và các biến thể BSD. macOS được phát triển bởi Apple Inc. và dựa trên nhân Unix gốc, được gọi là Darwin.
# 3. Alpine vs Ubuntu
Alpine và Ubuntu là hai bản phân phối Linux phổ biến.
### Kích thước và Sử dụng Tài nguyên:
+ **Alpine**: Nổi tiếng với kích thước nhỏ và thiết kế tối giản. Nó sử dụng thư viện `libc musl` thay vì thư viện `glibc` phổ biến hơn, dẫn đến kích thước tập tin nhỏ hơn và sử dụng tài nguyên giảm.
+ **Ubuntu**: Thường lớn hơn so với Alpine do có kho lưu trữ gói phần mềm và hỗ trợ cho một loạt phần cứng và phần mềm rộng hơn.
### Quản lý Gói phần mềm:
+ **Alpine**: Sử dụng trình quản lý gói *apk*, đơn giản và hiệu quả. Kho lưu trữ gói phần mềm của Alpine có thể không phong phú như của Ubuntu, nhưng bao gồm hầu hết các gói phổ biến.
+ **Ubuntu**: Sử dụng trình quản lý gói *apt*. Kho lưu trữ của Ubuntu cung cấp một loạt lớn các gói phần mềm cho các mục đích khác nhau.
### Bảo mật:
+ **Alpine**: Do thiết kế tối giản và bề mặt tấn công nhỏ hơn, Alpine thường được coi là có bảo mật tốt hơn ngay từ đầu. Tuy nhiên, điều này cũng phụ thuộc vào các yếu tố như cập nhật kịp thời và việc vá lỗ hổng.
+ **Ubuntu**: Nổi tiếng với các tính năng bảo mật và cập nhật đều đặn. Ubuntu được hưởng lợi từ một cộng đồng người dùng lớn và đa dạng, tài liệu mở rộng và các tùy chọn hỗ trợ thương mại.
### Dễ sử dụng:
+ **Alpine**: Nhắm đến người dùng và nhà phát triển có kinh nghiệm hơn do tính tối giản và sự phụ thuộc vào dòng lệnh. Đôi khi có thể cần cấu hình thủ công nhiều hơn cho một số nhiệm vụ.
+ **Ubuntu**: Được thiết kế với tính dễ sử dụng ở trong tâm trí, đặc biệt là đối với những người chuyển từ các hệ điều hành khác như Windows.
# 4. VNC
VNC (Virtual Network Computing) là một phương thức cho phép bạn từ xa điều khiển và sử dụng một máy tính từ một máy tính hoặc thiết bị khác thông qua mạng.
### Client-Server Architecture:
VNC sử dụng mô hình kiến trúc client-server. Máy tính mà bạn muốn điều khiển từ xa được gọi là "server", trong khi máy tính hoặc thiết bị điều khiển từ xa được gọi là "client".
### VNC Server:
+ VNC Server là phần mềm chạy trên máy tính mục tiêu mà bạn muốn điều khiển từ xa. Nó chịu trách nhiệm cho việc gửi hình ảnh màn hình và dữ liệu nhập liệu (như các cú nhấp chuột hoặc phím) qua mạng.
+ VNC Server cho phép máy tính mục tiêu chia sẻ màn hình và điều khiển từ xa bằng cách tạo một giao diện ảo.
### VNC Client:
VNC Client là phần mềm chạy trên máy tính hoặc thiết bị bạn muốn sử dụng để điều khiển máy tính mục tiêu. Nó nhận dữ liệu màn hình và dữ liệu nhập liệu từ máy chủ VNC và hiển thị chúng trên màn hình của người dùng và chuyển dữ liệu nhập liệu từ người dùng đến máy chủ VNC.
### Giao thức Truyền tải:
Giao thức truyền tải chính của VNC là một giao thức đơn giản dựa trên TCP/IP. Khi kết nối được thiết lập, dữ liệu hình ảnh của màn hình được mã hóa và gửi từ máy chủ VNC đến máy khách VNC.