/*
��Ŀ����  : Ѱ�����θ��� 
qq: 630388893
ʱ��: 2017/10/01 22.36
*/

/*
��ϷԪ�ض���
*/
SetScreenScale 720,1280
Dim ��رհ�ť = "656|1191|FFFFFF-101010,647|1200|FFFFFF-101010,640|1205|FFFFFF-101010,653|1207|FFFFFF-101010,641|1193|FDFDFE-101010"
Dim �����رհ�ť = "654|1205|FFFFFF-101010,646|1214|FFFFFF-101010,639|1219|FFFFFF-101010,652|1221|FFFFFF-101010,639|1206|FFFFFF-101010"
Dim �̳ǹرհ�ť = "647|1193|F7F7FF-101010,641|1200|FFFFFF-101010,634|1204|F7F7FF-101010,645|1206|FBF9FF-101010,636|1196|F7F7FF-101010"
Dim ���ɹرհ�ť = "654|1206|FFFFFF-101010,645|1214|FFFFFF-101010,641|1218|FFFFFF-101010,651|1221|FFFFFF-101010,641|1209|FBFBFD-101010"
Dim ����رհ�ť = "655|1192|FFFFFF-101010,647|1199|FFFFFF-101010,641|1204|FFFFFF-101010,654|1206|FFFFFF-101010,641|1193|FDFDFE-101010"
Dim ÿ�չرհ�ť = "655|1192|FFFFFF-101010,647|1199|FFFFFF-101010,641|1204|FFFFFF-101010,652|1206|FFFFFF-101010,641|1193|FDFDFE-101010"
Dim ��ʱ�رհ�ť = "653|1192|FFFFFF-101010,647|1200|FFFFFF-101010,641|1204|FFFFFF-101010,653|1206|FFFFFF-101010,641|1193|FDFDFE-101010"
Dim ��ϵ�رհ�ť = "654|1205|FFFFFF-101010,646|1213|FFFFFF-101010,641|1217|FFFFFF-101010,652|1221|FFFFFF-101010,641|1209|FBFBFD-101010"
Dim ��ͼ�رհ�ť = "615|1208|FFFFFF-101010,606|1215|FFFFFF-101010,602|1220|FFFFFF-101010,612|1221|FFFFFF-101010,601|1210|FFFFFF-101010"
Dim �����б�ť = "590|1006|FFFFFF-101010,580|1014|FFFFFF-101010,574|1019|FFFFFF-101010,586|1021|FFFFFF-101010,575|1009|FFFFFF-101010"

Dim ���ť = Array(672,687)


Dim �������� = "598|1058|1CCE40,598|1065|1ACD3E,597|1071|1BCF3F,591|1064|17E841,583|1064|14F942,591|1069|16EA41,589|1059|1CD141,583|1069|14F942"
Dim �⴫���� = "530|1059|14F842-101010,525|1057|14F942-101010,529|1063|14F842-101010,521|1062|15F542-101010,516|1058|17EB42-101010,522|1060|15F642-101010,529|1068|1ECE42-101010,524|1068|17EC42-101010,518|1068|1CD241-101010,523|1071|15F642-101010"

Dim ��ɫѪ�� = "662|127|002ACF-101010,661|127|002ACD-101010,659|127|002ACD-101010,655|127|002ACD-101010,653|127|002ACD-101010,651|126|0129CA-101010"






/*
�����
*/
Function main()
	Thread.Start(��ʱ���ڴ���,True)
	����ѡ��
End Function

Function ����ѡ��()
	Dim ѡ��
	ѡ�� = ReadUIConfig("�Զ�ʰ��")
	If ѡ�� = 0 Then 
		�Զ�ʰ��("����")
	Else 
		TracePrint "û��ѡ���κι���"
	End If
End Function

