module github.com/jumpserver/koko

go 1.12

require (
	github.com/Azure/azure-storage-blob-go v0.7.0
	github.com/LeeEirc/elfinder v0.0.0-20190604073433-f4f8357e9220
	github.com/aliyun/aliyun-oss-go-sdk v2.0.0+incompatible
	github.com/aws/aws-sdk-go v1.20.18
	github.com/elastic/go-elasticsearch v0.0.0
	github.com/gliderlabs/ssh v0.2.2
	github.com/go-playground/form v3.1.4+incompatible // indirect
	github.com/googollee/go-socket.io v1.4.1
	github.com/gorilla/mux v1.7.3
	github.com/kr/fs v0.1.0 // indirect
	github.com/leonelquinteros/gotext v1.4.0
	github.com/mattn/go-runewidth v0.0.4 // indirect
	github.com/olekukonko/tablewriter v0.0.1
	github.com/pkg/errors v0.8.1
	github.com/pkg/sftp v1.10.0
	github.com/satori/go.uuid v1.2.0
	github.com/sirupsen/logrus v1.4.2
	github.com/xlab/treeprint v0.0.0-20181112141820-a009c3971eca
	golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4
	gopkg.in/natefinch/lumberjack.v2 v2.0.0
	gopkg.in/yaml.v2 v2.2.2
)

replace github.com/gliderlabs/ssh => github.com/ibuler/ssh v0.1.6-0.20190509065047-1c00c8e8b607

replace golang.org/x/crypto => github.com/ibuler/crypto v0.0.0-20190509101200-a7099eef26a7

replace github.com/googollee/go-socket.io => github.com/LeeEirc/go-socket.io v1.4.2-0.20190610105739-e344e8b5a55a
