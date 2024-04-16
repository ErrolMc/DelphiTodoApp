object CompletedSpacerControl: TCompletedSpacerControl
  Left = 0
  Top = 0
  Width = 179
  Height = 36
  TabOrder = 0
  object MainPanel: TdxPanel
    Left = 0
    Top = 0
    Width = 179
    Height = 36
    Align = alClient
    Frame.Visible = False
    Color = 3289650
    TabOrder = 0
    OnClick = MainPanelClick
    OnMouseEnter = MainPanelMouseEnter
    OnMouseLeave = MainPanelMouseLeave
    object CompletedLabel: TcxLabel
      Left = 40
      Top = 3
      Caption = 'Completed'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.TextColor = clWhite
    end
    object CompletedAmtText: TcxLabel
      Left = 144
      Top = 3
      Caption = '10'
      Enabled = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.TextColor = clWhite
    end
    object ArrowImageSide: TcxImage
      Left = 10
      Top = 5
      AnimationOptions.Animation = bFalse
      AnimationOptions.AnimationLoop = bFalse
      Enabled = False
      ParentColor = True
      ParentFont = False
      ParentShowHint = False
      Picture.Data = {
        0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
        0200000002000806000000F478D4FA000000017352474200AECE1CE900000004
        67414D410000B18F0BFC6105000000097048597300000FAF00000FAF01D6A422
        6D000015AD49444154785EEDDCBD8E2557BDC6616F02B801C7079FD49020082C
        21D92371092464964ECE3570CE3D9083432402AE008D03020788049CDAC40E10
        0912247D56CD9447F3D11FFBA3AAD6BBFEEB79A4D2EA26B086E8FDF5AADDFD1E
        00309FD37AC259EEEEEEBEDB8E1FB6E7C7EDF9517B3E6CCF4FDAF3AFF67CB93E
        7F69CF9FDBF3D7D3E9F49F7602104600F0A836F8DF6FC7B3F6FCB43DCBE8FFA0
        3DDF6BCF39FEDD9EBFB56789813FB5E70F2D08FED94E00204D1BFD4FDAF3DBF6
        6CED1FEDF9BA3DCB7F7B090B00A0B736CACBF01FE5ABF63C6F8F1000E8C02B00
        5E0C7F3B9EBFFCEE705FB7E7EFEDF9F4743A2D2700071000135B7FFA5E063881
        100080BD2D3FF5B767B9864FB3FC9BBC1600D8991B80C9ACE39AF253FF43967F
        DF33370100FBF9CE7A328175FC7BBDEBBFC407ED593E20E84382003B71033089
        D7C67F19D791B80D00D8810098C0C0E3FF2D1100B03101505C81F1FF960800D8
        900028ACD0F87F4B04006C4400145570FCBF2502003620008A6A01F0553BAA8D
        FFB74400C08DFC1A60416DFC3F6E47D5F15F2CFFDFFC8A20C00D044031EB287E
        F6F2BBD24400C00DBC0228A6F8D5FF7DBC0E00B8821B804226B8FABF8F9B0080
        2BB8012864C29FFE5FE72600E0026E008A98F4A7FFD7B90900B8801B802226FF
        E9FF756E0200CEE006A0003FFDBFC14D00C01904400DFFB39EBC2402009EE015
        40016DE8EED62F7993D701000F700330B8B6FDFFB57EC9BBDC04003C40008CEF
        D97A723F1100700F0130BE8FD69387890080B70880F17DB89E3C4E0400BCC687
        0007D706CD07002FE38381008D1B8081B5ED7F7FFD92F3B909006804C0D85CFF
        5F470400D31300631300D71301C0D404C0D8FC06C06D4400302D1F021C581B2E
        1F00DC860F0602D37103303683B50D3701C07404C0D89EAF27B71301C05404C0
        D8BE584FB6210280690880B17DB99E6C470400531000631300FB100140790260
        60A7D3E99B762C0FDB1301406902607C6E01F6230280B204C0F804C0BE440050
        920018DF1FD793FD8800A01C7F09B080364CFE22E031FCC540A00C370035FC7E
        3DD9979B00A00C0150C3EFD693FD8900A004AF008AF01AE0705E070043730350
        87D700C77213000C4D00D4F1EBF5E438220018960028E2743A7DDE8EE5E15822
        00189200A8E5D3F62CEFA63996080086E34380C5B411FAA41DCF5F7EC7C17C30
        1018861B8062BC0AE8CA4D00300C0150935701FD880060085E0114E55540775E
        0700D1DC0014E55540776E02806802A036AF02FA1201402CAF008A5BC7677915
        B08C117D781D00C411001310011144001045004C4204441001400C0130111110
        4104001104C0644440041100742700262402228800A02B0130291110410400DD
        0880898980082200E842004C4E04441001C0E1040022208308000E2500784104
        441001C0610400AF8880082200388400E00D2220820800762700788708882002
        805D0900EE250222880060370280078980082200D88500E05122208208003627
        00789208882002804D0900CE220222880060330280B38980082200D88400E022
        22208208006E2600B89808882002809B0800AE2202228800E06A0280AB898008
        2200B88A00E02622208208002E2600B89908882002808B0800362102228800E0
        6C0280CD8880082200388B00605322208208009E2400D89C0888200280470900
        762102228800E0410280DD8880082200B8970060572220820800DE2100D89D08
        882002803708000E2102228800E01501C0614440041100BC2000389408882002
        0001C0F14440041100931300742102228800989800A01B11104104C0A404005D
        8980082200262400E84E04441001301901400411104104C04404003144400411
        009310004411011144004C4000104704441001509C00209208882002A0300140
        2C1110410440510280682220820880820400F14440041100C508008620022288
        00284400300C1110410440110280A188800822000A10000C4704441001303801
        C09044400411000313000C4B04441001302801C0D044400411000312000C4F04
        44100130180140092220820880810800CA10011144000C4200508A0888200260
        000280724440041100E10400258980082200820900CA12011144008412009426
        02228800082400284F04441001104600300511104104401001C0344440041100
        2104005311011144000410004C4704441001D09900604A22208208808E0400D3
        1201114400742200989A08882002A00301C0F44440041100071300D088800822
        000E240060250222880038880080D788800822000E2000E02D22208208809D09
        00B88708882002604702001E2002228800D8890080478880082200762000E009
        22208208808D090038830888200260430200CE2402228800D88800800B888008
        2200362000E04222208208801B0900B88208882002E0060200AE2402228800B8
        9200801B8880082200AE2000E04622208208800B0900D88008882002E0020200
        362202228800389300800D8980082200CE200060632220820880270800D88108
        882002E0110200762202228800788000801D8980082200EE2100606722208208
        80B70800388008882002E03502000E2202228800580900389008882002A01100
        703011104104303D01001D8880082280A90900E844044410014C4B0040472220
        8208604A02003A1301114400D311001040044410014C4500400811104104300D
        01004144400411C0140400841101114400E509000824022288004A1300104A04
        441001942500209808882002284900403811104104508E008001888008228052
        04000C4204441001942100602022208208A0040100831101114400C313003020
        1110410430340100831201114400C31200303011104104302401008313011144
        00C31100508008882002188A00802244400411C0300400142202228800862000
        A01811104104104F00404122208208209A0080A244400411402C010085898008
        22804802008A13011144007104004C4004441001441100300911104104104300
        C0444440041140040100931101114400DD0900989008882002E84A00C0A44440
        041140370200262602228800BA10003039111041047038010088800C22804309
        00E0051110410470180100BC22022288000E210080378880082280DD0900E01D
        2220820860570200B89708882002D88D00001E24022288007621008047898008
        2280CD0900E0492220820860530200388B08882002D88C0000CE260222880036
        2100808B88800822809B0900E06222208208E0260200B88A08882002B89A0000
        AE2602228800AE2200809B88800822808B0900E06622208208E0220200D88408
        882002389B0000362302228800CE2200804D8980082280270900607322208208
        E0510200D8850888200278900000762302228800EE2500805D89800822807708
        00607722208208E00D0200388408882002784500008711011144002F0800E050
        22208208400000C713011144C0E40400D08508882002262600806E4440041130
        290100742502228880090900A03B111041044C460000114440041130110100C4
        10011144C0240400104504441001131000401C1110410414270080482220C2D7
        2D00FE7BFD9A62BEB39E0051D69F3C9FB567F949943E3E6821F6F1FA35C50800
        20960888F0D97A1B43315E0100F1BC0EE8CEE7010A1200C0104440773E0F508C
        5700C010BC0EE8CEE7018A7103000CC54D40576E010A7103000CC54D40576E01
        0A1100C070444057BF5C4F06E71500302CAF03FA6801663B0A7003000CCB4D40
        1F2DBC7EBE7EC9C00400303411D0C52FD69381B9C6014AF03AE0585E038CCF0D
        0050829B8063790D303E01009421020EF5B3F5645002002845041CE6C3F56450
        DEE10025F94CC0FE7C0E606C6E008092DC04ECAF45D6FBEB970C480000658980
        DD790D3030010094260276250006260080F2D608F8DF97DFB1A18FD69301F900
        073085F543816E0136D6E2CA8E0CCA0D00308BBBF5643BCBCD0A831200C02C96
        CF01B0ADE5D72C19940000CA5BAFFFFFEFE5776CE88BF56440020028CD1F04DA
        D597EBC98004005096F1DF9D00189800004A32FEBBFBE6743A7DB37ECD800400
        508EF13F849FFE07270080528CFF6104C0E004005086F13FD41FD79341F90B4E
        4009C6FF58FE02E0F8DC0000C333FE87FBFD7A323001000CCDF877F1BBF56460
        AE70806119FF3E5CFFD7E006001892F1EFC6F57F110200188EF1EFEAD7EBC9E0
        04003014E3DFD5E7A7D3E9F3F56B062700806118FFEE7EB59E142000802118FF
        EEFCF45F8C0000E219FFEEBE6ECFA72FBFA40ABFCA014433FEDD2DE3FFACFDF4
        FFF797DF528500006219FF08CBF8BBFA2FC82B002092F18FE0BD7F6102008863
        FC2378EF5F9C57004014E31FC17BFF0908002086F18F60FC2721008008C63F82
        F19F880000BA33FE118CFF640400D095F18F60FC272400806E8C7F04E33F2901
        007461FC2318FF890900E070C63F82F19F9C00000E65FC23187F0400701CE31F
        C1F8F38200000E61FC23187F5E1100C0EE8C7F04E3CF1B0400B02BE31FC1F8F3
        0E0100ECC6F84730FEDC4B0000BB30FE118C3F0F1200C0E68C7F04E3CFA30400
        B029E31FC1F8F32401006CC6F84730FE9C4500009B30FE118C3F671300C0CD8C
        7F04E3CF4504007013E31FC1F8733101005CCDF84730FE5C4500005731FE118C
        3F571300C0C58C7F04E3CF4D04007011E31FC1F8733301009CCDF84730FE6C42
        00006731FE118C3F9B1100C0938C7F04E3CFA60400F028E31FC1F8B33901003C
        C8F84730FEEC420000F732FE118C3FBB1100C03B8C7F04E3CFAE0400F006E31F
        C1F8B33B0100BC62FC23187F0E210080178C7F04E3CF61040060FC33187F0E25
        006072C63F82F1E77002002666FC23187FBA10003029E31FC1F8D38D00800919
        FF08C69FAE04004CC6F84730FE7427006022C63F82F1278200804918FF08C69F
        1802002660FC23187FA2080028CEF84730FEC411005098F18F60FC892400A028
        E31FC1F8134B004041C63F82F1279A0080628C7F04E34F3C01008518FF08C69F
        21080028C2F84730FE0C43004001C63F82F1672802000667FC23187F86230060
        60C63F82F1674802000665FC23187F8625006040C63F82F1676802000663FC23
        187F8627006020C63F82F1A70401008330FE118C3F6508001880F18F60FC2945
        004038E31FC1F8538E008060C63F82F1A7240100A18C7F04E34F5902000219FF
        08C69FD204008431FE118C3FE509000862FC23187FA620002084F18F60FC9986
        008000C63F82F1672A02003A33FE118C3FD31100D091F18F60FC999200804E8C
        7F04E3CFB404007460FC23187FA62600E060C63F82F1677A02000E64FC23187F
        6804001CC4F84730FEB012007000E31FC1F8C36B0400ECCCF84730FEF0160100
        3B32FE118C3FDC4300C04E8C7F04E30F0F1000B003E31FC1F8C32304006CCCF8
        4730FEF00401001B32FE118C3F9C4100C0468C7F04E30F671200B001E31FC1F8
        C3050400DCC8F84730FE702101003730FE118C3F5C4100C0958C7F04E30F5712
        007005E31FC1F8C30D04005CC8F84730FE702301001730FE118C3F6C4000C099
        8C7F04E30F1B11007006E31FC1F8C38604003CC1F84730FEB03101008F30FE11
        8C3FEC4000C0038C7F04E30F3B1100700FE31FC1F8C38E0400BCC5F84730FEB0
        330100AF31FE118C3F1C4000C0CAF84730FE701001008DF18F60FCE1400280E9
        19FF08C61F0E2600989AF18F60FCA10301C0B48C7F04E30F9D0800A664FC2318
        7FE84800301DE31FC1F843670280A918FF08C61F020800A661FC23187F082100
        9882F18F60FC218800A03CE31FC1F84318014069C63F82F187400280B28C7F04
        E30FA104002519FF08C61F820900CA31FE118C3F8413009462FC23187F188000
        A00CE31FC1F8C32004002518FF08C61F062200189EF18F60FC61300280A119FF
        08C61F0624001896F18F60FC615002802119FF08C61F062600188EF18F60FC61
        700280A118FF08C61F0A10000CC3F84730FE5084006008C63F82F187420400F1
        8C7F04E30FC50800A219FF08C61F0A1200C432FE118C3F1425008864FC23187F
        284C0010C7F84730FE509C00208AF18F60FC6102028018C63F82F18749080022
        18FF08C61F262200E8CEF84730FE3019014057C63F82F187090900BA31FE118C
        3F4C4A00D085F18F60FC61620280C319FF08C61F2627003894F18F60FC0101C0
        718C7F04E30FBC20003884F18F60FC81570400BB33FE118C3FF00601C0AE8C7F
        04E30FBC4300B01BE31FC1F803F71200ECC2F84730FEC08304009B33FE118C3F
        F02801C0A68C7F04E30F3C4900B019E31FC1F8036711006CC2F84730FEC0D904
        003733FE118C3F701101C04D8C7F04E30F5C4C007035E31FC1F8035711005CC5
        F84730FEC0D504001733FE118C3F701301C0458C7F04E30FDC4C007036E31FC1
        F8039B10009CC5F84730FEC06604004F32FE118C3FB02901C0A38C7F04E30F6C
        4E00F020E31FC1F803BB1000DCCBF84730FEC06E0400EF30FE118C3FB02B01C0
        1B8C7F04E30FEC4E00F08AF18F60FC814308005E30FE118C3F70180180F1CF60
        FC81430980C919FF08C61F389C009898F18F60FC812E04C0A48C7F04E30F7423
        002664FC23187FA02B013019E31FC1F803DD09808918FF08C61F8820002661FC
        23187F2086009880F18F60FC812802A038E31FC1F80371044061C63F82F10722
        0980C25A007CD50EE3DF8FF107627D673D29A68DFFC7ED30FEFD187F209A0028
        68BDFAFFECE5777460FC81785E0114E4EABF2BE30F0CC10D4031AEFEBB32FEC0
        30044021AEFEBB32FEC050BC0228C4D57F37C61F188E1B80225CFD7763FC8121
        09803A7EB99E1CC7F803C3F20AA088BB66FD9263187F60686E000A68DBFFF3F5
        4B8E61FC81E109801A7EB19EECCFF8032578055080EBFFC3187FA00C37008373
        FD7F18E30F942200C6F7B3F5643FC61F2847008CEFC3F5641FC61F28C9670006
        E7FDFFAE8C3F50961B8081B5ED7F7FFD92ED197FA034013036D7FFFB30FE4079
        02606C02607BC61F98820018DB47EBC9368C3F300D1F021C980F006ECAF80353
        7103303663B50DE30F4C47008CEDF97A723DE30F4C49008CED8BF5E43AC61F98
        960018DB97EBC9E58C3F303501303601701DE30F4C4F000CAC0DD837ED581ECE
        67FC011A01303EB700E733FE002B01303E01701EE30FF01A01303EBF09F034E3
        0FF01601303E7F0BE071C61FE01E026070EBB019B7FB197F800708801ADC02BC
        CBF8033C4200D4F09BF5E425E30FF0040150401BBACFDBB13C187F80B308803A
        7EB59E3333FE0067120045B80530FE00971000B5CC7A0B60FC012E24000A99F4
        16C0F8035C4100D4F3697B96519C81F107B8D2693D29E4EEEEEE937654FFDB00
        C61FE0066E000A9AE05580F107B89100A8ABEAAB00E30FB001AF000ABBBBBBFB
        7E3B9657011FBCF81FC667FC013622008A2B1401C61F60430260020522C0F803
        6C4C004C62E00830FE003B100013192C0296E15F46FF53E30FB03D0130993502
        96714DE6A77E809DF935C0C92CA3DA9E25FC9EB52731048C3FC001DC004C2CEC
        3660F977B8F2073888006009819E7F3AD8F003404F4B08B4E7285FB5E7797B96
        5B0800A0B736CA4B08FCB63D5BFB477BBE6ECFF2DF36FC001D7905C0A3D6A15E
        3E30F8D3F6FCB83D3F68CFF7DA738E7FB7E76FEDF9737BFED49E3F9C4EA77FB6
        1380CE0400176941F0DD76FCB03D4B0CFCA83D1FB6E727EDF9577BBE5C9FBFB4
        6719FDBFB6C1FF4F3B010000E8EBBDF7FE1FEDBA8556DA5E7894000000004945
        4E44AE426082}
      Properties.ReadOnly = True
      Properties.ShowFocusRect = False
      ShowHint = False
      Style.BorderStyle = ebsNone
      Style.Color = 3289650
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.Color = 3289650
      StyleFocused.BorderStyle = ebsNone
      StyleHot.BorderStyle = ebsNone
      TabOrder = 2
      Transparent = True
      Height = 25
      Width = 22
    end
    object ArrowImageDown: TcxImage
      Left = 10
      Top = 5
      AnimationOptions.Animation = bFalse
      AnimationOptions.AnimationLoop = bFalse
      Enabled = False
      ParentColor = True
      ParentFont = False
      ParentShowHint = False
      Picture.Data = {
        0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
        0200000002000806000000F478D4FA000000017352474200AECE1CE900000004
        67414D410000B18F0BFC6105000000097048597300000FAF00000FAF01D6A422
        6D0000133B49444154785EEDDC3F8F6CC94105F01D07108080C4318E572488C0
        0192F7C95FC19B233E097C141C5BFE0896D601921344E44D6D133BC008902079
        54F5DE197A66BAA7FFDD7BEB54D5EF27B57AF7D9F2AEBBABCE39D3FD76BF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000020C9D3F2DCC4
        E7CF9FBF5F9EBE5C1E3F2C8F4FE5F197E5F1D3F2F855797C5B1F4F4F4FBF2FCF
        00D0851EFA6DB701505E8CFA7FBCBE00F585787E51EA0B74AD5F96477DC17E51
        5EB09F1F7E050002948EFBBA3CFDB83C1EE9B73A0CBE291DF76FF517BB565E90
        AFCAE39FCAE3B7E5B1B69F95C74F96BF1400ECAA74D0D74B176DA176E78F96BF
        543FCADF742DFE6FEAFF839DD437A0BF170A80AE94AEA9FDB655E99FF29BF2C8
        EFB7F237B977F1BF555FA8FA550300ACA6764B79B4EEB7BC2150FEA65ABF30C7
        FA584B0074A1744AFDE1B6764B829C1F74CBDF48D20B732CE74502A03BB543CA
        23E587DB636D7FD02D7FF1D417E658DB1709802E95EE48FDE1F6D8433FE83E2D
        CF3759FE82DF94C70F0EBF90EFB7E5F1E9E9E9E977DFFD2900BCB7F45BFD67F5
        BF3AFC42BEBBFBEDE601D061F93F330200386BB67EBB690074FCE23C33020078
        67C67EBB7A000CF0E23C33020078316BBF5D3500067A719E1901004CDD6F1707
        C0802FCE3323006062B3F7DB3503E0F3F28723320200263470F9BF28DDF661C7
        7F6F793EA9BC40BDFC6310F7AA6F7CFD7719D48300C0046628FFEA52879F5D07
        B3BC400B9F04004C40B7FDBF8F06C0C81FFD9F6204000C6CB2F27F71EEAB8093
        5F01941769F48FFE4FF17500C0A0662DFFEA5CA79F5C05E5BF3CDB4FFFC77C12
        00309099CBFFD9A94F01DE7D02706E294CC42701008350FEDF39D5EDEF1641F9
        2FCDFCD3FF319F0400744CF9BFF6F65380579F009C5A0813F3490040A794FF7B
        6F3BFEED57007FBF3CF31D2300A033CAFFAC571DFFEAE380F2A2F9F8FF345F07
        007440F97FECF86B80974F00FC94FB219F04008453FE971DF7D8F157009F9667
        4E3302004229FFABBD74FDF100F8DBE599F38C008030CAFF262F5D7F3C00FE66
        79E66346004008E57FB397AE3FFC6680F202FE5179FA8FF2F8E3FAE75CC56F0C
        046848F9DFE57FCAE3CF4A77FDEFF327007F551ECAFF363E09006844F9DFAD76
        7DEDFC97AF007CFC7F1F23006067CAFF6187CE7F1E007FBD3C733B23006027CA
        7F1587CE7F1E005F2ECFDCC70800D898F25FCDA1F39F7F13E07F96A73FA97FCC
        43FCC640800D28FF55FD57E9A93F7DFE04E0BF97671EE39300809529FFD51D3A
        FF79007CBB3CF33823006025CA7F1387CE3700B66104003C48F96FE6D500F8D7
        E599F51801007752FE9B3A74FEF300F897E599751901003752FE9B3B74BE7F15
        F03EFCD301005750FE9B7BFDAF02AE7F509E7E5DFF984DF82400E002E5BF8B5F
        2F9DFFF21540E56B806D1901006728FFDDBC74FDF100F8E7E599ED1801006F28
        FF5DBD74FDE1F70054E50DF8F3F254BFABFE8BC32FB025BF2700A050FEBBFAF7
        F2F841E99E3FD43F79F90460F985C32FB2399F0400D353FEBBFBC373F957C75F
        0154F58D601F4600302DE5DFC4AB8E7FF90AA0F28634E1EB00602ABAA689775D
        F3EA1380E53F5044FBF24900300DE5DFCCEFDEFEA0F9F62B80EAEFCAA32E05F6
        630400C353FECDD44EAFDDFECABB01E05380668C006058CABFA9773FFD57A73E
        01A87C0AD08611000C47F93775F2A7FFEAE400F02940534600300CE5DFDCC99F
        FEAB739F00543E0568C70800BAA7FC9B3BFBD37FF5EA1F037CCB9BD75C7DF3FC
        23824077F4477317FBE3C3015079139B330280AEE88DE6AEEA8D8FBE023858FE
        07944F3BF502F93A00E882F28F70F67BFF631707C0C2EF0768CB0800E229FF08
        B5ABCF7EEF7FECE25700CFBCB1117C1D0044D211116EEA88AB0740E50D8E6004
        00517443849BBBE1A6015079A323180140049D10E1AE4EB8790054DEF0084600
        D0942E88707717DC35002A6F7C0423006842074478A803EE1E00950310C10800
        7625FB233C9CFD0F0D80CA4188600400BB90F91156C9FC870740E54044300280
        4DC9FA08AB65FD2A03A07230221801C026647C8455337EB501503920118C0060
        55B23DC2EAD9BEEA00A81C94084600B00A991E61934C5F7D00540E4C04230078
        882C8FB059966F32002A0727821100DC458647D834C3371B00950314C108006E
        22BB236C9EDD9B0E80CA418A6004005791D91176C9ECCD0740E540453002800F
        C9EA08BB65F52E03A072B0221801C049323AC2AE19BDDB00A81CB0084600F08A
        6C8EB07B36EF3A002A072D8211001CC8E4084D3279F701503970118C00989C2C
        8ED02C8B9B0C80CAC18B6004C0A4647084A619DC6C00540E6004230026237B23
        34CFDEA603A072102318013009991B2122739B0F80CA818C6004C0E0646D8498
        AC8D1800958319C1088041C9D80851191B33002A07348211008391AD11E2B235
        6A00540E6A0423000621532344666ADC00A81CD8084600744E964688CDD2C801
        5039B8118C00E8940C8D109DA1B103A07280231801D019D919213E3BA30740E5
        20473002A0133233421799193F002A073A821100E16465846EB2B28B015039D8
        118C0008252323749591DD0C80CA018F60044018D918A1BB6CEC6A00540E7A04
        230042C8C4085D66627703A072E0231801D0982C8CD06D167639002A073F8211
        008DC8C0085D6760B703A07201221801B033D917A1FBECEB7A00542E42042300
        7622F3220C9179DD0F80CA85886004C0C6645D8461B26E880150B918118C00D8
        888C8B3054C60D33002A17248211002B936D1186CBB6A10640E5A24430026025
        322DC2909936DC00A85C980846003C4896451836CB861C00958B13C108803BC9
        B0084367D8B003A072812218017023D91561F8EC1A7A00542E52042300AE24B3
        224C9159C30F80CA858A6004C005B22AC2345935C500A85CAC0846009C21A322
        4C9551D30C80CA058B6004C01BB229C274D934D500A85CB40846002C64528429
        3369BA0150B970118C00A6278B224C9B45530E80CAC58B6004302D191461EA0C
        9A7600542E60042380E9C89E08D367CFD403A072112318014C43E6449039C5F4
        03A0722123B8900C4FD64490350B0360E16246703119968C8920638E1800475C
        D0082E28C3912D1164CB1B06C01B2E6A04179561C8940832E50403E004173682
        0B4BF76449045972860170868B1BC1C5A55B3224820CF98001F0011738820B4C
        77644704D971810170818B1CC145A61B322382CCB882017005173A820B4D3C59
        1141565CC900B8928B1DC1C526968C8820236E6000DCC0058FE0821347364490
        0D3732006EE4A24770D189211322C8843B18007770E123B8F034270B22C8823B
        19007772F123B8F834230322C8800718000F1000110400BB73F723B8FB0F3200
        1E240822080276E3CE4770E7576000AC40204410086CCE5D8FE0AEAFC4005889
        60882018D88C3B1EC11D5F9101B02201114140B03A773B82BBBD320360658222
        82A06035EE7404777A0306C00604460481C1C3DCE508EEF2460C808D088E0882
        83BBB9C311DCE10D19001B122011040837737723B8BB1B3300362648220812AE
        E6CE467067776000EC40A04410285CE4AE467057776200EC44B044102C9CE58E
        467047776400EC48C0441030BCE36E467037776600EC4CD0441034BC702723B8
        930D18000D089C080207773183BBD88801D088E089207826E60E4670071B3200
        1A12401104D084DCBD08EE5E63064063822882209A883B17C19D0B6000041048
        1104D204DCB508EE5A08032084608A209806E68E4570C7821800410454040135
        20772B82BB15C6000823A82208AA81B85311DCA940064020811541600DC05D8A
        E02E8532004209AE0882AB63EE500477289801104C804510601D727722B83BE1
        0C8070822C8220EB883B13C19DE98001D001811641A075C05D89E0AE74C200E8
        84608B20D882B92311DC918E18001D117011045C20772382BBD11903A033822E
        82A00BE24E4470273A64007448E045107801DC8508EE42A70C804E09BE0882AF
        217720823BD03103A063023082006CC0D98FE0EC77CE00E89C208C200877E4CC
        4770E60760000C40204610883B70D62338EB8330000621182308C60D39E3119C
        F18118000311901104E4069CED08CEF6600C80C108CA08827245CE7404677A40
        06C08004660481B902673982B33C28036050823382E07C80331CC1191E980130
        30011A4180DEC1D98DE0EC0ECE00189C208D20486FE0CC4670662760004C40A0
        4610A85770562338AB9330002621582308D60F38A3119CD18918001311B01104
        EC09CE660467733206C064046D04417BC4998CE04C4EC8009890C08D20700B67
        3182B338290360528237C2D4C1EB0C4650FE133300262680234C19C0CE5E04E5
        3F390360728238C25441ECCC4550FE180008E4105304B2B31641F97360007020
        98230C1DCCCE5804E5CF0B038017023AC29001ED6C4550FEBC6200F08AA08E30
        54503B5311943FEF1800BC23B0230C11D8CE5204E5CF4906002709EE085D07B7
        331441F9739601C059023C429701EEEC4450FE7CC800E043823C425741EECC44
        50FE5C64007091408FD045A03B2B11943F573100B88A608F101DECCE4804E5CF
        D50C00AE26E0234406BCB31141F9731303809B08FA085141EF4C4450FEDCCC00
        E066023F4244E03B0B11943F773100B88BE08FD034F89D8108CA9FBB1900DC4D
        0144685200DEFB08CA9F8718003C441144D8B508BCE711943F0F330078984288
        B04B2178AF23287F566100B00AC51061D362F01E4750FEACC60060350A22C226
        05E1BD8DA0FC599501C0AA144584558BC27B1A41F9B33A0380D5298C08AB1486
        F73282F2671306009B501C111E2A0EEF6104E5CF660C0036A34022DC5520DEBB
        08CA9F4D19006C4A9144B8A948BC6711943F9B3300D89C42897055A178AF2228
        7F766100B00BC512E1C362F11E4550FEECC60060370A26C2C982F1DE4450FEEC
        CA0060578A26422D9A7F288FFA3ED40CF8541EFF581EDE9376943FBB3300D89D
        1100AF287F9A300068C2088003E54F330600CD18014C4EF9D394014053460093
        52FE346700D09C11C064943F110C002218014C42F913C300208611C0E0943F51
        0C00A218010C4AF913C700208E11C060943F910C002219010C42F913CB002096
        1140E7943FD10C00A21901744AF913CF00209E114067943F5D3000E882114027
        943FDD3000E886114038E54F570C00BA6204104AF9D31D0380EE18018451FE74
        C900A04B460021943FDD3200E896114063CA9FAE190074CD08A011E54FF70C00
        BA6704B033E5CF100C00866004B013E5CF300C00866104B031E5CF500C008662
        04B011E5CF700C00866304B032E5CF900C00866404B012E5CFB00C00866504F0
        20E5CFD00C008666047027E5CFF00C008667047023E5CF140C00A660047025E5
        CF340C00A661047081F2672A06005331023843F9331D0380E91801BCA1FC9992
        01C0948C0016CA9F6919004CCB08989EF2676A0600533302A6A5FC999E01C0F4
        8C80E9287F280C00288C8069287F581800B0300286A7FCE1880100478C806129
        7F78C30080378C80E1287F38C10080138C8061287F38C30080338C80EE297FF8
        8001001F3002BAA5FCE10203002E3002BAA3FCE10A06005CC108E886F2872B19
        00702523209EF2871B18007003232096F2871B1900702323208EF2873B180070
        07232086F2873B1900702723A039E50F0F3000E001464033CA1F1E6400C0838C
        80DD297F588101002B300276A3FC61250600ACC408D89CF287151900B0222360
        33CA1F566600C0CA8C80D5297FD88001001B300256A3FC612306006CC4087898
        F2870D1900B02123E06ECA1F366600C0C68C809B297FD88101003B3002AEA6FC
        61270600ECC408B848F9C38E0C00D891117096F2879D1900B03323E01DE50F0D
        1800D08011F042F943230600346204287F68C9008086261E01CA1F1A3300A0B1
        094780F28700060004986804287F0861004088094680F2872006000419780428
        7F0863004098014780F287400600041A6804287F08650040A8014680F2876006
        0004EB7804287F08F7BDE51908B414E8A7F2F8E5E117FAA0FC01602D9F3F7FFE
        AA3C7E531EA9EADFDB8F96BF5D209CAF00A023A56053BF12F0533F74C65700D0
        91D0AF04943F00ECE5F3775F097C531EADF8C81F005A29255C87C0CF6A23EFA4
        FEB5143F00A428C5FCF552D06BABFF9B3F59FE32C000FC2640185429ECAFCBD3
        8FCBE3CBE5F1FDF2B856FD3D06DF96C72F9E9E9E7E7EF815602806004CA20C82
        3A009EC7C00FCBA3FE66C2FA4F15FCB43C7E551EB5F0BF2D85FFFBF20C000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000C05EBEF8E2FF00
        769C6F3901A865AA0000000049454E44AE426082}
      Properties.ReadOnly = True
      Properties.ShowFocusRect = False
      ShowHint = False
      Style.BorderStyle = ebsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.Color = 3289650
      StyleFocused.BorderStyle = ebsNone
      StyleHot.BorderStyle = ebsNone
      TabOrder = 3
      Transparent = True
      Height = 25
      Width = 22
    end
  end
end
