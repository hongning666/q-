/*
项目名称  : 寻仙手游辅助 
qq: 630388893
时间: 2017/10/01 22.36
*/

/*
游戏元素定义
*/
SetScreenScale 720,1280
Dim 活动关闭按钮 = "656|1191|FFFFFF-101010,647|1200|FFFFFF-101010,640|1205|FFFFFF-101010,653|1207|FFFFFF-101010,641|1193|FDFDFE-101010"
Dim 福利关闭按钮 = "654|1205|FFFFFF-101010,646|1214|FFFFFF-101010,639|1219|FFFFFF-101010,652|1221|FFFFFF-101010,639|1206|FFFFFF-101010"
Dim 商城关闭按钮 = "647|1193|F7F7FF-101010,641|1200|FFFFFF-101010,634|1204|F7F7FF-101010,645|1206|FBF9FF-101010,636|1196|F7F7FF-101010"
Dim 门派关闭按钮 = "654|1206|FFFFFF-101010,645|1214|FFFFFF-101010,641|1218|FFFFFF-101010,651|1221|FFFFFF-101010,641|1209|FBFBFD-101010"
Dim 公告关闭按钮 = "655|1192|FFFFFF-101010,647|1199|FFFFFF-101010,641|1204|FFFFFF-101010,654|1206|FFFFFF-101010,641|1193|FDFDFE-101010"
Dim 每日关闭按钮 = "655|1192|FFFFFF-101010,647|1199|FFFFFF-101010,641|1204|FFFFFF-101010,652|1206|FFFFFF-101010,641|1193|FDFDFE-101010"
Dim 限时关闭按钮 = "653|1192|FFFFFF-101010,647|1200|FFFFFF-101010,641|1204|FFFFFF-101010,653|1206|FFFFFF-101010,641|1193|FDFDFE-101010"
Dim 关系关闭按钮 = "654|1205|FFFFFF-101010,646|1213|FFFFFF-101010,641|1217|FFFFFF-101010,652|1221|FFFFFF-101010,641|1209|FBFBFD-101010"
Dim 地图关闭按钮 = "615|1208|FFFFFF-101010,606|1215|FFFFFF-101010,602|1220|FFFFFF-101010,612|1221|FFFFFF-101010,601|1210|FFFFFF-101010"
Dim 申请列表按钮 = "590|1006|FFFFFF-101010,580|1014|FFFFFF-101010,574|1019|FFFFFF-101010,586|1021|FFFFFF-101010,575|1009|FFFFFF-101010"

Dim 活动按钮 = Array(672,687)


Dim 正传任务 = "598|1058|1CCE40,598|1065|1ACD3E,597|1071|1BCF3F,591|1064|17E841,583|1064|14F942,591|1069|16EA41,589|1059|1CD141,583|1069|14F942"
Dim 外传任务 = "530|1059|14F842-101010,525|1057|14F942-101010,529|1063|14F842-101010,521|1062|15F542-101010,516|1058|17EB42-101010,522|1060|15F642-101010,529|1068|1ECE42-101010,524|1068|17EC42-101010,518|1068|1CD241-101010,523|1071|15F642-101010"

Dim 角色血条 = "662|127|002ACF-101010,661|127|002ACD-101010,659|127|002ACD-101010,655|127|002ACD-101010,653|127|002ACD-101010,651|126|0129CA-101010"






/*
主框架
*/
Function main()
	Thread.Start(临时窗口处理,True)
	功能选择
End Function

Function 功能选择()
	Dim 选项
	选项 = ReadUIConfig("自动拾荒")
	If 选项 = 0 Then 
		自动拾荒("海带")
	Else 
		TracePrint "没有选择任何功能"
	End If
End Function

