type Cam
	nombre::String
	usuario::String
	contra::String
	ip::String
end

function optvideo(x::Cam)
	#run(`ffmpeg -re -i http://$(x.usuario):$(x.contra)@$(x.ip)/video/mjpg.cgi -ss 00:00:00 -t $(x.duracion) -c copy -y $(x.ubicacionv)`)
	#run(`ffmpeg -i http://$(x.usuario):$(x.contra)@$(x.ip)/video/mjpg.cgi?profile=1 -f mpegts udp://192.168.1.11:8090/$(x.nombre)`)

	#-------------------------------------------------------------video---------------------------------

	print("ffmpeg -re -i http://$(x.usuario):$(x.contra)@$(x.ip)/video/mjpg.cgi?profile=1 -ss 00:00:00 -t $(x.duracion) -c copy -y $(x.ubicacionv)")
end

function optimg(x::Cam)
	#run(`ffmpeg -i http://$(x.usuario):$(x.contrase)@$(x.ip)/video/mjpg.cgi?profile=1 -frames:v 1 -ss 00:00:00 -f image2 $(x.ubicacioni)`)

	print("imagen!!!")
end

##cam1 = Cam("camara1","admin","","192.168.1.12")


##de la trendnet-------------------------------------------------------------------------------------------------
#<img style="-webkit-user-select: none" src="http://192.168.1.13/image/jpeg.cgi">
#<img style="-webkit-user-select: none" src="http://192.168.1.10/video/mjpg.cgi">


##para hacer streaming -------------------------------------------------------------------------------------------------
#ffmpeg -i http://admin:@192.168.1.10/video/mjpg.cgi -f mpegts udp://192.168.1.11:8090/camara1
#ffmpeg -i input -f rtsp -rtsp_transport tcp rtsp://localhost:8888/live.sdp
##para visualizar el streaming---------------------------------------------------------------------------------------------
#ffplay udp://192.168.1.11:8090/camara1