/*
�ڲ�ʵ�ֹ���
*/
Function ���ڴ���()
    //1.����Ƿ���ڴ���
    //2.���������ر�
    If CmpColorEx(��رհ�ť, 0.9) = 1 Then 
        Tap 647, 1200
        TracePrint "�رմ���"
        Delay 1000
    ElseIf CmpColorEx(�����رհ�ť, 0.9) = 1 Then
        Tap 646, 1214
        TracePrint "�رմ���"
        Delay 1000
    ElseIf CmpColorEx(�̳ǹرհ�ť, 0.9) = 1 Then
        Tap 647, 1193
        TracePrint "�رմ���"
        Delay 1000
    ElseIf CmpColorEx(���ɹرհ�ť, 0.9) = 1 Then
        Tap 645, 1214
        TracePrint "�رմ���"
        Delay 1000
    ElseIf CmpColorEx(����رհ�ť, 0.9) = 1 Then
        Tap 647, 1199
        TracePrint "�رմ���"
        Delay 1000
    ElseIf CmpColorEx(ÿ�չرհ�ť, 0.9) = 1 Then
        Tap 647, 1199
        TracePrint "�رմ���"
        Delay 1000
    ElseIf CmpColorEx(��ʱ�رհ�ť, 0.9) = 1 Then
        Tap 647, 1200
        TracePrint "�رմ���"
        Delay 1000
    ElseIf CmpColorEx(��ϵ�رհ�ť, 0.9) = 1 Then
        Tap 646, 1213
        TracePrint "�رմ���"
        Delay 1000
    ElseIf CmpColorEx(��ͼ�رհ�ť,0.9) = 1 Then
        Tap 606, 1215
        TracePrint "�رմ���"
        Delay 1000
    End If
End Function

Function �ж��Ƿ�Ĭ�Ͻ���()
    If CmpColorEx(��ɫѪ��, 0.9) = 1 Then 
        TracePrint "����Ĭ�Ͻ���"
        �ж��Ƿ�Ĭ�Ͻ��� = True
    Else 
        TracePrint "������Ĭ�Ͻ���"
        �ж��Ƿ�Ĭ�Ͻ��� = False
    End If
End Function

Function ���������ɫ�Ĵ���()
	Dim �رհ�ť = "582|818|FFFFFF-101010,575|825|FFFFFF-101010,569|830|FFFFFF-101010,580|831|FFFFFF-101010,569|819|FEFEFE-101010"
	If CmpColorEx(�رհ�ť, 0.9) = 1 Then 
		Tap 575, 825
		Delay 500
	End If
End Function

Function ��ʱ���ڴ���(���)
	Dim ��ʾ��Ϣ = "529|597|C9EAFE-101010,529|599|CAEBFF-101010,522|599|CAEBFF-101010,516|599|CAEBFF-101010,531|604|C9EAFE-101010,519|609|CAEBFF-101010"
	Dim ������� = "230|789|FFFFFF-101010,219|789|FAFBF9-101010,231|795|EFF3ED-101010,231|804|EFF3ED-101010,216|805|F5F8F4-101010,231|460|EAEDF3-101010,231|465|EAEDF3-101010,225|458|FFFFFF-101010,219|458|FFFFFF-101010,214|460|F3F5F8-101010"
	Do
		If CmpColorEx(��ʾ��Ϣ, 0.9) = 1 Then 
		Tap 223, 665
		Delay 500
	ElseIf CmpColorEx(�������, 0.9) = 1 Then
		Dim ͬ������ = Array(221,810)
		Dim �ܾ����� = Array(222,464)
		If ��� = True Then 
			Tap ͬ������(0), ͬ������(1)
		Else 
			Tap �ܾ�����(0),�ܾ�����(1)
		End If
	Else 
	 	Delay 500
	End If
	Loop
End Function