/*
内部实现功能
*/
Function 窗口处理()
    //1.检测是否存在窗口
    //2.如果存在则关闭
    If CmpColorEx(活动关闭按钮, 0.9) = 1 Then 
        Tap 647, 1200
        TracePrint "关闭窗口"
        Delay 1000
    ElseIf CmpColorEx(福利关闭按钮, 0.9) = 1 Then
        Tap 646, 1214
        TracePrint "关闭窗口"
        Delay 1000
    ElseIf CmpColorEx(商城关闭按钮, 0.9) = 1 Then
        Tap 647, 1193
        TracePrint "关闭窗口"
        Delay 1000
    ElseIf CmpColorEx(门派关闭按钮, 0.9) = 1 Then
        Tap 645, 1214
        TracePrint "关闭窗口"
        Delay 1000
    ElseIf CmpColorEx(公告关闭按钮, 0.9) = 1 Then
        Tap 647, 1199
        TracePrint "关闭窗口"
        Delay 1000
    ElseIf CmpColorEx(每日关闭按钮, 0.9) = 1 Then
        Tap 647, 1199
        TracePrint "关闭窗口"
        Delay 1000
    ElseIf CmpColorEx(限时关闭按钮, 0.9) = 1 Then
        Tap 647, 1200
        TracePrint "关闭窗口"
        Delay 1000
    ElseIf CmpColorEx(关系关闭按钮, 0.9) = 1 Then
        Tap 646, 1213
        TracePrint "关闭窗口"
        Delay 1000
    ElseIf CmpColorEx(地图关闭按钮,0.9) = 1 Then
        Tap 606, 1215
        TracePrint "关闭窗口"
        Delay 1000
    End If
End Function

Function 判定是否默认界面()
    If CmpColorEx(角色血条, 0.9) = 1 Then 
        TracePrint "处于默认界面"
        判定是否默认界面 = True
    Else 
        TracePrint "不处于默认界面"
        判定是否默认界面 = False
    End If
End Function

Function 当点击到角色的处理()
	Dim 关闭按钮 = "582|818|FFFFFF-101010,575|825|FFFFFF-101010,569|830|FFFFFF-101010,580|831|FFFFFF-101010,569|819|FEFEFE-101010"
	If CmpColorEx(关闭按钮, 0.9) = 1 Then 
		Tap 575, 825
		Delay 500
	End If
End Function

Function 临时窗口处理(组队)
	Dim 提示信息 = "529|597|C9EAFE-101010,529|599|CAEBFF-101010,522|599|CAEBFF-101010,516|599|CAEBFF-101010,531|604|C9EAFE-101010,519|609|CAEBFF-101010"
	Dim 组队申请 = "230|789|FFFFFF-101010,219|789|FAFBF9-101010,231|795|EFF3ED-101010,231|804|EFF3ED-101010,216|805|F5F8F4-101010,231|460|EAEDF3-101010,231|465|EAEDF3-101010,225|458|FFFFFF-101010,219|458|FFFFFF-101010,214|460|F3F5F8-101010"
	Do
		If CmpColorEx(提示信息, 0.9) = 1 Then 
		Tap 223, 665
		Delay 500
	ElseIf CmpColorEx(组队申请, 0.9) = 1 Then
		Dim 同意坐标 = Array(221,810)
		Dim 拒绝坐标 = Array(222,464)
		If 组队 = True Then 
			Tap 同意坐标(0), 同意坐标(1)
		Else 
			Tap 拒绝坐标(0),拒绝坐标(1)
		End If
	Else 
	 	Delay 500
	End If
	Loop
End Function