/*
�û����ܽӿ�
*/
Function �Զ�ʰ��(����)
    //����
    Dim ��ͼ��ť���� = Array(685,1244) 
    Dim �л���ť���� = Array(554,182)
    Dim ʰ�İ�ť���� = Array(292,954)
	
    Dim �����ͼ = "577|65|F8F9F8-101010,578|69|FEFEFE-101010,569|59|FCFDFC-101010,561|58|FFFFFF-101010,557|62|FFFFFF-101010,558|68|F8F9F8-101010,571|70|FFFFFF-101010,566|68|FFFFFF-101010,563|66|F3F4F3-101010,564|71|FFFFFF-101010"
    Dim �����ͼ = "566|54|FFFFFF-101010,568|59|FFFFFF-101010,570|66|FFFFFF-101010,570|72|FDFDFD-101010,564|67|FFFFFF-101010,571|79|FEFFFE-101010"
    Dim ���Ͱ�ť = "119|1004|F6F8F5-101010,114|1002|FFFFFF-101010,105|1003|FFFFFF-101010,119|1010|FEFEFD-101010,119|1014|F4F7F2-101010,114|1010|FFFFFF-101010,108|1017|FEFEFE-101010"
    Dim ʰ�İ�ť = "311|884|C9E7F5-101010,311|900|D7F7F8-101010,273|882|BDD2EE-101010,273|900|D7F7F8-101010"
	
    Dim ���徳���� = Array(526,327)
    Dim ���徳ǰɽ���� = Array(518,473)
    Dim ����ɸ����� = Array(529,679)
    Dim ���׽پ����� = Array(351,408)
    Dim �������� = Array(425,562)
    Dim ���������� = Array(346,643)
    Dim ���ȿ����� = Array(410,781)
    Dim ���������� = Array(373,921)
    Dim ���������� = Array(175,190)
    Dim	���ƽپ����� = Array(169,383)
    Dim Сɣ������ = Array(213,561)
    Dim ���������� = Array(282,743)
    Dim ɳ�������� = Array(220,897)
    Dim �������� = Array(267,1064)
/*
ʰ�Ķ������� 
1.����
*/
    Dim �����б� = Array(Array(529,637),Array(541,630),Array(553,627),Array(554,647))
    
/*
�����߼�
*/
    Do
        //1.�򿪵�ͼ
        If �ж��Ƿ�Ĭ�Ͻ���() = False Then 
            ���ڴ���
        End If
        If CmpColorEx(��ͼ�رհ�ť, 0.9) Then 
            Tap ��ͼ��ť����(0), ��ͼ��ť����(1)
            TracePrint "�����ͼ����"
            Delay 1000
            Exit Do
        End If 
    Loop
    Do
        If CmpColorEx(�����ͼ, 0.9) = 1 Then 
            Tap �л���ť����(0), �л���ť����(1)
            Delay 1000
        ElseIf CmpColorEx(�����ͼ, 0.9) = 1 Then
            If ���� = "����" Then 
                Tap ɳ��������(0), ɳ��������(1)
                Delay 1000
                If CmpColorEx(���Ͱ�ť, 0.9) = 1 Then 
                    Tap 119,1004//���´��Ͱ�ť
                    Delay 3000
                    Exit Do
                Else 
                    ���ڴ���
                    Exit Do
                End If
            End If
        End If
    Loop
    //3.����ʰ��
    Do
        If �ж��Ƿ�Ĭ�Ͻ���() = True Then 
            //1.�򿪵�ͼ,�ߵ�ʰ�ĵص�
            Tap ��ͼ��ť����(0), ��ͼ��ť����(1)
            Delay 1000
            Exit Do
        Else 
            Delay 200
        End If
    Loop
    Dim i = 0
    Do
        If i > UBound(�����б�) Then 
            i = 0
        End If
        If �ж��Ƿ�Ĭ�Ͻ���() = True Then 
            If CmpColorEx(ʰ�İ�ť, 0.9) = 1 Then 
                Tap ʰ�İ�ť����(0), ʰ�İ�ť����(1)
                Delay 3000
                Tap ��ͼ��ť����(0), ��ͼ��ť����(1)
                Delay 2000
            Else 
             	Tap ��ͼ��ť����(0), ��ͼ��ť����(1)
             	Delay 1000
                Tap �����б�(i, 0), �����б�(i, 1)
                ���������ɫ�Ĵ���
                i = i +1 
                Delay 1000
                ���ڴ���
            End If
        ElseIf CmpColorEx(�����ͼ, 0.9) = 1 Then
            Tap �����б�(i, 0), �����б�(i, 1)
            ���������ɫ�Ĵ���
            i = i +1 
            Delay 1000
            ���ڴ���
        End If
    Loop
End Function

Function �������()
	���ڴ��� 
	
End Function

//�Զ�ʰ��("����")
main