/*
用户功能接口
*/
Function 自动拾荒(对象)
    //变量
    Dim 地图按钮坐标 = Array(685,1244) 
    Dim 切换按钮坐标 = Array(554,182)
    Dim 拾荒按钮坐标 = Array(292,954)
	
    Dim 区域地图 = "577|65|F8F9F8-101010,578|69|FEFEFE-101010,569|59|FCFDFC-101010,561|58|FFFFFF-101010,557|62|FFFFFF-101010,558|68|F8F9F8-101010,571|70|FFFFFF-101010,566|68|FFFFFF-101010,563|66|F3F4F3-101010,564|71|FFFFFF-101010"
    Dim 世界地图 = "566|54|FFFFFF-101010,568|59|FFFFFF-101010,570|66|FFFFFF-101010,570|72|FDFDFD-101010,564|67|FFFFFF-101010,571|79|FEFFFE-101010"
    Dim 传送按钮 = "119|1004|F6F8F5-101010,114|1002|FFFFFF-101010,105|1003|FFFFFF-101010,119|1010|FEFEFD-101010,119|1014|F4F7F2-101010,114|1010|FFFFFF-101010,108|1017|FEFEFE-101010"
    Dim 拾荒按钮 = "311|884|C9E7F5-101010,311|900|D7F7F8-101010,273|882|BDD2EE-101010,273|900|D7F7F8-101010"
	
    Dim 三清境坐标 = Array(526,327)
    Dim 三清境前山坐标 = Array(518,473)
    Dim 紫岚仙府坐标 = Array(529,679)
    Dim 天雷劫境坐标 = Array(351,408)
    Dim 京城坐标 = Array(425,562)
    Dim 宁阳观坐标 = Array(346,643)
    Dim 喇叭口坐标 = Array(410,781)
    Dim 九曲湾坐标 = Array(373,921)
    Dim 隐龙谷坐标 = Array(175,190)
    Dim	风云劫境坐标 = Array(169,383)
    Dim 小桑村坐标 = Array(213,561)
    Dim 宁海县坐标 = Array(282,743)
    Dim 沙子洲坐标 = Array(220,897)
    Dim 东海坐标 = Array(267,1064)
/*
拾荒对象坐标 
1.海带
*/
    Dim 海带列表 = Array(Array(529,637),Array(541,630),Array(553,627),Array(554,647))
    
/*
程序逻辑
*/
    Do
        //1.打开地图
        If 判定是否默认界面() = False Then 
            窗口处理
        End If
        If CmpColorEx(地图关闭按钮, 0.9) Then 
            Tap 地图按钮坐标(0), 地图按钮坐标(1)
            TracePrint "到达地图界面"
            Delay 1000
            Exit Do
        End If 
    Loop
    Do
        If CmpColorEx(区域地图, 0.9) = 1 Then 
            Tap 切换按钮坐标(0), 切换按钮坐标(1)
            Delay 1000
        ElseIf CmpColorEx(世界地图, 0.9) = 1 Then
            If 对象 = "海带" Then 
                Tap 沙子洲坐标(0), 沙子洲坐标(1)
                Delay 1000
                If CmpColorEx(传送按钮, 0.9) = 1 Then 
                    Tap 119,1004//按下传送按钮
                    Delay 3000
                    Exit Do
                Else 
                    窗口处理
                    Exit Do
                End If
            End If
        End If
    Loop
    //3.定点拾荒
    Do
        If 判定是否默认界面() = True Then 
            //1.打开地图,走到拾荒地点
            Tap 地图按钮坐标(0), 地图按钮坐标(1)
            Delay 1000
            Exit Do
        Else 
            Delay 200
        End If
    Loop
    Dim i = 0
    Do
        If i > UBound(海带列表) Then 
            i = 0
        End If
        If 判定是否默认界面() = True Then 
            If CmpColorEx(拾荒按钮, 0.9) = 1 Then 
                Tap 拾荒按钮坐标(0), 拾荒按钮坐标(1)
                Delay 3000
                Tap 地图按钮坐标(0), 地图按钮坐标(1)
                Delay 2000
            Else 
             	Tap 地图按钮坐标(0), 地图按钮坐标(1)
             	Delay 1000
                Tap 海带列表(i, 0), 海带列表(i, 1)
                当点击到角色的处理
                i = i +1 
                Delay 1000
                窗口处理
            End If
        ElseIf CmpColorEx(区域地图, 0.9) = 1 Then
            Tap 海带列表(i, 0), 海带列表(i, 1)
            当点击到角色的处理
            i = i +1 
            Delay 1000
            窗口处理
        End If
    Loop
End Function

Function 天劫任务()
	窗口处理 
	
End Function

//自动拾荒("海带")
main


