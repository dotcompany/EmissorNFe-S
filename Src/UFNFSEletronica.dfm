object FNFSEletronica: TFNFSEletronica
  Left = 432
  Top = 181
  BorderStyle = bsSingle
  Caption = 'Vers'#227'o 13.00 Emissor de NF-e.'
  ClientHeight = 474
  ClientWidth = 811
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvSpecialProgress1: TJvSpecialProgress
    Left = 516
    Top = 337
    Width = 150
    Height = 15
    Caption = 'JvSpecialProgress1'
  end
  object Panel1: TPanel
    Left = 0
    Top = 64
    Width = 811
    Height = 109
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 12
    object Label2: TLabel
      Left = 8
      Top = 57
      Width = 65
      Height = 13
      Caption = 'Status NF-e'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 76
      Height = 13
      Caption = 'Tipo Consulta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTipo: TLabel
      Left = 208
      Top = 9
      Width = 76
      Height = 13
      Caption = 'Data Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDtFinal: TLabel
      Left = 324
      Top = 33
      Width = 7
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object lblStatusValidar: TLabel
      Left = 344
      Top = 62
      Width = 5
      Height = 21
      Alignment = taCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 321
      Top = 59
      Width = 464
      Height = 32
      Caption = 
        'Aten'#231#227'o existe NF-e, que ainda n'#227'o foram validadas.'#13#10'Para evitar' +
        ' erro cont'#225'bil as mesmas devem ser validadas ou inutilizadas.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label4: TLabel
      Left = 449
      Top = 6
      Width = 135
      Height = 13
      Caption = 'Escolha Filial p/ Emiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object btnConsultar: TBitBtn
      Left = 206
      Top = 61
      Width = 111
      Height = 32
      Cursor = crHandPoint
      Hint = 'Consultar'
      Caption = 'Consultar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnConsultarClick
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA2A3A35757576E716FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBDBDBD888888999999FFFFFFFFFFFFFFFFFFFFFFFF
        B5C5C236575443615E476462526B695A74715B75735B75735B75745F79775A74
        715773705773705873715A7471577370577370577370526B69526B6943615E3D
        5A5C8A8A8AFFFFFF9595955757579C9C9B999A9ABAB7B9FFFFFFFFFFFFFFFFFF
        D0D0D07C7C7C8585858787878D8D8D9494949494949494949494949797979494
        949292929292929292929494949292929292929292928D8D8D8D8D8D85858581
        8181ACACACFFFFFFB4B4B4888888B8B8B8B7B7B7CDCDCDFFFFFFFFFFFFFFFFFF
        9FB1AEEFFCF4F1FFF6F2FFF6F0FDF5F0FDF6EFFCF4EEFBF3EEFBF3EEFBF3EEFB
        F3EBF8F2E8F6EFE8F6EFE9F6F0E5F4EEE5F4EEE5F4EEE5F2EBE5F2EBE2F2EBDF
        F0E79BABAA8A8A8A5757579C9C9C9291949E9E9EBEBCBBEEECECFFFFFFFFFFFF
        C2C2C2F8F8F8FAFAFAFAFAFAF9F9F9F9F9F9F8F8F8F7F7F7F7F7F7F7F7F7F7F7
        F7F5F5F5F4F4F4F4F4F4F4F4F4F2F2F2F2F2F2F2F2F2F1F1F1F1F1F1F0F0F0EE
        EEEEBEBEBEACACAC888888B9B9B9B2B2B2BBBBBBD0D0D0F2F2F2FFFFFFFFFFFF
        9BABAAE5F5ECEBF8F2E5F2EBE5F2EBE5F0EBE2EFE9E2EFE9E2EFE9E5F0EBE2EF
        E9E2EEE8E0ECE7DFECE5DFEBE7DFEAE5DFEAE5E2EEE8DFECE5DAE8E2D8E8E1DB
        EBE44C5454575757A2A3A38A8A8AABACAFCBC2C6EEECECFDFDFDFFFFFFFFFFFF
        BEBEBEF2F2F2F5F5F5F1F1F1F1F1F1F0F0F0EFEFEFEFEFEFEFEFEFF0F0F0EFEF
        EFEFEFEFEDEDEDEDEDEDEDEDEDECECECECECECEFEFEFEDEDEDEAEAEAE9E9E9EB
        EBEB838383888888BDBDBDACACACC5C5C5D7D7D7F2F2F2FEFEFEFFFFFFFFFFFF
        A1B1AEE5F4EEE7F5EECBD8D5C3D4CFC8D6D3C8D6D3CBD8D5CBD8D5CBD8D5C8D6
        D3C8D6D3C8D6D3B5C5C29BA3A29BA3A2BCC9C6E5F0EBE7F1EBE0ECE7D3DFDB66
        6B69363B3B9E9E9E848788B0AFAFD3C8C9EEECECFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2F2F2F2F3F3F3DFDFDFDADADADDDDDDDDDDDDDFDFDFDFDFDFDFDFDFDDDD
        DDDDDDDDDDDDDDD0D0D0BBBBBBBBBBBBD4D4D4F0F0F0F2F2F2EDEDEDE4E4E494
        9494737373BBBBBBAAAAAAC7C7C7DCDCDCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
        A2B4B1E7F5EEEEF8F2D7E2DFD5E1DDD9E4E1D9E4E1D9E4E1D9E4E1DAE5E1DAE5
        E1BAC5C25E63614A4E4D616463757776757776595E5B959D9CADB9B76E716F59
        5E5B999A9A828686B6AEB2D3C8C9EEECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4F3F3F3F7F7F7E6E6E6E6E6E6E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8D2D2D28F8F8F8181819090909E9E9E9E9E9E8B8B8BB7B7B7C9C9C99999998B
        8B8BB7B7B7A8A8A8C9C9C9DCDCDCF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A7B7B5E7F5EEECF8F3E2EBE8DEE8E5E0ECE7E1EBE8E1EBE8E1EBE8E1EBE8A3A9
        A64A4E4D696C6B959595838384A9A8A8A2A3A39291949291947D7F7F696C6B9A
        9C9A818182BCB2B3D5D3D1F7F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7F3F3F3F6F6F6EDEDEDEBEBEBEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDC0C0
        C0818181969696B4B4B4A7A7A7C2C2C2BDBDBDB2B2B2B2B2B2A4A4A4969696B8
        B8B8A6A6A6CCCCCCE0E0E0F9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A7B7B5E7F5EEF0FDF5D7E2DFCFDBD8D6E1DFD9E2E0D7E2DFD7E2DFC0CAC74A4E
        4D7E8180858587BEBCBBFFFFFCFCFAFCFFFFFFFFFFFFEEECECB1B2B38181828A
        8A8ABAB7B9E5DDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7F3F3F3F9F9F9E6E6E6E1E1E1E6E6E6E7E7E7E6E6E6E6E6E6D6D6D68181
        81A5A5A5AAAAAAD0D0D0FEFEFEFCFCFCFFFFFFFFFFFFF2F2F2C9C9C9A6A6A6AC
        ACACCDCDCDEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B5B3E9F6F0F2FDF6F2FBF6ECF5F1DBE5E2DDE7E4DBE5E2DBE5E25E63616164
        63868989E5DDDFFFFFFFFFFAF8FFFDF9FFFFFCFFFFFFFFFFFFFFFFFFC3C2C2AE
        ACAEBAC5C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C5C5C5F4F4F4F9F9F9F9F9F9F4F4F4E9E9E9EBEBEBE9E9E9E9E9E98F8F8F9090
        90AAAAAAEAEAEAFFFFFFFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFD4D4D4C5
        C5C5D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B2B1ECFBF3F5FFF8ECF6F1E8F1ECDEE8E5DEE8E5DEE8E5E0E9E55254539C9C
        9CCDC5CAFFFFFFFEF4EEFBF6EFFBF6EFFBF6EFFBF6EFFEF7F1FEF7F1FFFDF9B1
        B2B3A2B2B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C3C3C3F7F7F7FBFBFBF5F5F5F2F2F2EBEBEBEBEBEBEBEBEBECECEC868686B9B9
        B9D9D9D9FFFFFFF9F9F9F8F8F8F8F8F8F8F8F8F8F8F8F9F9F9F9F9F9FDFDFDC9
        C9C9C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B2B1EFFCF4F5FFF8D5E1DED3DFDBDBE5E2DAE5E1DBE5E2B5BCBC565857BAB7
        B9FEEDEEFEF7F1FBF5EBFBF5EBFCF3E9FEF4EBFDF5ECFDF5ECFAF3EAFFFDF3D5
        D3D1B5BCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C3C3C3F8F8F8FBFBFBE6E6E6E4E4E4E9E9E9E8E8E8E9E9E9CDCDCD888888CDCD
        CDF8F8F8F9F9F9F7F7F7F7F7F7F6F6F6F7F7F7F7F7F7F7F7F7F6F6F6FBFBFBE0
        E0E0CDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A4B5B2EFFCF4F5FFF8DBE7E2D7E2DFDDE5E4DEE8E5DEE7E59BA3A2696C6BD3C8
        C9FFF3EDFDF5ECFCF3E9FCF2E8FCF2E8FCF2E8FCF2E8FCF2E8FBF1E7FFF7E9ED
        E4D9B5BCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4F8F8F8FBFBFBEAEAEAE6E6E6EAEAEAEBEBEBEBEBEBBBBBBB969696DCDC
        DCF9F9F9F7F7F7F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F5F5F5F7F7F7EB
        EBEBCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B5B3F0FDF5F6FFFADEE8E5DDE7E4E1EAE7E2EBE8E1EAE7C2CDCB7E8180DFCE
        D1FFF0E4FDF0E4FDF0E4FDF0E4FDF0E4FFF0E4FFF0E4FCF1E8FEF4EBFDF1E1FE
        EDDFABACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C5C5C5F9F9F9FBFBFBEBEBEBEBEBEBEDEDEDEDEDEDEDEDEDD7D7D7A5A5A5E2E2
        E2F5F5F5F4F4F4F4F4F4F4F4F4F4F4F4F5F5F5F5F5F5F6F6F6F7F7F7F4F4F4F3
        F3F3C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B5B3F0FDF5F5FFF8D7E2DFD3DFDBD9E4E1DAE5E1D9E4E1D9E4E1666B69D3C8
        C9FFF0E4FCF0DEFCE9D5FCE9D5FEECD9FCEEDFFCEEDFFAEDDFFAF0E3FEEDDFEF
        E0CDABACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C5C5C5F9F9F9FBFBFBE6E6E6E4E4E4E8E8E8E8E8E8E8E8E8E8E8E8949494DCDC
        DCF5F5F5F2F2F2EFEFEFEFEFEFF1F1F1F2F2F2F2F2F2F2F2F2F3F3F3F3F3F3E8
        E8E8C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A7B7B5F0FDF5F3FFF8DAE5E1D3DFDBDDE5E4DAE5E1DEE7E5DEE7E5828686BEBC
        BBFEEDDFFFF7E9FDF1E1FCEBD8FCE5CFFCE5CFF9E2CCFCE5CFFEECD9FCE9D5CD
        B9A8AEB4B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7F9F9F9FBFBFBE8E8E8E4E4E4EAEAEAE8E8E8EBEBEBEBEBEBA8A8A8D0D0
        D0F3F3F3F7F7F7F4F4F4F0F0F0EDEDEDEDEDEDEBEBEBEDEDEDF1F1F1EFEFEFCE
        CECEC9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A9B7B6F0FDF5F6FFFAF5FFF8F5FDF8E1EAE7E1EAE7E2ECE9E2ECE9E2ECE9A2A3
        A3DEC8B4FFF7E5FDF1E1FCEDDCFCEDDCFEEDDFFCEEDFFDF1E1FFFDEADEC8B4AF
        A89FADB9B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7F9F9F9FBFBFBFBFBFBFBFBFBEDEDEDEDEDEDEEEEEEEEEEEEEEEEEEBDBD
        BDD9D9D9F6F6F6F4F4F4F2F2F2F2F2F2F3F3F3F2F2F2F4F4F4F7F7F7D9D9D9C1
        C1C1C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A7B7B5F2FFF6F5FFF8F2FBF6ECF5F1E1EAE7E1EAE7E2EBE8E1EAE7DEE8E5D3DD
        DAAEACAEDEC8B4FFF8E7FFFDEAFFF7E5FFF7E5FFF7E5FFFDF3F1D6BC9B8C79E2
        EBE6A7B5B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7FAFAFAFBFBFBF9F9F9F4F4F4EDEDEDEDEDEDEDEDEDEDEDEDEBEBEBE3E3
        E3C5C5C5D9D9D9F7F7F7F7F7F7F6F6F6F6F6F6F6F6F6FBFBFBE2E2E2ACACACED
        EDEDC6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A7B7B5F3FFF8F5FFFAA0B1B07287886F83855E75765F76783D5A5C001B210000
        000B0B0C989691CDB9A8EFDCC9FCE9D5F9E2CCEFDCC9CDB9A8917E6AC9D0CEF2
        FFF6A4B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7FBFBFBFBFBFBC2C2C2A3A3A3A1A1A19696969797978181815656564B4B
        4B535353B3B3B3CECECEE6E6E6EFEFEFEBEBEBE6E6E6CECECEA3A3A3DBDBDBFA
        FAFAC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A9B7B6F2FFF6F0FDF5D0DDD9CCDAD7F2FBF6EAF3EFCFDBD8D5E1DEE8F1ECE5F0
        EBE2EBE8E2ECE9C9D0CEAFA89FABA094B9B2AAB9B2AAB9B2AAEEF5F2E9F6F0EE
        FBF3A7B5B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7FAFAFAF9F9F9E2E2E2E0E0E0F9F9F9F3F3F3E1E1E1E6E6E6F2F2F2F0F0
        F0EDEDEDEEEEEEDBDBDBC1C1C1BBBBBBC8C8C8C8C8C8C8C8C8F5F5F5F4F4F4F7
        F7F7C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A7B7B5F3FFF8F8FFFCB0C2BE809391EEF5F2EAF3EF3D5A5C6C8182F0F8F3DBE5
        E2DBE5E2DBE5E2DBE5E2DBE5E2E7F1EBE8F0EBEEF5F2E7F1EBE5F0EBEBF8F2F0
        FDF5A6B5B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7FBFBFBFCFCFCCECECEACACACF5F5F5F3F3F38181819F9F9FF7F7F7E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9F2F2F2F2F2F2F5F5F5F2F2F2F0F0F0F5F5F5F9
        F9F9C5C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B5B3F5FFFAFAFFFDFFFFFFC2CDCBBCC9C6F8FFFB768C8C6F8385FCFFFFE2EC
        E9E1EAE7E0E9E5E2EBE8E0E9E5DBE6E4D9E4E1D5E1DDD5E1DDD0DDD9E7F5EEEC
        FBF3A1B1AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C5C5C5FBFBFBFDFDFDFFFFFFD7D7D7D4D4D4FCFCFCA6A6A6A1A1A1FEFEFEEEEE
        EEEDEDEDECECECEDEDEDECECECE9E9E9E8E8E8E6E6E6E6E6E6E2E2E2F3F3F3F7
        F7F7C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A4B5B2F3FFF8F5FFFAFCFFFFFCFFFF95A7A792A6A36C818263797BF5FDF8DEE8
        E5DEE7E5DEE7E5DEE8E5DDE7E4D9E4E1D5E1DED3DFDBCCDAD7CBD9D6DDEBE5E8
        F6EF9CB0ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FBFBFBFBFBFBFEFEFEFEFEFEBBBBBBB9B9B99F9F9F999999FBFBFBEBEB
        EBEBEBEBEBEBEBEBEBEBEBEBEBE8E8E8E6E6E6E4E4E4E0E0E0DFDFDFECECECF4
        F4F4C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A4B5B2F5FFFAFCFFFFFEFFFFFFFFFFECF6F1A9B7B692A6A3677F7FF5FDF8DEE7
        E5DEE8E5DEE8E5DBE6E4D9E5E2D5E1DECCDAD7CBDAD7CCDAD7C8D9D3D8E8E1D3
        E5DDADB9B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FBFBFBFEFEFEFEFEFEFFFFFFF5F5F5C7C7C7B9B9B99C9C9CFBFBFBEBEB
        EBEBEBEBEBEBEBE9E9E9E8E8E8E6E6E6E0E0E0DFDFDFE0E0E0DEDEDEE9E9E9E6
        E6E6C9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B4B1F5FFFAFCFFFFFCFFFFFAFFFDFBFFFFDEE8E58A9C9C728788EEF6F3E1EA
        E7E1EBE8E1EAE7DFEAE5DBE7E2D3E0DBD0DED99EB2AF768C8C829C9792A6A347
        6462D9E2E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FBFBFBFEFEFEFEFEFEFDFDFDFEFEFEEBEBEBB3B3B3A3A3A3F6F6F6EDED
        EDEDEDEDEDEDEDECECECEAEAEAE4E4E4E3E3E3C2C2C2A6A6A6B0B0B0B9B9B987
        8787E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A1B2B0F3FFF8FCFFFFFCFFFFF8FFFCF8FFFCFFFFFFA2B2B27B8D8DE4EEEAD7E2
        DFD1DEDAD3DDDACFDBD8C8D6D3C3D4CF9CB0AD0000000000000000000B0B0CBC
        C9C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FBFBFBFEFEFEFEFEFEFCFCFCFCFCFCFFFFFFC3C3C3A8A8A8EFEFEFE6E6
        E6E3E3E3E3E3E3E1E1E1DDDDDDDADADAC0C0C04B4B4B4B4B4B4B4B4B535353D4
        D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A1B1AEF5FFFAFBFFFFFCFFFFFCFFFFFCFFFFFEFFFFFBFFFF879B99E4EEEAF6FF
        FAF2FBF6F2FDF6F0FDF5F0FDF5F0FDF5B6C9C4677F7FFCFFFFA4BAB5D2DBDAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FBFBFBFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEB1B1B1EFEFEFFBFB
        FBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D2D2D29C9C9CFEFEFEC7C7C7E2E2E2FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9FB1AEFBFFFFFFFFFFFFFFFFFCFFFFFCFFFFFCFFFFF3FFF8F5FFF8F8FFFCFFFF
        FFFEFFFFFCFFFFFCFFFFFCFFFFFCFFFFB6C9C436575498B1ACCED7D6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFBFBFBFBFBFBFCFCFCFFFF
        FFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED2D2D27C7C7CBFBFBFDFDFDFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B4B1FBFFFFFFFFFFFFFFFFFBFFFFFCFFFFFCFFFFF5FFF8FAFFFDFAFFFDFCFF
        FFFCFFFFF8FFFCFCFFFFF6FFFAEBFCF2829C9706171BD5DEDCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFBFBFBFDFDFDFDFDFDFEFE
        FEFEFEFEFCFCFCFEFEFEFBFBFBF7F7F7B0B0B0565656E4E4E4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        92A6A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCFFFFFCFFFFE5F5ECC3D4CF365754C2CDCBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFEFEFEFEF2F2F2DADADA7C7C7CD7D7D7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BAC5C29DB3AEA8BDB8A8BDB8A4BAB5A8BDB8A8BDB8AFC3BFAFC3BFAFC3BFB0C2
        BEB5C5C2BCC9C6B0C2BEA7B7B59CB0ADC2CDCBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D2D2D2C2C2C2C9C9C9C9C9C9C7C7C7C9C9C9C9C9C9CECECECECECECECECECECE
        CED0D0D0D4D4D4CECECEC7C7C7C0C0C0D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 2
    end
    object CbTipoConsulta: TComboBox
      Left = 8
      Top = 25
      Width = 188
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'Data Emiss'#227'o'
      OnChange = CbTipoConsultaChange
      Items.Strings = (
        'Data Emiss'#227'o')
    end
    object ComboBox2: TComboBox
      Left = 8
      Top = 72
      Width = 188
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 7
      ParentFont = False
      TabOrder = 2
      Text = 'N'#227'o Validada'
      Items.Strings = (
        'Valida'#231#227'o Normal Sem Retorno'
        'Erro na Valida'#231#227'o do Arquivo'
        'Valida'#231#227'o Conting'#234'ncia Sem Retorno'
        'Valida'#231#227'o SCAN Sem Retorno'
        'NF-e Validada'
        'NF-e Cancelada'
        'NF-e Inutilizada'
        'N'#227'o Validada'
        'NF-e Devolu'#231#227'o'
        'Todos')
    end
    object EDataFinal: TJvDatePickerEdit
      Left = 335
      Top = 25
      Width = 108
      Height = 21
      AllowNoDate = True
      ButtonWidth = 28
      Checked = True
      TabOrder = 3
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 449
      Top = 25
      Width = 356
      Height = 21
      KeyField = 'FIL_CODIGO'
      ListField = 'FIL_NOMEFANTASIA'
      ListSource = DslookFiliais
      TabOrder = 4
      Visible = False
      OnClick = DBLookupComboBox1Click
    end
    object EDataInicial: TJvDatePickerEdit
      Left = 208
      Top = 24
      Width = 110
      Height = 22
      Cursor = crHandPoint
      AllowNoDate = True
      ButtonWidth = 27
      Checked = True
      TabOrder = 5
    end
    object Memo1: TMemo
      Left = 1152
      Top = 54
      Width = 684
      Height = 73
      Lines.Strings = (
        'select '
        '    nota.not_codigo,'
        '    nota.not_nr,'
        '    nota.not_especie,'
        '    nota.not_serie,'
        '    nota.not_dataemissao,'
        '    nota.not_datasaida,'
        '    nota.ped_codigo,'
        '    nota.not_totitens,'
        '    nota.not_totnota,'
        '    nota.tra_codigo,'
        '    nota.not_cpfcnpj,'
        '    nota.not_desconto,'
        '    nota.not_acrecimo,'
        '    nota.not_valipi,'
        '    nota.not_aliqipi,'
        '    nota.not_baseipi,'
        '    nota.deletado,'
        '    nota.not_valicm,'
        '    nota.not_aliqicm,'
        '    nota.not_baseicm,'
        '    nota.not_situacao,'
        '    nota.not_basesubs,'
        '    nota.not_valsubs,'
        '    nota.frete,'
        '    nota.not_valfrete,'
        '    nota.not_valseguro,'
        '    nota.not_despacess,'
        '    nota.cli_codigo,'
        '    nota.not_volumes,'
        '    nota.not_tipo_volumes,'
        '    nota.not_aliqsubs,'
        '    nota.cfop_cof,'
        '    nota.nt_valorissqn,'
        '    nota.nt_valortotalservico,'
        '    nota.not_valissqn,'
        '    nota.not_baseissqn,'
        '    nota.not_aliissqn,'
        '    nota.not_itens_desconto,'
        '    nota.not_itensservico_desconto,'
        '    nota.not_itens_totalprod,'
        '    nota.not_itens_serv_subtotal,'
        '    nota.os_codigo,'
        '    nota.mon_codigo,'
        '    nota.not_formapgmt,'
        '    nota.not_observacao,'
        '    nota.emp_grupo,'
        '    nota.data,'
        '    nota.horas,'
        '    nota.user_nome,'
        '    nota.nomecomputador,'
        '    nota.ipdamaquina,'
        '    nota.emp_codigo,'
        '    nota.not_transrazao,'
        '    nota.not_transplaca,'
        '    nota.not_transcnpjcpf,'
        '    nota.not_transendereco,'
        '    nota.not_transmunicipio,'
        '    nota.not_transuf2,'
        '    nota.not_transqtd,'
        '    nota.not_transespecie,'
        '    nota.not_transmarca,'
        '    nota.not_transnumero,'
        '    nota.not_transpesobruto,'
        '    nota.not_transpesoliquido,'
        '    nota.not_transinscricao,'
        '    nota.not_transuf,'
        '    nota.duplicata1,'
        '    nota.duplicata2,'
        '    nota.duplicata3,'
        '    nota.duplicata4,'
        '    nota.duplicata5,'
        '    nota.duplicata6,'
        '    nota.vencimento1,'
        '    nota.vencimento2,'
        '    nota.vencimento3,'
        '    nota.vencimento4,'
        '    nota.vencimento5,'
        '    nota.vencimento6,'
        '    nota.valor1,'
        '    nota.valor2,'
        '    nota.valor3,'
        '    nota.valor4,'
        '    nota.valor5,'
        '    nota.valor6,'
        '    nota.boletoautomatico,'
        '    nota.not_status,'
        '    nota.not_horasaida,'
        '    nota.not_entradasaida,'
        '    nota.not_obscorpoitem,'
        '    nota.fil_cnpj,'
        '    nota.not_chavenfe,'
        '    nota.not_caminhoxmlnfe,'
        '    nota.not_lote,'
        '    nota.memoresp,'
        '    nota.wbresposta,'
        '    nota.memolog,'
        '    nota.memorespws,'
        '    nota.memodados,'
        '    nota.not_basepis,'
        '    nota.not_aliqpis,'
        '    nota.not_valpis,'
        '    nota.not_basecofins,'
        '    nota.not_aliqcofins,'
        '    nota.not_valcofins,'
        '    nota.not_formadeemissao,'
        '    nota.not_formapgmtnfe,'
        '    nota.not_finalildadeemissao,'
        '    nota.not_tipoimpressaodanfe,'
        '    nota.not_calcularautomatico,'
        '    nota.not_tipo,'
        '    nota.not_status_nfe,'
        '    nota.not_efcstatus,'
        '    nota.not_numeronfe,'
        '    nota.cfop_descricao,'
        '    '
        'nota.nfe_optantesimplesnascional,'
        '    nota.not_obsfisco,'
        '    nota.not_nfestatusstring,'
        '    nota.fil_codigo,'
        '    clientes.cli_razao,'
        '    clientes.emp_codigo,'
        '    clientes.cli_fantasia,'
        '    clientes.cli_fone,'
        '    clientes.cli_cpfcnpj,'
        '    clientes.cli_codigo,'
        '    clientes.CLI_EMAIL'
        'from clientes'
        '   inner join nota on '
        '(clientes.emp_codigo = '
        'nota.emp_codigo) and '
        '(clientes.cli_codigo = '
        'nota.cli_codigo)')
      TabOrder = 6
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 592
      Top = 112
      Width = 654
      Height = 21
      DataField = 'CHAVE'
      DataSource = dsRxNotaFiscal
      TabOrder = 7
    end
  end
  object CbTipoOperacao: TComboBox
    Left = -140
    Top = -22
    Width = 488
    Height = 21
    BevelKind = bkFlat
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ItemIndex = 7
    ParentFont = False
    TabOrder = 1
    Text = 'Todos'
    Items.Strings = (
      'NF-e Validada'
      'N'#227'o Validada'
      'Erro na Valida'#231#227'o do Arquivo'
      'Valida'#231#227'o Contig'#234'ncia /Scan '
      'Valida'#231#227'o Sem Retorno'
      'Cancelada'
      'Inutilizada'
      'Todos')
  end
  object StBar: TStatusBar
    Left = 0
    Top = 446
    Width = 811
    Height = 28
    Panels = <
      item
        Width = 200
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object ESerie: TDBEdit
    Left = 856
    Top = 709
    Width = 97
    Height = 21
    DataField = 'SERIE'
    Enabled = False
    TabOrder = 8
    Visible = False
  end
  object ENota: TDBEdit
    Left = 559
    Top = 146
    Width = 75
    Height = 21
    DataField = 'NOTA_FISCAL'
    DataSource = dsRxNotaFiscal
    Enabled = False
    TabOrder = 9
    Visible = False
  end
  object ECodCliente: TDBEdit
    Left = 514
    Top = 620
    Width = 75
    Height = 21
    DataField = 'COD_CLIENTE'
    Enabled = False
    TabOrder = 0
    Visible = False
  end
  object EChave: TDBEdit
    Left = 280
    Top = 641
    Width = 75
    Height = 21
    DataField = 'CHAVE'
    Enabled = False
    TabOrder = 4
    Visible = False
  end
  object ckVisualizar: TCheckBox
    Left = 590
    Top = 620
    Width = 125
    Height = 17
    Caption = 'Visualizar Mensagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object rgFormaEmissao: TRadioGroup
    Left = 0
    Top = 700
    Width = 1024
    Height = 35
    Caption = 'Forma de Emiss'#227'o'
    Columns = 5
    ItemIndex = 0
    Items.Strings = (
      'Normal'
      'Conting'#234'ncia'
      'SCAN'
      'DPEC'
      'FSDA')
    TabOrder = 6
    Visible = False
  end
  object rgImpressao: TRadioGroup
    Left = 0
    Top = 665
    Width = 1024
    Height = 35
    Caption = 'Forma de Emiss'#227'o'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Retrato'
      'Paisagem')
    TabOrder = 7
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 173
    Width = 811
    Height = 239
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 13
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object DBGridConsulta: TDBGrid
        Tag = 100
        Left = 0
        Top = 0
        Width = 803
        Height = 211
        Align = alClient
        DataSource = dsRxNotaFiscal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGridConsultaCellClick
        OnColEnter = DBGridConsultaColEnter
        OnDrawColumnCell = DBGridConsultaDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'MARCADO'
            Title.Caption = 'Ativar'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_EMISSAO'
            Title.Caption = 'Data Emiss'#227'o'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOTA_FISCAL'
            Title.Caption = 'N'#186' Nota Fiscal'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_CLIENTE'
            Title.Caption = 'Cliente'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO_SOCIAL'
            Title.Caption = 'Raz'#227'o Social'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJCPF'
            Title.Caption = 'CNPJ/CPF'
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_NOTA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Nota'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS_NFE'
            Title.Caption = 'Status'
            Width = 49
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = '...'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 803
        Height = 211
        ActivePage = TabSheet5
        Align = alClient
        TabOrder = 0
        object TabSheet5: TTabSheet
          Caption = 'Respostas'
          object MemoResp: TMemo
            Left = 0
            Top = 0
            Width = 795
            Height = 183
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'XML Resposta'
          ImageIndex = 1
          object WBResposta: TWebBrowser
            Left = 0
            Top = 0
            Width = 795
            Height = 183
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 836
            ExplicitHeight = 206
            ControlData = {
              4C0000002A520000EA1200000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126208000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Log'
          ImageIndex = 2
          object memoLog: TMemo
            Left = 0
            Top = 0
            Width = 795
            Height = 183
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'NFe'
          ImageIndex = 3
          object trvwNFe: TTreeView
            Left = 0
            Top = 0
            Width = 795
            Height = 183
            Align = alClient
            Indent = 19
            TabOrder = 0
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Retorno Completo WS'
          ImageIndex = 4
          object memoRespWS: TMemo
            Left = 0
            Top = 0
            Width = 795
            Height = 183
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object Dados: TTabSheet
          Caption = 'Dados'
          ImageIndex = 5
          object MemoDados: TMemo
            Left = 0
            Top = 0
            Width = 795
            Height = 183
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
  end
  object mmEmailMsg: TJvMemo
    Left = 880
    Top = 384
    Width = 185
    Height = 89
    Lines.Strings = (
      'mmEmailMsg')
    TabOrder = 14
    Visible = False
  end
  object EValorICMS: TJvCalcEdit
    Left = -535
    Top = 1105
    Width = 89
    Height = 21
    DisplayFormat = ',0.00'
    ButtonWidth = 28
    TabOrder = 15
    Visible = False
    DecimalPlacesAlwaysShown = False
  end
  object EPis: TJvCalcEdit
    Left = 376
    Top = 618
    Width = 89
    Height = 21
    DisplayFormat = ',0.00'
    ButtonWidth = 28
    TabOrder = 16
    Visible = False
    DecimalPlacesAlwaysShown = False
  end
  object ECofins: TJvCalcEdit
    Left = 376
    Top = 642
    Width = 89
    Height = 21
    DisplayFormat = ',0.00'
    ButtonWidth = 28
    TabOrder = 17
    Visible = False
    DecimalPlacesAlwaysShown = False
  end
  object ETotalNota: TJvCalcEdit
    Left = 280
    Top = 597
    Width = 89
    Height = 21
    DisplayFormat = ',0.00'
    ButtonWidth = 28
    TabOrder = 18
    Visible = False
    DecimalPlacesAlwaysShown = False
  end
  object EBaseICMS: TJvCalcEdit
    Left = 592
    Top = 597
    Width = 89
    Height = 21
    DisplayFormat = ',0.00'
    ButtonWidth = 28
    TabOrder = 19
    Visible = False
    DecimalPlacesAlwaysShown = False
  end
  object EReceb: TJvCalcEdit
    Left = 592
    Top = 642
    Width = 89
    Height = 21
    DisplayFormat = ',0.00'
    ButtonWidth = 28
    TabOrder = 20
    Visible = False
    DecimalPlacesAlwaysShown = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 64
    Align = alTop
    TabOrder = 21
    object btnStatusServico: TSpeedButton
      Tag = -1
      Left = 8
      Top = 5
      Width = 80
      Height = 56
      Cursor = crHandPoint
      Hint = 'Status servi'#231'o'
      Align = alCustom
      Caption = 'Status servi'#231'o'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFA5A6A67B7B7B4F504F5D5D5D8A8A8ABEBEBEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFAAAAAA8282825A5A5A666666909090C1C2C2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBFBFBFA2A2A28383838D8D8DACACACD1D1D1FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFC3C3C3A7A7A78B8B8B939393B1B1B1D3D3D3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E8E8E8828282555555555555555555555555555555555555939393FFFFFFFFFF
        FFE8E8EA8686865D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D999999FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EFEFEFA7A7A7878787878787878787878787878787878787B3B3B3FFFFFFFFFF
        FFEFEFEFAAAAAA8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8DB7B7B7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        8A8A8A6666665C5C7A3E3EC33131DF3131DF3E3EC362626B666666A3A3A3FFFF
        FF9090906C6C6C5C7C6024B53505CA1D0EC12324B5356872696C6C6CA7A7A7FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        ACACAC939393979797A5A5A5ABABABABABABA5A5A5939393939393BEBEBEFFFF
        FFB1B1B1979797979797979797949494949494979797989898979797C1C1C1FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD
        7777786B6B8A2F2FE92C2CED2B2BEB2B2BEB2B2BEB3E3EC3777778777778B2B2
        B27E7E7E619A6705CA1D00CE1800CE1800CE1800CE1824B5357C7E7D7E7E7EEB
        EBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0
        9F9F9FA1A1A1AEAEAEAEAEAEADADADADADADADADADA5A5A59F9F9F9F9F9FC9C9
        C9A4A4A4A3A3A3949494949494949494949494949494979797A3A3A3A4A4A4F1
        F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAA
        8A8A8A4E4ED12C2CED2C2CED2C2CED2B2BEB2B2BEB2B2BEB6565B08A8A8A9999
        9990909024B53500D01800D01800CE1800CE1800CE1800CE18619A67909090D5
        D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3
        ACACACB0B0B0AEAEAEAEAEAEAEAEAEADADADADADADADADADACACACACACACB7B7
        B7B1B1B1979797949494949494949494949494949494949494A3A3A3B1B1B1E1
        E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1A1
        9E9E9D5252F05252F03B3BEF2C2CEE2C2CED2C2CED2C2CED4E4ED19E9E9D9494
        94A3A3A334D84724D73912D32800D01800D01800CE1800CE1846C155A3A3A3C5
        C5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBD
        BABABABDBDBDBDBDBDB4B4B4AFAFAFAEAEAEAEAEAEAEAEAEB0B0B0BABABAB3B3
        B3BEBEBEAAAAAAA3A3A39B9B9B949494949494949494949494A7A7A7BEBEBED6
        D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6
        B2B2B28484F08484F08484F06D6DF33B3BEF2C2CED2C2CED6666D3B2B2B2ADAD
        ADB6B6B65FE16E5FE16E5FE16E5FE16E12D32800D01800D01846C155B6B6B6D3
        D3D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB
        C9C9C9CECECECECECECECECEC7C7C7B4B4B4AEAEAEAEAEAEB9B9B9C9C9C9C5C5
        C5CBCBCBBCBCBCBCBCBCBCBCBCBCBCBC9B9B9B949494949494A7A7A7CBCBCBE0
        E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3
        C5C5C5ACACE1A1A1F8A1A1F8A1A1F86D6DF33B3BEF2E2EEDA3A3CEC5C5C5C8C8
        C8C8C8C8A1DAA789E69489E69489E6945FE16E12D32802CF1A9BCAA1C8C8C8E7
        E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E0
        D6D6D6D7D7D7DBDBDBDBDBDBDBDBDBC7C7C7B4B4B4AFAFAFCDCDCDD6D6D6D8D8
        D8D8D8D8D0D0D0CCCCCCCCCCCCCCCCCCBCBCBC9B9B9B949494C9C9C9D8D8D8EE
        EEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E3E3
        D7D7D7D5D5D9B9B9F4B9B9F4A1A1F88484F05252F08484F0D7D7D7D5D5D5DBDB
        DBD9D9D9D6DAD6ABEAB3ABEAB389E6945FE16E34D84789E694D9D9D9D7D7D7F2
        F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB
        E3E3E3E3E3E3E2E2E2E2E2E2DBDBDBCECECEBDBDBDCECECEE3E3E3E1E1E1E6E6
        E6E4E4E4E3E3E3DADADADADADACCCCCCBCBCBCAAAAAACCCCCCE4E4E4E3E3E3F6
        F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB
        D7D7D7E7E7E7E7E7E7D0D0ECB9B9F4B7B7EFD0D0ECE7E7E7E7E7E7D3D3D3DFDF
        DFD9D9D9E8E8EAE8E8E8CAE8CEABEAB3ABEAB3CAE8CEE8E8E8E7E7E5CECDCEF2
        F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1
        E3E3E3EEEEEEEEEEEEE8E8E8E2E2E2E0E0E0E8E8E8EEEEEEEEEEEEE0E0E0E8E8
        E8E4E4E4EFEFEFEFEFEFE4E4E4DADADADADADAE4E4E4EFEFEFEDEDEDDCDCDCF6
        F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F3F3
        CBCBCBCBCBCBF5F5F5F5F5F5F5F5F5F5F5F5F5F5F5D9D9D9B6B6B6DBDBDBE8E8
        E8CBCBCBCBCBCBF6F6F6EBEBEBE7E7E7E7E7E7E8E8E8C8C8C89393939FA19FAA
        AAAAD9D9D9FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6
        DADADADADADAF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8E4E4E4CBCBCBE6E6E6EFEF
        EFDADADADADADAF9F9F9F1F1F1EEEEEEEEEEEEEFEFEFD8D8D8B3B3B3BCBCBCC3
        C3C3E4E4E4FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F8
        E1E3E3B4B5B58D8D8D909090B2B2B2A5A5A58D8D8D909090C5C5C5EBEBEBF5F5
        F5E1E3E3ADADAD6C6C6C7B7B7BA5A5A59B9C9C828282747474ADADADC2C4C4BA
        BBBBA5A5A5A8A8A8BDBDBDBABBBBD9D9D9F8F7F8FFFFFFFFFFFFFFFFFFF9F9F9
        EBEBEBCACACAAFAFAFB1B1B1C9C9C9BFBFBFAFAFAFB1B1B1D6D6D6F1F1F1F8F8
        F8EBEBEBC5C5C5979797A2A2A2BFBFBFB8B8B8A7A7A79D9D9DC5C5C5D5D5D5CE
        CECEBFBFBFC2C2C2D0D0D0CECECEE4E4E4F9F9F9FFFFFFFFFFFFFFFFFFFEFEFE
        F2F3F3DBDBDBBABBBB9999997B7B7B8D8D8DA5A5A5C5C5C5E5E5E5F8F7F8FCFC
        FCF2F3F3AAAAAA7474747474746C6C6C7B7B7B939593A5A5A5BFBFBDCFCAC9C1
        C2C29FA19F8389828B938DAE9D9FBBBABDC9CFD2ECECECFFFFFFFFFFFFFEFEFE
        F6F6F6E6E6E6CECECEB7B7B7A2A2A2AFAFAFBFBFBFD6D6D6EDEDEDF9F9F9FDFD
        FDF6F6F6C3C3C39D9D9D9D9D9D979797A2A2A2B3B3B3BFBFBFD1D1D1DBDBDBD3
        D3D3BCBCBCA9A9A9B0B0B0BFBFBFCFCFCFDCDCDCF2F2F2FFFFFFFFFFFFFFFFFF
        FCFCFCF5F5F5E7E7E57071703F3F3F5555554F504F3F3F3FA1A1A1D7D7D7FFFF
        FFFCFCFCD3D3D39090909FA19F9E9EA1AAAAAABFBFBDC1C1BFBDBEBBA2A9A586
        86867E7E7E938E91C0B8BCCDC9CCCFCAC9D9D8D5E8E8EAFFFFFFFFFFFFFFFFFF
        FDFDFDF8F8F8EDEDED9A9A9A777777878787838383777777BDBDBDE3E3E3FFFF
        FFFDFDFDE0E0E0B1B1B1BCBCBCBBBBBBC3C3C3D1D1D1D3D3D3D0D0D0BFBFBFAA
        AAAAA4A4A4B1B1B1D0D0D0DADADADBDBDBE3E3E3EFEFEFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEF8F7F88C86888882816C6C6C8282827B7B7B7C7E7D8686869FA1
        9FD7D7D7FEFEFEBEBEBE9999999E9E9DA3A3A39B9C9C8686866C6C6C4F504F70
        7170A0A6ADBCCED8B8D7D8BFCDCBFEF5F1FBFFFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEF9F9F9ACACACA8A8A8979797A7A7A7A2A2A2A3A3A3AAAAAABCBC
        BCE3E3E3FEFEFED1D1D1B7B7B7BABABABEBEBEB8B8B8AAAAAA9797978383839A
        9A9AC0C0C0DADADAD8D8D8D7D7D7F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9FAFAB1A6A7B2A6A87071708A8A8A9D9D9DADADAD9E9E9D7C7E
        7DA2A4A2BDBEBEC1C2C2B7BAB7B7BAB79E9EA17C8A8D7C8A8D90ADB4BCCED8C9
        F4F2C9F4F2D8C9C2D8BCB49FB1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFBC4C4C4C4C4C49A9A9AACACACBABABAC5C5C5BABABAA3A3
        A3BEBEBED0D0D0D3D3D3CDCDCDCDCDCDBBBBBBA8A8A8A8A8A8BDBDBDDADADAE8
        E8E8E8E8E8DCDCDCD7D7D7C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF8F7F8C8B6B5BBACAE7C7E7D9090908D8D8D9B9A96A9B7B7BBBA
        BDABA4A5B3BFC4B3BFC4A6C4C995B9C295B9C290ADB4A4A4A7A68F8FBC7A6CB6
        4838CC2710A20000B64838AFCFD3F2F3F3FFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9F9D1D1D1C9C9C9A3A3A3B1B1B1AFAFAFB6B6B6C7C7C7CFCF
        CFC1C1C1CFCFCFCFCFCFCCCCCCC4C4C4C4C4C4BDBDBDBFBFBFB8B8B8B3B3B39F
        9F9F9999998484849F9F9FD3D3D3F6F6F6FFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9FAFAC8B6B5B1ACAB8686869E9E9DA5A7A59E9EA19498A790AD
        B495B9C2A6C4C99FB1ADA68F8F8B4E46A83E349B0D089D0200AB03009D0200A2
        0000A70800A20000B64838AFD7E0E1E3E3FFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFBD1D1D1C6C6C6AAAAAABABABAC0C0C0BBBBBBBABABABDBD
        BDC4C4C4CCCCCCC2C2C2B8B8B894949499999984848482828287878782828284
        84848686868484849F9F9FD7D7D7EBEBEBFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9FAFABBACAEABA4A5959897A8A8A8B2B2B29FB1AD7F75728B4E
        4685322F92070C7E00007E00008801008801009300009D0200B9361DC43A28C4
        3A28C43A28CC2710DB4E38B8D7D8C9CFD2FFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFBC9C9C9C1C1C1B5B5B5C2C2C2C9C9C9C2C2C2A0A0A09494
        948B8B8B8181817777777777777B7B7B7B7B7B7F7F7F8282829797979E9E9E9E
        9E9E9E9E9E999999ACACACD8D8D8DCDCDCFFFFFFFEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF2F3F3AE9D9FAE9D9FA5A6A6B6B6B6BDBDBDB8D7D885322F7E00
        007E00007E00007E0000880100960B019B13019D0200AE1F0DCE5B45CE5B45CE
        5B45CE5B45DB4E38DB4E38AFCFD3BFCDCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6BFBFBFBFBFBFBFBFBFCBCBCBD0D0D0D8D8D88B8B8B7777
        777777777777777777777B7B7B8080808282828282828D8D8DACACACACACACAC
        ACACACACACACACACACACACD3D3D3D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF2F3F39D9496A29A9AB4B5B5BABBBBC1C2C2C8E1E19F6E687E00
        0090271D90271D8E0D048E0D049B1301A20F00AB0300C43A28DD7C67E0725CE0
        725CE0725CF47054F47054C9CFD2B5C5C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6F6B6B6B6BBBBBBCACACACECECED3D3D3E1E1E1A7A7A77777
        778888888888887F7F7F7F7F7F8282828484848787879E9E9EBDBDBDBBBBBBBB
        BBBBBBBBBBBFBFBFBFBFBFDCDCDCD1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF8F7F8938E919C9A98BBBABDBABBBBC1C1BFC8E1E1AE9D9F8E0D
        04A83E34A83E34960B01960B01A61500B20F00B80100DB4E38F29E8EF48B77F4
        8B77F48B77F48B77F47054CFC2C4A9B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9F9B1B1B1B8B8B8CFCFCFCECECED3D3D3E1E1E1BFBFBF7F7F
        7F9999999999998080808080808686868A8A8A8C8C8CACACACD3D3D3CBCBCBCB
        CBCBCBCBCBCBCBCBBFBFBFD8D8D8C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9FAFA6C6C6C828783C8C8C8BDBDBDC1C2C2D3DCE1B1ACAB8715
        0EB15C53A83E34930000A20F00A61500BE1000B80100DD7C67F7B3A5F29E8EF2
        9E8EF29E8EFBA792F48B77D8BCB4A9B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFB979797A8A8A8D8D8D8D0D0D0D3D3D3E5E5E5C6C6C67F7F
        7FA7A7A79999997F7F7F8484848686868E8E8E8C8C8CBDBDBDDCDCDCD3D3D3D3
        D3D3D3D3D3D7D7D7CBCBCBD7D7D7C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000700505951CECDCEBFBDBEC4C3C3D3DCE1BFCDCB9027
        1DBC7A6C90271D930000A61500B51800BE1000C40500FBA792F1C4BBF7B3A5F7
        B3A5F7B3A5FDBFA8FBA792E8C2BAA9B7B7F9F9FDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4D4D4D868686DCDCDCD1D1D1D5D5D5E5E5E5D7D7D78888
        88B3B3B38888887F7F7F8686868B8B8B8E8E8E909090D7D7D7E2E2E2DCDCDCDC
        DCDCDCDCDCDFDFDFD7D7D7DFDFDFC7C7C7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF242324777778D6D4D6B6B6B6BDBDBDC9CFD2C8E1E18B4E
        46BC7A6C930000A20F00B51800CB1A00CB1A00E11C00FFD3C1FED4C6FFC7B7FF
        C7B7FFC7B7FFCDBDFFC6AFF0C3B2A9B7B7E7EFEBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF6464649F9F9FE1E1E1CBCBCBD0D0D0DCDCDCE1E1E19494
        94B3B3B37F7F7F8484848B8B8B9292929292929A9A9AE9E9E9EBEBEBE6E6E6E6
        E6E6E6E6E6E8E8E8E3E3E3DFDFDFC7C7C7F1F1F1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFEBEBEBD9DCDADAD9DCC8E1E19F6E
        68A83E349D0200B51800CB1A00E11C00EE0100F83D1EFFF3ECFEDDCFFED4C6FE
        D4C6FEDDCFFEDDCFFEDDCFF0C3B2A9B7B7D9DCDAFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFF1F1F1E5E5E5E5E5E5E1E1E1A7A7
        A79999998282828B8B8B9292929A9A9A9F9F9FADADADF8F8F8EDEDEDEBEBEBEB
        EBEBEDEDEDEDEDEDEDEDEDDFDFDFC7C7C7E5E5E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5FDFD9F6E
        68930000AB0300BD1A00CB1A00E11C00EE0100F47054FFFFFFFEE3DBFEDDCFFE
        E3DBFEE3DBFFEEE3FFEEE3FFD3C1BFCDCBC9CFD2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5A7A7
        A77F7F7F8787878D8D8D9292929A9A9A9F9F9FBFBFBFFFFFFFF2F2F2EDEDEDF2
        F2F2F2F2F2F5F5F5F5F5F5E9E9E9D7D7D7DCDCDCFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFDFFFF9F6E
        68880100B20F00BD1A00CB1A00E11C00EE0100FDBFA8FDFFFFFFFAF3FFF3ECFE
        F5F1FFF3ECFFF3ECFFEEE3FFC6AFD1D4D4B4B6B9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEA7A7
        A77B7B7B8A8A8A8D8D8D9292929A9A9A9F9F9FDFDFDFFEFEFEFBFBFBF8F8F8F9
        F9F9F8F8F8F8F8F8F5F5F5E3E3E3DFDFDFCBCBCBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA68F
        8F930000B80100C40500D70300EE0100EE0100FFCDBDFFEEE3F0C3B2E5B19CE5
        B19CE5B19CE5B19CD8BCB4E8C2BAE7E7E5BAC7C6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8
        B87F7F7F8C8C8C9090909797979F9F9F9F9F9FE8E8E8F5F5F5DFDFDFD3D3D3D3
        D3D3D3D3D3D3D3D3D7D7D7DFDFDFEDEDEDD3D3D3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBA9
        A46900009D0200A70800AE1F0DC43A28CE5B45BBA9A4C8B6B5C8B6B5CAC4C8D8
        D7DCDEEBEAE5FDFDF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7
        C77070708282828686868D8D8D9E9E9EACACACC7C7C7D1D1D1D1D1D1D7D7D7E4
        E4E4ECECECF5F5F5FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6CD
        C9A2A9A5B8D7D8C9F4F2E5FDFDE5FDFDF6FFFFF6FFFFFFFFFFFFFFFFFDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3
        D3BFBFBFD8D8D8E8E8E8F5F5F5F5F5F5FBFBFBFBFBFBFFFFFFFFFFFFFEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      OnClick = btnStatusServicoClick
    end
    object btnValidarNFe: TSpeedButton
      Tag = -1
      Left = 86
      Top = 5
      Width = 80
      Height = 56
      Cursor = crHandPoint
      Hint = 'Validar NF-e'
      Align = alCustom
      BiDiMode = bdLeftToRight
      Caption = 'Validar NF-e'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFEFDFDFDFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B7C8C338575641605D476462526C6A5A74715B75735B75735B75735F78785A74
        7157737056706E526C6A526C6A56706E65807D6A8380577370526C6A41605D41
        605D8A8A8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D2D2D27D7D7D8383838787878E8E8E9494949494949494949494949797979494
        949292929191918E8E8E8E8E8E9191919B9B9B9E9E9E9292928E8E8E83838383
        8383ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9FB1AEEFFCF4F1FFF6F2FFF6F0FDF5F0FDF6EFFCF4EEFBF3EEFBF3EEFBF3EDFB
        F3E4F1EAD2DFD9C0CAC7C0CAC7FFFFFFFEFEFEFCFCFCFFFFFFE5F2EBE2F2EBDF
        F0E799A9A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2F8F8F8FAFAFAFAFAFAF9F9F9F9F9F9F8F8F8F7F7F7F7F7F7F7F7F7F7F7
        F7F0F0F0E3E3E3D6D6D6D6D6D6FFFFFFFEFEFEFDFDFDFFFFFFF1F1F1F0F0F0EE
        EEEEBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9CACABE5F5ECEBF8F2E4F1EAE5F2EBE4F1EAE2EFE9E2EFE9E2EFE9E5EFEADDE9
        E4CED9D4B2BDBA9EA5A2ABB2AFFCFCFCB3E2B985D68CECF5F0E1ECE7D8E7E1DB
        EBE499A9A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BFBFBFF2F2F2F5F5F5F0F0F0F1F1F1F0F0F0EFEFEFEFEFEFEFEFEFF0F0F0EBEB
        EBE0E0E0CCCCCCBDBDBDC6C6C6FDFDFDDADADAC5C5C5F4F4F4EDEDEDE8E8E8EB
        EBEBBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A1B1AFE5F5EEE7F5EECBD9D5C3D5CFC8D8D3C6D4D1CBD9D5CBD9D5C6D4D1B5C3
        C1A0AAA98B95938B9593FBFAFBB3E2B922B43522B43599D69BF9F9F9DEEBE6DB
        EBE49EAEADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2F2F2F2F3F3F3DFDFDFDBDBDBDEDEDEDCDCDCDFDFDFDFDFDFDCDCDCD0D0
        D0BFBFBFB1B1B1B1B1B1FBFBFBDADADA979797979797CCCCCCFBFBFBECECECEB
        EBEBC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B3B1E7F5EEEEF8F2D7E2DFD5E0DDD9E4E1D9E4E1D9E4E1D5E0DDC9D2CEB2BB
        B898A09D959C99FBFAFBC7E3CB44CD592ABE412ABE4146C558C7E3CBFDFDFDE2
        EFE9A5B4B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C3C3C3F3F3F3F7F7F7E6E6E6E5E5E5E8E8E8E8E8E8E8E8E8E5E5E5DCDCDCCBCB
        CBB9B9B9B6B6B6FBFBFBE1E1E1ABABAB9D9D9D9D9D9DA9A9A9E1E1E1FEFEFEEF
        EFEFC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A8B6B5E7F5EEECF8F3E2EBE8DEE9E5E1ECE7E1EBE8DCE6E3D1D9D6B7C1BE9EA5
        A298A09DFBFAFBD0E4D35BDA7040D15540D15538CA4E38CA4E7ACE83EBEFEBEA
        F3EDA2B1B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7F3F3F3F6F6F6EDEDEDEBEBEBEDEDEDEDEDEDEAEAEAE1E1E1D0D0D0BDBD
        BDB9B9B9FBFBFBE5E5E5B8B8B8ABABABABABABA6A6A6A6A6A6BFBFBFF2F2F2F3
        F3F3C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A8B6B5E7F5EEF0FDF5D7E2DFD0DBD9D6E1DFD5DEDCC9D2CEB2BBB898A09D959C
        99F9F9F9D0E4D369E77E4CE7684EDD644EDD644EDD6440D1554EDD64ABD8B1F6
        F6F6A8B6B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7F3F3F3F9F9F9E6E6E6E1E1E1E6E6E6E4E4E4DCDCDCCBCBCBB9B9B9B6B6
        B6FBFBFBE5E5E5C2C2C2B7B7B7B4B4B4B4B4B4B4B4B4ABABABB4B4B4D3D3D3F9
        F9F9C7C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4E9F6F0F2FDF6F1FAF5ECF5F0DBE5E2D6E0DDBEC5C2A0AAA998A09DF9F9
        F9C7E3CB69E77E55EF6E55EF6E78EB8BBFD9C1A5DAA94EDD6441DB5C69D77AD7
        E2D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6F4F4F4F9F9F9F8F8F8F4F4F4E9E9E9E6E6E6D3D3D3BFBFBFB9B9B9FBFB
        FBE1E1E1C2C2C2BDBDBDBDBDBDC8C8C8DBDBDBD2D2D2B4B4B4AFAFAFBCBCBCE6
        E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B3B1EDFBF3F5FFF8ECF6F1E7F1ECDDE7E4D5DEDCBEC5C2AFB6B3FFFFFFD7F5
        DB69E77E5BF4755BF47578EB8BCDE2CFF6F6F6DBDFDC78EB8B4CE7684CE76897
        DEA3F4F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C3C3C3F7F7F7FBFBFBF5F5F5F2F2F2EBEBEBE4E4E4D3D3D3C9C9C9FFFFFFEDED
        EDC2C2C2C1C1C1C1C1C1C8C8C8E3E3E3F9F9F9E7E7E7C8C8C8B7B7B7B7B7B7CE
        CECEF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B3B1EFFCF4F5FFF8D5E1DED3DFDBDBE5E2D5E0DDC9D2CEC4CECBFFFFFFD7F5
        DB56EA6F61F47892E99ED8E6DAFBFAFB8E9999F9F9F9C3E8CE67F48456EA6F69
        E77EC9DFC7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C3C3C3F8F8F8FBFBFBE6E6E6E4E4E4E9E9E9E5E5E5DCDCDCD9D9D9FFFFFFEDED
        EDBCBCBCC3C3C3D0D0D0E8E8E8FBFBFBB3B3B3FBFBFBE1E1E1C5C5C5BCBCBCC2
        C2C2E0E0E0FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A5B4B2EFFCF4F5FFF8DBE7E2D7E2DFDDE5E4DDE7E4D9E2E0D3DDDAFFFFFFF0F3
        F1BAE3C2BAE3C2E5EBE8FCFCFCB7C1BEA0AAA9959F9FF4E7E499D69B5BF47A5B
        F47A85D68CEBEBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4F8F8F8FBFBFBEAEAEAE6E6E6EAEAEAEBEBEBE7E7E7E3E3E3FFFFFFF5F5
        F5DCDCDCDCDCDCEFEFEFFDFDFDD0D0D0BFBFBFB8B8B8F2F2F2CCCCCCC1C1C1C1
        C1C1C5C5C5EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4F0FDF5F6FFFADEE9E5DDE7E4E1EAE7E2EBE8E1EAE7E0E9E6E0E9E6FEFE
        FEFBFAFBFBFAFBFFFEFFB5C3C1B5C3C1A5B4B2959F9FFEFAF9D8D3BC78EB8B5B
        F47561F478B3E2B9F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6F9F9F9FBFBFBEBEBEBEBEBEBEDEDEDEDEDEDEDEDEDECECECECECECFEFE
        FEFBFBFBFBFBFBFEFEFED0D0D0D0D0D0C4C4C4B8B8B8FCFCFCDADADAC8C8C8C1
        C1C1C3C3C3DADADAF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4F0FDF5F5FFF8D7E2DFD3DFDBD9E4E1DBE5E2D9E4E1D9E4E1D9E2E0D7E2
        DFDCE6E3CED9D7B5C3C1B2BFBEB2BFBEACBABAA0AAA98B9593F9F4F4BED3B05B
        F47A5AED7578EB8BCDE2CFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6F9F9F9FBFBFBE6E6E6E4E4E4E8E8E8E9E9E9E8E8E8E8E8E8E7E7E7E6E6
        E6EAEAEAE0E0E0D0D0D0CDCDCDCDCDCDC9C9C9BFBFBFB1B1B1F9F9F9D3D3D3C1
        C1C1BEBEBEC8C8C8E3E3E3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4F0FDF5F3FFF8D9E4E1D3DFDBDDE5E4DBE5E2DEE7E5DEE7E5DEE7E5DDE7
        E4DDE7E4DEE7E5E2ECE9E2ECE9E1EAE7E0E9E6D4DCDBC0CAC7AFB6B3F4E7E499
        D69B4CE76856EA6F81DF90EBEFEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6F9F9F9FBFBFBE8E8E8E4E4E4EAEAEAE9E9E9EBEBEBEBEBEBEBEBEBEBEB
        EBEBEBEBEBEBEBEEEEEEEEEEEEEDEDEDECECECE3E3E3D6D6D6C9C9C9F2F2F2CC
        CCCCB7B7B7BCBCBCC7C7C7F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        AAB9B6F0FDF5F6FFFAF5FFF8F5FDF8E1EAE7E1EAE7E2ECE9E2ECE9E2ECE9E1EA
        E7E2EBE8E2ECE9E2ECE9E1EAE7E2ECE9E2ECE9E1EAE7D1D9D6B7C1BEFFFDFDEA
        DDCF69D77A41DB5C4EDD64A5DAA9FBFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C8C8C8F9F9F9FBFBFBFBFBFBFBFBFBEDEDEDEDEDEDEEEEEEEEEEEEEEEEEEEDED
        EDEDEDEDEEEEEEEEEEEEEDEDEDEEEEEEEEEEEEEDEDEDE1E1E1D0D0D0FEFEFEE6
        E6E6BCBCBCAFAFAFB4B4B4D2D2D2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4F2FFF6F5FFF8F2FBF6ECF5F0E1EAE7E1EAE7E2EBE8E1EAE7DEE9E5DDE7
        E4D9E2E0D3DFDDD0DBD9CED8D6CED9D7CBD6D3CBD6D3C4CECBB2BFBEB5BDBAFE
        FAF9D8D3BC53D36944CD5953D369C2E3C7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6FAFAFAFBFBFBF9F9F9F4F4F4EDEDEDEDEDEDEDEDEDEDEDEDEBEBEBEBEB
        EBE7E7E7E4E4E4E1E1E1E0E0E0E0E0E0DEDEDEDEDEDED9D9D9CDCDCDCECECEFC
        FCFCDADADAB3B3B3ABABABB3B3B3DFDFDFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        A8B6B5F3FFF8F5FFFAA1B2B07288887288885E75765F7878385756001B210000
        00000000000000000000000000000000000000000000000000000000AAB9B6BE
        C5C2FDF1EDA5DAA949C96248C85C69D77ADBEBDDFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7FBFBFBFBFBFBC2C2C2A3A3A3A3A3A39696969797977D7D7D5656564B4B
        4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4BC8C8C8D3
        D3D3F8F8F8D2D2D2ACACACABABABBCBCBCEBEBEBFFFFFFFFFFFFFFFFFFFFFFFF
        AAB9B6F6FFFAF7FFFCF0F8F5EFF7F5F7FFFCF5FDF8F0F8F5F1F9F6EFF7F3E5EF
        EAE2EBE8E2ECE9E2EBE8E1EAE7F0F8F5F5FDF8F2FBF6F0F8F5ECF5F0DCE6E3C9
        D2CEFFFEFFF4E9DF7ACE833DBE5446C5587ACE83EAF3EDFFFFFFFFFFFFFFFFFF
        C8C8C8FBFBFBFCFCFCF7F7F7F7F7F7FCFCFCFBFBFBF7F7F7F8F8F8F7F7F7F0F0
        F0EDEDEDEEEEEEEDEDEDEDEDEDF7F7F7FBFBFBF9F9F9F7F7F7F4F4F4EAEAEADC
        DCDCFEFEFEEFEFEFBFBFBFA3A3A3A9A9A9BFBFBFF3F3F3FFFFFFFFFFFFFFFFFF
        A6B7B4F5FFFAF8FFFCF8FFFCF8FFFCF8FFFCF8FFFCF8FFFCF8FFFCF4FBF7DBE5
        E2DBE5E2DBE5E2DBE5E2DBE5E2E7F1ECECF5F0EEF5F2E7F1ECE5EFEAE7F5EEDD
        E9E28E9999FEFAF9DEE2D055C46A3BB54D3BB54D99D69BFCFCFCFFFFFFFFFFFF
        C6C6C6FBFBFBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCF9F9F9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9F2F2F2F4F4F4F5F5F5F2F2F2F0F0F0F3F3F3EB
        EBEBB3B3B3FCFCFCE4E4E4AEAEAEA0A0A0A0A0A0CCCCCCFDFDFDFFFFFFFFFFFF
        A6B7B4F5FFFAF8FFFC323332F8FFFCF8FFFC393B3AB9BEBC4C4E4DFBFFFDE2EC
        E9E1EAE79197942D2F2E2D2F2EDBE5E4D9E4E1D5E0DDD5E0DDD0DDD9E6F3EDE6
        F5ED92A5A2DBDFDCFEFAF9C7E3CB4AB3593BB54DA5DAA9FDFDFDFFFFFFFFFFFF
        C6C6C6FBFBFBFCFCFC6E6E6EFCFCFCFCFCFC747474CFCFCF818181FEFEFEEEEE
        EEEDEDEDB3B3B36B6B6B6B6B6BE9E9E9E8E8E8E5E5E5E5E5E5E2E2E2F2F2F2F2
        F2F2B8B8B8E7E7E7FCFCFCE1E1E1A4A4A4A0A0A0D2D2D2FEFEFEFFFFFFFFFFFF
        A5B4B2F3FFF8F7FFFC323332F8FFFC696C6B323332D1D9D6545757F6FFFADEE9
        E5B2B9B7545757DEE9E5DDE7E4D9E4E1D5E1DED3DFDBCCDAD7CBD9D5DDEBE5E7
        F5EE99A9A8F6F6F6F6F6F6F9F9F9D0E4D3D4EED8F8FDF9FFFFFFFFFFFFFFFFFF
        C4C4C4FBFBFBFCFCFC6E6E6EFCFCFC9696966E6E6EE1E1E1878787FBFBFBEBEB
        EBCBCBCB878787EBEBEBEBEBEBE8E8E8E6E6E6E4E4E4E0E0E0DFDFDFECECECF3
        F3F3BDBDBDF9F9F9F9F9F9FBFBFBE5E5E5EAEAEAFBFBFBFFFFFFFFFFFFFFFFFF
        A5B4B2F5FFFAFBFFFD323332F8FFFC707372323332DBDFDC616463F6FFFADEE7
        E5D1D9D62D2F2E2C2E2E2B2E2DD5E1DECCDAD7CCDAD7CCDAD7C8D8D3D8E8E1D3
        E5DDAAB9B6FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FBFBFBFEFEFE6E6E6EFCFCFC9B9B9B6E6E6EE7E7E7909090FBFBFBEBEB
        EBE1E1E16B6B6B6B6B6B6A6A6AE6E6E6E0E0E0E0E0E0E0E0E0DEDEDEE9E9E9E6
        E6E6C8C8C8FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B3B1F5FFFAFDFFFF4C4E4DA9AEACA9AEAC656867E5EBE83233323132322D2F
        2EB5BDBA545757DEE9E52B2E2DD3E0DBD0DED99FB1AE728888829B9692A5A247
        6462D9E2E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C3C3C3FBFBFBFEFEFE818181C4C4C4C4C4C4939393EFEFEF6E6E6E6E6E6E6B6B
        6BCECECE878787EBEBEB6A6A6AE4E4E4E3E3E3C2C2C2A3A3A3AFAFAFB8B8B887
        8787E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A1B2B0F3FFF8FBFFFF323332707372F8FFFC474948C9D2CE656867F0F8F5D7E2
        DFD1DEDA8A918F292C2BB2BDBAC3D5CF9CB1AD0000000000000000000A0A0ABB
        CAC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FBFBFBFEFEFE6E6E6E9B9B9BFCFCFC7E7E7EDCDCDC939393F7F7F7E6E6
        E6E3E3E3AFAFAF696969CCCCCCDBDBDBC0C0C04B4B4B4B4B4B4B4B4B525252D4
        D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9FB1AEF5FFFAFBFFFF323332676A69F8FFFC404241C4CECB616463F0F8F5F6FF
        FAF2FBF6F2FDF6F0FDF5F0FDF5F0FDF5B7C8C365807DFDFFFFA4BAB5D2DBDAFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FBFBFBFEFEFE6E6E6E949494FCFCFC797979D9D9D9909090F7F7F7FBFB
        FBF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9D2D2D29B9B9BFEFEFEC7C7C7E2E2E2FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9FB1AEFBFFFFFFFFFF323332F8FFFCF8FFFC343534D1D9D63233323233323233
        32FFFFFFFDFFFFFDFFFFFDFFFFFBFFFFB7C8C338575698B1ACCED8D6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FEFEFEFFFFFF6E6E6EFCFCFCFCFCFC707070E1E1E16E6E6E6E6E6E6E6E
        6EFFFFFFFEFEFEFEFEFEFEFEFEFEFEFED2D2D27D7D7DBFBFBFE0E0E0FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B4B1FBFFFFFFFFFFFFFFFFF9FFFDF8FFFCF8FFFCF8FFFCF8FFFCF8FFFCFBFF
        FFFBFFFFF8FFFCFBFFFFF6FFFAEBFCF2829C9806171BD5DEDCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FEFEFEFFFFFFFFFFFFFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFEFE
        FEFEFEFEFCFCFCFEFEFEFBFBFBF7F7F7B0B0B0565656E4E4E4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        92A5A2FFFFFFFFFFFFFFFFFFFDFFFFFBFFFDFBFFFDFBFFFDFBFFFDFBFFFDFFFF
        FFFFFFFFFDFFFFFBFFFFE5F5ECC3D5CF385756C4CECBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B8B8B8FFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
        FFFFFFFFFEFEFEFEFEFEF2F2F2DBDBDB7D7D7DD9D9D9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B7C8C39CB1ADA8BDB8A8BDB8A4BAB5A8BDB8A8BDB8AFC3BEAFC3BEAFC3BEAFC3
        BEB5C3C1BBCAC7AFC3BEA6B7B49CB1ADC0CAC7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D2D2D2C0C0C0C9C9C9C9C9C9C7C7C7C9C9C9C9C9C9CECECECECECECECECECECE
        CED0D0D0D4D4D4CECECEC6C6C6C0C0C0D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      Spacing = 1
      OnClick = btnValidarNFeClick
    end
    object btnCancelamento: TSpeedButton
      Tag = -1
      Left = 172
      Top = 5
      Width = 80
      Height = 56
      Cursor = crHandPoint
      Hint = 'Cancelamento'
      Caption = 'Cancelamento'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8DCD2834413854717B79175FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7808080828282B5B5B5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE4DE834312834312B58F72FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED7F7F7F7F7F7FB3B3B3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFAB7F5EEADFD7FFFFFFFFFFFFEBE0D8B89478834312834312925A2FCD
        B39FEEE6DFFFFFFFFFFFFFB48D6FD6C1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA8A8A8E9E9E9FFFFFFFFFFFFEAEAEAB6B6B67F7F7F7F7F7F8F8F8FCB
        CBCBEDEDEDFFFFFFFFFFFFB1B1B1D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0
        EC966036834312884A1BD5C0AFA3734E83431283431283431283431283431283
        4312834312B28A6BB18869834312834312D0B7A5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
        F49393937F7F7F848484D4D4D4A0A0A07F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7FAFAFAFAFAFAF7F7F7F7F7F7FCECECEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E9
        E385461683431283431283431283431283431283431283431283431283431283
        4312834312834312834312834312834312C09F86FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEF
        EF8181817F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBEBEBEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F3F0955F3583431283431283431283431283431283431283421283431283
        4312834312834312834312834312C5A790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF7F7F79292927F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7FC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA4755183431283431283431283431282421181411181411081411182
        4211834312834312834312834312C2A38BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA1A1A17F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7FC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEDE4DE834312834312834312834212824111803F0F8F4F18AC78458B4A1580
        400F824211834312834312834312834312F6F1EDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEDEDED7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7D7D7D868686A0A0A08383837D
        7D7D7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FF5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC6A992834312834312834312824211814010C9A682FEFDFCFFFFFFFCF9F6B1
        8256803F0F824211834312834312834312D4BDACFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC4C4C47F7F7F7F7F7F7F7F7F7F7F7F7E7E7EBFBFBFFEFEFEFFFFFFFBFBFBA7
        A7A77D7D7D7F7F7F7F7F7F7F7F7F7F7F7FD3D3D3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC9A8090562A9660
        3685471783431283431283421281411091541FFFFFFFFFFFFFFFFFFFFFFFFFFE
        FDFC8B4B188141108343128343128343128B4F21955F35A1704BFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB8D8D8D9393
        938282827F7F7F7F7F7F7F7F7F7E7E7E898989FFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFE8484847E7E7E7F7F7F7F7F7F7F7F7F8888889292929E9E9EFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA97D5B8343128343
        12834312834312834312834212814010A46C37FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA06734814110834312834312834312834312834312864819FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A77F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E989898FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9696967E7E7E7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F838383FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAE85658343128343
        12834312834312834312834312814110894914FFFFFFFFFFFFFFFFFFFFFFFFF6
        F0E68746128241118343128343128343128343128343128C5124FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E828282FFFFFFFFFFFFFFFFFFFFFFFFF3
        F3F38181817F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F898989FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F4F1F2ECE7F8F4
        F1C7A99383431283431283431282421180400FB08055F4EBE0FFFFFFF1E5D796
        5C30814010824211834312834312834312CEB5A1F8F4F1F6F2EEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F2F2F2F7F7
        F7C5C5C57F7F7F7F7F7F7F7F7F7F7F7F7D7D7DA7A7A7F0F0F0FFFFFFECECEC91
        91917E7E7E7F7F7F7F7F7F7F7F7F7F7F7FCCCCCCF7F7F7F6F6F6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF6F1ED83431283431283431283431282421180401084431191511B82410F81
        4010824211834312834312834312864819FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFF5F5F57F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7E7E7E7F7F7F8888887E7E7E7E
        7E7E7F7F7F7F7F7F7F7F7F7F7F7F838383FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFB9957983431283431283431283431282421182421181411182421182
        4211834312834312834312834312CFB7A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFB7B7B77F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7FCECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD1BCAECDB7A7FFFFFFFFFFFFFFFFFFF9F6F4B08E75E9DF
        D8FFFFFFB38B6D83431283431283431283431283431283431283431283431283
        4312834312834312834312834312EEE5DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFD2D2D2CECECEFFFFFFFFFFFFFFFFFFF9F9F9B2B2B2E9E9
        E9FFFFFFB1B1B17F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7FEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE1D4CA9A6E4E9A6E4EF8F5F3F1EBE7FFFFFFAD896F9A6E4E9A6E
        4EB0886883431283431283431283431283431283431283431283431283431283
        43128343128343128343128343128B5022E4D6CBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE1E1E19D9D9D9D9D9DF8F8F8F2F2F2FFFFFFAFAFAF9D9D9D9D9D
        9DAEAEAE7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F888888E3E3E3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9A6E4E9A6E4E9A6E4E9A6E4E9A6E4E9A6E4E9A6E4ED2BD
        AD834312834312834312CEB5A2C2A38B83441383431283431283431283431283
        4312894C1DC3A48D90562A834312834312B48D6FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9DD2D2
        D27F7F7F7F7F7F7F7F7FCDCDCDC0C0C08080807F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F868686C2C2C28D8D8D7F7F7F7F7F7FB1B1B1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBB9D889A6E4E9A6E4E9A6E4E9A6E4E9A6E4E9A6E4E9A6E4EB391
        79E0D0C4834312BE9D83FFFFFFFFFFFFFFFEFECCB29D8343128343129C6941E7
        DAD1FFFFFFFFFFFFF3EDE8834413AB805FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBDBDBD9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9DB5B5
        B5DFDFDF7F7F7FBCBCBCFFFFFFFFFFFFFEFEFECACACA7F7F7F7F7F7F999999E6
        E6E6FFFFFFFFFFFFF2F2F2808080A9A9A9FFFFFFFFFFFFFFFFFFFFFFFF9B6F4F
        E0D2C8CCB6A69A6E4E9A6E4E9A6E4A966A4A966A4A966A4A966A4A9A6E4E9A6E
        4E9A6E4EF2EBE6C2A794FFFFFFFFFFFFFFFFFFECE2DA834312834312B69074FF
        FFFFFFFFFFFFFFFFFFFFFFF9F5F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E
        E1E1E1CECECE9D9D9D9D9D9D9B9B9B9A9A9A9A9A9A9A9A9A9A9A9A9D9D9D9D9D
        9D9D9D9DF2F2F2C4C4C4FFFFFFFFFFFFFFFFFFEBEBEB7F7F7F7F7F7FB4B4B4FF
        FFFFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFD7C6B99A6E4E
        9A6E4E9A6E4E9A6E4E9A6A4A9666468F60409E724F986C4B906343966A4A9A6E
        4E9A6E4E9A6E4E9A6E4EC1A693FFFFFFFFFFFFE1D1C5834312834312A87C5AFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D89D9D9D
        9D9D9D9D9D9D9D9D9D9B9B9B9999999494949E9E9E9B9B9B9595959A9A9A9D9D
        9D9D9D9D9D9D9D9D9D9DC3C3C3FFFFFFFFFFFFE0E0E07F7F7F7F7F7FA6A6A6FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6DCD4C1A693
        9A6E4E9A6E4E9A6E4E966A4A976949EBE0D6FFFFFFEADED5B8967B9062429A6A
        4A9A6E4E9A6E4E9A6E4ECEB9AAFFFFFFFFFFFFEEE5DEAA7F5DAB805FCDB39FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7C3C3C3
        9D9D9D9D9D9D9D9D9D9A9A9A9A9A9AE9E9E9FFFFFFE8E8E8B7B7B79595959B9B
        9B9D9D9D9D9D9D9D9D9DD0D0D0FFFFFFFFFFFFEDEDEDA7A7A7A9A9A9CBCBCBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B899829A6E4E9A6A4A916444BB9B81FFFFFFFFFFFFFFFFFFFFFFFF8D5D3D966A
        4A9A6E4E9A6E4EF6F2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BABABA9D9D9D9B9B9B969696BBBBBBFFFFFFFFFFFFFFFFFFFFFFFF9292929A9A
        9A9D9D9D9D9D9DF6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6AD9B9A6E4E9A6A4A926545CFB49FFFFFFFFFFFFFFFFFFFFEFEFD956B48966A
        4A9A6E4E9A6E4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C79D9D9D9B9B9B979797CCCCCCFFFFFFFFFFFFFFFFFFFEFEFE9999999A9A
        9A9D9D9D9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        AE8B719A6E4E9A6E4A936545A87E5DFCF9F7FFFFFFFFFFFFC3A48C905F3F966A
        4A9A6E4E9E7455FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B0B0B09D9D9D9B9B9B979797A7A7A7FBFBFBFFFFFFFFFFFFC1C1C19494949A9A
        9A9D9D9DA0A0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2BEB09A6F4F
        9A6E4E9A6E4E9A6E4E966A4A906343AB8363B1896DB99677936444966A4A9A6E
        4E9A6E4E9A6E4EAE8A71C9B1A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D39D9D9D
        9D9D9D9D9D9D9D9D9D9A9A9A959595AAAAAAB0B0B0B6B6B69797979A9A9A9D9D
        9D9D9D9D9D9D9DB0B0B0CACACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BEAF9A6E4E
        9A6E4E9A6E4E9A6E4E9A6E4E966A4A956848966747956546966A4A9A6E4E9A6E
        4E9A6E4E9A6E4E9A6E4EAC886EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D39D9D9D
        9D9D9D9D9D9D9D9D9D9D9D9D9A9A9A9999999999999898989A9A9A9D9D9D9D9D
        9D9D9D9D9D9D9D9D9D9DAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6AD9A
        F9F6F5FFFFFFA57E629A6E4E9A6E4E9A6E4E9A6E4E9A6E4E9A6E4E9A6E4E9A6E
        4EE3D7CEFFFFFF9C7152F6F2F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7
        F9F9F9FFFFFFA7A7A79D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D
        9DE3E3E3FFFFFF9F9F9FF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9A6E4E9A6E4E9A6E4E9A6E4E9A6E4E9A6E4E9A6E4ED8C7
        BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9DD9D9
        D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9A6E4E9A6E4EC6AD9ADACABEB899829A6E4E9A6E4EF9F6
        F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9D9D9D9D9D9DC7C7C7DBDBDBBABABA9D9D9D9D9D9DF9F9
        F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAB876D9A6E4E9A6E4EFFFFFFFFFFFFFFFFFFA984699A6E4EAF8D
        73FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFAEAEAE9D9D9D9D9D9DFFFFFFFFFFFFFFFFFFACACAC9D9D9DB1B1
        B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC4AB98E0D2C8FFFFFFFFFFFFFFFFFFCFBBACBC9E89FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC6C6C6E1E1E1FFFFFFFFFFFFFFFFFFD0D0D0BDBDBDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      OnClick = btnCancelamentoClick
    end
    object btnInutiliza: TSpeedButton
      Tag = -1
      Left = 256
      Top = 5
      Width = 84
      Height = 56
      Cursor = crHandPoint
      Hint = 'Inutilizar n'#250'mero'
      Caption = 'Inutilizar n'#250'mero'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D4E79594C95552C93D35CA423EC96C
        6AC3AEAED6EBECF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6C6C6C6AFAFAFA5A5A5A7A7A7B5
        B5B5D4D4D4F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE0E1EE8D8BD2312CCB0A0BCD0509D20406D50405D705
        04D80E0BD4514FCBACACD9F6F6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEEEEEEC6C6C6A2A2A297979797979797979798989899
        9999999999AFAFAFD4D4D4FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB8B8DE3836C00A0AC70709CD0B0CCB1515CC1D20CB1A1ACC0B
        0CCD0102D40000E00705D46061C3E7E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFDADADAA2A2A29494949696969797979A9A9A9D9D9D9C9C9C97
        97979696969A9A9A979797B1B1B1F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFB3B4E22521C21510C81A17C85455D0ABA9E9DADDF5ECEDF9EBEBF7CE
        CFF58684E93130D60503D50400E14F4EC6EAEAF1FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFDADADA9B9B9B979797999999B2B2B2D9D9D9EEEEEEF6F6F6F5F5F5EA
        EAEACBCBCBA7A7A79797979A9A9AACACACF2F2F2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFD7D6EE2625C21A1BBF2A2CBD9998DEF2F2FBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF8E8EE10302CC0406D00000DD5F5DC7F6F6FAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFEBEBEB9C9C9C9797979C9C9CCFCFCFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCCCCCC949494969696999999B2B2B2FAFAFAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
        FB7373CE1D1DBA2725BAA3A2DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB5B4DF1C1ACC0109CA0305CA0403D60605D3B0B1D9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
        FBBCBCBC979797999999D2D2D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD9D9D99C9C9C929292939393979797979797D5D5D5FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCD
        EB2727BB2828B37675C9FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1
        AEE11712CC0207C51512CB7C7DDF3534D40000E24B4ACEEDEDF4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6
        E69B9B9B989898BBBBBBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7
        D7D7999999919191999999C5C5C5A8A8A89B9B9BAEAEAEF4F4F4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9996
        D9302FB63533B7D2D2ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAEDE1C
        18C20E12BE1D1AC5ABA9E9FEFEFF8D8CE30202D5130ECEB1AFDBFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
        CC9B9B9B9E9E9EE8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D798
        9898939393999999D9D9D9FEFEFECCCCCC979797999999D6D6D6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF706F
        CC3E3DBC6661C2F7F7FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAEDE2121BE18
        1BBD1E1DC2AFB1EAFCFCFDFFFFFFC6C4EC0E0ED00706D06E6ACFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABA
        BAA3A3A3B1B1B1FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D799999996
        9696999999DBDBDBFDFDFDFFFFFFE3E3E3999999979797B9B9B9FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF605F
        C64444BB8A88CEFCFCFDFFFFFFFFFFFFFFFFFFFFFFFFB1AFDB2C26BD1D22B427
        27BBB4B3EBFEFEFFFFFFFFFFFFFFE5E5F61F21D00102D44846CEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2
        B2A5A5A5C4C4C4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFD6D6D69B9B9B9494949B
        9B9BDDDDDDFEFEFEFFFFFFFFFFFFF2F2F29F9F9F969696ACACACFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6362
        CB4848BD9493CEFDFDFEFFFFFFFFFFFFFEFEFEABABDB302EBA2729B13231ADBC
        BAE8FFFFFFFFFFFFFFFFFFFFFFFFEBEBF72425CF0601D44039CFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5
        B5A7A7A7C7C7C7FEFEFEFFFFFFFFFFFFFEFEFED5D5D59D9D9D979797999999DF
        DFDFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5A0A0A0969696A8A8A8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7777
        D54D4BC48382C7FBFBFCFFFFFFFDFDFEAEAED63939B82D35B73535BAC0BEEAFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFCFD0EE1A14CB0A07D05055CFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
        C0AAAAAABFBFBFFCFCFCFFFFFFFEFEFED4D4D4A0A0A09B9B9B9F9F9FE1E1E1FE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8999999979797B0B0B0FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A99
        DD5351C86363C2EDEEF3FEFEFEB4B2DC4C48C34141BD443FBDC0C0EAFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9AE00F09CA0B08CD7D86D9FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF
        CFAEAEAEB2B2B2F4F4F4FEFEFED7D7D7A9A9A9A5A5A5A4A4A4E1E1E1FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC959595969696C4C4C4FFFFFFFFFFFF
        CCCCCC000000FFFFFFFFFFFF555555000000666666FFFFFFFFFFFFCCCCCC4241
        605A59C65555C7AFB0D35C5D805955C94C4BC35552C0CCC9EC55555500000066
        6666FFFFFFFFFFFF66666603050A2529A4140FCD282DCECBD1EFFFFFFFFFFFFF
        DBDBDB4B4B4BFFFFFFFFFFFF8787874B4B4B939393FFFFFFFFFFFFDBDBDB8383
        83B0B0B0AFAFAFD3D3D3999999B0B0B0AAAAAAACACACE5E5E58787874B4B4B93
        9393FFFFFFFFFFFF9393934F4F4F929292999999A2A2A2E7E7E7FFFFFFFFFFFF
        BBBBBB000000FFFFFFDDDDDD000000222222000000999999FFFFFF4444443131
        376261B85458C95C59C25A57C35453CD5F5AC6D0CFEDDDDDDD00000022222200
        0000999999DDDDDD0000002C316C2423C7211ACE7782DBFDFDFEFFFFFFFFFFFF
        CFCFCF4B4B4BFFFFFFE7E7E74B4B4B6363634B4B4BB7B7B7FFFFFF7B7B7B7070
        70AEAEAEAFAFAFAFAFAFAFAFAFB1B1B1B1B1B1E8E8E8E7E7E74B4B4B6363634B
        4B4BB7B7B7E7E7E74B4B4B8181819E9E9E9D9D9DC2C2C2FEFEFEFFFFFFFFFFFF
        BBBBBB000000FFFFFFFFFFFFBBBBBBFFFFFF666666333333FFFFFF000000BBBB
        BBA9A8C75B5BCA5B5BCA5D5AC85B58BFD4D2EDFFFFFFFFFFFFBBBBBBFFFFFF66
        6666333333FDFEFE797EB43536C12621CD2323BADADDF5FFFFFFFFFFFFFFFFFF
        CFCFCF4B4B4BFFFFFFFFFFFFCFCFCFFFFFFF9393936F6F6FFFFFFF4B4B4BCFCF
        CFCCCCCCB2B2B2B2B2B2B1B1B1ADADADE8E8E8FFFFFFFFFFFFCFCFCFFFFFFF93
        93936F6F6FFEFEFEB5B5B5A2A2A29F9F9F999999EEEEEEFFFFFFFFFFFFFFFFFF
        BBBBBB000000FFFFFFFFFFFFFFFFFFFFFFFFBBBBBB000000BBBBBB000000FFFF
        FFFDFDFE5452885955C95D5AC85E5AB7A09FBCEBECF2F9F9FBFDFDFEFCFCFDB6
        B6B9151729747AC7322FC12E28C2302CBF0C1143FFFFFFFFFFFFFFFFFFFFFFFF
        CFCFCF4B4B4BFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF4B4B4BCFCFCF4B4B4BFFFF
        FFFEFEFE989898B0B0B0B1B1B1ABABABC5C5C5F3F3F3FBFBFBFEFEFEFDFDFDCC
        CCCC616161BABABAA0A0A09E9E9E9E9E9E676767FFFFFFFFFFFFFFFFFFFFFFFF
        BBBBBB000000FFFFFFFFFFFFFFFFFFFFFFFFBBBBBB000000DDDDDD000000FFFF
        FFEEEEEE0B0B0E9E9DCF595BC65156CB5254C8635EC08382C79496CD8C8CCA5E
        5CB13937B92E34BE292DBD3F40C49297CA000000FFFFFFFFFFFFFFFFFFFFFFFF
        CFCFCF4B4B4BFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF4B4B4BE7E7E74B4B4BFFFF
        FFF3F3F3535353CBCBCBB0B0B0AFAFAFAFAFAFB0B0B0BFBFBFC7C7C7C4C4C4AA
        AAAAA0A0A09E9E9E9C9C9CA6A6A6C6C6C64B4B4BFFFFFFFFFFFFFFFFFFFFFFFF
        BBBBBB000000FFFFFFFFFFFFFFFFFFFFFFFFBBBBBB000000FFFFFF000000BBBB
        BBAAAAAA000000FCFCFDCFCFEF6D6DBE5754C75351C84F4DC54847BF4340BE3E
        3BBD3433BF3537BD7B7BD7D0D2F0777777222222FFFFFFFFFFFFFFFFFFFFFFFF
        CFCFCF4B4B4BFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF4B4B4BFFFFFF4B4B4BCFCF
        CFC3C3C34B4B4BFDFDFDE8E8E8B4B4B4AFAFAFAEAEAEACACACA7A7A7A5A5A5A3
        A3A3A0A0A0A0A0A0C2C2C2E9E9E99F9F9F636363FFFFFFFFFFFFFFFFFFFFFFFF
        BBBBBB000000FFFFFFFFFFFFFFFFFFFFFFFF777777222222FFFFFF6666663333
        33222222666666FFFFFFFFFFFFA9A9B14C4A6C9F9FDB7676CD5D5EC25E5CC35B
        58B2444282CFCFEF65656B333333000000999999FFFFFFFFFFFFFFFFFFFFFFFF
        CFCFCF4B4B4BFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F636363FFFFFF9393936F6F
        6F636363939393FFFFFFFFFFFFC5C5C58B8B8BD0D0D0BDBDBDB0B0B0B0B0B0A9
        A9A9909090E8E8E89494946F6F6F4B4B4BB7B7B7FFFFFFFFFFFFFFFFFFFFFFFF
        BBBBBB000000FFFFFFFFFFFF666666444444000000777777FFFFFFAAAAAA0000
        00000000DDDDDDFFFFFFFFFFFFDDDDDD000000EEEEEEFFFFFF66666644444400
        0000777777FFFFFF111111000000333333FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CFCFCF4B4B4BFFFFFFFFFFFF9393937B7B7B4B4B4B9F9F9FFFFFFFC3C3C34B4B
        4B4B4B4BE7E7E7FFFFFFFFFFFFE7E7E74B4B4BF3F3F3FFFFFF9393937B7B7B4B
        4B4B9F9F9FFFFFFF5757574B4B4B6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BBBBBB000000FFFFFFFFFFFF333333000000444444EEEEEEFFFFFF4444445555
        55555555555555FFFFFFFFFFFFFFFFFF222222BBBBBBFFFFFF33333300000044
        4444EEEEEEFFFFFFFFFFFF777777111111FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CFCFCF4B4B4BFFFFFFFFFFFF6F6F6F4B4B4B7B7B7BF3F3F3FFFFFF7B7B7B8787
        87878787878787FFFFFFFFFFFFFFFFFF636363CFCFCFFFFFFF6F6F6F4B4B4B7B
        7B7BF3F3F3FFFFFFFFFFFF9F9F9F575757FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BBBBBB000000FFFFFFFFFFFF555555AAAAAAFFFFFFFFFFFFFFFFFF000000DDDD
        DDBBBBBB111111FFFFFFFFFFFFFFFFFF555555888888FFFFFF555555AAAAAAFF
        FFFFFFFFFFFFFFFFFFFFFFDDDDDD000000EEEEEEFFFFFFFFFFFFFFFFFFFFFFFF
        CFCFCF4B4B4BFFFFFFFFFFFF878787C3C3C3FFFFFFFFFFFFFFFFFF4B4B4BE7E7
        E7CFCFCF575757FFFFFFFFFFFFFFFFFF878787ABABABFFFFFF878787C3C3C3FF
        FFFFFFFFFFFFFFFFFFFFFFE7E7E74B4B4BF3F3F3FFFFFFFFFFFFFFFFFFEEEEEE
        BBBBBB000000FFFFFFFFFFFF555555888888FFFFFFFFFFFFFFFFFF000000FFFF
        FFBBBBBB000000FFFFFFFFFFFFFFFFFF888888444444FFFFFF555555888888FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BBBBBBFFFFFFFFFFFFFFFFFFF3F3F3
        CFCFCF4B4B4BFFFFFFFFFFFF878787ABABABFFFFFFFFFFFFFFFFFF4B4B4BFFFF
        FFCFCFCF4B4B4BFFFFFFFFFFFFFFFFFFABABAB7B7B7BFFFFFF878787ABABABFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4B4B4BCFCFCFFFFFFFFFFFFFFFFFFFAAAAAA
        333333000000FFFFFFFFFFFF777777888888FFFFFFFFFFFFFFFFFF111111CCCC
        CCAAAAAA000000FFFFFFFFFFFFFFFFFFBBBBBB111111FFFFFF777777888888FF
        FFFFFFFFFFBBBBBBDDDDDDCCCCCC000000EEEEEEFFFFFFFFFFFFFFFFFFC3C3C3
        6F6F6F4B4B4BFFFFFFFFFFFF9F9F9FABABABFFFFFFFFFFFFFFFFFF575757DBDB
        DBC3C3C34B4B4BFFFFFFFFFFFFFFFFFFCFCFCF575757FFFFFF9F9F9FABABABFF
        FFFFFFFFFFCFCFCFE7E7E7DBDBDB4B4B4BF3F3F3FFFFFFFFFFFFFFFFFFCCCCCC
        000000000000FFFFFFFFFFFF777777000000111111222222FFFFFF5555552222
        22222222444444FFFFFF333333333333333333000000DDDDDD77777700000011
        1111222222777777111111111111222222FFFFFFFFFFFFFFFFFFFFFFFFDBDBDB
        4B4B4B4B4B4BFFFFFFFFFFFF9F9F9F4B4B4B575757636363FFFFFF8787876363
        636363637B7B7BFFFFFF6F6F6F6F6F6F6F6F6F4B4B4BE7E7E79F9F9F4B4B4B57
        57576363639F9F9F575757575757636363FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        999999000000FFFFFFFFFFFF999999000000000000111111FFFFFFDDDDDD2222
        22111111DDDDDDFFFFFF000000000000000000000000CCCCCC99999900000000
        0000111111DDDDDD333333000000BBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B7B7B74B4B4BFFFFFFFFFFFFB7B7B74B4B4B4B4B4B575757FFFFFFE7E7E76363
        63575757E7E7E7FFFFFF4B4B4B4B4B4B4B4B4B4B4B4BDBDBDBB7B7B74B4B4B4B
        4B4B575757E7E7E76F6F6F4B4B4BCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      OnClick = btnInutilizaClick
    end
    object btnReemitirDanfe: TSpeedButton
      Tag = -1
      Left = 343
      Top = 5
      Width = 80
      Height = 56
      Cursor = crHandPoint
      Hint = 'Imprimir DANFE'
      Caption = 'Imprimir DANFE'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFEEFEFEFD8D9DBAFB7C6F9F9F9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFEF4F4F4E4E4E4CECECEFBFBFBFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B7C8C338555342615E4964625069675A74715B75735B75735B75735F79775A74
        715773705773705873715069673855531B62EB344F8750696750696742615E42
        615E898C8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D2D2D27C7C7C8484848888888C8C8C9494949494949494949494949797979494
        949292929292929292928C8C8C7C7C7CA7A7A78D8D8D8C8C8C8C8C8C84848484
        8484ACACACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9FB1AEEFFCF4F1FFF6F1FFF6F0FDF5F0FDF6EFFCF4EEFBF3EEFBF3EEFBF3EEFB
        F3EBF8F2E8F6EFE8F6EFCBD5D189928F1E58EA0549F54E689ECDD6D2E0F0E9DF
        F0E799A9A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2F8F8F8FAFAFAFAFAFAF9F9F9F9F9F9F8F8F8F7F7F7F7F7F7F7F7F7F7F7
        F7F5F5F5F4F4F4F4F4F4DEDEDEAFAFAFA8A8A8A3A3A39E9E9EDFDFDFEFEFEFEE
        EEEEBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9DABACE5F5ECEBF8F2E5F1EBE5F1EBE5F1EBE2EFE9E2EFE9E2EFE9E5F1EBE2EF
        E9E2EFE9E1EBE7DFEBE5C1CCCA848B88255EE11A4DE40549F52953CBA5B2B6D8
        E8E199A9A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BFBFBFF2F2F2F5F5F5F1F1F1F1F1F1F1F1F1EFEFEFEFEFEFEFEFEFF1F1F1EFEF
        EFEFEFEFEDEDEDEDEDEDD7D7D7AAAAAAA7A7A7A5A5A5A3A3A3A1A1A1C5C5C5E9
        E9E9BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A1B1AFE5F5EEE7F5EECBD9D6C5D3D0C9D6D3C5D3D0C9D6D3C9D6D3C9D5D2C5D3
        D0C5D3D0C3D2CEC3D2CEA9B6B5727A781B62EB155CEB134EE51149E8154ADA89
        8BAF99A9A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2F2F2F2F3F3F3DFDFDFDBDBDBDDDDDDDBDBDBDDDDDDDDDDDDDDDDDDDBDB
        DBDBDBDBDADADADADADAC7C7C79E9E9EA7A7A7A5A5A5A3A3A3A3A3A39F9F9FB9
        B9B9BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B4B1E7F5EEEEF8F2D7E2DECFDBD8C3D2CEBAC4C1B6C0BDB2BDBDB2BDBDADB9
        BDA7B5B8A5B2B6ABB8B69BA4A27A8B8C2B72E71B62EB1F5EEA1653E51149E813
        4EE54E689EF7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4F3F3F3F7F7F7E6E6E6E1E1E1DADADAD2D2D2CFCFCFCCCCCCCCCCCCCBCB
        CBC7C7C7C5C5C5C8C8C8BBBBBBA7A7A7ACACACA7A7A7A8A8A8A3A3A3A3A3A3A3
        A3A39E9E9EF9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A9B6B5E7F5EEECF8F3E1EBE7CBD5D1A5ABAB7D9BC64982D84983E53482E63482
        E63482E63482E63A7FE4337BE3337BE32574F8226DF52368F01F5EEA1653E513
        4AE51349E34767CDEAE6E8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7F3F3F3F6F6F6EDEDEDDEDEDEC2C2C2BDBDBDB1B1B1B6B6B6AFAFAFAFAF
        AFAFAFAFAFAFAFB0B0B0ADADADADADADAFAFAFADADADACACACA8A8A8A3A3A3A3
        A3A3A2A2A2ACACACEFEFEFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A9B6B5E7F5EEF0FDF5D7E2DEB2BDBD8086845088EC3F92FD519DFF4C9BFF4293
        FE358EFF308DFF308DFF2E85FE3082FE367EF72974F62770F42368F01F5EEA13
        5AE5134AE50A45E42953CBCEC8D1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7F3F3F3F9F9F9E6E6E6CCCCCCA7A7A7BBBBBBBBBBBBC2C2C2BFBFBFBCBC
        BCB8B8B8B6B6B6B6B6B6B5B5B5B6B6B6B5B5B5B0B0B0AFAFAFACACACA8A8A8A3
        A3A3A3A3A39F9F9FA1A1A1DBDBDBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4E8F6EFF2FDF6F1F9F5CBD2CF8086844983E54586FC5090F75094FE519B
        FF4996FF4293FE3B8DFB3589FD3289FF2E85FE2E7EFD2B77F7286FF22467EC1F
        5EED1653E5174AE60A45E4154ADAA7AAC1F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6F4F4F4F9F9F9F8F8F8DCDCDCA7A7A7B6B6B6BCBCBCBEBEBEC1C1C1C2C2
        C2BFBFBFBCBCBCB8B8B8B7B7B7B6B6B6B5B5B5B4B4B4B1B1B1AFAFAFABABABAA
        AAAAA3A3A3A4A4A49F9F9F9F9F9FCACACAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
        A2B2B1ECFBF3F5FFF8EDF6F2C7CECC808684437BE7497FF24586FC4C8BF95094
        FE5499FE539CFE4795FF3B8DFB3589FD3289FF3082FE2E7EFD2C79F92770F423
        68F01F5EED1C57E7154CE40A45E4154ADA898BAFFFFFFFFFFFFFFFFFFFFFFFFF
        C3C3C3F7F7F7FBFBFBF5F5F5DADADAA7A7A7B4B4B4BABABABCBCBCBDBDBDC1C1
        C1C2C2C2C2C2C2BEBEBEB8B8B8B7B7B7B6B6B6B6B6B6B4B4B4B2B2B2AFAFAFAC
        ACACAAAAAAA6A6A6A3A3A39F9F9F9F9F9FB9B9B9FFFFFFFFFFFFFFFFFFFFFFFF
        A2B2B1EFFCF4F5FFF8D5E1DEB6C0BD808684437BE7437BF04683F24683F24C8B
        F95094FE5499FE519DFF50A0FF499BFE3F92FD3589FD3082FE2E7EFD2879FC27
        70F42368F01F5EEA1C57E7154FE2073DEF7A8CCCFFFFFFFFFFFFFFFFFFFFFFFF
        C3C3C3F8F8F8FBFBFBE6E6E6CFCFCFA7A7A7B4B4B4B7B7B7B9B9B9B9B9B9BDBD
        BDC1C1C1C2C2C2C2C2C2C1C1C1BEBEBEBBBBBBB7B7B7B6B6B6B4B4B4B2B2B2AF
        AFAFACACACA8A8A8A6A6A6A2A2A2A2A2A2BEBEBEFFFFFFFFFFFFFFFFFFFFFFFF
        A4B5B2EFFCF4F5FFF8DAE6E1BAC4C18086844275E64174EB437BF0437BF04683
        F24C8BF94F90FB5499FE569DFF539FFF50A0FF4D9FFF4293FE3589FD2D7FFA2C
        79F92974F62368F01F5EED155CEB95ABD4F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4F8F8F8FBFBFBE9E9E9D2D2D2A7A7A7B3B3B3B5B5B5B7B7B7B7B7B7B9B9
        B9BDBDBDBFBFBFC2C2C2C3C3C3C2C2C2C1C1C1C0C0C0BCBCBCB7B7B7B3B3B3B2
        B2B2B0B0B0ACACACAAAAAAA5A5A5CACACAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4F0FDF5F5FFFADFE8E5BDC8C58389873873D5396DEC4174EB4379ED497F
        F24D85F54C8BF94F8FFF4B95FF519BFF57A0FB57A0FB539FFF529CFD4995FD3B
        8DFB247BFE266FF93E77E7C2D2E7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6F9F9F9FBFBFBEBEBEBD4D4D4AAAAAAAAAAAAB2B2B2B5B5B5B6B6B6BABA
        BABDBDBDBDBDBDC1C1C1BFBFBFC2C2C2C2C2C2C2C2C2C2C2C2C1C1C1BEBEBEB8
        B8B8B1B1B1B0B0B0B2B2B2E1E1E1FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A7B5B4F0FDF5F5FFF8D7E2DEBDC8C5959B995881CB255EE1396DEC3C74EC3C74
        EC437BF0437BF04683F2458DF14A92F24995FD539CFE57A0FB57A0FB539FFF56
        9DFF4A97FD6196E8E9ECF1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6F9F9F9FBFBFBE6E6E6D4D4D4B6B6B6B1B1B1A7A7A7B2B2B2B3B3B3B3B3
        B3B7B7B7B7B7B7B9B9B9B8B8B8BBBBBBBEBEBEC2C2C2C2C2C2C2C2C2C2C2C2C3
        C3C3BEBEBEBFBFBFF2F2F2FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4F0FDF5F3FFF8DAE6E1CDD7D5C7CECCB6C0BDB2BDC2ADBAC2ADBAC2ADBA
        C2ADBAC2ADBAC2B2BDC29DABAC818A90458DF15499FE509FFD4D9FFF4D9FFF53
        9CFE6F9AC1F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6F9F9F9FBFBFBE9E9E9DFDFDFDADADACFCFCFCECECECCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCECECEBFBFBFABABABB8B8B8C2C2C2C0C0C0C0C0C0C0C0C0C2
        C2C2B6B6B6F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        ABB8B6F0FDF5F5FFFAF5FFF8F4FDF8DFE9E6DFE8E5DFE9E6DFE9E6DFE9E6DEE7
        E4DFE8E5DFE9E6DFE8E5BDC8C58389873A7FE45499FE4C9BFF539FFF5A99F7A0
        C1E1A1B1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C8C8C8F9F9F9FBFBFBFBFBFBFAFAFAECECECEBEBEBECECECECECECECECECEBEB
        EBEBEBEBECECECEBEBEBD4D4D4AAAAAAB0B0B0C2C2C2BFBFBFC2C2C2C2C2C2D3
        D3D3C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4F1FFF6F5FFFAF6FDFAF3FBF8EFF7F4EFF7F4EFF7F4EFF7F4EDF6F2EDF6
        F2EAF3F1EAF3F1E8F1EEC7CECC898C8B3A7FE44F8FFF4795FF5393EFC2D2E7EC
        F8F1A7B5B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6FAFAFAFBFBFBFBFBFBF9F9F9F7F7F7F7F7F7F7F7F7F7F7F7F5F5F5F5F5
        F5F3F3F3F3F3F3F2F2F2DADADAACACACB0B0B0C1C1C1BEBEBEBDBDBDE1E1E1F6
        F6F6C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A9B6B5F5FFF879A4E20A55CB0A55CB0A55CB0A55CB0A55CB0A55CB4982D88BB0
        E6F8FFFCF8FFFCF8FFFCD6DDDB959B993C74EC4586FC6196E8E2ECEDF6FDFAF3
        FFF7A4B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C7C7C7FBFBFBC5C5C5969696969696969696969696969696969696B1B1B1CDCD
        CDFCFCFCFCFCFCFCFCFCE4E4E4B6B6B6B3B3B3BCBCBCBFBFBFEEEEEEFBFBFBFB
        FBFBC4C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        ABB8B6F3FFF7F4FDF8C6DCF00A55CB0A55CB6997D8F6FEFAC6DCF03873D50A55
        CB4982D8F8FFFCF6FEFADAE0DDA5ABAB2B72E7749DD8EFF7F4F6FEFAF8FFFCF0
        FDF5A7B5B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C8C8C8FBFBFBFAFAFAE6E6E6969696969696BCBCBCFBFBFBE6E6E6AAAAAA9696
        96B1B1B1FCFCFCFBFBFBE7E7E7C2C2C2ACACACC0C0C0F7F7F7FBFBFBFCFCFCF9
        F9F9C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4F3FFF8F8FFFCE8F4F90A55CB0A55CB79A4E2F8FFFCF8FFFCC6DCF00A55
        CB0A55CB749DD8E8F1EEDDE6E2CDD6D2B3C8DDF1F9F5F6FEFAF1F9F5EFFAF5F0
        FDF5A7B5B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6FBFBFBFCFCFCF4F4F4969696969696C5C5C5FCFCFCFCFCFCE6E6E69696
        96969696C0C0C0F2F2F2EAEAEADFDFDFD8D8D8F8F8F8FBFBFBF8F8F8F7F7F7F9
        F9F9C6C6C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A6B7B4F5FFFAFAFFFDE8F4F90A55CB0A55CB79A4E2F8FFFCF8FFFCFAFFFD2769
        CF0A55CB185FCDE1EBE7DDE6E2D6E1DED6E1DED5E1DDD5E1DDD1DDD9E7F5EEEC
        FBF3A1B1AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C6C6C6FBFBFBFDFDFDF4F4F4969696969696C5C5C5FCFCFCFCFCFCFDFDFDA2A2
        A29696969B9B9BEDEDEDEAEAEAE6E6E6E6E6E6E6E6E6E6E6E6E3E3E3F3F3F3F7
        F7F7C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A4B5B2F3FFF8F5FFFAE8F4F90A55CB0A55CB79A4E2F8FFFCF8FFFCF6FEFA3873
        D50A55CB0A55CBB3C8DDDEE7E4DAE6E1D6E1DED3DFDBCCDAD7CBD9D6DDEBE5E8
        F6EF9DABACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FBFBFBFBFBFBF4F4F4969696969696C5C5C5FCFCFCFCFCFCFBFBFBAAAA
        AA969696969696D8D8D8EBEBEBE9E9E9E6E6E6E4E4E4E0E0E0DFDFDFECECECF4
        F4F4BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A4B5B2F5FFFAFCFFFFE8F4F90A55CB0A55CB79A4E2F8FFFCF8FFFCF6FDFA3873
        D50A55CB0A55CBB3C8DDDAE6E1D6E1DECCDAD7CCDAD7CCDAD7C8D9D3D8E8E1D3
        E5DDABB8B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FBFBFBFEFEFEF4F4F4969696969696C5C5C5FCFCFCFCFCFCFBFBFBAAAA
        AA969696969696D8D8D8E9E9E9E6E6E6E0E0E0E0E0E0E0E0E0DEDEDEE9E9E9E6
        E6E6C8C8C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B4B1F5FFFAFCFFFFE8F4F90A55CB0A55CB79A4E2F8FFFCF8FFFCF1F9F52769
        CF0A55CB185FCDDFE8E5DAE6E1D3DFDBD1DDD99FB1AE7A8B8C829C9792A7A342
        615EDAE1E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FBFBFBFEFEFEF4F4F4969696969696C5C5C5FCFCFCFCFCFCF8F8F8A2A2
        A29696969B9B9BEBEBEBE9E9E9E4E4E4E3E3E3C2C2C2A7A7A7B0B0B0B9B9B984
        8484E7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A1B1AFF3FFF8FCFFFFE8F4F90A55CB0A55CB79A4E2F8FFFCF8FFFCA0C1E10A55
        CB0A55CB6997D8CFDBD8C9D6D3C5D3D09CB1AD030303030303030303030303BD
        C8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FBFBFBFEFEFEF4F4F4969696969696C5C5C5FCFCFCFCFCFCD3D3D39696
        96969696BCBCBCE1E1E1DDDDDDDBDBDBC0C0C04D4D4D4D4D4D4D4D4D4D4D4DD4
        D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9FB1AEF5FFFAFBFFFFC6DCF00A55CB0A55CB79A4E2F8FFFCA9C6EC286AD00A55
        CB4982D8F2FDF6F0FDF5F0FDF5F0FDF5B7C8C365807EFCFFFFA4BAB5D1DDD9FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FBFBFBFEFEFEE6E6E6969696969696C5C5C5FCFCFCDADADAA3A3A39696
        96B1B1B1F9F9F9F9F9F9F9F9F9F9F9F9D2D2D29B9B9BFEFEFEC7C7C7E3E3E3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9FB1AEFBFFFF7CA4E30A55CB0A55CB0A55CB0A55CB0A55CB0A55CB4982D88BB0
        E6FFFFFFFCFFFFFCFFFFFCFFFFFCFFFFB7C8C338555398B1ACCDD7D5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C2C2C2FEFEFEC7C7C7969696969696969696969696969696969696B1B1B1CDCD
        CDFFFFFFFEFEFEFEFEFEFEFEFEFEFEFED2D2D27C7C7CBFBFBFDFDFDFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A2B4B1FBFFFFFFFFFFFFFFFFFBFFFFFCFFFFFCFFFFF5FFF8FAFFFDFAFFFDFCFF
        FFFCFFFFF8FFFCFCFFFFF5FFFAEBFCF2829C9706171BD6DDDBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        C4C4C4FEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFBFBFBFDFDFDFDFDFDFEFE
        FEFEFEFEFCFCFCFEFEFEFBFBFBF7F7F7B0B0B0565656E4E4E4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        92A7A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCFFFFFCFFFFE5F5ECC5D3D0385553C1CCCAFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFEFEFEFEF2F2F2DBDBDB7C7C7CD7D7D7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B7C8C39CB1ADA8BDB8A8BDB8A4BAB5A8BDB8A8BDB8AFC3BEAFC3BEAFC3BEAFC3
        BEB2C5C1B7C8C3AFC3BEA6B7B49CB1ADC1CCCAFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D2D2D2C0C0C0C9C9C9C9C9C9C7C7C7C9C9C9C9C9C9CECECECECECECECECECECE
        CECFCFCFD2D2D2CECECEC6C6C6C0C0C0D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      OnClick = btnReemitirDanfeClick
    end
    object btnEnviarEMail: TSpeedButton
      Tag = -1
      Left = 510
      Top = 5
      Width = 80
      Height = 56
      Cursor = crHandPoint
      Hint = 'Enviar E-Mail'
      Caption = 'Enviar E-Mail'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000AE9B8CFFEACEB9FFE6C4ABFFC19C7DFFCBAA8CFFEBD2BEFFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFCFAF9FFEFECE9FFFEFEFEFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000443E
        39FFA39489FFA29182FFA5968CFF9A7E6AFF88684DFFDFC7B4FFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFCFBF8FFEEE6E0FFFBFBFAFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000A0A0A00988D
        84FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD8CDC6FFA2816AFFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFEFE7DFFFF6F2EFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000BDB0A5FFA090
        85FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFAFAFFA68F7CFFDCC3B0FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFF4EB
        E5FFEDE3DAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000006D6966FFF3E5DAFF9981
        6FFFFEFEFEFFFEFEFEFFE3E3E3FFE9E9E9FFE3E2E2FFD7CFCCFF947760FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFF7F0EAFFE7D7
        C8FFFBF9F6FFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000025252500F2E9E5FFE4C3A6FF9980
        6CFFFEFEFEFFFEFEFEFFDCDCDCFFF0F0F0FFE5E4E4FFF1EDEBFFB09D8EFFCCB0
        9BFFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F1ECFFE7D2C1FFF6EF
        E9FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000D4D0CCFFEBD2BEFFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFF2E8E3FFA384
        6BFFF0DFD2FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFEBD8C8FFEDDFD2FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000008D8D8CFFF4EAE2FFDBAF8AFFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFEBEBEBFFEFEFEFFFEDECECFFE7E4E2FFE3DDD9FFCAB8
        ACFFAF937BFFF4E6DBFFF5E9DFFFF6ECE4FFF1E1D4FFE5CDB8FFFAF5F0FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000044444400F6F2F0FFDCAF8CFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE5E5E5FFE7E7E7FFE8E7E7FFEEEAE8FFE5DFDAFFE9DF
        D7FFA88B74FFE5D4C5FFF5E9DFFFF4E7DDFFE1C1A8FFF7ECE6FFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00000000000A0A0A00E5E3E1FFE1BDA0FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFE4D2C8FFAC886EFFF5E9DFFFE1C1A7FFEFDFD1FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF000000
        000000000000AEAEAEFFEAD6C6FFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFF4E8DFFFBEA38FFFCBA68DFFE5CAB3FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF000000
        0000676767FFF1ECE7FFD39D70FFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFF5E9E0FFE8D9CCFFA68165FFF5EAE1FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00000000002525
        2500ECEBEAFFD6A67EFFD29B6DFFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFF5E9E0FFF3E4D9FFCEB7A5FFB99A80FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF0000000000CBCB
        CBFFDEBFA6FFD09667FFD29B6DFFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE4E4E4FFE8E8E8FFE4E3E3FFDDDAD8FFE6E0DBFFDCD3
        CDFFDED3CBFFE4D6CBFFC9BAADFF96775EFFECDDD2FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF0000000000CBCB
        CBFFDEBFA6FFD09667FFD29B6DFFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE7E7E7FFEFEFEFFFDBDADAFFE0DDDBFFE9E3DEFFE6DD
        D7FFE3D8CFFFE5D7CCFFDECDBFFF9E7E64FFECDDD2FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00000000002525
        2500ECEBEAFFD6A67EFFD29B6DFFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFF5E9E0FFF3E4D9FFCEB6A4FFB99A80FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF000000
        0000676767FFF1ECE7FFD39D70FFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE6E6E6FFEDEDEDFFECEBEBFFDFDCDAFFE2DCD8FFE0D7
        D0FFD8CEC6FFD5C7BBFF9A775CFFF5EAE1FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF000000
        000000000000AEAEAEFFEAD6C6FFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFF2F2F2FFE3E3E3FFEBEAEAFFF1EDEBFFE6E0DBFFE7DE
        D8FFD4CAC2FFA38C78FFCAA68CFFE5CAB3FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00000000000A0A0A00E5E3E1FFE1BDA0FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFE3D1C6FFA7856AFFF5E9DFFFE1C1A7FFEFDFD1FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000044444400F6F2F0FFDCAF8CFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE3E3E3FFEAEAEAFFECEBEBFFE8E5E3FFEEE8E3FFE3D9
        D2FF9D8069FFE5D4C5FFF5E9DFFFF4E7DDFFE1C1A8FFF7ECE6FFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000008D8D8CFFF4EAE2FFDBAF8AFFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFDCDCDCFFECECECFFDDDCDCFFE3E0DEFFE6E0DBFFCAB6
        ABFFAD8F77FFF4E6DBFFF5E9DFFFF6ECE4FFF1E1D4FFE5CDB8FFFAF5F0FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000D4D0CCFFEBD2BEFFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFF2E8E3FF9C7C
        62FFF0DFD2FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFEBD8C8FFEDDFD2FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000025252500F2E9E5FFE4C3A6FF9980
        6CFFFEFEFEFFFEFEFEFFEDEDEDFFECECECFFF2F1F1FFE4E1DFFFA69282FFCAAE
        99FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F1ECFFE7D2C1FFF6EF
        E9FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000006D6966FFF3E5DAFF9981
        6FFFFEFEFEFFFEFEFEFFEDEDEDFFE7E7E7FFEAE9E9FFD5CDC8FF8E7158FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFF7F0EAFFE7D7
        C8FFFBF9F6FFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000BDB0A5FFA090
        85FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFAFAFF9C826EFFDBC2AFFFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFF4EB
        E5FFEDE3DAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000A0A0A00988D
        84FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD1C4BDFF9D7D65FFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFEFE7DFFFF6F2EFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000413C
        38FFA39489FFA29182FFA5968CFF9A7E6AFF856449FFDFC7B4FFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFCFBF8FFEEE6E0FFFBFBFAFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000AE9B8CFFEACEB9FFE6C4ABFFC09C7CFFCAA88BFFEBD2BEFFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFCFAF9FFEFECE9FFFEFEFEFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu2
      ShowHint = True
      Spacing = 1
      OnClick = btnEnviarEMailClick
    end
    object btnFechar: TSpeedButton
      Tag = -1
      Left = 746
      Top = 5
      Width = 47
      Height = 56
      Cursor = crHandPoint
      Hint = 'Fechar a tela'
      Caption = '&Sair'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36180000424D3618000000000000360000002800000040000000200000000100
        18000000000000180000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2
        B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2D6D6D6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9E2E2E2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B5B4B49191916464645757575757575757575757575757575757575757575757
        575757575757575757575757575757575757575757575757572C2C2CD6D6D6FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CACACAB1B1B19292928888888888888888888888888888888888888888888888
        888888888888888888888888888888888888888888888888886A6A6AE2E2E2FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9C9C9CCAC9C8CFCECDD2D1D1DFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDE
        DEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDE5E5E5EACACACFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B9B9B9D9D9D9DCDCDCDFDFDFE8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E88D8D8DC4C4C4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9C9C9CC9C8C7CAC9C8ABABABB9B9B9DAD9D9DFDEDEDFDEDEDFDEDEDFDEDEDFDE
        DEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDE5E5E5EACACACFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B9B9B9D8D8D8D9D9D9C4C4C4CECECEE4E4E4E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E88D8D8DC4C4C4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9C9C9CC8C6C6C9C7C7A8A8A8A3A3A3A9A9A9CBCBCBDFDEDEDFDEDEDFDEDEDFDE
        DEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDE5E5E5EACACACFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B9B9B9D7D7D7D8D8D8C2C2C2BEBEBEC2C2C2DADADAE8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E88D8D8DC4C4C4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        989898C7C5C5C8C6C6A6A6A6A1A1A1A3A3A3A4A4A4B6B6B6D8D7D7DFDEDEDFDE
        DEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDE5E5E5EACACACFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B6B6B6D7D7D7D7D7D7C0C0C0BDBDBDBEBEBEBFBFBFCBCBCBE3E3E3E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E88D8D8DC4C4C4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        949393C5C4C3C6C5C4A4A3A39E9E9EA0A0A0A2A2A2A4A4A4A9A9A9C6C5C5DFDE
        DEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDE5E5E5EACACACD2
        D2FDB7B7FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B3B3B3D5D5D5D6D6D6BEBEBEBBBBBBBCBCBCBDBDBDBFBFBFC2C2C2D6D6D6E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E88D8D8DC4C4C4EE
        EEEEE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        939292C4C2C2C5C3C3A1A1A19B9B9B9D9D9DA0A0A0A1A1A1A3A3A3A5A5A5B3B3
        B3D5D4D4DFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDE5E5E5E9494B618
        18F3A5A5FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B2B2B2D5D5D5D5D5D5BDBDBDB8B8B8BABABABCBCBCBDBDBDBEBEBEBFBFBFC9C9
        C9E1E1E1E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E88D8D8DBFBFBFA9
        A9A9DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        929291C2C1C0C3C2C19F9F9F9999999B9B9B9D9D9D9F9F9FA1A1A1A3A3A3A4A4
        A4A7A7A7C3C2C2DFDEDEDFDEDEDFDEDEDFDEDEDFDEDEDFDEDE54546E1414EC00
        00F1A5A5FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B1B1B1D3D3D3D4D4D4BBBBBBB7B7B7B8B8B8BABABABBBBBBBDBDBDBEBEBEBFBF
        BFC1C1C1D4D4D4E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E88F8F8FA5A5A5A0
        A0A0DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        929291C1BFBFC2C0C09C9C9C9696969898989A9A9A9C9C9C9E9E9EA0A0A0A2A2
        A2A4A4A4A6A6A6EBEAEAECEBEBF1F1F1F1F1F1F1F1F1E1E1F50C0CE00000F500
        00F1A5A5FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B1B1B1D3D3D3D3D3D3B9B9B9B5B5B5B6B6B6B8B8B8B9B9B9BBBBBBBCBCBCBDBD
        BDBFBFBFC0C0C0F0F0F0F1F1F1F5F5F5F5F5F5F5F5F5F1F1F19E9E9EA1A1A1A0
        A0A0DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        929291BFBEBDC0BFBE9A99999393939595959797979A9A9A9C9C9C9E9E9EA0A0
        A0A2A2A2A3A3A3FDFDFDFDFDFDFDFDFDFDFDFDEBEBFD2D2DF90000F80000F800
        00F44242F46666F66666F66666F66666F66666F66666F66666F6FFFFFFFFFFFF
        B1B1B1D1D1D1D2D2D2B7B7B7B3B3B3B4B4B4B6B6B6B8B8B8B9B9B9BBBBBBBCBC
        BCBDBDBDBEBEBEFEFEFEFEFEFEFEFEFEFEFEFEF7F7F7B3B3B3A3A3A3A3A3A3A1
        A1A1B8B8B8C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6FFFFFFFFFFFF
        919191BEBCBCBFBDBD9696969090909292929494949797979999999B9B9B9D9D
        9D9F9F9FA1A1A1FDFDFDFDFDFDFDFDFDF1F1FD3636F90000F90000FB0000FB00
        00F80000F40000F20000F10000F10000F10000F10000F00000F0FFFFFFFFFFFF
        B1B1B1D0D0D0D1D1D1B5B5B5B1B1B1B2B2B2B3B3B3B6B6B6B7B7B7B8B8B8BABA
        BABBBBBBBDBDBDFEFEFEFEFEFEFEFEFEF9F9F9B6B6B6A3A3A3A3A3A3A3A3A3A3
        A3A3A1A1A1A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0FFFFFFFFFFFF
        919090BCBBBABDBCBB9393938D8D8D8F8F8F9191919494949696969696969A9A
        9A9C9C9C9F9F9FFDFDFDFDFDFDF4F4FD4141F90000F90000FB0000FD0000FD00
        00FC0000FA0000F90000F80000F80000F80000F80000F70000F4FFFFFFFFFFFF
        B1B1B1CFCFCFD0D0D0B3B3B3AFAFAFB0B0B0B1B1B1B3B3B3B5B5B5B5B5B5B8B8
        B8B9B9B9BBBBBBFEFEFEFEFEFEFAFAFABABABAA3A3A3A3A3A3A4A4A4A4A4A4A4
        A4A4A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A2A2A2A1A1A1FFFFFFFFFFFF
        908F8FBBB9B9BCBABA9190908A8A8A8C8C8C8E8E8E9191918E8E8E5C5B5B9090
        909A9A9A9C9C9CFDFDFDF7F7FD4A4AFC0000FC0000FC0000FE0000FE0000FF00
        00FE0000FE0000FE0000FE0000FD0000FD0000FD0000FC0000F9FFFFFFFFFFFF
        B0B0B0CECECECFCFCFB1B1B1ACACACAEAEAEAFAFAFB1B1B1AFAFAF8B8B8BB1B1
        B1B8B8B8B9B9B9FEFEFEFBFBFBBEBEBEA4A4A4A4A4A4A5A5A5A5A5A5A5A5A5A5
        A5A5A5A5A5A5A5A5A5A5A5A4A4A4A4A4A4A4A4A4A4A4A4A3A3A3FFFFFFFFFFFF
        898888B9B8B7BAB9B88E8E8E8787878989898B8B8B8E8E8E6A6A6A504F4F5A59
        59939393999999FDFDFD8787FE2D2DFF2828FF1919FF0808FF0101FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FE0000FAFFFFFFFFFFFF
        ABABABCDCDCDCECECEAFAFAFAAAAAAACACACADADADAFAFAF9696968383838A8A
        8AB3B3B3B7B7B7FEFEFED4D4D4B5B5B5B3B3B3AEAEAEA7A7A7A5A5A5A5A5A5A5
        A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A3A3A3FFFFFFFFFFFF
        888787B8B6B6B9B7B78B8B8B8484848686868888888B8B8B6B6A6A504F4F504F
        4F8A8A8A969696FDFDFDE7E7FD8181FF7373FF5959FF2E2EFF0E0EFF0202FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FE0000FAFFFFFFFFFFFF
        AAAAAACCCCCCCDCDCDADADADA8A8A8AAAAAAABABABADADAD9696968383838383
        83ACACACB5B5B5FEFEFEF6F6F6D3D3D3CECECEC4C4C4B5B5B5AAAAAAA5A5A5A5
        A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A3A3A3FFFFFFFFFFFF
        868685B6B5B4B7B6B58888888181818383838585858787878A8A8A7574745150
        508C8C8C939393FDFDFDFDFDFDE9E9FD9D9DFF8787FF5E5EFF2D2DFF1010FF0B
        0BFF1313FF1F1FFF2828FF2B2BFF2D2DFF2D2DFF1B1BFF0000FDFFFFFFFFFFFF
        A9A9A9CBCBCBCBCBCBABABABA6A6A6A7A7A7A9A9A9AAAAAAACACAC9D9D9D8383
        83AEAEAEB3B3B3FEFEFEFEFEFEF7F7F7DCDCDCD5D5D5C6C6C6B5B5B5AAAAAAA9
        A9A9ACACACB0B0B0B3B3B3B4B4B4B5B5B5B5B5B5AFAFAFA4A4A4FFFFFFFFFFFF
        868685B5B3B3B6B5B48786867E7E7E8080808282828585858787878989897F7F
        7F8D8D8D909090FDFDFDFDFDFDFDFDFDE8E8FD9E9EFF8686FF5C5CFF3030FF21
        21FF3030FF4C4CFF6060FF6A6AFF6C6CFF6C6CFF5E5EFF2D2DFFFFFFFFFFFFFF
        A9A9A9CACACACBCBCBAAAAAAA4A4A4A5A5A5A7A7A7A9A9A9AAAAAAACACACA5A5
        A5AFAFAFB1B1B1FEFEFEFEFEFEFEFEFEF6F6F6DCDCDCD4D4D4C5C5C5B6B6B6B1
        B1B1B6B6B6BFBFBFC7C7C7CACACACBCBCBCBCBCBC6C6C6B5B5B5FFFFFFFFFFFF
        858585B4B2B2B5B3B38484847B7B7B7D7D7D7F7F7F8282828484848686868989
        898B8B8B8D8D8DFDFDFDFDFDFDFDFDFDFDFDFDE3E3FE9C9CFF8585FF5A5AFF33
        33FF3636FF5959FF7979FF8888FF8B8BFF8B8BFF8282FF6363FFFFFFFFFFFFFF
        A9A9A9C9C9C9CACACAA8A8A8A2A2A2A3A3A3A5A5A5A7A7A7A8A8A8AAAAAAACAC
        ACADADADAFAFAFFEFEFEFEFEFEFEFEFEFEFEFEF4F4F4DCDCDCD4D4D4C4C4C4B7
        B7B7B8B8B8C4C4C4D0D0D0D5D5D5D6D6D6D6D6D6D3D3D3C8C8C8FFFFFFFFFFFF
        858585B3B1B1B3B2B18181817878787A7A7A7C7C7C7F7F7F8181818383838585
        858888888A8A8AFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDDFDFFE9A9AFD7E7EFF3E
        3EFFB1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A9A9A9C9C9C9C9C9C9A6A6A6A0A0A0A1A1A1A3A3A3A5A5A5A6A6A6A7A7A7A9A9
        A9ABABABACACACFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF3F3F3DADADAD1D1D1BB
        BBBBE3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        858484B1B0AFB2B1B07F7F7F7676767878787A7A7A7C7C7C7E7E7E8080808282
        82858585878787FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD6D6D909191FF4A
        4AFFA8A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A8A8A8C7C7C7C8C8C8A5A5A59E9E9EA0A0A0A1A1A1A3A3A3A4A4A4A5A5A5A7A7
        A7A9A9A9AAAAAAFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA4A4A4D8D8D8BF
        BFBFE0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        848383B0AFAEB1B0AF7D7C7C7373737575757777777979797B7B7B7D7D7D7F7F
        7F828282848484FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD515151A1A1CF5C
        5CFFAAAAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A7A7A7C7C7C7C7C7C7A3A3A39C9C9C9E9E9E9F9F9FA0A0A0A2A2A2A3A3A3A5A5
        A5A7A7A7A8A8A8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE848484CDCDCDC5
        C5C5E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        807F7FB0AEAEB0AFAE7B7B7A7171717373737575757676767878787B7B7B7D7D
        7D7F7F7F818181FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD515151ACACACB3
        B3FFB1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A5A5A5C7C7C7C7C7C7A1A1A19B9B9B9C9C9C9E9E9E9E9E9EA0A0A0A2A2A2A3A3
        A3A5A5A5A6A6A6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE848484C4C4C4E4
        E4E4E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7E7D7DAFADADAFAEAD7979796F6F6F7070707272727474747676767878787A7A
        7A7C7C7C7E7E7EFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD515151ACACACFF
        FFFFF0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A3A3A3C6C6C6C6C6C6A0A0A09999999A9A9A9B9B9B9D9D9D9E9E9EA0A0A0A1A1
        A1A3A3A3A4A4A4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE848484C4C4C4FF
        FFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7E7D7DAEADACAFADAD7878786D6D6D6E6E6E7070707272727373737575757777
        777979797B7B7BFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD515151ACACACFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A3A3A3C5C5C5C6C6C6A0A0A09898989999999A9A9A9B9B9B9C9C9C9E9E9E9F9F
        9FA0A0A0A2A2A2FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE848484C4C4C4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7E7D7DAEADACAEADAC7676766C6C6C6D6D6D6E6E6E6F6F6F7171717373737575
        75777777787878FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD515151ACACACFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A3A3A3C5C5C5C5C5C59E9E9E9797979898989999999999999B9B9B9C9C9C9E9E
        9E9F9F9FA0A0A0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE848484C4C4C4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7E7E7EAEADACAEADAC7676766A6A6A6B6B6B6C6C6C6E6E6E6F6F6F7171717272
        72747474767676FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD515151ACACACFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A4A4A4C5C5C5C5C5C59E9E9E9696969797979797979999999999999B9B9B9B9B
        9B9D9D9D9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE848484C4C4C4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7E7E7EAEADACAEADAC7676766A6A6A6A6A6A6B6B6B6C6C6C6D6D6D6F6F6F7070
        70727272747474B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1515151ACACACFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A4A4A4C5C5C5C5C5C59E9E9E9696969696969797979797979898989999999A9A
        9A9B9B9B9D9D9DC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8848484C4C4C4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7878786867676867675B5B5B5858585858585858585858585959595959595A5A
        5A5A5A5A5B5B5B4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C555555FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        A0A0A09494949494948B8B8B8989898989898989898989898A8A8A8A8A8A8B8B
        8B8B8B8B8B8B8B818181818181818181818181818181818181878787FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      OnClick = TbFecharClick
    end
    object btnImprimir: TSpeedButton
      Tag = -1
      Left = 594
      Top = 5
      Width = 87
      Height = 56
      Cursor = crHandPoint
      Hint = 'Imprimir Retat'#243'rio'
      Caption = 'Imprimir Relat'#243'rio'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000000000000000
        0606060505050505050505050505050505050605040507090D20291929311929
        321A2C361C1F2006060505050505050505050505050505050505050505050508
        08080404043333333838383737373737373737373737373737373A3635314E58
        06A6DF0B98CC0C9DCE0095D02F48523935333737373737373737373737373737
        373737373D3D3D2929291616169FA0A19394969294959294959294959496979B
        9C9D95918F5A77823BCFFA79EFFF6EECFF29ABD5526871A19F9E969799949597
        9394969294959294959697997A7B7C2B2B2B151617E2DBD3FFFAE8FFF5E4FFF4
        E4FFF4E3ECDFCDAFA69B6A6A68635F5D524A478792949FABAF7F5C59C2ADAC9C
        9B97CEC4B6E8DBCAF8EADAFEF1E0FFF5E4FFFDEBC0B9B12020210B0B0B4E4F50
        4244453B3C3E4C4E4F53545667686AA6A7A8FDFDFDC1C1C1A2A2A27F7877A275
        75A18383A7A2A2E5E6E6D4D5D6ABADAE7E7F8157595A393A3C3E3F415152530A
        0A0A000000000000000000202020292929989898EEEEEEFAFAFAF3F3F3B2B2B2
        B1B1B1BEBCBC3F3838535555666767858585A9A9A9D3D3D3EBEBEBCDCDCD7070
        70080808000000000000000000232323525252959595FFFFFFFFFFFFF2F2F2EC
        ECECF1F1F1AEAEAEACACACB3B3B39192927070706363636E6E6E7B7B7B8E8E8E
        B2B2B2D1D1D1FFFFFF535353000000000000000000171717A6A6A6FFFFFFF9F9
        F9F1F1F1F3F3F3E3E3E3AFAFAF7D7D7D949494A7A7A7B9B9B9BFBFBFB1B1B19D
        9D9D9090908D8D8D6060608080807B7B7B2E2E2E000000000000000000181818
        B8B8B8FFFFFFF8F8F8F5F5F5A2A2A2808080A8A8A89393937F7F7F7070707D7D
        7DA2A2A2B9B9B9C0C0C0BFBFBFBBBBBB9E9D9EB4ABB1A6A3A531313100000000
        00000000001A1A1AB5B5B5E2E2E2B1B1B17B7B7BAAAAAAE1E1E1DEDEDEBABABA
        ABABABACACAC9595957A7A7A727272868686A0A0A0B2B0B1B3BCB652B2726E86
        763A37390000000000000000002121218484849F9F9FAFAFAFDDDDDDDFDFDFD5
        D5D5D3D3D3F7F7F7E9E9E9DBDBDBC9C9C9BFBFBFB1B1B1949494868686898889
        888A895684656E7B733D3C3D0000000000000000001F1F1FACACACE9E9E9E8E8
        E8DCDCDCD5D5D5CECECEF0F0F0C0C0C0B7B7B7BABABADEDEDEE9E9E9E3E3E3D8
        D8D8C6C6C6B0B0B0A4A4A49B96997E7D7E3E3E3E0000000000000000001F1F1F
        D5D5D5E5E5E5DADADAD4D4D4D0D0D0E7E7E7D0D0D0D4D4D4F8F8F8F1F1F1D0D0
        D0BABABABABABACFCFCFDADADADFDFDFDCDCDCD9D9D9A3A3A343434300000000
        0000000000292929A7A7A7EBEBEBD9D9D9D5D5D5DDDDDDBFBFBFBDBDBDFFFFFF
        F9F9F9F4F4F4F2F2F2F0F0F0EAEAEAD4D4D4C8C8C8C8C8C8C3C3C3DCDCDC9292
        921818180000000000000000000000005858589C9C9CA8A8A8A9A9A99E9E9EA6
        A6A69E9E9E9A9A9AA8A8A8C1C1C1E6E6E6F8F8F8F4F4F4F1F1F1EDEDEDF1F1F1
        B8B8B8B2B2B27777770000000000000000000000000000000000004C4C4C6060
        60E6E6E6FBFEFFD9DDDEADB1B2B2B5B5B9BABAB0B0B09797979494949E9E9EBF
        BFBFDFDFDFBABABAB0B0B0616161010101000000000000000000000000000000
        000000000000404141D5D8D9F9DAD7F9CDC9E7C6C1DECECCD5CFCFD4D8DBD3D8
        DBD3D7D9DFE0E19797978D8D8D96969628282812121200000000000000000000
        00000000000000000000000000000004047B595CF4C1A1FFCAA5FFC7A7FFC9AB
        FFCAACFEC3A6FACFB8F5D6C7ECE5E57374740404041212120000000000000000
        000000000000000000000000000000000000000000000000006D4246FFEAC2FF
        DDB9FFDDB9FFDDB8FFDDB8FFDDB9FFDDB6F8CDA6B97974000000000000000000
        0000000000000000000000000000000000000000000000000000000000001C11
        129B6C6AFFF0CEFFE1C3FFE1C3FFE1C3FFE1C3FFE1C3FFE6C6EDC9B169484700
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000492D2ECDA197FFEFD4FFE6CCFFE6CCFFE6CCFFE6CCFFE6CCFFED
        D2E9C1B1150D0D00000000000000000000000000000000000000000000000000
        0000000000000000000000000000573436ECCFC1FFF2DFFFEDDBFFEDDBFFEDDB
        FFEDDBFFEDDBFFF0DDD3A79F180D0E0000000000000000000000000000000000
        00000000000000000000000000000000000000120B0BBF8A88FBEEE1FFF9EBFF
        F9EBFFF8EAFFF7E9FFF9EAFFFBECFFF3E693706D060203000000000000000000
        000000000000000000000000000000000000000000000000000000915F60BC95
        92D5BBB6E7D8D4D1B8B5D7C2BEE1D1CFD2BBBAD9C2C1B19C9900000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      OnClick = btnImprimirClick
    end
    object btnutilitarios: TSpeedButton
      Tag = -1
      Left = 684
      Top = 5
      Width = 58
      Height = 56
      Cursor = crHandPoint
      Hint = 'Utilit'#225'rios'
      Caption = 'Utilit'#225'rios'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000027000000270000000000000000000001FFFEFEFFFEFE
        FFFDFEFFFCFEFFFCFEFFFDFEFFFEFFFFFFFFFDFFFFF3F3FF7672E9130E917C7A
        C6F4F4FFFBFBFFFFFFFFFFFDFEA89A9BAA9A9BAD9B9CAE999BAC9A9BFFFEFEFF
        FEFFFEFEFEF4F3FF2D2A9E2A25A8211E6EF3F3FFFBFBFFFFFFFFB29A9AEBD7D6
        E9DFDFDED1D3E2CCCEC5ADAF9E8C8DFFFEFEFFFEFFF6F3FF8682F32B26A78D8A
        E0F1F1FFFAFAFFFFFFFFB69A99FFF0F0FFF0F1F0DBDDE1BFC0C5A0A2B09494FF
        FCFBFFFEFEFAF3FF312A9D130E93343090EFEDFFFAF9FFFFFFFFBAA0A0B79899
        E4C0C0EEC2C1D09796B57D7CB18D8DB29A9AAE9A999E8FB53228A0130B983A35
        A2EDE9FFFAF7FFFFFFFFFFFDF9906F6CBB8D8CC48C8BCC8B8AA36565F2C4C3FE
        DCDCF1D5D5D8C1E73A2A99140A9A2A24ABE3E0FFF3F0FFFBF9FFCDADA0866258
        8E5E5C935D5D935D5C955D5C955C5DAC7A7AFCDADAC2A8C6482F8BA898FF2A29
        D71417B50C0665F4EBFFCFAF9C5E3B2D663733663635643635673535703434B4
        7B7AEEC2C1B893A788619F452994241CB61C1CBC1A15901F157FCBAF9E5B3B2E
        5E38346036375E36376436356D3534B67A7ABE8584BC8489AD7489481B46FDE6
        FF21157F1811980D099EC9AF9E593C2E5B38345D37375D37376236356B3535AF
        768585507C7E4D857F4F7F764F838369AF2618781711980E0CA5C9AF9E593C2E
        5B38355D36385D37376236356D34359F6E9A3C21A72719BF170A9B21169C3127
        AF11098C18159008087EC4AEA2543B315638375738375B38346038336B36339C
        6E9C3120AD0704B81A1AC21714B01C16A91A14910D0A66E8E8FFC8BCB8C8BCB8
        CABABBCEBBB8BDA395C4A394CE9F97A377883F24666152B42C1E942A1E965B4E
        B46258A5F6F1FFF8F7FFFFFFFEFFFFFEFFFEFFFFFFFBFFFFF2C9AF9F5F382F5D
        3638503245452A553D24683B226C836DA8FFF1FFFFFAFFFFFEFFFFFFFFFFFFFF
        FFFFFFFFFFFCFFFFF8BFAEA556393557383756373A55333D5433425432439A78
        89FFF9FFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF9C8BCB6D1BAB8D7
        B9B8DABAB5C4A098C7A195C7A195A67D7AFFFCFBFFFEFEFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Spacing = 1
      OnClick = btnutilitariosClick
    end
    object buttonCCe: TSpeedButton
      Tag = -1
      Left = 427
      Top = 5
      Width = 80
      Height = 56
      Cursor = crHandPoint
      Hint = 'CC-E'
      Caption = 'CC-E'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000AE9B8CFFEACEB9FFE6C4ABFFC19C7DFFCBAA8CFFEBD2BEFFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFCFAF9FFEFECE9FFFEFEFEFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000443E
        39FFA39489FFA29182FFA5968CFF9A7E6AFF88684DFFDFC7B4FFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFCFBF8FFEEE6E0FFFBFBFAFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000A0A0A00988D
        84FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD8CDC6FFA2816AFFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFEFE7DFFFF6F2EFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000BDB0A5FFA090
        85FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFAFAFFA68F7CFFDCC3B0FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFF4EB
        E5FFEDE3DAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000006D6966FFF3E5DAFF9981
        6FFFFEFEFEFFFEFEFEFFE3E3E3FFE9E9E9FFE3E2E2FFD7CFCCFF947760FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFF7F0EAFFE7D7
        C8FFFBF9F6FFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000025252500F2E9E5FFE4C3A6FF9980
        6CFFFEFEFEFFFEFEFEFFDCDCDCFFF0F0F0FFE5E4E4FFF1EDEBFFB09D8EFFCCB0
        9BFFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F1ECFFE7D2C1FFF6EF
        E9FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000D4D0CCFFEBD2BEFFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFF2E8E3FFA384
        6BFFF0DFD2FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFEBD8C8FFEDDFD2FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000008D8D8CFFF4EAE2FFDBAF8AFFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFEBEBEBFFEFEFEFFFEDECECFFE7E4E2FFE3DDD9FFCAB8
        ACFFAF937BFFF4E6DBFFF5E9DFFFF6ECE4FFF1E1D4FFE5CDB8FFFAF5F0FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000044444400F6F2F0FFDCAF8CFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE5E5E5FFE7E7E7FFE8E7E7FFEEEAE8FFE5DFDAFFE9DF
        D7FFA88B74FFE5D4C5FFF5E9DFFFF4E7DDFFE1C1A8FFF7ECE6FFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00000000000A0A0A00E5E3E1FFE1BDA0FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFE4D2C8FFAC886EFFF5E9DFFFE1C1A7FFEFDFD1FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF000000
        000000000000AEAEAEFFEAD6C6FFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFF4E8DFFFBEA38FFFCBA68DFFE5CAB3FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF000000
        0000676767FFF1ECE7FFD39D70FFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFF5E9E0FFE8D9CCFFA68165FFF5EAE1FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00000000002525
        2500ECEBEAFFD6A67EFFD29B6DFFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFF5E9E0FFF3E4D9FFCEB7A5FFB99A80FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF0000000000CBCB
        CBFFDEBFA6FFD09667FFD29B6DFFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE4E4E4FFE8E8E8FFE4E3E3FFDDDAD8FFE6E0DBFFDCD3
        CDFFDED3CBFFE4D6CBFFC9BAADFF96775EFFECDDD2FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF0000000000CBCB
        CBFFDEBFA6FFD09667FFD29B6DFFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE7E7E7FFEFEFEFFFDBDADAFFE0DDDBFFE9E3DEFFE6DD
        D7FFE3D8CFFFE5D7CCFFDECDBFFF9E7E64FFECDDD2FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00000000002525
        2500ECEBEAFFD6A67EFFD29B6DFFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFF5E9E0FFF3E4D9FFCEB6A4FFB99A80FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF000000
        0000676767FFF1ECE7FFD39D70FFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE6E6E6FFEDEDEDFFECEBEBFFDFDCDAFFE2DCD8FFE0D7
        D0FFD8CEC6FFD5C7BBFF9A775CFFF5EAE1FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF000000
        000000000000AEAEAEFFEAD6C6FFD5A075FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFF2F2F2FFE3E3E3FFEBEAEAFFF1EDEBFFE6E0DBFFE7DE
        D8FFD4CAC2FFA38C78FFCAA68CFFE5CAB3FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00000000000A0A0A00E5E3E1FFE1BDA0FFD8A67EFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFFAF3EEFFF8EE
        E7FFE3D1C6FFA7856AFFF5E9DFFFE1C1A7FFEFDFD1FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000044444400F6F2F0FFDCAF8CFFDBAE89FFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFE3E3E3FFEAEAEAFFECEBEBFFE8E5E3FFEEE8E3FFE3D9
        D2FF9D8069FFE5D4C5FFF5E9DFFFF4E7DDFFE1C1A8FFF7ECE6FFFAF5F1FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000008D8D8CFFF4EAE2FFDBAF8AFFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFDCDCDCFFECECECFFDDDCDCFFE3E0DEFFE6E0DBFFCAB6
        ABFFAD8F77FFF4E6DBFFF5E9DFFFF6ECE4FFF1E1D4FFE5CDB8FFFAF5F0FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000D4D0CCFFEBD2BEFFDEB693FF9980
        6CFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFDFFFCF8F6FFF2E8E3FF9C7C
        62FFF0DFD2FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFEBD8C8FFEDDFD2FFFCF8
        F6FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000025252500F2E9E5FFE4C3A6FF9980
        6CFFFEFEFEFFFEFEFEFFEDEDEDFFECECECFFF2F1F1FFE4E1DFFFA69282FFCAAE
        99FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F1ECFFE7D2C1FFF6EF
        E9FFFDFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000006D6966FFF3E5DAFF9981
        6FFFFEFEFEFFFEFEFEFFEDEDEDFFE7E7E7FFEAE9E9FFD5CDC8FF8E7158FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFF7F0EAFFE7D7
        C8FFFBF9F6FFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000BDB0A5FFA090
        85FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFAFAFF9C826EFFDBC2AFFFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFF4EB
        E5FFEDE3DAFFFFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000A0A0A00988D
        84FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD1C4BDFF9D7D65FFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFEFE7DFFFF6F2EFFFFFFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000413C
        38FFA39489FFA29182FFA5968CFF9A7E6AFF856449FFDFC7B4FFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFCFBF8FFEEE6E0FFFBFBFAFFFFFFFFFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000AE9B8CFFEACEB9FFE6C4ABFFC09C7CFFCAA88BFFEBD2BEFFEED9C9FFF1DF
        D2FFF2E2D6FFF4E6DBFFF5E9DFFFF6ECE4FFF8EFE8FFF9F2EDFFFAF5F1FFFCF8
        F6FFFDFCFAFFFCFAF9FFEFECE9FFFEFEFEFF00000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopupMenu2
      ShowHint = True
      Spacing = 1
      OnClick = buttonCCeClick
    end
  end
  object cbEmailSSL: TCheckBox
    Left = 841
    Top = 92
    Width = 97
    Height = 17
    Caption = 'cbEmailSSL'
    TabOrder = 10
    Visible = False
  end
  object EEMail: TDBEdit
    Left = 841
    Top = 109
    Width = 112
    Height = 21
    DataField = 'EMAIL'
    Enabled = False
    TabOrder = 3
    Visible = False
  end
  object EStatus: TDBEdit
    Left = 841
    Top = 65
    Width = 112
    Height = 21
    DataField = 'ST'
    DataSource = dsRxNotaFiscal
    Enabled = False
    TabOrder = 2
    Visible = False
  end
  object Panel3: TPanel
    Left = 0
    Top = 412
    Width = 811
    Height = 34
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 22
    object Label5: TLabel
      Left = 8
      Top = 57
      Width = 65
      Height = 13
      Caption = 'Status NF-e'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 11
      Top = 7
      Width = 37
      Height = 21
      Caption = 'Qtd:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 109
      Top = 7
      Width = 49
      Height = 21
      Caption = 'Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 59
      Top = 7
      Width = 11
      Height = 21
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 173
      Top = 7
      Width = 38
      Height = 21
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 145
    Top = 265
    object ConsultaStatusNFe1: TMenuItem
      Caption = 'Consulta Status NF-e'
      OnClick = ConsultaStatusNFe1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Cancelamentodiretodenfe1: TMenuItem
      Caption = 'Cancelamento direto de nfe'
      OnClick = Cancelamentodiretodenfe1Click
    end
  end
  object QryItens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM NOTA_ITENS WHERE '
      '0=1')
    SQLConnection = Modulo.SQLConexao
    Left = 49
    Top = 264
    object QryItensFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Required = True
    end
    object QryItensNOT_CODIGO: TIntegerField
      FieldName = 'NOT_CODIGO'
      Required = True
    end
    object QryItensNI_CODIGO: TIntegerField
      FieldName = 'NI_CODIGO'
      Required = True
    end
    object QryItensPRO_CODIGO: TStringField
      FieldName = 'PRO_CODIGO'
      Required = True
      Size = 10
    end
    object QryItensNI_QTD: TFMTBCDField
      FieldName = 'NI_QTD'
      Precision = 20
      Size = 2
    end
    object QryItensNI_VALORUN: TFMTBCDField
      FieldName = 'NI_VALORUN'
      Precision = 20
      Size = 2
    end
    object QryItensNI_SUBTOT: TFMTBCDField
      FieldName = 'NI_SUBTOT'
      Precision = 20
      Size = 2
    end
    object QryItensDELETADO: TIntegerField
      FieldName = 'DELETADO'
    end
    object QryItensPRO_NOME: TStringField
      FieldName = 'PRO_NOME'
      Size = 80
    end
    object QryItensMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QryItensEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QryItensEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object QryItensDATA: TDateField
      FieldName = 'DATA'
    end
    object QryItensHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object QryItensUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object QryItensNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object QryItensIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object QryItensNI_BAIXADO: TIntegerField
      FieldName = 'NI_BAIXADO'
    end
    object QryItensFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
    object QryItensPRO_CODIGO_NCM: TStringField
      FieldName = 'PRO_CODIGO_NCM'
      Size = 30
    end
    object QryItensNI_CFOP: TStringField
      FieldName = 'NI_CFOP'
      Size = 5
    end
    object QryItensNI_VALOR_DESCONTO: TFMTBCDField
      FieldName = 'NI_VALOR_DESCONTO'
      Precision = 20
      Size = 2
    end
    object QryItensNI_ICMS_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_ICMS_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryItensNI_ICMS_VALOR: TFMTBCDField
      FieldName = 'NI_ICMS_VALOR'
      Precision = 20
      Size = 2
    end
    object QryItensNI_ICMS_ALIQUOTA: TFMTBCDField
      FieldName = 'NI_ICMS_ALIQUOTA'
      Precision = 20
      Size = 2
    end
    object QryItensNI_ICMSSUBS_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_ICMSSUBS_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryItensNI_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NI_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object QryItensNI_ICMSSUBS_ALIQUOTA: TFMTBCDField
      FieldName = 'NI_ICMSSUBS_ALIQUOTA'
      Precision = 20
      Size = 2
    end
    object QryItensNI_ICMSSUBS_VALOR: TFMTBCDField
      FieldName = 'NI_ICMSSUBS_VALOR'
      Precision = 20
      Size = 2
    end
    object QryItensNI_IPI_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_IPI_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryItensNI_PIS_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_PIS_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryItensNI_IPI_ALIQUOTA: TFMTBCDField
      FieldName = 'NI_IPI_ALIQUOTA'
      Precision = 20
      Size = 2
    end
    object QryItensNI_PIS_ALIQUOTA: TFMTBCDField
      FieldName = 'NI_PIS_ALIQUOTA'
      Precision = 20
      Size = 2
    end
    object QryItensNI_IPI_VALOR: TFMTBCDField
      FieldName = 'NI_IPI_VALOR'
      Precision = 20
      Size = 2
    end
    object QryItensNI_PIS_VALOR: TFMTBCDField
      FieldName = 'NI_PIS_VALOR'
      Precision = 20
      Size = 2
    end
    object QryItensNI_COFINS_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_COFINS_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryItensTRIBUTACOES_CODIGO: TIntegerField
      FieldName = 'TRIBUTACOES_CODIGO'
    end
    object QryItensNI_COFINS_ALIQUOTA: TFMTBCDField
      FieldName = 'NI_COFINS_ALIQUOTA'
      Precision = 20
      Size = 2
    end
    object QryItensNI_COFINS_VALOR: TFMTBCDField
      FieldName = 'NI_COFINS_VALOR'
      Precision = 20
      Size = 2
    end
    object QryItensNI_VALOR_FRETE: TFMTBCDField
      FieldName = 'NI_VALOR_FRETE'
      Precision = 20
      Size = 2
    end
    object QryItensNI_CST: TStringField
      FieldName = 'NI_CST'
      Size = 30
    end
    object QryItensNI_UNID: TStringField
      FieldName = 'NI_UNID'
      Size = 30
    end
    object QryItensNI_EAN: TStringField
      FieldName = 'NI_EAN'
      Size = 30
    end
    object QryItensNI_VALORSEGURO: TFMTBCDField
      FieldName = 'NI_VALORSEGURO'
      Precision = 20
      Size = 2
    end
    object QryItensNI_INFORMACAOADICIONAL: TStringField
      FieldName = 'NI_INFORMACAOADICIONAL'
      Size = 60
    end
    object QryItensNI_COFINS_ALIQUOTA_TIPO: TIntegerField
      FieldName = 'NI_COFINS_ALIQUOTA_TIPO'
    end
    object QryItensNI_PIS_ALIQUOTA_TIPO: TIntegerField
      FieldName = 'NI_PIS_ALIQUOTA_TIPO'
    end
    object QryItensPRO_CODFABRICANTE: TStringField
      FieldName = 'PRO_CODFABRICANTE'
      Size = 30
    end
    object QryItensVEIC_TPOP: TStringField
      FieldName = 'VEIC_TPOP'
      Size = 1
    end
    object QryItensVEIC_CHASSI: TStringField
      FieldName = 'VEIC_CHASSI'
      Size = 60
    end
    object QryItensVEIC_CCOR: TStringField
      FieldName = 'VEIC_CCOR'
      Size = 5
    end
    object QryItensVEIC_XCOR: TStringField
      FieldName = 'VEIC_XCOR'
      Size = 60
    end
    object QryItensVEIC_POT: TStringField
      FieldName = 'VEIC_POT'
      Size = 5
    end
    object QryItensVEIC_CILIN: TStringField
      FieldName = 'VEIC_CILIN'
      Size = 5
    end
    object QryItensVEIC_PESOL: TStringField
      FieldName = 'VEIC_PESOL'
      Size = 9
    end
    object QryItensVEIC_PESOB: TStringField
      FieldName = 'VEIC_PESOB'
      Size = 9
    end
    object QryItensVEIC_NSERIE: TStringField
      FieldName = 'VEIC_NSERIE'
      Size = 9
    end
    object QryItensVEIC_TPCOMB: TStringField
      FieldName = 'VEIC_TPCOMB'
      Size = 2
    end
    object QryItensVEIC_NMOTOR: TStringField
      FieldName = 'VEIC_NMOTOR'
      Size = 60
    end
    object QryItensVEIC_CMT: TStringField
      FieldName = 'VEIC_CMT'
      Size = 9
    end
    object QryItensVEIC_DIST: TStringField
      FieldName = 'VEIC_DIST'
      Size = 5
    end
    object QryItensVEIC_RENAVAM: TStringField
      FieldName = 'VEIC_RENAVAM'
      Size = 60
    end
    object QryItensVEIC_ANOMOD: TIntegerField
      FieldName = 'VEIC_ANOMOD'
    end
    object QryItensVEIC_ANOFAB: TIntegerField
      FieldName = 'VEIC_ANOFAB'
    end
    object QryItensVEIC_TPPINT: TStringField
      FieldName = 'VEIC_TPPINT'
      Size = 60
    end
    object QryItensVEIC_TPVEIC: TIntegerField
      FieldName = 'VEIC_TPVEIC'
    end
    object QryItensVEIC_ESPVEIC: TIntegerField
      FieldName = 'VEIC_ESPVEIC'
    end
    object QryItensVEIC_VIN: TStringField
      FieldName = 'VEIC_VIN'
      Size = 1
    end
    object QryItensVEIC_CONDVEIC: TStringField
      FieldName = 'VEIC_CONDVEIC'
      Size = 1
    end
    object QryItensVEIC_CMOD: TStringField
      FieldName = 'VEIC_CMOD'
      Size = 60
    end
    object QryItensVEIC_CM3: TStringField
      FieldName = 'VEIC_CM3'
      Size = 30
    end
    object QryItensVEIC_CMKG: TStringField
      FieldName = 'VEIC_CMKG'
      Size = 30
    end
    object QryItensVEIC_CCORDENATRAN: TStringField
      FieldName = 'VEIC_CCORDENATRAN'
      Size = 2
    end
    object QryItensVEIC_LOTA: TStringField
      FieldName = 'VEIC_LOTA'
      Size = 5
    end
    object QryItensVEIC_TPREST: TStringField
      FieldName = 'VEIC_TPREST'
      Size = 1
    end
    object QryItensNI_MVA: TFMTBCDField
      FieldName = 'NI_MVA'
      Precision = 20
      Size = 2
    end
    object QryItensNI_PMVAST: TFMTBCDField
      FieldName = 'NI_PMVAST'
      Precision = 20
      Size = 2
    end
    object QryItensNI_PREDBCST: TFMTBCDField
      FieldName = 'NI_PREDBCST'
      Precision = 20
      Size = 2
    end
    object QryItensNI_PESO: TFMTBCDField
      FieldName = 'NI_PESO'
      Precision = 20
      Size = 2
    end
    object QryItensNI_VALORREALDESCONTO: TFMTBCDField
      FieldName = 'NI_VALORREALDESCONTO'
      Precision = 20
      Size = 2
    end
    object QryItensPRO_ANP: TIntegerField
      FieldName = 'PRO_ANP'
    end
  end
  object QryParametrosNFE: TSQLQuery
    BeforeOpen = QryParametrosNFEBeforeOpen
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM NFECONF '
      '')
    SQLConnection = Modulo.SQLConexao
    Left = 49
    Top = 312
    object QryParametrosNFENFE_CODIGO: TIntegerField
      FieldName = 'NFE_CODIGO'
    end
    object QryParametrosNFENFE_CERTIFICADOCAMINHO: TStringField
      FieldName = 'NFE_CERTIFICADOCAMINHO'
      Size = 999
    end
    object QryParametrosNFENFE_CERTIFICADOSENHA: TStringField
      FieldName = 'NFE_CERTIFICADOSENHA'
      Size = 999
    end
    object QryParametrosNFENFE_CERTIFICADONUMEROSERIE: TStringField
      FieldName = 'NFE_CERTIFICADONUMEROSERIE'
      Size = 999
    end
    object QryParametrosNFENFE_GERALDANFERETRATO: TStringField
      FieldName = 'NFE_GERALDANFERETRATO'
      Size = 30
    end
    object QryParametrosNFENFE_GERALFORMADEEMISSAO: TStringField
      FieldName = 'NFE_GERALFORMADEEMISSAO'
      Size = 30
    end
    object QryParametrosNFENFE_GERALCAMINHOLOGOMARCA: TStringField
      FieldName = 'NFE_GERALCAMINHOLOGOMARCA'
      Size = 999
    end
    object QryParametrosNFENFE_GERALSALVARARQENVRESP: TStringField
      FieldName = 'NFE_GERALSALVARARQENVRESP'
      Size = 999
    end
    object QryParametrosNFENFE_WEBSERVICEUFDESTINO: TStringField
      FieldName = 'NFE_WEBSERVICEUFDESTINO'
      Size = 999
    end
    object QryParametrosNFENFE_WEBSERVICEAMBIENTE: TStringField
      FieldName = 'NFE_WEBSERVICEAMBIENTE'
      Size = 30
    end
    object QryParametrosNFENFE_WEBSERVICEVISUALIZARMSG: TIntegerField
      FieldName = 'NFE_WEBSERVICEVISUALIZARMSG'
    end
    object QryParametrosNFENFE_PROXYHOST: TStringField
      FieldName = 'NFE_PROXYHOST'
      Size = 999
    end
    object QryParametrosNFENFE_PROXYPORTA: TStringField
      FieldName = 'NFE_PROXYPORTA'
      Size = 999
    end
    object QryParametrosNFENFE_PROXYUSUARIO: TStringField
      FieldName = 'NFE_PROXYUSUARIO'
      Size = 999
    end
    object QryParametrosNFENFE_PROXYSENHA: TStringField
      FieldName = 'NFE_PROXYSENHA'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTECNPJ: TStringField
      FieldName = 'NFE_EMITENTECNPJ'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTEINSCESTAD: TStringField
      FieldName = 'NFE_EMITENTEINSCESTAD'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTERAZAO: TStringField
      FieldName = 'NFE_EMITENTERAZAO'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTEFANTASIA: TStringField
      FieldName = 'NFE_EMITENTEFANTASIA'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTEFONE: TStringField
      FieldName = 'NFE_EMITENTEFONE'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTECEP: TStringField
      FieldName = 'NFE_EMITENTECEP'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTELOGRADOURO: TStringField
      FieldName = 'NFE_EMITENTELOGRADOURO'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTENUMERO: TStringField
      FieldName = 'NFE_EMITENTENUMERO'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTECOMPLEMENTO: TStringField
      FieldName = 'NFE_EMITENTECOMPLEMENTO'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTEBAIRRO: TStringField
      FieldName = 'NFE_EMITENTEBAIRRO'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTECODCIDADE: TStringField
      FieldName = 'NFE_EMITENTECODCIDADE'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTECIDADE: TStringField
      FieldName = 'NFE_EMITENTECIDADE'
      Size = 999
    end
    object QryParametrosNFENFE_EMITENTEUF: TStringField
      FieldName = 'NFE_EMITENTEUF'
      Size = 999
    end
    object QryParametrosNFENFE_EMAILSMTP: TStringField
      FieldName = 'NFE_EMAILSMTP'
      Size = 999
    end
    object QryParametrosNFENFE_EMAILPORTA: TStringField
      FieldName = 'NFE_EMAILPORTA'
      Size = 999
    end
    object QryParametrosNFENFE_EMAILUSUARIO: TStringField
      FieldName = 'NFE_EMAILUSUARIO'
      Size = 999
    end
    object QryParametrosNFENFE_EMAILSENHA: TStringField
      FieldName = 'NFE_EMAILSENHA'
      Size = 999
    end
    object QryParametrosNFENFE_EMAILASSUNTO: TStringField
      FieldName = 'NFE_EMAILASSUNTO'
      Size = 999
    end
    object QryParametrosNFENFE_EMAILSMTPSEGURO: TIntegerField
      FieldName = 'NFE_EMAILSMTPSEGURO'
    end
    object QryParametrosNFENFE_EMAILMENSAGEM: TStringField
      FieldName = 'NFE_EMAILMENSAGEM'
      Size = 999
    end
    object QryParametrosNFEFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
    end
    object QryParametrosNFEMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QryParametrosNFEDELETADO: TIntegerField
      FieldName = 'DELETADO'
    end
    object QryParametrosNFEEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object QryParametrosNFEDATA: TDateField
      FieldName = 'DATA'
    end
    object QryParametrosNFEHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object QryParametrosNFEUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object QryParametrosNFENOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object QryParametrosNFEIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object QryParametrosNFEEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QryParametrosNFEFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
    object QryParametrosNFENFE_CAMINHOXML: TStringField
      FieldName = 'NFE_CAMINHOXML'
      Size = 60
    end
    object QryParametrosNFENEF_CAMINHOPDF: TStringField
      FieldName = 'NEF_CAMINHOPDF'
      Size = 60
    end
    object QryParametrosNFENFE_CAMINHOCANCELADO: TStringField
      FieldName = 'NFE_CAMINHOCANCELADO'
      Size = 60
    end
    object QryParametrosNFENFE_CAMINHORAVE: TStringField
      FieldName = 'NFE_CAMINHORAVE'
      Size = 60
    end
    object QryParametrosNFENFE_OPTANTESIMPLESNASCIONAL: TStringField
      FieldName = 'NFE_OPTANTESIMPLESNASCIONAL'
      Size = 1
    end
    object QryParametrosNFENFE_OBSAPARECENANOTA: TStringField
      FieldName = 'NFE_OBSAPARECENANOTA'
      Size = 999
    end
    object QryParametrosNFENFE_SERIE: TStringField
      FieldName = 'NFE_SERIE'
      Size = 5
    end
    object QryParametrosNFENFE_CFOPPADRAO: TStringField
      FieldName = 'NFE_CFOPPADRAO'
      Size = 4
    end
    object QryParametrosNFENFE_TIPODERETE: TIntegerField
      FieldName = 'NFE_TIPODERETE'
    end
    object QryParametrosNFEIMPRIMENFECODIGOFABRICA: TStringField
      FieldName = 'IMPRIMENFECODIGOFABRICA'
      Size = 30
    end
    object QryParametrosNFECONTROLEESTOQUENFE: TStringField
      FieldName = 'CONTROLEESTOQUENFE'
      Size = 3
    end
  end
  object QryCadNota: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftDate
        Name = 'd1'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDate
        Name = 'd2'
        ParamType = ptInput
        Value = 0d
      end>
    SQL.Strings = (
      
        'Select                                                          ' +
        '                                              '
      
        '    nota.fil_codigo,                                            ' +
        '                                              '
      
        '    nota.not_codigo,                                            ' +
        '                                              '
      
        '    nota.not_nr,                                                ' +
        '                                              '
      
        '    nota.not_especie,                                           ' +
        '                                              '
      
        '    nota.not_serie,                                             ' +
        '                                              '
      
        '    nota.not_dataemissao,                                       ' +
        '                                              '
      
        '    nota.not_datasaida,                                         ' +
        '                                              '
      
        '    nota.ped_codigo,                                            ' +
        '                                              '
      
        '    nota.not_totitens,                                          ' +
        '                                              '
      
        '    nota.not_totnota,                                           ' +
        '                                              '
      
        '    nota.tra_codigo,                                            ' +
        '                                              '
      
        '    nota.not_cpfcnpj,                                           ' +
        '                                              '
      
        '    nota.not_desconto,                                          ' +
        '                                              '
      
        '    nota.not_acrecimo,                                          ' +
        '                                              '
      
        '    nota.not_valipi,                                            ' +
        '                                              '
      
        '    nota.not_aliqipi,                                           ' +
        '                                              '
      
        '    nota.not_baseipi,                                           ' +
        '                                              '
      
        '    nota.deletado,                                              ' +
        '                                              '
      
        '    nota.not_valicm,                                            ' +
        '                                              '
      
        '    nota.not_aliqicm,                                           ' +
        '                                              '
      
        '    nota.not_baseicm,                                           ' +
        '                                              '
      
        '    nota.not_situacao,                                          ' +
        '                                              '
      
        '    nota.not_basesubs,                                          ' +
        '                                              '
      
        '    nota.not_valsubs,                                           ' +
        '                                              '
      
        '    nota.frete,                                                 ' +
        '                                              '
      
        '    nota.not_valfrete,                                          ' +
        '                                              '
      
        '    nota.not_valseguro,                                         ' +
        '                                              '
      
        '    nota.not_despacess,                                         ' +
        '                                              '
      
        '    nota.cli_codigo,                                            ' +
        '                                              '
      
        '    nota.not_volumes,                                           ' +
        '                                              '
      
        '    nota.not_tipo_volumes,                                      ' +
        '                                              '
      
        '    nota.not_aliqsubs,                                          ' +
        '                                              '
      
        '    nota.cfop_cof,                                              ' +
        '                                              '
      
        '    nota.nt_valorissqn,                                         ' +
        '                                              '
      
        '    nota.nt_valortotalservico,                                  ' +
        '                                              '
      
        '    nota.not_valissqn,                                          ' +
        '                                              '
      
        '    nota.not_baseissqn,                                         ' +
        '                                              '
      
        '    nota.not_aliissqn,                                          ' +
        '                                              '
      
        '    nota.not_itens_desconto,                                    ' +
        '                                              '
      
        '    nota.not_itensservico_desconto,                             ' +
        '                                              '
      
        '    nota.not_itens_totalprod,                                   ' +
        '                                              '
      
        '    nota.not_itens_serv_subtotal,                               ' +
        '                                              '
      
        '    nota.os_codigo,                                             ' +
        '                                              '
      
        '    nota.mon_codigo,                                            ' +
        '                                              '
      
        '    nota.not_formapgmt,                                         ' +
        '                                              '
      
        '    nota.not_observacao,                                        ' +
        '                                              '
      
        '    nota.emp_grupo,                                             ' +
        '                                              '
      
        '    nota.data,                                                  ' +
        '                                              '
      
        '    nota.horas,                                                 ' +
        '                                              '
      
        '    nota.user_nome,                                             ' +
        '                                              '
      
        '    nota.nomecomputador,                                        ' +
        '                                              '
      
        '    nota.ipdamaquina,                                           ' +
        '                                              '
      
        '    nota.emp_codigo,                                            ' +
        '                                              '
      
        '    nota.not_transrazao,                                        ' +
        '                                              '
      
        '    nota.not_transplaca,                                        ' +
        '                                              '
      
        '    nota.not_transcnpjcpf,                                      ' +
        '                                              '
      
        '    nota.not_transendereco,                                     ' +
        '                                              '
      
        '    nota.not_transmunicipio,                                    ' +
        '                                              '
      
        '    nota.not_transuf2,                                          ' +
        '                                              '
      
        '    nota.not_transqtd,                                          ' +
        '                                              '
      
        '    nota.not_transespecie,                                      ' +
        '                                              '
      
        '    nota.not_transmarca,                                        ' +
        '                                              '
      
        '    nota.not_transnumero,                                       ' +
        '                                              '
      
        '    nota.not_transpesobruto,                                    ' +
        '                                              '
      
        '    nota.not_transpesoliquido,                                  ' +
        '                                              '
      
        '    nota.not_transinscricao,                                    ' +
        '                                              '
      
        '    nota.not_transuf,                                           ' +
        '                                              '
      
        '    nota.duplicata1,                                            ' +
        '                                              '
      
        '    nota.duplicata2,                                            ' +
        '                                              '
      
        '    nota.duplicata3,                                            ' +
        '                                              '
      
        '    nota.duplicata4,                                            ' +
        '                                              '
      
        '    nota.duplicata5,                                            ' +
        '                                              '
      
        '    nota.duplicata6,                                            ' +
        '                                              '
      
        '    nota.vencimento1,                                           ' +
        '                                              '
      
        '    nota.vencimento2,                                           ' +
        '                                              '
      
        '    nota.vencimento3,                                           ' +
        '                                              '
      
        '    nota.vencimento4,                                           ' +
        '                                              '
      
        '    nota.vencimento5,                                           ' +
        '                                              '
      
        '    nota.vencimento6,                                           ' +
        '                                              '
      
        '    nota.valor1,                                                ' +
        '                                              '
      
        '    nota.valor2,                                                ' +
        '                                              '
      
        '    nota.valor3,                                                ' +
        '                                              '
      
        '    nota.valor4,                                                ' +
        '                                              '
      
        '    nota.valor5,                                                ' +
        '                                              '
      
        '    nota.valor6,                                                ' +
        '                                              '
      
        '    nota.boletoautomatico,                                      ' +
        '                                              '
      
        '    nota.not_status,                                            ' +
        '                                              '
      
        '    nota.not_horasaida,                                         ' +
        '                                              '
      
        '    nota.not_entradasaida,                                      ' +
        '                                              '
      
        '    nota.not_obscorpoitem,                                      ' +
        '                                              '
      
        '    nota.fil_cnpj,                                              ' +
        '                                              '
      
        '    nota.not_chavenfe,                                          ' +
        '                                              '
      
        '    nota.not_caminhoxmlnfe,                                     ' +
        '                                              '
      
        '    nota.not_lote,                                              ' +
        '                                              '
      
        '    nota.memoresp,                                              ' +
        '                                              '
      
        '    nota.wbresposta,                                            ' +
        '                                              '
      
        '    nota.memolog,                                               ' +
        '                                              '
      
        '    nota.memorespws,                                            ' +
        '                                              '
      
        '    nota.memodados,                                             ' +
        '                                              '
      
        '    nota.not_basepis,                                           ' +
        '                                              '
      
        '    nota.not_aliqpis,                                           ' +
        '                                              '
      
        '    nota.not_valpis,                                            ' +
        '                                              '
      
        '    nota.not_basecofins,                                        ' +
        '                                              '
      
        '    nota.not_aliqcofins,                                        ' +
        '                                              '
      
        '    nota.not_valcofins,                                         ' +
        '                                              '
      
        '    nota.not_formadeemissao,                                    ' +
        '                                              '
      
        '    nota.not_formapgmtnfe,                                      ' +
        '                                              '
      
        '    nota.not_finalildadeemissao,                                ' +
        '                                              '
      
        '    nota.not_tipoimpressaodanfe,                                ' +
        '                                              '
      
        '    nota.not_calcularautomatico,                                ' +
        '                                              '
      
        '    nota.not_tipo,                                              ' +
        '                                              '
      '    nota.NOT_STATUS_NFE,'
      '    nota.NOT_NUMERONFE,'
      '    clientes.emp_grupo,'
      
        '    clientes.emp_codigo,                                        ' +
        '                                              '
      
        '    clientes.fil_codigo,                                        ' +
        '                                              '
      
        '    clientes.cli_codigo,                                        ' +
        '                                              '
      
        '    clientes.cli_cpfcnpj,                                       ' +
        '                                              '
      
        '    clientes.cli_rginsc,                                        ' +
        '                                              '
      
        '    clientes.cli_razao,                                         ' +
        '                                              '
      
        '    clientes.cli_fantasia,                                      ' +
        '                                              '
      
        '    clientes.cli_tipo,                                          ' +
        '                                              '
      
        '    clientes.cli_sexo,                                          ' +
        '                                              '
      
        '    clientes.flag_dataalt,                                      ' +
        '                                              '
      
        '    clientes.deletado,                                          ' +
        '                                              '
      
        '    clientes.cli_end_endereco,                                  ' +
        '                                              '
      
        '    clientes.cli_end_bairro,                                    ' +
        '                                              '
      
        '    clientes.cli_end_cid_codigo,                                ' +
        '                                              '
      
        '    clientes.cli_end_cid_nome,                                  ' +
        '                                              '
      
        '    clientes.cli_end_cid_uf,                                    ' +
        '                                              '
      
        '    clientes.cli_end_cep,                                       ' +
        '                                              '
      
        '    clientes.cli_fone,                                          ' +
        '                                              '
      
        '    clientes.cli_fax,                                           ' +
        '                                              '
      
        '    clientes.cli_banco,                                         ' +
        '                                              '
      
        '    clientes.cli_agencia,                                       ' +
        '                                              '
      
        '    clientes.cli_dtcadastro,                                    ' +
        '                                              '
      
        '    clientes.cli_email,                                         ' +
        '                                              '
      
        '    clientes.ven_codigo,                                        ' +
        '                                              '
      
        '    clientes.ven_codigo_ag,                                     ' +
        '                                              '
      
        '    clientes.cli_nomecontato,                                   ' +
        '                                              '
      
        '    clientes.cli_contatoemail,                                  ' +
        '                                              '
      
        '    clientes.cli_datanasc,                                      ' +
        '                                              '
      
        '    clientes.cli_vendedor,                                      ' +
        '                                              '
      
        '    clientes.ven_com,                                           ' +
        '                                              '
      
        '    clientes.ag_com,                                            ' +
        '                                              '
      
        '    clientes.tp_codigo,                                         ' +
        '                                              '
      
        '    clientes.cli_limite,                                        ' +
        '                                              '
      
        '    clientes.cli_bloqueado,                                     ' +
        '                                              '
      
        '    clientes.fp_codigo,                                         ' +
        '                                              '
      
        '    clientes.tc_codigo,                                         ' +
        '                                              '
      
        '    clientes.cli_mala,                                          ' +
        '                                              '
      
        '    clientes.cli_totaldesconto,                                 ' +
        '                                              '
      
        '    clientes.cli_foto,                                          ' +
        '                                              '
      
        '    clientes.ven_codigo_ag_2,                                   ' +
        '                                              '
      
        '    clientes.ag_com_2,                                          ' +
        '                                              '
      
        '    clientes.cli_end_endereco_trabalho,                         ' +
        '                                              '
      
        '    clientes.cli_end_bairro_trabalho,                           ' +
        '                                              '
      
        '    clientes.cli_end_cid_codigo_trabalho,                       ' +
        '                                              '
      
        '    clientes.cli_end_cid_nome_trabalho,                         ' +
        '                                              '
      
        '    clientes.cli_end_cid_uf_trabalho,                           ' +
        '                                              '
      
        '    clientes.cli_end_cep_trabalho,                              ' +
        '                                              '
      
        '    clientes.cli_fone_trabalho,                                 ' +
        '                                              '
      
        '    clientes.cli_fax_trabalho,                                  ' +
        '                                              '
      
        '    clientes.cli_celular,                                       ' +
        '                                              '
      
        '    clientes.cli_localtrabalho,                                 ' +
        '                                              '
      
        '    clientes.cli_nomegerente_trabalho,                          ' +
        '                                              '
      
        '    clientes.cli_end_completo,                                  ' +
        '                                              '
      
        '    clientes.cli_end_complemento,                               ' +
        '                                              '
      
        '    clientes.cli_end_numero,                                    ' +
        '                                              '
      
        '    clientes.cli_end_lt,                                        ' +
        '                                              '
      
        '    clientes.cli_end_qd,                                        ' +
        '                                              '
      
        '    clientes.cli_end_pontoreferencia,                           ' +
        '                                              '
      
        '    clientes.mon_codigo,                                        ' +
        '                                              '
      
        '    clientes.cli_codigopai,                                     ' +
        '                                              '
      
        '    clientes.ti_codigo,                                         ' +
        '                                              '
      
        '    clientes.cli_obs,                                           ' +
        '                                              '
      
        '    clientes.cli_grauescolaridade,                              ' +
        '                                              '
      
        '    clientes.cli_posuicartao,                                   ' +
        '                                              '
      
        '    clientes.visa,                                              ' +
        '                                              '
      
        '    clientes.mastercar,                                         ' +
        '                                              '
      
        '    clientes.debito,                                            ' +
        '                                              '
      
        '    clientes.americam,                                          ' +
        '                                              '
      
        '    clientes.outros,                                            ' +
        '                                              '
      
        '    clientes.cli_numerodaconta,                                 ' +
        '                                              '
      
        '    clientes.cli_ban_clientedesde,                              ' +
        '                                              '
      
        '    clientes.cli_ban_nomegerente,                               ' +
        '                                              '
      
        '    clientes.cli_ban_fone,                                      ' +
        '                                              '
      
        '    clientes.cli_ban_fone_2,                                    ' +
        '                                              '
      
        '    clientes.cli_ban_fone_3,                                    ' +
        '                                              '
      
        '    clientes.cli_ban_nomegerente_2,                             ' +
        '                                              '
      
        '    clientes.cli_ban_nomegerente_3,                             ' +
        '                                              '
      
        '    clientes.cli_ban_clientedesde_1,                            ' +
        '                                              '
      
        '    clientes.cli_ban_clientedesde_3,                            ' +
        '                                              '
      
        '    clientes.cli_numerodaconta_2,                               ' +
        '                                              '
      
        '    clientes.cli_numerodaconta_3,                               ' +
        '                                              '
      
        '    clientes.cli_banco_2,                                       ' +
        '                                              '
      
        '    clientes.cli_banco_3,                                       ' +
        '                                              '
      
        '    clientes.cli_agencia_2,                                     ' +
        '                                              '
      
        '    clientes.cli_agencia_3,                                     ' +
        '                                              '
      
        '    clientes.cli_rendafamilhar,                                 ' +
        '                                              '
      
        '    clientes.cli_fichado,                                       ' +
        '                                              '
      
        '    clientes.cli_tempotrabalho,                                 ' +
        '                                              '
      
        '    clientes.cli_estadocivil,                                   ' +
        '                                              '
      
        '    clientes.cli_nomeconjuge,                                   ' +
        '                                              '
      
        '    clientes.cli_conjugecpf,                                    ' +
        '                                              '
      
        '    clientes.cli_conjugerg,                                     ' +
        '                                              '
      
        '    clientes.cli_conjugedatanasc,                               ' +
        '                                              '
      
        '    clientes.cli_conjugeemail,                                  ' +
        '                                              '
      
        '    clientes.cli_nomemae,                                       ' +
        '                                              '
      
        '    clientes.cli_nomepai,                                       ' +
        '                                              '
      
        '    clientes.cli_fonemae,                                       ' +
        '                                              '
      
        '    clientes.cli_fonemae_2,                                     ' +
        '                                              '
      
        '    clientes.cli_fonepai,                                       ' +
        '                                              '
      
        '    clientes.cli_fonepai_2,                                     ' +
        '                                              '
      
        '    clientes.cli_tipomoradia,                                   ' +
        '                                              '
      
        '    clientes.cli_tipoconstrucoa,                                ' +
        '                                              '
      
        '    clientes.cli_moradia,                                       ' +
        '                                              '
      
        '    clientes.cli_agua,                                          ' +
        '                                              '
      
        '    clientes.cli_energia,                                       ' +
        '                                              '
      
        '    clientes.cli_possuemanimais,                                ' +
        '                                              '
      
        '    clientes.cli_qtdanimais,                                    ' +
        '                                              '
      
        '    clientes.cli_nomegerente_2,                                 ' +
        '                                              '
      
        '    clientes.cli_nomegerente_3,                                 ' +
        '                                              '
      
        '    clientes.cli_nomegerente_1,                                 ' +
        '                                              '
      
        '    clientes.data,                                              ' +
        '                                              '
      
        '    clientes.horas,                                             ' +
        '                                              '
      
        '    clientes.user_nome,                                         ' +
        '                                              '
      
        '    clientes.nomecomputador,                                    ' +
        '                                              '
      
        '    clientes.ipdamaquina,                                       ' +
        '                                              '
      
        '    clientes.cli_provi,                                         ' +
        '                                              '
      
        '    clientes.cli_numeromatricula,                               ' +
        '                                              '
      
        '    clientes.cli_cobr_endereco,                                 ' +
        '                                              '
      
        '    clientes.cli_cobr_bairro,                                   ' +
        '                                              '
      
        '    clientes.cli_cobr_cep,                                      ' +
        '                                              '
      
        '    clientes.cli_cobr_lt,                                       ' +
        '                                              '
      
        '    clientes.cli_cobr_qd,                                       ' +
        '                                              '
      
        '    clientes.cli_cobr_numero,                                   ' +
        '                                              '
      
        '    clientes.cli_cobr_complemento,                              ' +
        '                                              '
      
        '    clientes.cli_cobr_cid_codigo,                               ' +
        '                                              '
      
        '    clientes.cli_cobr_cid_nome,                                 ' +
        '                                              '
      
        '    clientes.cli_cobr_uf,                                       ' +
        '                                              '
      
        '    clientes.cli_cobr_pontoreferencia,                          ' +
        '                                              '
      
        '    clientes.cli_cobr_telefone,                                 ' +
        '                                              '
      
        '    clientes.cli_cobr_celular,                                  ' +
        '                                              '
      
        '    clientes.cli_cobr_fone,                                     ' +
        '                                              '
      
        '    clientes.cli_entr_bairro,                                   ' +
        '                                              '
      
        '    clientes.cli_entr_celular,                                  ' +
        '                                              '
      
        '    clientes.cli_entr_cep,                                      ' +
        '                                              '
      
        '    clientes.cli_entr_cid_codigo,                               ' +
        '                                              '
      
        '    clientes.cli_entr_cid_nome,                                 ' +
        '                                              '
      
        '    clientes.cli_entr_complemento,                              ' +
        '                                              '
      
        '    clientes.cli_entr_endereco,                                 ' +
        '                                              '
      
        '    clientes.cli_entr_fone,                                     ' +
        '                                              '
      
        '    clientes.cli_entr_lt,                                       ' +
        '                                              '
      
        '    clientes.cli_entr_numero,                                   ' +
        '                                              '
      
        '    clientes.cli_entr_pontoreferencia,                          ' +
        '                                              '
      
        '    clientes.cli_entr_qd,                                       ' +
        '                                              '
      
        '    clientes.cli_entr_telefone,                                 ' +
        '                                              '
      
        '    clientes.cli_entr_uf,                                       ' +
        '                                              '
      
        '    clientes.cli_cobr_fax,                                      ' +
        '                                              '
      
        '    clientes.cli_entr_fax,                                      ' +
        '                                              '
      
        '    clientes.rota_codigo,                                       ' +
        '                                              '
      
        '    clientes.tra_codigo,                                        ' +
        '                                              '
      
        '    clientes.cli_aguatipo,                                      ' +
        '                                              '
      
        '    clientes.cli_homepage,                                      ' +
        '                                              '
      
        '    clientes.con_numero,                                        ' +
        '                                              '
      
        '    clientes.pc_codigo,                                         ' +
        '                                              '
      
        '    clientes.cli_ativo_inativo,                                 ' +
        '                                              '
      '    clientes.cli_inativoapos,'
      '    clientes.cli_vendasomenteavista,'
      
        '    clientes.cli_bloqueioautoapos,                              ' +
        '                                              '
      
        '    clientes.cli_dataultimacompra,                              ' +
        '                                              '
      
        '    clientes.cli_dataultimaos,                                  ' +
        '                                              '
      
        '    clientes.cli_skype,                                         ' +
        '                                              '
      
        '    clientes.cli_msn,                                           ' +
        '                                              '
      
        '    clientes.cli_nextel,                                        ' +
        '                                              '
      
        '    clientes.cli_ramoatividade,                                 ' +
        '                                              '
      
        '    clientes.cli_nomesocio,                                     ' +
        '                                              '
      
        '    clientes.cli_bloqmotivo,                                    ' +
        '                                              '
      
        '    clientes.fil_cnpj,                                          ' +
        '                                              '
      
        '    clientes.cli_end_cod_ibgeuf,                                ' +
        '                                              '
      '    clientes.cli_end_cod_ibgemunic,'
      '    clientes.cli_pais,'
      '    nota.cfop_descricao,'
      '    nota.NOT_OBSFISCO,'
      
        '     nota.NFE_OPTANTESIMPLESNASCIONAL                           ' +
        '                                       '
      
        'from nota                                                       ' +
        '                                              '
      
        '   inner join clientes on (nota.fil_codigo = clientes.fil_codigo' +
        ') and (nota.cli_codigo = clientes.cli_codigo) '
      'WHERE NOTA.NOT_DATAEMISSAO BETWEEN :d1 and :d2')
    SQLConnection = Modulo.SQLConexao
    Left = 368
    Top = 152
    object QryCadNotaFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Required = True
    end
    object QryCadNotaNOT_CODIGO: TIntegerField
      FieldName = 'NOT_CODIGO'
      Required = True
    end
    object QryCadNotaNOT_NR: TIntegerField
      FieldName = 'NOT_NR'
    end
    object QryCadNotaNOT_ESPECIE: TStringField
      FieldName = 'NOT_ESPECIE'
      Size = 3
    end
    object QryCadNotaNOT_SERIE: TStringField
      FieldName = 'NOT_SERIE'
      Size = 3
    end
    object QryCadNotaNOT_DATAEMISSAO: TDateField
      FieldName = 'NOT_DATAEMISSAO'
    end
    object QryCadNotaNOT_DATASAIDA: TDateField
      FieldName = 'NOT_DATASAIDA'
    end
    object QryCadNotaPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 10
    end
    object QryCadNotaNOT_TOTITENS: TFMTBCDField
      FieldName = 'NOT_TOTITENS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_TOTNOTA: TFMTBCDField
      FieldName = 'NOT_TOTNOTA'
      Precision = 20
      Size = 2
    end
    object QryCadNotaTRA_CODIGO: TIntegerField
      FieldName = 'TRA_CODIGO'
    end
    object QryCadNotaNOT_CPFCNPJ: TStringField
      FieldName = 'NOT_CPFCNPJ'
      Size = 14
    end
    object QryCadNotaNOT_DESCONTO: TFMTBCDField
      FieldName = 'NOT_DESCONTO'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ACRECIMO: TFMTBCDField
      FieldName = 'NOT_ACRECIMO'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_VALIPI: TFMTBCDField
      FieldName = 'NOT_VALIPI'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ALIQIPI: TFMTBCDField
      FieldName = 'NOT_ALIQIPI'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_BASEIPI: TFMTBCDField
      FieldName = 'NOT_BASEIPI'
      Precision = 20
      Size = 2
    end
    object QryCadNotaDELETADO: TIntegerField
      FieldName = 'DELETADO'
    end
    object QryCadNotaNOT_VALICM: TFMTBCDField
      FieldName = 'NOT_VALICM'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ALIQICM: TFMTBCDField
      FieldName = 'NOT_ALIQICM'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_BASEICM: TFMTBCDField
      FieldName = 'NOT_BASEICM'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_SITUACAO: TStringField
      FieldName = 'NOT_SITUACAO'
      Size = 1
    end
    object QryCadNotaNOT_BASESUBS: TFMTBCDField
      FieldName = 'NOT_BASESUBS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_VALSUBS: TFMTBCDField
      FieldName = 'NOT_VALSUBS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaFRETE: TIntegerField
      FieldName = 'FRETE'
    end
    object QryCadNotaNOT_VALFRETE: TFMTBCDField
      FieldName = 'NOT_VALFRETE'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_VALSEGURO: TFMTBCDField
      FieldName = 'NOT_VALSEGURO'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_DESPACESS: TFMTBCDField
      FieldName = 'NOT_DESPACESS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QryCadNotaNOT_VOLUMES: TIntegerField
      FieldName = 'NOT_VOLUMES'
    end
    object QryCadNotaNOT_TIPO_VOLUMES: TStringField
      FieldName = 'NOT_TIPO_VOLUMES'
      Size = 15
    end
    object QryCadNotaNOT_ALIQSUBS: TFMTBCDField
      FieldName = 'NOT_ALIQSUBS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaCFOP_COF: TStringField
      FieldName = 'CFOP_COF'
      Size = 60
    end
    object QryCadNotaNT_VALORISSQN: TFMTBCDField
      FieldName = 'NT_VALORISSQN'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNT_VALORTOTALSERVICO: TFMTBCDField
      FieldName = 'NT_VALORTOTALSERVICO'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_VALISSQN: TFMTBCDField
      FieldName = 'NOT_VALISSQN'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_BASEISSQN: TFMTBCDField
      FieldName = 'NOT_BASEISSQN'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ALIISSQN: TFMTBCDField
      FieldName = 'NOT_ALIISSQN'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ITENS_DESCONTO: TFMTBCDField
      FieldName = 'NOT_ITENS_DESCONTO'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ITENSSERVICO_DESCONTO: TFMTBCDField
      FieldName = 'NOT_ITENSSERVICO_DESCONTO'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ITENS_TOTALPROD: TFMTBCDField
      FieldName = 'NOT_ITENS_TOTALPROD'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ITENS_SERV_SUBTOTAL: TFMTBCDField
      FieldName = 'NOT_ITENS_SERV_SUBTOTAL'
      Precision = 20
      Size = 2
    end
    object QryCadNotaOS_CODIGO: TIntegerField
      FieldName = 'OS_CODIGO'
    end
    object QryCadNotaMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QryCadNotaNOT_FORMAPGMT: TStringField
      FieldName = 'NOT_FORMAPGMT'
    end
    object QryCadNotaNOT_OBSERVACAO: TBlobField
      FieldName = 'NOT_OBSERVACAO'
      Size = -1
    end
    object QryCadNotaEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object QryCadNotaDATA: TDateField
      FieldName = 'DATA'
    end
    object QryCadNotaHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object QryCadNotaUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object QryCadNotaNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object QryCadNotaIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object QryCadNotaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QryCadNotaNOT_TRANSRAZAO: TStringField
      FieldName = 'NOT_TRANSRAZAO'
      Size = 200
    end
    object QryCadNotaNOT_TRANSPLACA: TStringField
      FieldName = 'NOT_TRANSPLACA'
      Size = 15
    end
    object QryCadNotaNOT_TRANSCNPJCPF: TStringField
      FieldName = 'NOT_TRANSCNPJCPF'
      Size = 25
    end
    object QryCadNotaNOT_TRANSENDERECO: TStringField
      FieldName = 'NOT_TRANSENDERECO'
      Size = 200
    end
    object QryCadNotaNOT_TRANSMUNICIPIO: TStringField
      FieldName = 'NOT_TRANSMUNICIPIO'
      Size = 60
    end
    object QryCadNotaNOT_TRANSUF2: TStringField
      FieldName = 'NOT_TRANSUF2'
      Size = 6
    end
    object QryCadNotaNOT_TRANSQTD: TStringField
      FieldName = 'NOT_TRANSQTD'
      Size = 10
    end
    object QryCadNotaNOT_TRANSESPECIE: TStringField
      FieldName = 'NOT_TRANSESPECIE'
      Size = 50
    end
    object QryCadNotaNOT_TRANSMARCA: TStringField
      FieldName = 'NOT_TRANSMARCA'
      Size = 50
    end
    object QryCadNotaNOT_TRANSNUMERO: TStringField
      FieldName = 'NOT_TRANSNUMERO'
      Size = 30
    end
    object QryCadNotaNOT_TRANSPESOBRUTO: TStringField
      FieldName = 'NOT_TRANSPESOBRUTO'
      Size = 10
    end
    object QryCadNotaNOT_TRANSPESOLIQUIDO: TStringField
      FieldName = 'NOT_TRANSPESOLIQUIDO'
      Size = 15
    end
    object QryCadNotaNOT_TRANSINSCRICAO: TStringField
      FieldName = 'NOT_TRANSINSCRICAO'
      Size = 30
    end
    object QryCadNotaNOT_TRANSUF: TStringField
      FieldName = 'NOT_TRANSUF'
      Size = 6
    end
    object QryCadNotaDUPLICATA1: TStringField
      FieldName = 'DUPLICATA1'
      Size = 15
    end
    object QryCadNotaDUPLICATA2: TStringField
      FieldName = 'DUPLICATA2'
      Size = 15
    end
    object QryCadNotaDUPLICATA3: TStringField
      FieldName = 'DUPLICATA3'
      Size = 15
    end
    object QryCadNotaDUPLICATA4: TStringField
      FieldName = 'DUPLICATA4'
      Size = 15
    end
    object QryCadNotaDUPLICATA5: TStringField
      FieldName = 'DUPLICATA5'
      Size = 15
    end
    object QryCadNotaDUPLICATA6: TStringField
      FieldName = 'DUPLICATA6'
      Size = 15
    end
    object QryCadNotaVENCIMENTO1: TStringField
      FieldName = 'VENCIMENTO1'
      Size = 15
    end
    object QryCadNotaVENCIMENTO2: TStringField
      FieldName = 'VENCIMENTO2'
      Size = 15
    end
    object QryCadNotaVENCIMENTO3: TStringField
      FieldName = 'VENCIMENTO3'
      Size = 15
    end
    object QryCadNotaVENCIMENTO4: TStringField
      FieldName = 'VENCIMENTO4'
      Size = 15
    end
    object QryCadNotaVENCIMENTO5: TStringField
      FieldName = 'VENCIMENTO5'
      Size = 15
    end
    object QryCadNotaVENCIMENTO6: TStringField
      FieldName = 'VENCIMENTO6'
      Size = 15
    end
    object QryCadNotaVALOR1: TStringField
      FieldName = 'VALOR1'
      Size = 15
    end
    object QryCadNotaVALOR2: TStringField
      FieldName = 'VALOR2'
      Size = 15
    end
    object QryCadNotaVALOR3: TStringField
      FieldName = 'VALOR3'
      Size = 15
    end
    object QryCadNotaVALOR4: TStringField
      FieldName = 'VALOR4'
      Size = 15
    end
    object QryCadNotaVALOR5: TStringField
      FieldName = 'VALOR5'
      Size = 15
    end
    object QryCadNotaVALOR6: TStringField
      FieldName = 'VALOR6'
      Size = 15
    end
    object QryCadNotaBOLETOAUTOMATICO: TIntegerField
      FieldName = 'BOLETOAUTOMATICO'
    end
    object QryCadNotaNOT_STATUS: TStringField
      FieldName = 'NOT_STATUS'
      Size = 50
    end
    object QryCadNotaNOT_HORASAIDA: TTimeField
      FieldName = 'NOT_HORASAIDA'
    end
    object QryCadNotaNOT_ENTRADASAIDA: TIntegerField
      FieldName = 'NOT_ENTRADASAIDA'
    end
    object QryCadNotaNOT_OBSCORPOITEM: TStringField
      FieldName = 'NOT_OBSCORPOITEM'
      Size = 999
    end
    object QryCadNotaFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
    object QryCadNotaNOT_CHAVENFE: TStringField
      FieldName = 'NOT_CHAVENFE'
      Size = 999
    end
    object QryCadNotaNOT_CAMINHOXMLNFE: TStringField
      FieldName = 'NOT_CAMINHOXMLNFE'
      Size = 999
    end
    object QryCadNotaNOT_LOTE: TIntegerField
      FieldName = 'NOT_LOTE'
    end
    object QryCadNotaMEMORESP: TStringField
      FieldName = 'MEMORESP'
      Size = 999
    end
    object QryCadNotaWBRESPOSTA: TStringField
      FieldName = 'WBRESPOSTA'
      Size = 999
    end
    object QryCadNotaMEMOLOG: TStringField
      FieldName = 'MEMOLOG'
      Size = 999
    end
    object QryCadNotaMEMORESPWS: TStringField
      FieldName = 'MEMORESPWS'
      Size = 999
    end
    object QryCadNotaMEMODADOS: TStringField
      FieldName = 'MEMODADOS'
      Size = 30
    end
    object QryCadNotaNOT_BASEPIS: TFMTBCDField
      FieldName = 'NOT_BASEPIS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ALIQPIS: TFMTBCDField
      FieldName = 'NOT_ALIQPIS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_VALPIS: TFMTBCDField
      FieldName = 'NOT_VALPIS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_BASECOFINS: TFMTBCDField
      FieldName = 'NOT_BASECOFINS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_ALIQCOFINS: TFMTBCDField
      FieldName = 'NOT_ALIQCOFINS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_VALCOFINS: TFMTBCDField
      FieldName = 'NOT_VALCOFINS'
      Precision = 20
      Size = 2
    end
    object QryCadNotaNOT_FORMADEEMISSAO: TStringField
      FieldName = 'NOT_FORMADEEMISSAO'
      Size = 30
    end
    object QryCadNotaNOT_FORMAPGMTNFE: TStringField
      FieldName = 'NOT_FORMAPGMTNFE'
      Size = 30
    end
    object QryCadNotaNOT_FINALILDADEEMISSAO: TStringField
      FieldName = 'NOT_FINALILDADEEMISSAO'
      Size = 30
    end
    object QryCadNotaNOT_TIPOIMPRESSAODANFE: TStringField
      FieldName = 'NOT_TIPOIMPRESSAODANFE'
      Size = 30
    end
    object QryCadNotaNOT_CALCULARAUTOMATICO: TIntegerField
      FieldName = 'NOT_CALCULARAUTOMATICO'
    end
    object QryCadNotaNOT_TIPO: TStringField
      FieldName = 'NOT_TIPO'
      Size = 30
    end
    object QryCadNotaNOT_STATUS_NFE: TIntegerField
      FieldName = 'NOT_STATUS_NFE'
    end
    object QryCadNotaNOT_NUMERONFE: TIntegerField
      FieldName = 'NOT_NUMERONFE'
    end
    object QryCadNotaEMP_GRUPO_1: TIntegerField
      FieldName = 'EMP_GRUPO_1'
    end
    object QryCadNotaEMP_CODIGO_1: TIntegerField
      FieldName = 'EMP_CODIGO_1'
    end
    object QryCadNotaFIL_CODIGO_1: TIntegerField
      FieldName = 'FIL_CODIGO_1'
    end
    object QryCadNotaCLI_CODIGO_1: TIntegerField
      FieldName = 'CLI_CODIGO_1'
      Required = True
    end
    object QryCadNotaCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
      Size = 30
    end
    object QryCadNotaCLI_RGINSC: TStringField
      FieldName = 'CLI_RGINSC'
      Size = 15
    end
    object QryCadNotaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 100
    end
    object QryCadNotaCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Required = True
      Size = 100
    end
    object QryCadNotaCLI_TIPO: TStringField
      FieldName = 'CLI_TIPO'
    end
    object QryCadNotaCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      Size = 1
    end
    object QryCadNotaFLAG_DATAALT: TDateField
      FieldName = 'FLAG_DATAALT'
    end
    object QryCadNotaDELETADO_1: TIntegerField
      FieldName = 'DELETADO_1'
    end
    object QryCadNotaCLI_END_ENDERECO: TStringField
      FieldName = 'CLI_END_ENDERECO'
      Size = 100
    end
    object QryCadNotaCLI_END_BAIRRO: TStringField
      FieldName = 'CLI_END_BAIRRO'
      Size = 60
    end
    object QryCadNotaCLI_END_CID_CODIGO: TIntegerField
      FieldName = 'CLI_END_CID_CODIGO'
    end
    object QryCadNotaCLI_END_CID_NOME: TStringField
      FieldName = 'CLI_END_CID_NOME'
      Size = 100
    end
    object QryCadNotaCLI_END_CID_UF: TStringField
      FieldName = 'CLI_END_CID_UF'
      Size = 2
    end
    object QryCadNotaCLI_END_CEP: TStringField
      FieldName = 'CLI_END_CEP'
      Size = 9
    end
    object QryCadNotaCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 40
    end
    object QryCadNotaCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 15
    end
    object QryCadNotaCLI_BANCO: TStringField
      FieldName = 'CLI_BANCO'
      Size = 30
    end
    object QryCadNotaCLI_AGENCIA: TStringField
      FieldName = 'CLI_AGENCIA'
      Size = 30
    end
    object QryCadNotaCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
    end
    object QryCadNotaCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 80
    end
    object QryCadNotaVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object QryCadNotaVEN_CODIGO_AG: TIntegerField
      FieldName = 'VEN_CODIGO_AG'
    end
    object QryCadNotaCLI_NOMECONTATO: TStringField
      FieldName = 'CLI_NOMECONTATO'
      Size = 100
    end
    object QryCadNotaCLI_CONTATOEMAIL: TStringField
      FieldName = 'CLI_CONTATOEMAIL'
      Size = 55
    end
    object QryCadNotaCLI_DATANASC: TDateField
      FieldName = 'CLI_DATANASC'
    end
    object QryCadNotaCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
    end
    object QryCadNotaVEN_COM: TFloatField
      FieldName = 'VEN_COM'
    end
    object QryCadNotaAG_COM: TFloatField
      FieldName = 'AG_COM'
    end
    object QryCadNotaTP_CODIGO: TStringField
      FieldName = 'TP_CODIGO'
      Size = 10
    end
    object QryCadNotaCLI_LIMITE: TFloatField
      FieldName = 'CLI_LIMITE'
    end
    object QryCadNotaCLI_BLOQUEADO: TIntegerField
      FieldName = 'CLI_BLOQUEADO'
    end
    object QryCadNotaFP_CODIGO: TIntegerField
      FieldName = 'FP_CODIGO'
    end
    object QryCadNotaTC_CODIGO: TIntegerField
      FieldName = 'TC_CODIGO'
    end
    object QryCadNotaCLI_MALA: TIntegerField
      FieldName = 'CLI_MALA'
    end
    object QryCadNotaCLI_TOTALDESCONTO: TFloatField
      FieldName = 'CLI_TOTALDESCONTO'
    end
    object QryCadNotaCLI_FOTO: TStringField
      FieldName = 'CLI_FOTO'
      Size = 60
    end
    object QryCadNotaVEN_CODIGO_AG_2: TIntegerField
      FieldName = 'VEN_CODIGO_AG_2'
    end
    object QryCadNotaAG_COM_2: TFloatField
      FieldName = 'AG_COM_2'
    end
    object QryCadNotaCLI_END_ENDERECO_TRABALHO: TStringField
      FieldName = 'CLI_END_ENDERECO_TRABALHO'
      Size = 100
    end
    object QryCadNotaCLI_END_BAIRRO_TRABALHO: TStringField
      FieldName = 'CLI_END_BAIRRO_TRABALHO'
      Size = 60
    end
    object QryCadNotaCLI_END_CID_CODIGO_TRABALHO: TIntegerField
      FieldName = 'CLI_END_CID_CODIGO_TRABALHO'
    end
    object QryCadNotaCLI_END_CID_NOME_TRABALHO: TStringField
      FieldName = 'CLI_END_CID_NOME_TRABALHO'
      Size = 100
    end
    object QryCadNotaCLI_END_CID_UF_TRABALHO: TStringField
      FieldName = 'CLI_END_CID_UF_TRABALHO'
      Size = 2
    end
    object QryCadNotaCLI_END_CEP_TRABALHO: TStringField
      FieldName = 'CLI_END_CEP_TRABALHO'
      Size = 9
    end
    object QryCadNotaCLI_FONE_TRABALHO: TStringField
      FieldName = 'CLI_FONE_TRABALHO'
      Size = 40
    end
    object QryCadNotaCLI_FAX_TRABALHO: TStringField
      FieldName = 'CLI_FAX_TRABALHO'
      Size = 15
    end
    object QryCadNotaCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 60
    end
    object QryCadNotaCLI_LOCALTRABALHO: TStringField
      FieldName = 'CLI_LOCALTRABALHO'
      Size = 240
    end
    object QryCadNotaCLI_NOMEGERENTE_TRABALHO: TStringField
      FieldName = 'CLI_NOMEGERENTE_TRABALHO'
      Size = 155
    end
    object QryCadNotaCLI_END_COMPLETO: TStringField
      FieldName = 'CLI_END_COMPLETO'
      Size = 200
    end
    object QryCadNotaCLI_END_COMPLEMENTO: TStringField
      FieldName = 'CLI_END_COMPLEMENTO'
      Size = 30
    end
    object QryCadNotaCLI_END_NUMERO: TStringField
      FieldName = 'CLI_END_NUMERO'
      Size = 10
    end
    object QryCadNotaCLI_END_LT: TStringField
      FieldName = 'CLI_END_LT'
      Size = 5
    end
    object QryCadNotaCLI_END_QD: TStringField
      FieldName = 'CLI_END_QD'
      Size = 5
    end
    object QryCadNotaCLI_END_PONTOREFERENCIA: TStringField
      FieldName = 'CLI_END_PONTOREFERENCIA'
      Size = 200
    end
    object QryCadNotaMON_CODIGO_1: TIntegerField
      FieldName = 'MON_CODIGO_1'
    end
    object QryCadNotaCLI_CODIGOPAI: TIntegerField
      FieldName = 'CLI_CODIGOPAI'
    end
    object QryCadNotaTI_CODIGO: TIntegerField
      FieldName = 'TI_CODIGO'
    end
    object QryCadNotaCLI_OBS: TBlobField
      FieldName = 'CLI_OBS'
      Size = -1
    end
    object QryCadNotaCLI_GRAUESCOLARIDADE: TStringField
      FieldName = 'CLI_GRAUESCOLARIDADE'
      Size = 30
    end
    object QryCadNotaCLI_POSUICARTAO: TStringField
      FieldName = 'CLI_POSUICARTAO'
      Size = 3
    end
    object QryCadNotaVISA: TIntegerField
      FieldName = 'VISA'
    end
    object QryCadNotaMASTERCAR: TIntegerField
      FieldName = 'MASTERCAR'
    end
    object QryCadNotaDEBITO: TIntegerField
      FieldName = 'DEBITO'
    end
    object QryCadNotaAMERICAM: TIntegerField
      FieldName = 'AMERICAM'
    end
    object QryCadNotaOUTROS: TIntegerField
      FieldName = 'OUTROS'
    end
    object QryCadNotaCLI_NUMERODACONTA: TStringField
      FieldName = 'CLI_NUMERODACONTA'
      Size = 12
    end
    object QryCadNotaCLI_BAN_CLIENTEDESDE: TDateField
      FieldName = 'CLI_BAN_CLIENTEDESDE'
    end
    object QryCadNotaCLI_BAN_NOMEGERENTE: TStringField
      FieldName = 'CLI_BAN_NOMEGERENTE'
      Size = 60
    end
    object QryCadNotaCLI_BAN_FONE: TStringField
      FieldName = 'CLI_BAN_FONE'
      Size = 25
    end
    object QryCadNotaCLI_BAN_FONE_2: TStringField
      FieldName = 'CLI_BAN_FONE_2'
      Size = 25
    end
    object QryCadNotaCLI_BAN_FONE_3: TStringField
      FieldName = 'CLI_BAN_FONE_3'
      Size = 25
    end
    object QryCadNotaCLI_BAN_NOMEGERENTE_2: TStringField
      FieldName = 'CLI_BAN_NOMEGERENTE_2'
      Size = 60
    end
    object QryCadNotaCLI_BAN_NOMEGERENTE_3: TStringField
      FieldName = 'CLI_BAN_NOMEGERENTE_3'
      Size = 60
    end
    object QryCadNotaCLI_BAN_CLIENTEDESDE_1: TDateField
      FieldName = 'CLI_BAN_CLIENTEDESDE_1'
    end
    object QryCadNotaCLI_BAN_CLIENTEDESDE_3: TDateField
      FieldName = 'CLI_BAN_CLIENTEDESDE_3'
    end
    object QryCadNotaCLI_NUMERODACONTA_2: TStringField
      FieldName = 'CLI_NUMERODACONTA_2'
      Size = 12
    end
    object QryCadNotaCLI_NUMERODACONTA_3: TStringField
      FieldName = 'CLI_NUMERODACONTA_3'
      Size = 12
    end
    object QryCadNotaCLI_BANCO_2: TStringField
      FieldName = 'CLI_BANCO_2'
      Size = 60
    end
    object QryCadNotaCLI_BANCO_3: TStringField
      FieldName = 'CLI_BANCO_3'
      Size = 30
    end
    object QryCadNotaCLI_AGENCIA_2: TStringField
      FieldName = 'CLI_AGENCIA_2'
      Size = 30
    end
    object QryCadNotaCLI_AGENCIA_3: TStringField
      FieldName = 'CLI_AGENCIA_3'
      Size = 30
    end
    object QryCadNotaCLI_RENDAFAMILHAR: TStringField
      FieldName = 'CLI_RENDAFAMILHAR'
      Size = 25
    end
    object QryCadNotaCLI_FICHADO: TStringField
      FieldName = 'CLI_FICHADO'
      Size = 3
    end
    object QryCadNotaCLI_TEMPOTRABALHO: TStringField
      FieldName = 'CLI_TEMPOTRABALHO'
      Size = 25
    end
    object QryCadNotaCLI_ESTADOCIVIL: TStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Size = 15
    end
    object QryCadNotaCLI_NOMECONJUGE: TStringField
      FieldName = 'CLI_NOMECONJUGE'
      Size = 60
    end
    object QryCadNotaCLI_CONJUGECPF: TStringField
      FieldName = 'CLI_CONJUGECPF'
      Size = 15
    end
    object QryCadNotaCLI_CONJUGERG: TStringField
      FieldName = 'CLI_CONJUGERG'
      Size = 15
    end
    object QryCadNotaCLI_CONJUGEDATANASC: TDateField
      FieldName = 'CLI_CONJUGEDATANASC'
    end
    object QryCadNotaCLI_CONJUGEEMAIL: TStringField
      FieldName = 'CLI_CONJUGEEMAIL'
      Size = 50
    end
    object QryCadNotaCLI_NOMEMAE: TStringField
      FieldName = 'CLI_NOMEMAE'
      Size = 60
    end
    object QryCadNotaCLI_NOMEPAI: TStringField
      FieldName = 'CLI_NOMEPAI'
      Size = 60
    end
    object QryCadNotaCLI_FONEMAE: TStringField
      FieldName = 'CLI_FONEMAE'
      Size = 15
    end
    object QryCadNotaCLI_FONEMAE_2: TStringField
      FieldName = 'CLI_FONEMAE_2'
      Size = 15
    end
    object QryCadNotaCLI_FONEPAI: TStringField
      FieldName = 'CLI_FONEPAI'
      Size = 15
    end
    object QryCadNotaCLI_FONEPAI_2: TStringField
      FieldName = 'CLI_FONEPAI_2'
      Size = 15
    end
    object QryCadNotaCLI_TIPOMORADIA: TStringField
      FieldName = 'CLI_TIPOMORADIA'
      Size = 15
    end
    object QryCadNotaCLI_TIPOCONSTRUCOA: TStringField
      FieldName = 'CLI_TIPOCONSTRUCOA'
      Size = 15
    end
    object QryCadNotaCLI_MORADIA: TStringField
      FieldName = 'CLI_MORADIA'
      Size = 15
    end
    object QryCadNotaCLI_AGUA: TFloatField
      FieldName = 'CLI_AGUA'
    end
    object QryCadNotaCLI_ENERGIA: TFloatField
      FieldName = 'CLI_ENERGIA'
    end
    object QryCadNotaCLI_POSSUEMANIMAIS: TStringField
      FieldName = 'CLI_POSSUEMANIMAIS'
      Size = 60
    end
    object QryCadNotaCLI_QTDANIMAIS: TStringField
      FieldName = 'CLI_QTDANIMAIS'
      Size = 3
    end
    object QryCadNotaCLI_NOMEGERENTE_2: TStringField
      FieldName = 'CLI_NOMEGERENTE_2'
      Size = 60
    end
    object QryCadNotaCLI_NOMEGERENTE_3: TStringField
      FieldName = 'CLI_NOMEGERENTE_3'
      Size = 60
    end
    object QryCadNotaCLI_NOMEGERENTE_1: TStringField
      FieldName = 'CLI_NOMEGERENTE_1'
      Size = 60
    end
    object QryCadNotaDATA_1: TDateField
      FieldName = 'DATA_1'
    end
    object QryCadNotaHORAS_1: TTimeField
      FieldName = 'HORAS_1'
    end
    object QryCadNotaUSER_NOME_1: TStringField
      FieldName = 'USER_NOME_1'
    end
    object QryCadNotaNOMECOMPUTADOR_1: TStringField
      FieldName = 'NOMECOMPUTADOR_1'
    end
    object QryCadNotaIPDAMAQUINA_1: TStringField
      FieldName = 'IPDAMAQUINA_1'
    end
    object QryCadNotaCLI_PROVI: TStringField
      FieldName = 'CLI_PROVI'
      Size = 40
    end
    object QryCadNotaCLI_NUMEROMATRICULA: TStringField
      FieldName = 'CLI_NUMEROMATRICULA'
      Size = 50
    end
    object QryCadNotaCLI_COBR_ENDERECO: TStringField
      FieldName = 'CLI_COBR_ENDERECO'
      Size = 100
    end
    object QryCadNotaCLI_COBR_BAIRRO: TStringField
      FieldName = 'CLI_COBR_BAIRRO'
      Size = 60
    end
    object QryCadNotaCLI_COBR_CEP: TStringField
      FieldName = 'CLI_COBR_CEP'
      Size = 9
    end
    object QryCadNotaCLI_COBR_LT: TStringField
      FieldName = 'CLI_COBR_LT'
      Size = 2
    end
    object QryCadNotaCLI_COBR_QD: TStringField
      FieldName = 'CLI_COBR_QD'
      Size = 5
    end
    object QryCadNotaCLI_COBR_NUMERO: TStringField
      FieldName = 'CLI_COBR_NUMERO'
      Size = 10
    end
    object QryCadNotaCLI_COBR_COMPLEMENTO: TStringField
      FieldName = 'CLI_COBR_COMPLEMENTO'
      Size = 30
    end
    object QryCadNotaCLI_COBR_CID_CODIGO: TIntegerField
      FieldName = 'CLI_COBR_CID_CODIGO'
    end
    object QryCadNotaCLI_COBR_CID_NOME: TStringField
      FieldName = 'CLI_COBR_CID_NOME'
      Size = 100
    end
    object QryCadNotaCLI_COBR_UF: TStringField
      FieldName = 'CLI_COBR_UF'
      Size = 2
    end
    object QryCadNotaCLI_COBR_PONTOREFERENCIA: TStringField
      FieldName = 'CLI_COBR_PONTOREFERENCIA'
      Size = 200
    end
    object QryCadNotaCLI_COBR_TELEFONE: TStringField
      FieldName = 'CLI_COBR_TELEFONE'
      Size = 15
    end
    object QryCadNotaCLI_COBR_CELULAR: TStringField
      FieldName = 'CLI_COBR_CELULAR'
      Size = 60
    end
    object QryCadNotaCLI_COBR_FONE: TStringField
      FieldName = 'CLI_COBR_FONE'
      Size = 40
    end
    object QryCadNotaCLI_ENTR_BAIRRO: TStringField
      FieldName = 'CLI_ENTR_BAIRRO'
      Size = 60
    end
    object QryCadNotaCLI_ENTR_CELULAR: TStringField
      FieldName = 'CLI_ENTR_CELULAR'
      Size = 60
    end
    object QryCadNotaCLI_ENTR_CEP: TStringField
      FieldName = 'CLI_ENTR_CEP'
      Size = 9
    end
    object QryCadNotaCLI_ENTR_CID_CODIGO: TIntegerField
      FieldName = 'CLI_ENTR_CID_CODIGO'
    end
    object QryCadNotaCLI_ENTR_CID_NOME: TStringField
      FieldName = 'CLI_ENTR_CID_NOME'
      Size = 100
    end
    object QryCadNotaCLI_ENTR_COMPLEMENTO: TStringField
      FieldName = 'CLI_ENTR_COMPLEMENTO'
      Size = 30
    end
    object QryCadNotaCLI_ENTR_ENDERECO: TStringField
      FieldName = 'CLI_ENTR_ENDERECO'
      Size = 100
    end
    object QryCadNotaCLI_ENTR_FONE: TStringField
      FieldName = 'CLI_ENTR_FONE'
      Size = 40
    end
    object QryCadNotaCLI_ENTR_LT: TStringField
      FieldName = 'CLI_ENTR_LT'
      Size = 2
    end
    object QryCadNotaCLI_ENTR_NUMERO: TStringField
      FieldName = 'CLI_ENTR_NUMERO'
      Size = 10
    end
    object QryCadNotaCLI_ENTR_PONTOREFERENCIA: TStringField
      FieldName = 'CLI_ENTR_PONTOREFERENCIA'
      Size = 200
    end
    object QryCadNotaCLI_ENTR_QD: TStringField
      FieldName = 'CLI_ENTR_QD'
      Size = 5
    end
    object QryCadNotaCLI_ENTR_TELEFONE: TStringField
      FieldName = 'CLI_ENTR_TELEFONE'
      Size = 15
    end
    object QryCadNotaCLI_ENTR_UF: TStringField
      FieldName = 'CLI_ENTR_UF'
      Size = 2
    end
    object QryCadNotaCLI_COBR_FAX: TStringField
      FieldName = 'CLI_COBR_FAX'
      Size = 15
    end
    object QryCadNotaCLI_ENTR_FAX: TStringField
      FieldName = 'CLI_ENTR_FAX'
      Size = 15
    end
    object QryCadNotaROTA_CODIGO: TIntegerField
      FieldName = 'ROTA_CODIGO'
    end
    object QryCadNotaTRA_CODIGO_1: TIntegerField
      FieldName = 'TRA_CODIGO_1'
    end
    object QryCadNotaCLI_AGUATIPO: TStringField
      FieldName = 'CLI_AGUATIPO'
      Size = 45
    end
    object QryCadNotaCLI_HOMEPAGE: TStringField
      FieldName = 'CLI_HOMEPAGE'
      Size = 120
    end
    object QryCadNotaCON_NUMERO: TStringField
      FieldName = 'CON_NUMERO'
      Size = 30
    end
    object QryCadNotaPC_CODIGO: TIntegerField
      FieldName = 'PC_CODIGO'
    end
    object QryCadNotaCLI_ATIVO_INATIVO: TIntegerField
      FieldName = 'CLI_ATIVO_INATIVO'
    end
    object QryCadNotaCLI_INATIVOAPOS: TIntegerField
      FieldName = 'CLI_INATIVOAPOS'
    end
    object QryCadNotaCLI_VENDASOMENTEAVISTA: TIntegerField
      FieldName = 'CLI_VENDASOMENTEAVISTA'
    end
    object QryCadNotaCLI_BLOQUEIOAUTOAPOS: TIntegerField
      FieldName = 'CLI_BLOQUEIOAUTOAPOS'
    end
    object QryCadNotaCLI_DATAULTIMACOMPRA: TDateField
      FieldName = 'CLI_DATAULTIMACOMPRA'
    end
    object QryCadNotaCLI_DATAULTIMAOS: TDateField
      FieldName = 'CLI_DATAULTIMAOS'
    end
    object QryCadNotaCLI_SKYPE: TStringField
      FieldName = 'CLI_SKYPE'
      Size = 999
    end
    object QryCadNotaCLI_MSN: TStringField
      FieldName = 'CLI_MSN'
      Size = 999
    end
    object QryCadNotaCLI_NEXTEL: TStringField
      FieldName = 'CLI_NEXTEL'
      Size = 999
    end
    object QryCadNotaCLI_RAMOATIVIDADE: TStringField
      FieldName = 'CLI_RAMOATIVIDADE'
      Size = 999
    end
    object QryCadNotaCLI_NOMESOCIO: TStringField
      FieldName = 'CLI_NOMESOCIO'
      Size = 999
    end
    object QryCadNotaCLI_BLOQMOTIVO: TStringField
      FieldName = 'CLI_BLOQMOTIVO'
      Size = 999
    end
    object QryCadNotaFIL_CNPJ_1: TStringField
      FieldName = 'FIL_CNPJ_1'
      Size = 30
    end
    object QryCadNotaCLI_END_COD_IBGEUF: TStringField
      FieldName = 'CLI_END_COD_IBGEUF'
      Size = 60
    end
    object QryCadNotaCLI_END_COD_IBGEMUNIC: TStringField
      FieldName = 'CLI_END_COD_IBGEMUNIC'
      Size = 60
    end
    object QryCadNotaCLI_PAIS: TStringField
      FieldName = 'CLI_PAIS'
      Size = 60
    end
    object QryCadNotaCFOP_DESCRICAO: TStringField
      FieldName = 'CFOP_DESCRICAO'
      Size = 999
    end
    object QryCadNotaNOT_OBSFISCO: TStringField
      FieldName = 'NOT_OBSFISCO'
      Size = 999
    end
    object QryCadNotaNFE_OPTANTESIMPLESNASCIONAL: TStringField
      FieldName = 'NFE_OPTANTESIMPLESNASCIONAL'
      Size = 1
    end
  end
  object QryClienteaaa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      '')
    SQLConnection = Modulo.SQLConexao
    Left = 119
    Top = 310
    object QryClienteaaaEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object QryClienteaaaEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QryClienteaaaFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
    end
    object QryClienteaaaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object QryClienteaaaCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
      Size = 30
    end
    object QryClienteaaaCLI_RGINSC: TStringField
      FieldName = 'CLI_RGINSC'
      Size = 15
    end
    object QryClienteaaaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 100
    end
    object QryClienteaaaCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Required = True
      Size = 100
    end
    object QryClienteaaaCLI_TIPO: TStringField
      FieldName = 'CLI_TIPO'
    end
    object QryClienteaaaCLI_SEXO: TStringField
      FieldName = 'CLI_SEXO'
      Size = 1
    end
    object QryClienteaaaFLAG_DATAALT: TDateField
      FieldName = 'FLAG_DATAALT'
    end
    object QryClienteaaaDELETADO: TIntegerField
      FieldName = 'DELETADO'
    end
    object QryClienteaaaCLI_END_ENDERECO: TStringField
      FieldName = 'CLI_END_ENDERECO'
      Size = 100
    end
    object QryClienteaaaCLI_END_BAIRRO: TStringField
      FieldName = 'CLI_END_BAIRRO'
      Size = 60
    end
    object QryClienteaaaCLI_END_CID_CODIGO: TIntegerField
      FieldName = 'CLI_END_CID_CODIGO'
    end
    object QryClienteaaaCLI_END_CID_NOME: TStringField
      FieldName = 'CLI_END_CID_NOME'
      Size = 100
    end
    object QryClienteaaaCLI_END_CID_UF: TStringField
      FieldName = 'CLI_END_CID_UF'
      Size = 2
    end
    object QryClienteaaaCLI_END_CEP: TStringField
      FieldName = 'CLI_END_CEP'
      Size = 9
    end
    object QryClienteaaaCLI_FONE: TStringField
      FieldName = 'CLI_FONE'
      Size = 40
    end
    object QryClienteaaaCLI_FAX: TStringField
      FieldName = 'CLI_FAX'
      Size = 15
    end
    object QryClienteaaaCLI_BANCO: TStringField
      FieldName = 'CLI_BANCO'
      Size = 30
    end
    object QryClienteaaaCLI_AGENCIA: TStringField
      FieldName = 'CLI_AGENCIA'
      Size = 30
    end
    object QryClienteaaaCLI_DTCADASTRO: TDateField
      FieldName = 'CLI_DTCADASTRO'
    end
    object QryClienteaaaCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 80
    end
    object QryClienteaaaVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object QryClienteaaaVEN_CODIGO_AG: TIntegerField
      FieldName = 'VEN_CODIGO_AG'
    end
    object QryClienteaaaCLI_NOMECONTATO: TStringField
      FieldName = 'CLI_NOMECONTATO'
      Size = 100
    end
    object QryClienteaaaCLI_CONTATOEMAIL: TStringField
      FieldName = 'CLI_CONTATOEMAIL'
      Size = 55
    end
    object QryClienteaaaCLI_DATANASC: TDateField
      FieldName = 'CLI_DATANASC'
    end
    object QryClienteaaaCLI_VENDEDOR: TIntegerField
      FieldName = 'CLI_VENDEDOR'
    end
    object QryClienteaaaVEN_COM: TFloatField
      FieldName = 'VEN_COM'
    end
    object QryClienteaaaAG_COM: TFloatField
      FieldName = 'AG_COM'
    end
    object QryClienteaaaTP_CODIGO: TStringField
      FieldName = 'TP_CODIGO'
      Size = 10
    end
    object QryClienteaaaCLI_LIMITE: TFloatField
      FieldName = 'CLI_LIMITE'
    end
    object QryClienteaaaCLI_BLOQUEADO: TIntegerField
      FieldName = 'CLI_BLOQUEADO'
    end
    object QryClienteaaaFP_CODIGO: TIntegerField
      FieldName = 'FP_CODIGO'
    end
    object QryClienteaaaTC_CODIGO: TIntegerField
      FieldName = 'TC_CODIGO'
    end
    object QryClienteaaaCLI_MALA: TIntegerField
      FieldName = 'CLI_MALA'
    end
    object QryClienteaaaCLI_TOTALDESCONTO: TFloatField
      FieldName = 'CLI_TOTALDESCONTO'
    end
    object QryClienteaaaCLI_FOTO: TStringField
      FieldName = 'CLI_FOTO'
      Size = 60
    end
    object QryClienteaaaVEN_CODIGO_AG_2: TIntegerField
      FieldName = 'VEN_CODIGO_AG_2'
    end
    object QryClienteaaaAG_COM_2: TFloatField
      FieldName = 'AG_COM_2'
    end
    object QryClienteaaaCLI_END_ENDERECO_TRABALHO: TStringField
      FieldName = 'CLI_END_ENDERECO_TRABALHO'
      Size = 100
    end
    object QryClienteaaaCLI_END_BAIRRO_TRABALHO: TStringField
      FieldName = 'CLI_END_BAIRRO_TRABALHO'
      Size = 60
    end
    object QryClienteaaaCLI_END_CID_CODIGO_TRABALHO: TIntegerField
      FieldName = 'CLI_END_CID_CODIGO_TRABALHO'
    end
    object QryClienteaaaCLI_END_CID_NOME_TRABALHO: TStringField
      FieldName = 'CLI_END_CID_NOME_TRABALHO'
      Size = 100
    end
    object QryClienteaaaCLI_END_CID_UF_TRABALHO: TStringField
      FieldName = 'CLI_END_CID_UF_TRABALHO'
      Size = 2
    end
    object QryClienteaaaCLI_END_CEP_TRABALHO: TStringField
      FieldName = 'CLI_END_CEP_TRABALHO'
      Size = 9
    end
    object QryClienteaaaCLI_FONE_TRABALHO: TStringField
      FieldName = 'CLI_FONE_TRABALHO'
      Size = 40
    end
    object QryClienteaaaCLI_FAX_TRABALHO: TStringField
      FieldName = 'CLI_FAX_TRABALHO'
      Size = 15
    end
    object QryClienteaaaCLI_CELULAR: TStringField
      FieldName = 'CLI_CELULAR'
      Size = 60
    end
    object QryClienteaaaCLI_LOCALTRABALHO: TStringField
      FieldName = 'CLI_LOCALTRABALHO'
      Size = 240
    end
    object QryClienteaaaCLI_NOMEGERENTE_TRABALHO: TStringField
      FieldName = 'CLI_NOMEGERENTE_TRABALHO'
      Size = 155
    end
    object QryClienteaaaCLI_END_COMPLETO: TStringField
      FieldName = 'CLI_END_COMPLETO'
      Size = 200
    end
    object QryClienteaaaCLI_END_COMPLEMENTO: TStringField
      FieldName = 'CLI_END_COMPLEMENTO'
      Size = 30
    end
    object QryClienteaaaCLI_END_NUMERO: TStringField
      FieldName = 'CLI_END_NUMERO'
      Size = 10
    end
    object QryClienteaaaCLI_END_LT: TStringField
      FieldName = 'CLI_END_LT'
      Size = 5
    end
    object QryClienteaaaCLI_END_QD: TStringField
      FieldName = 'CLI_END_QD'
      Size = 5
    end
    object QryClienteaaaCLI_END_PONTOREFERENCIA: TStringField
      FieldName = 'CLI_END_PONTOREFERENCIA'
      Size = 200
    end
    object QryClienteaaaMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QryClienteaaaCLI_CODIGOPAI: TIntegerField
      FieldName = 'CLI_CODIGOPAI'
    end
    object QryClienteaaaTI_CODIGO: TIntegerField
      FieldName = 'TI_CODIGO'
    end
    object QryClienteaaaCLI_OBS: TGraphicField
      FieldName = 'CLI_OBS'
      BlobType = ftGraphic
      Size = -1
    end
    object QryClienteaaaCLI_GRAUESCOLARIDADE: TStringField
      FieldName = 'CLI_GRAUESCOLARIDADE'
      Size = 30
    end
    object QryClienteaaaCLI_POSUICARTAO: TStringField
      FieldName = 'CLI_POSUICARTAO'
      Size = 3
    end
    object QryClienteaaaVISA: TIntegerField
      FieldName = 'VISA'
    end
    object QryClienteaaaMASTERCAR: TIntegerField
      FieldName = 'MASTERCAR'
    end
    object QryClienteaaaDEBITO: TIntegerField
      FieldName = 'DEBITO'
    end
    object QryClienteaaaAMERICAM: TIntegerField
      FieldName = 'AMERICAM'
    end
    object QryClienteaaaOUTROS: TIntegerField
      FieldName = 'OUTROS'
    end
    object QryClienteaaaCLI_NUMERODACONTA: TStringField
      FieldName = 'CLI_NUMERODACONTA'
      Size = 12
    end
    object QryClienteaaaCLI_BAN_CLIENTEDESDE: TDateField
      FieldName = 'CLI_BAN_CLIENTEDESDE'
    end
    object QryClienteaaaCLI_BAN_NOMEGERENTE: TStringField
      FieldName = 'CLI_BAN_NOMEGERENTE'
      Size = 60
    end
    object QryClienteaaaCLI_BAN_FONE: TStringField
      FieldName = 'CLI_BAN_FONE'
      Size = 25
    end
    object QryClienteaaaCLI_BAN_FONE_2: TStringField
      FieldName = 'CLI_BAN_FONE_2'
      Size = 25
    end
    object QryClienteaaaCLI_BAN_FONE_3: TStringField
      FieldName = 'CLI_BAN_FONE_3'
      Size = 25
    end
    object QryClienteaaaCLI_BAN_NOMEGERENTE_2: TStringField
      FieldName = 'CLI_BAN_NOMEGERENTE_2'
      Size = 60
    end
    object QryClienteaaaCLI_BAN_NOMEGERENTE_3: TStringField
      FieldName = 'CLI_BAN_NOMEGERENTE_3'
      Size = 60
    end
    object QryClienteaaaCLI_BAN_CLIENTEDESDE_1: TDateField
      FieldName = 'CLI_BAN_CLIENTEDESDE_1'
    end
    object QryClienteaaaCLI_BAN_CLIENTEDESDE_3: TDateField
      FieldName = 'CLI_BAN_CLIENTEDESDE_3'
    end
    object QryClienteaaaCLI_NUMERODACONTA_2: TStringField
      FieldName = 'CLI_NUMERODACONTA_2'
      Size = 12
    end
    object QryClienteaaaCLI_NUMERODACONTA_3: TStringField
      FieldName = 'CLI_NUMERODACONTA_3'
      Size = 12
    end
    object QryClienteaaaCLI_BANCO_2: TStringField
      FieldName = 'CLI_BANCO_2'
      Size = 60
    end
    object QryClienteaaaCLI_BANCO_3: TStringField
      FieldName = 'CLI_BANCO_3'
      Size = 30
    end
    object QryClienteaaaCLI_AGENCIA_2: TStringField
      FieldName = 'CLI_AGENCIA_2'
      Size = 30
    end
    object QryClienteaaaCLI_AGENCIA_3: TStringField
      FieldName = 'CLI_AGENCIA_3'
      Size = 30
    end
    object QryClienteaaaCLI_RENDAFAMILHAR: TStringField
      FieldName = 'CLI_RENDAFAMILHAR'
      Size = 25
    end
    object QryClienteaaaCLI_FICHADO: TStringField
      FieldName = 'CLI_FICHADO'
      Size = 3
    end
    object QryClienteaaaCLI_TEMPOTRABALHO: TStringField
      FieldName = 'CLI_TEMPOTRABALHO'
      Size = 25
    end
    object QryClienteaaaCLI_ESTADOCIVIL: TStringField
      FieldName = 'CLI_ESTADOCIVIL'
      Size = 15
    end
    object QryClienteaaaCLI_NOMECONJUGE: TStringField
      FieldName = 'CLI_NOMECONJUGE'
      Size = 60
    end
    object QryClienteaaaCLI_CONJUGECPF: TStringField
      FieldName = 'CLI_CONJUGECPF'
      Size = 15
    end
    object QryClienteaaaCLI_CONJUGERG: TStringField
      FieldName = 'CLI_CONJUGERG'
      Size = 15
    end
    object QryClienteaaaCLI_CONJUGEDATANASC: TDateField
      FieldName = 'CLI_CONJUGEDATANASC'
    end
    object QryClienteaaaCLI_CONJUGEEMAIL: TStringField
      FieldName = 'CLI_CONJUGEEMAIL'
      Size = 50
    end
    object QryClienteaaaCLI_NOMEMAE: TStringField
      FieldName = 'CLI_NOMEMAE'
      Size = 60
    end
    object QryClienteaaaCLI_NOMEPAI: TStringField
      FieldName = 'CLI_NOMEPAI'
      Size = 60
    end
    object QryClienteaaaCLI_FONEMAE: TStringField
      FieldName = 'CLI_FONEMAE'
      Size = 15
    end
    object QryClienteaaaCLI_FONEMAE_2: TStringField
      FieldName = 'CLI_FONEMAE_2'
      Size = 15
    end
    object QryClienteaaaCLI_FONEPAI: TStringField
      FieldName = 'CLI_FONEPAI'
      Size = 15
    end
    object QryClienteaaaCLI_FONEPAI_2: TStringField
      FieldName = 'CLI_FONEPAI_2'
      Size = 15
    end
    object QryClienteaaaCLI_TIPOMORADIA: TStringField
      FieldName = 'CLI_TIPOMORADIA'
      Size = 15
    end
    object QryClienteaaaCLI_TIPOCONSTRUCOA: TStringField
      FieldName = 'CLI_TIPOCONSTRUCOA'
      Size = 15
    end
    object QryClienteaaaCLI_MORADIA: TStringField
      FieldName = 'CLI_MORADIA'
      Size = 15
    end
    object QryClienteaaaCLI_AGUA: TFloatField
      FieldName = 'CLI_AGUA'
    end
    object QryClienteaaaCLI_ENERGIA: TFloatField
      FieldName = 'CLI_ENERGIA'
    end
    object QryClienteaaaCLI_POSSUEMANIMAIS: TStringField
      FieldName = 'CLI_POSSUEMANIMAIS'
      Size = 60
    end
    object QryClienteaaaCLI_QTDANIMAIS: TStringField
      FieldName = 'CLI_QTDANIMAIS'
      Size = 3
    end
    object QryClienteaaaCLI_NOMEGERENTE_2: TStringField
      FieldName = 'CLI_NOMEGERENTE_2'
      Size = 60
    end
    object QryClienteaaaCLI_NOMEGERENTE_3: TStringField
      FieldName = 'CLI_NOMEGERENTE_3'
      Size = 60
    end
    object QryClienteaaaCLI_NOMEGERENTE_1: TStringField
      FieldName = 'CLI_NOMEGERENTE_1'
      Size = 60
    end
    object QryClienteaaaDATA: TDateField
      FieldName = 'DATA'
    end
    object QryClienteaaaHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object QryClienteaaaUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object QryClienteaaaNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object QryClienteaaaIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object QryClienteaaaCLI_PROVI: TStringField
      FieldName = 'CLI_PROVI'
      Size = 40
    end
    object QryClienteaaaCLI_NUMEROMATRICULA: TStringField
      FieldName = 'CLI_NUMEROMATRICULA'
      Size = 50
    end
    object QryClienteaaaCLI_COBR_ENDERECO: TStringField
      FieldName = 'CLI_COBR_ENDERECO'
      Size = 100
    end
    object QryClienteaaaCLI_COBR_BAIRRO: TStringField
      FieldName = 'CLI_COBR_BAIRRO'
      Size = 60
    end
    object QryClienteaaaCLI_COBR_CEP: TStringField
      FieldName = 'CLI_COBR_CEP'
      Size = 9
    end
    object QryClienteaaaCLI_COBR_LT: TStringField
      FieldName = 'CLI_COBR_LT'
      Size = 2
    end
    object QryClienteaaaCLI_COBR_QD: TStringField
      FieldName = 'CLI_COBR_QD'
      Size = 5
    end
    object QryClienteaaaCLI_COBR_NUMERO: TStringField
      FieldName = 'CLI_COBR_NUMERO'
      Size = 10
    end
    object QryClienteaaaCLI_COBR_COMPLEMENTO: TStringField
      FieldName = 'CLI_COBR_COMPLEMENTO'
      Size = 30
    end
    object QryClienteaaaCLI_COBR_CID_CODIGO: TIntegerField
      FieldName = 'CLI_COBR_CID_CODIGO'
    end
    object QryClienteaaaCLI_COBR_CID_NOME: TStringField
      FieldName = 'CLI_COBR_CID_NOME'
      Size = 100
    end
    object QryClienteaaaCLI_COBR_UF: TStringField
      FieldName = 'CLI_COBR_UF'
      Size = 2
    end
    object QryClienteaaaCLI_COBR_PONTOREFERENCIA: TStringField
      FieldName = 'CLI_COBR_PONTOREFERENCIA'
      Size = 200
    end
    object QryClienteaaaCLI_COBR_TELEFONE: TStringField
      FieldName = 'CLI_COBR_TELEFONE'
      Size = 15
    end
    object QryClienteaaaCLI_COBR_CELULAR: TStringField
      FieldName = 'CLI_COBR_CELULAR'
      Size = 60
    end
    object QryClienteaaaCLI_COBR_FONE: TStringField
      FieldName = 'CLI_COBR_FONE'
      Size = 40
    end
    object QryClienteaaaCLI_ENTR_BAIRRO: TStringField
      FieldName = 'CLI_ENTR_BAIRRO'
      Size = 60
    end
    object QryClienteaaaCLI_ENTR_CELULAR: TStringField
      FieldName = 'CLI_ENTR_CELULAR'
      Size = 60
    end
    object QryClienteaaaCLI_ENTR_CEP: TStringField
      FieldName = 'CLI_ENTR_CEP'
      Size = 9
    end
    object QryClienteaaaCLI_ENTR_CID_CODIGO: TIntegerField
      FieldName = 'CLI_ENTR_CID_CODIGO'
    end
    object QryClienteaaaCLI_ENTR_CID_NOME: TStringField
      FieldName = 'CLI_ENTR_CID_NOME'
      Size = 100
    end
    object QryClienteaaaCLI_ENTR_COMPLEMENTO: TStringField
      FieldName = 'CLI_ENTR_COMPLEMENTO'
      Size = 30
    end
    object QryClienteaaaCLI_ENTR_ENDERECO: TStringField
      FieldName = 'CLI_ENTR_ENDERECO'
      Size = 100
    end
    object QryClienteaaaCLI_ENTR_FONE: TStringField
      FieldName = 'CLI_ENTR_FONE'
      Size = 40
    end
    object QryClienteaaaCLI_ENTR_LT: TStringField
      FieldName = 'CLI_ENTR_LT'
      Size = 2
    end
    object QryClienteaaaCLI_ENTR_NUMERO: TStringField
      FieldName = 'CLI_ENTR_NUMERO'
      Size = 10
    end
    object QryClienteaaaCLI_ENTR_PONTOREFERENCIA: TStringField
      FieldName = 'CLI_ENTR_PONTOREFERENCIA'
      Size = 200
    end
    object QryClienteaaaCLI_ENTR_QD: TStringField
      FieldName = 'CLI_ENTR_QD'
      Size = 5
    end
    object QryClienteaaaCLI_ENTR_TELEFONE: TStringField
      FieldName = 'CLI_ENTR_TELEFONE'
      Size = 15
    end
    object QryClienteaaaCLI_ENTR_UF: TStringField
      FieldName = 'CLI_ENTR_UF'
      Size = 2
    end
    object QryClienteaaaCLI_COBR_FAX: TStringField
      FieldName = 'CLI_COBR_FAX'
      Size = 15
    end
    object QryClienteaaaCLI_ENTR_FAX: TStringField
      FieldName = 'CLI_ENTR_FAX'
      Size = 15
    end
    object QryClienteaaaROTA_CODIGO: TIntegerField
      FieldName = 'ROTA_CODIGO'
    end
    object QryClienteaaaTRA_CODIGO: TIntegerField
      FieldName = 'TRA_CODIGO'
    end
    object QryClienteaaaCLI_AGUATIPO: TStringField
      FieldName = 'CLI_AGUATIPO'
      Size = 45
    end
    object QryClienteaaaCLI_HOMEPAGE: TStringField
      FieldName = 'CLI_HOMEPAGE'
      Size = 120
    end
    object QryClienteaaaCON_NUMERO: TStringField
      FieldName = 'CON_NUMERO'
      Size = 30
    end
    object QryClienteaaaPC_CODIGO: TIntegerField
      FieldName = 'PC_CODIGO'
    end
    object QryClienteaaaCLI_ATIVO_INATIVO: TIntegerField
      FieldName = 'CLI_ATIVO_INATIVO'
    end
    object QryClienteaaaCLI_INATIVOAPOS: TIntegerField
      FieldName = 'CLI_INATIVOAPOS'
    end
    object QryClienteaaaCLI_VENDASOMENTEAVISTA: TIntegerField
      FieldName = 'CLI_VENDASOMENTEAVISTA'
    end
    object QryClienteaaaCLI_BLOQUEIOAUTOAPOS: TIntegerField
      FieldName = 'CLI_BLOQUEIOAUTOAPOS'
    end
    object QryClienteaaaCLI_DATAULTIMACOMPRA: TDateField
      FieldName = 'CLI_DATAULTIMACOMPRA'
    end
    object QryClienteaaaCLI_DATAULTIMAOS: TDateField
      FieldName = 'CLI_DATAULTIMAOS'
    end
    object QryClienteaaaCLI_SKYPE: TStringField
      FieldName = 'CLI_SKYPE'
      Size = 250
    end
    object QryClienteaaaCLI_MSN: TStringField
      FieldName = 'CLI_MSN'
      Size = 250
    end
    object QryClienteaaaCLI_NEXTEL: TStringField
      FieldName = 'CLI_NEXTEL'
      Size = 250
    end
    object QryClienteaaaCLI_RAMOATIVIDADE: TStringField
      FieldName = 'CLI_RAMOATIVIDADE'
      Size = 250
    end
    object QryClienteaaaCLI_NOMESOCIO: TStringField
      FieldName = 'CLI_NOMESOCIO'
      Size = 250
    end
    object QryClienteaaaCLI_BLOQMOTIVO: TStringField
      FieldName = 'CLI_BLOQMOTIVO'
      Size = 250
    end
    object QryClienteaaaFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
    object QryClienteaaaCLI_END_COD_IBGEUF: TStringField
      FieldName = 'CLI_END_COD_IBGEUF'
      Size = 60
    end
    object QryClienteaaaCLI_END_COD_IBGEMUNIC: TStringField
      FieldName = 'CLI_END_COD_IBGEMUNIC'
      Size = 60
    end
  end
  object HistoricoNFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM HISTORICO_NFE')
    SQLConnection = Modulo.SQLConexao
    Left = 352
    Top = 304
  end
  object CdsHistoricoNFe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspHistoricoNFe'
    Left = 416
    Top = 304
    object CdsHistoricoNFeCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object CdsHistoricoNFeNOTA_FISCAL: TIntegerField
      FieldName = 'NOTA_FISCAL'
      Required = True
    end
    object CdsHistoricoNFeSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 3
    end
    object CdsHistoricoNFeDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object CdsHistoricoNFeCHAVE: TStringField
      FieldName = 'CHAVE'
      Required = True
      Size = 44
    end
    object CdsHistoricoNFeSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object CdsHistoricoNFeAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
    end
    object CdsHistoricoNFeMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object CdsHistoricoNFeRECIBO: TStringField
      FieldName = 'RECIBO'
    end
    object CdsHistoricoNFeSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object CdsHistoricoNFeSERVIDOR: TStringField
      FieldName = 'SERVIDOR'
      Size = 100
    end
    object CdsHistoricoNFePROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
    end
    object CdsHistoricoNFeCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object CdsHistoricoNFeCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 250
    end
    object CdsHistoricoNFeFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
    end
    object CdsHistoricoNFeEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object CdsHistoricoNFeDATA: TDateField
      FieldName = 'DATA'
    end
    object CdsHistoricoNFeHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object CdsHistoricoNFeUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object CdsHistoricoNFeNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object CdsHistoricoNFeIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object CdsHistoricoNFeEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object CdsHistoricoNFeFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
  end
  object DspHistoricoNFe: TDataSetProvider
    DataSet = HistoricoNFe
    Left = 384
    Top = 304
  end
  object QryMaximo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(SEQUENCIA) + 1 AS TOTAL'
      'FROM HISTORICO_NFE                ')
    SQLConnection = Modulo.SQLConexao
    Left = 352
    Top = 360
  end
  object DspQryMaximo: TDataSetProvider
    DataSet = QryMaximo
    Left = 384
    Top = 360
  end
  object CdsQryMaximo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspQryMaximo'
    Left = 416
    Top = 360
    object CdsQryMaximoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 15
      Size = 0
    end
  end
  object QryFinanceiro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM TITULOS')
    SQLConnection = Modulo.SQLConexao
    Left = 352
    Top = 416
  end
  object DspQryFinanceiro: TDataSetProvider
    DataSet = QryFinanceiro
    Left = 384
    Top = 416
  end
  object CsdQryFinanceiro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspQryFinanceiro'
    Left = 416
    Top = 416
    object CsdQryFinanceiroFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Required = True
    end
    object CsdQryFinanceiroTIT_CODIGO: TIntegerField
      FieldName = 'TIT_CODIGO'
      Required = True
    end
    object CsdQryFinanceiroPED_CODIGO: TIntegerField
      FieldName = 'PED_CODIGO'
    end
    object CsdQryFinanceiroDELETADO: TIntegerField
      FieldName = 'DELETADO'
    end
    object CsdQryFinanceiroCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object CsdQryFinanceiroTIT_DTLCTO: TDateField
      FieldName = 'TIT_DTLCTO'
      Required = True
    end
    object CsdQryFinanceiroTIT_VALOR: TFMTBCDField
      FieldName = 'TIT_VALOR'
      Required = True
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroTIT_DESC: TStringField
      FieldName = 'TIT_DESC'
      Size = 200
    end
    object CsdQryFinanceiroTIT_VENCIMENTO: TDateField
      FieldName = 'TIT_VENCIMENTO'
      Required = True
    end
    object CsdQryFinanceiroTIT_STATUS: TIntegerField
      FieldName = 'TIT_STATUS'
      Required = True
    end
    object CsdQryFinanceiroTIT_DTBAIXA: TDateField
      FieldName = 'TIT_DTBAIXA'
    end
    object CsdQryFinanceiroTIT_VALORPAGO: TFMTBCDField
      FieldName = 'TIT_VALORPAGO'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroVEN_CODIGO: TIntegerField
      FieldName = 'VEN_CODIGO'
    end
    object CsdQryFinanceiroVEN_CODIGO_AG: TIntegerField
      FieldName = 'VEN_CODIGO_AG'
    end
    object CsdQryFinanceiroVEN_COM: TFMTBCDField
      FieldName = 'VEN_COM'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroVEN_COM_AG: TFMTBCDField
      FieldName = 'VEN_COM_AG'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroTIT_TIPO: TStringField
      FieldName = 'TIT_TIPO'
      Size = 30
    end
    object CsdQryFinanceiroTIT_NRORIG: TStringField
      FieldName = 'TIT_NRORIG'
    end
    object CsdQryFinanceiroPLANO_CODIGO: TIntegerField
      FieldName = 'PLANO_CODIGO'
    end
    object CsdQryFinanceiroOS_CODIGO: TIntegerField
      FieldName = 'OS_CODIGO'
    end
    object CsdQryFinanceiroCON_NUMERO: TStringField
      FieldName = 'CON_NUMERO'
      Size = 30
    end
    object CsdQryFinanceiroTIT_JUROS: TFMTBCDField
      FieldName = 'TIT_JUROS'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroVEN_CODIGO_AG_2: TIntegerField
      FieldName = 'VEN_CODIGO_AG_2'
    end
    object CsdQryFinanceiroVEN_COM_AG_2: TFMTBCDField
      FieldName = 'VEN_COM_AG_2'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroTIT_SALDO: TFMTBCDField
      FieldName = 'TIT_SALDO'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroTIT_CODIGO1: TIntegerField
      FieldName = 'TIT_CODIGO1'
    end
    object CsdQryFinanceiroTIT_CODIGO2: TIntegerField
      FieldName = 'TIT_CODIGO2'
    end
    object CsdQryFinanceiroTP_START: TStringField
      FieldName = 'TP_START'
      Size = 3
    end
    object CsdQryFinanceiroBCO_CODIGO: TIntegerField
      FieldName = 'BCO_CODIGO'
    end
    object CsdQryFinanceiroTIT_NUMEROORIGINAL: TStringField
      FieldName = 'TIT_NUMEROORIGINAL'
    end
    object CsdQryFinanceiroTIT_NUMERO: TStringField
      FieldName = 'TIT_NUMERO'
    end
    object CsdQryFinanceiroTIT_NFNUMERO: TStringField
      FieldName = 'TIT_NFNUMERO'
    end
    object CsdQryFinanceiroOS_NUM_OS: TIntegerField
      FieldName = 'OS_NUM_OS'
    end
    object CsdQryFinanceiroPP_VALOREXTEN: TStringField
      FieldName = 'PP_VALOREXTEN'
      Size = 150
    end
    object CsdQryFinanceiroTIT_ORDEM: TStringField
      FieldName = 'TIT_ORDEM'
      Size = 10
    end
    object CsdQryFinanceiroTIT_AGRUPAMENTO: TIntegerField
      FieldName = 'TIT_AGRUPAMENTO'
    end
    object CsdQryFinanceiroTIT_AGRUPADOR: TStringField
      FieldName = 'TIT_AGRUPADOR'
      FixedChar = True
      Size = 1
    end
    object CsdQryFinanceiroPC_CODIGO: TIntegerField
      FieldName = 'PC_CODIGO'
    end
    object CsdQryFinanceiroMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object CsdQryFinanceiroTIT_OBS: TBlobField
      FieldName = 'TIT_OBS'
    end
    object CsdQryFinanceiroEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object CsdQryFinanceiroCH_CODIGO: TIntegerField
      FieldName = 'CH_CODIGO'
    end
    object CsdQryFinanceiroCH_NUMERO: TStringField
      FieldName = 'CH_NUMERO'
      Size = 22
    end
    object CsdQryFinanceiroCH_DATA: TDateField
      FieldName = 'CH_DATA'
    end
    object CsdQryFinanceiroCH_DATAVENC: TDateField
      FieldName = 'CH_DATAVENC'
    end
    object CsdQryFinanceiroCH_VALOR: TFMTBCDField
      FieldName = 'CH_VALOR'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroCH_DEST: TStringField
      FieldName = 'CH_DEST'
      Size = 102
    end
    object CsdQryFinanceiroCH_STATUS: TStringField
      FieldName = 'CH_STATUS'
      Size = 15
    end
    object CsdQryFinanceiroCH_AGENCIA: TStringField
      FieldName = 'CH_AGENCIA'
      Size = 22
    end
    object CsdQryFinanceiroFOR_CODIGO: TIntegerField
      FieldName = 'FOR_CODIGO'
    end
    object CsdQryFinanceiroCH_NUMEROCONTA: TStringField
      FieldName = 'CH_NUMEROCONTA'
      Size = 22
    end
    object CsdQryFinanceiroCH_NOMECORRENTISTA: TStringField
      FieldName = 'CH_NOMECORRENTISTA'
      Size = 102
    end
    object CsdQryFinanceiroCH_DATAREPASSE: TDateField
      FieldName = 'CH_DATAREPASSE'
    end
    object CsdQryFinanceiroFIN_CODIGO: TIntegerField
      FieldName = 'FIN_CODIGO'
    end
    object CsdQryFinanceiroCH_DIAS: TFMTBCDField
      FieldName = 'CH_DIAS'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroCH_DATABAIXA: TDateField
      FieldName = 'CH_DATABAIXA'
    end
    object CsdQryFinanceiroPP_VALORCOMISSAO: TFMTBCDField
      FieldName = 'PP_VALORCOMISSAO'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroPP_VALORCOMISSAO_AG: TFMTBCDField
      FieldName = 'PP_VALORCOMISSAO_AG'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroPP_VALORCOMISSAO_AG_2: TFMTBCDField
      FieldName = 'PP_VALORCOMISSAO_AG_2'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object CsdQryFinanceiroCH_OBS: TBlobField
      FieldName = 'CH_OBS'
    end
    object CsdQryFinanceiroDATA: TDateField
      FieldName = 'DATA'
    end
    object CsdQryFinanceiroHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object CsdQryFinanceiroUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object CsdQryFinanceiroNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object CsdQryFinanceiroIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object CsdQryFinanceiroPC_PAI: TIntegerField
      FieldName = 'PC_PAI'
    end
    object CsdQryFinanceiroTIT_BOLETOIMPRIMIDO: TStringField
      FieldName = 'TIT_BOLETOIMPRIMIDO'
      Size = 3
    end
    object CsdQryFinanceiroTIT_PERCENTUALJUROS: TFMTBCDField
      FieldName = 'TIT_PERCENTUALJUROS'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroTIT_PERCENTUALMULTA: TFMTBCDField
      FieldName = 'TIT_PERCENTUALMULTA'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroTIT_PERCENTUALDESCONTO: TFMTBCDField
      FieldName = 'TIT_PERCENTUALDESCONTO'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroTIT_VALOROUTROSACRESCIMOS: TFMTBCDField
      FieldName = 'TIT_VALOROUTROSACRESCIMOS'
      Precision = 20
      Size = 2
    end
    object CsdQryFinanceiroTIT_DEMONSTRATIVO: TStringField
      FieldName = 'TIT_DEMONSTRATIVO'
      Size = 400
    end
    object CsdQryFinanceiroTIT_INSTRUCAOCAIXA: TStringField
      FieldName = 'TIT_INSTRUCAOCAIXA'
      Size = 500
    end
    object CsdQryFinanceiroTIT_NOSSONUMERO: TStringField
      FieldName = 'TIT_NOSSONUMERO'
      Size = 100
    end
    object CsdQryFinanceiroTIT_DATAPAGAMENTO: TDateField
      FieldName = 'TIT_DATAPAGAMENTO'
    end
    object CsdQryFinanceiroTIT_DIASATRAZO: TIntegerField
      FieldName = 'TIT_DIASATRAZO'
    end
    object CsdQryFinanceiroBOLETO_CON_CODIGO: TStringField
      FieldName = 'BOLETO_CON_CODIGO'
    end
    object CsdQryFinanceiroBOLETO_CON_DIGITO: TStringField
      FieldName = 'BOLETO_CON_DIGITO'
    end
    object CsdQryFinanceiroTIT_REMESSA_GERADA: TStringField
      FieldName = 'TIT_REMESSA_GERADA'
    end
    object CsdQryFinanceiroTIT_CARTAOBANDEIRA: TStringField
      FieldName = 'TIT_CARTAOBANDEIRA'
      Size = 50
    end
    object CsdQryFinanceiroBOLETO_CON_CODIGO1: TStringField
      FieldName = 'BOLETO_CON_CODIGO1'
    end
    object CsdQryFinanceiroBOLETO_DATA_GERADO: TDateField
      FieldName = 'BOLETO_DATA_GERADO'
    end
    object CsdQryFinanceiroTIT_DATAVENCEXTEN: TStringField
      FieldName = 'TIT_DATAVENCEXTEN'
      Size = 999
    end
    object CsdQryFinanceiroFIN_CARTAO_NUMERO: TStringField
      FieldName = 'FIN_CARTAO_NUMERO'
      Size = 30
    end
    object CsdQryFinanceiroFIN_CARTAO_NUMEROSEGURANCA: TStringField
      FieldName = 'FIN_CARTAO_NUMEROSEGURANCA'
      Size = 30
    end
    object CsdQryFinanceiroFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
    object CsdQryFinanceiroCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 999
    end
    object CsdQryFinanceiroTIT_CONFERIDO: TStringField
      FieldName = 'TIT_CONFERIDO'
      Size = 3
    end
  end
  object QryTotaisNfe: TSQLQuery
    BeforeOpen = QryTotaisNfeBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FIL_CODIGO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'NOT_CODIGO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT SUM(NI.NI_VALOR_TOTAL)   AS NI_VALOR_TOTAL,'
      'SUM(NI.ni_valor_desconto)       AS ni_valor_desconto,'
      'SUM(NI.ni_valor_frete)          AS ni_valor_frete,'
      'SUM(NI.ni_valorseguro)          AS ni_valorseguro,'
      
        'SUM(NI.ni_icms_valor_base_calculo)          AS ni_icms_valor_bas' +
        'e_calculo,'
      'SUM(NI.ni_icms_valor)                       AS ni_icms_valor,'
      
        'SUM(NI.ni_icmssubs_valor_base_calculo)      AS ni_icmssubs_valor' +
        '_base_calculo,'
      
        'SUM(NI.ni_icmssubs_valor)                   AS ni_icmssubs_valor' +
        ','
      
        'SUM(NI.ni_ipi_valor_base_calculo)           AS ni_ipi_valor_base' +
        '_calculo,'
      'SUM(NI.ni_ipi_valor)                        AS ni_ipi_valor,'
      
        'SUM(NI.ni_pis_valor_base_calculo)           AS ni_pis_valor_base' +
        '_calculo,'
      'SUM(NI.ni_pis_valor)                        AS ni_pis_valor,'
      
        'SUM(NI.ni_cofins_valor_base_calculo)        AS ni_cofins_valor_b' +
        'ase_calculo,'
      'SUM(NI.ni_cofins_valor)                     AS ni_cofins_valor'
      'FROM NOTA_ITENS NI'
      'WHERE NI.FIL_CODIGO = :FIL_CODIGO'
      'AND NI.NOT_CODIGO = :NOT_CODIGO')
    SQLConnection = Modulo.SQLConexao
    Left = 81
    Top = 264
    object QryTotaisNfeNI_VALOR_TOTAL: TFMTBCDField
      FieldName = 'NI_VALOR_TOTAL'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_VALOR_DESCONTO: TFMTBCDField
      FieldName = 'NI_VALOR_DESCONTO'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_VALOR_FRETE: TFMTBCDField
      FieldName = 'NI_VALOR_FRETE'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_VALORSEGURO: TFMTBCDField
      FieldName = 'NI_VALORSEGURO'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_ICMS_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_ICMS_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_ICMS_VALOR: TFMTBCDField
      FieldName = 'NI_ICMS_VALOR'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_ICMSSUBS_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_ICMSSUBS_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_ICMSSUBS_VALOR: TFMTBCDField
      FieldName = 'NI_ICMSSUBS_VALOR'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_IPI_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_IPI_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_IPI_VALOR: TFMTBCDField
      FieldName = 'NI_IPI_VALOR'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_PIS_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_PIS_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_PIS_VALOR: TFMTBCDField
      FieldName = 'NI_PIS_VALOR'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_COFINS_VALOR_BASE_CALCULO: TFMTBCDField
      FieldName = 'NI_COFINS_VALOR_BASE_CALCULO'
      Precision = 20
      Size = 2
    end
    object QryTotaisNfeNI_COFINS_VALOR: TFMTBCDField
      FieldName = 'NI_COFINS_VALOR'
      Precision = 20
      Size = 2
    end
  end
  object ImageList2: TImageList
    Left = 597
    Top = 239
    Bitmap = {
      494C0101030084030C0410001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00EFEFFF00F7FFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00F7F7FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF7FF0029299C00000031000000
      0000000000000000000000000000000000000000000000000000FFFFFF006B6B
      B500000084000808630000000000FFFFFF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF002121B50000008C000000
      000000000000000000000000000000000000FFFFFF00F7F7FF00000084002118
      B50008086B00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00000000000000000000000000FFFFFF006363BD001010DE000000
      2100FFFFFF000000000000000000FFFFFF00EFF7FF0000008C001818C6000000
      2900FFFFFF00000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF000000FF000000FF000000FF000000FF000000FF000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF00000000000000000000000000000000007373A5001010DE000000
      8C0000000000FFFFFF00FFFFFF00F7F7FF0000008C001018C60000002900FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000FF00000000000000FF000000FF000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF00000000000000000000000000FFFFFF00F7FFFF002121AD000808
      DE0000003100FFFFFF00EFF7FF0000008C001018C60000002900FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF0000000000000000000000000000000000FFFFFF006B6BAD000808
      DE001010CE000000310000008C001018C60000002900FFFFFF00000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF000000000000000000000000000000000000000000FFFFFF002121
      A5000808EF000808E7001010D60000002900FFFFFF00FFFFFF00000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF000000000000000000000000000000000000000000FFFFFF006B6B
      BD000808E7000000FF001010D600FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF0000000000000000000000000000000000FFFFFF00EFF7FF000000
      94000000F7000000F7000000F70000008400FFFFFF0000000000000000000000
      00000000000000000000000000000000000000FFFF000000000000FFFF000000
      000000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF00000000000000000000000000FFFFFF00F7F7FF00000094000808
      EF001818C600636BBD001010CE000008EF0000008400FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF000000000000000000000000000808630000009C000808E7002121
      AD00F7F7FF00FFFFFF00EFF7FF002121AD000808E7001010CE0000004200FFFF
      FF000000000000000000FFFFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF00000000000000000000FFFF0000FFFF00000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF000000000000000000000000001010D6001818C6006363BD00F7F7
      FF000000000000000000FFFFFF00FFF7FF006B6BB5001818BD000808DE001010
      CE0000004200FFFFFF000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF000000000000000000000000007373A500F7F7FF00FFFFFF000000
      000000000000000000000000000000000000FFFFFF00F7F7FF006B6BAD000808
      6B002121A50031298C0010104A00FFFFFF00000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD009CADAD009CAD
      AD009CADAD009CADAD009CADAD009CADAD009CADAD009CADAD009CADAD009CAD
      AD009CADAD000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000FFFFFF00FFFF
      FF00F7F7FF00F7F7FF00FFFFFF00000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF15B3FC3F0000FFFF1FC2E00F0000
      FFFF1F03C0070000A007060780030000BFF7880F80010000BFF7000F00010000
      BFF7803F00000000BFF7C03F00000000BFF7C07F00000000BFF7807F00000000
      BFF7003700010000BFF7000D00010000BFF70C0380010000BFF71F00C0030000
      8007FF41E0070000FFFF7F6EF01F000000000000000000000000000000000000
      000000000000}
  end
  object qryLookTributacoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM TRIBUTACOES'
      'where 0=1')
    SQLConnection = Modulo.SQLConexao
    Left = 113
    Top = 264
    object qryLookTributacoesTRIBUTACOES_CODIGO: TIntegerField
      FieldName = 'TRIBUTACOES_CODIGO'
      Required = True
    end
    object qryLookTributacoesTRIBUTACOES_DESCRICAO: TStringField
      FieldName = 'TRIBUTACOES_DESCRICAO'
      Required = True
      Size = 999
    end
    object qryLookTributacoesTRIBUTACOES_ICMS_ALIQUOTA: TFloatField
      FieldName = 'TRIBUTACOES_ICMS_ALIQUOTA'
    end
    object qryLookTributacoesTRIBUTACOES_ICMS_REDUCAO: TFloatField
      FieldName = 'TRIBUTACOES_ICMS_REDUCAO'
    end
    object qryLookTributacoesTRIBUTACOESICMS_TIPO_TRIBUTACAO: TStringField
      FieldName = 'TRIBUTACOESICMS_TIPO_TRIBUTACAO'
      Size = 999
    end
    object qryLookTributacoesSTICMSA_CODIGO: TIntegerField
      FieldName = 'STICMSA_CODIGO'
    end
    object qryLookTributacoesSTICMSB_CODIGO: TStringField
      FieldName = 'STICMSB_CODIGO'
      Size = 2
    end
    object qryLookTributacoesTRIBUTACOES_IPI_TIPO_TRIBUTACAO: TStringField
      FieldName = 'TRIBUTACOES_IPI_TIPO_TRIBUTACAO'
      Size = 999
    end
    object qryLookTributacoesTRIBUTACOICMS_TIPO_RECOLHIMENTO: TStringField
      FieldName = 'TRIBUTACOICMS_TIPO_RECOLHIMENTO'
      Size = 999
    end
    object qryLookTributacoesSTIPI_CODIGO: TStringField
      FieldName = 'STIPI_CODIGO'
      Size = 2
    end
    object qryLookTributacoesTRIBUTACOES_PIS_ALIQUOTA: TFMTBCDField
      FieldName = 'TRIBUTACOES_PIS_ALIQUOTA'
      Precision = 20
      Size = 2
    end
    object qryLookTributacoesTRIBUTACOES_PIS_ST: TStringField
      FieldName = 'TRIBUTACOES_PIS_ST'
      Size = 2
    end
    object qryLookTributacoesTRIBUTACOES_COFINS_ALIQUOTA: TFloatField
      FieldName = 'TRIBUTACOES_COFINS_ALIQUOTA'
    end
    object qryLookTributacoesTRIBUTACOES_EMPRESA: TIntegerField
      FieldName = 'TRIBUTACOES_EMPRESA'
    end
    object qryLookTributacoesTRIBUTACOES_COFINS_ST: TStringField
      FieldName = 'TRIBUTACOES_COFINS_ST'
      Size = 2
    end
    object qryLookTributacoesTRIBUTACOES_IPI_ALIQUOTA: TFloatField
      FieldName = 'TRIBUTACOES_IPI_ALIQUOTA'
    end
    object qryLookTributacoesTRIBUTACOICMS_TIPO_SUBSTITUICAO: TStringField
      FieldName = 'TRIBUTACOICMS_TIPO_SUBSTITUICAO'
      Size = 999
    end
    object qryLookTributacoesTRIBUTACOES_ICMS_MVA: TFloatField
      FieldName = 'TRIBUTACOES_ICMS_MVA'
    end
    object qryLookTributacoesEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object qryLookTributacoesEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object qryLookTributacoesFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
    end
    object qryLookTributacoesDATA: TDateField
      FieldName = 'DATA'
    end
    object qryLookTributacoesHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object qryLookTributacoesNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
      Size = 60
    end
    object qryLookTributacoesIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
      Size = 60
    end
    object qryLookTributacoesUSER_NOME: TStringField
      FieldName = 'USER_NOME'
      Size = 60
    end
    object qryLookTributacoesNI_COFINS_ALIQUOTA_TIPO: TIntegerField
      FieldName = 'NI_COFINS_ALIQUOTA_TIPO'
    end
    object qryLookTributacoesNI_PIS_ALIQUOTA_TIPO: TIntegerField
      FieldName = 'NI_PIS_ALIQUOTA_TIPO'
    end
    object qryLookTributacoesCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 3
    end
  end
  object Qrytotalitem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT COUNT(N.ni_codigo) AS QTD  FROM NOTA_ITENS N')
    SQLConnection = Modulo.SQLConexao
    Left = 25
    Top = 464
    object QrytotalitemQTD: TIntegerField
      FieldName = 'QTD'
    end
  end
  object QryLookFiliais: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM FILIAIS'
      'ORDER BY FIL_CODIGO')
    SQLConnection = Modulo.SQLConexao
    Left = 353
    Top = 256
  end
  object DslookFiliais: TDataSource
    DataSet = CdsLookFiliais
    Left = 448
    Top = 256
  end
  object QryTotalDesconto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'FIL_CODIGO'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'NOT_CODIGO'
        ParamType = ptInput
        Size = 4
      end>
    SQL.Strings = (
      'SELECT sum(NI.ni_valor_desconto) as total FROM NOTA_ITENS NI'
      'WHERE NI.FIL_CODIGO = :FIL_CODIGO'
      'AND NI.NOT_CODIGO = :NOT_CODIGO')
    SQLConnection = Modulo.SQLConexao
    Left = 224
    Top = 464
    object QryTotalDescontoTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 20
      Size = 2
    end
  end
  object DspLookFiliais: TDataSetProvider
    DataSet = QryLookFiliais
    Left = 384
    Top = 256
  end
  object CdsLookFiliais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspLookFiliais'
    AfterScroll = CdsLookFiliaisAfterScroll
    Left = 416
    Top = 256
    object CdsLookFiliaisFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Required = True
    end
    object CdsLookFiliaisDELETADO: TIntegerField
      FieldName = 'DELETADO'
    end
    object CdsLookFiliaisFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
    object CdsLookFiliaisFIL_NOME: TStringField
      FieldName = 'FIL_NOME'
      Required = True
      Size = 80
    end
    object CdsLookFiliaisFIL_END_ENDERECO: TStringField
      FieldName = 'FIL_END_ENDERECO'
      Size = 70
    end
    object CdsLookFiliaisFIL_END_BAIRRO: TStringField
      FieldName = 'FIL_END_BAIRRO'
      Size = 50
    end
    object CdsLookFiliaisFIL_END_CID_CODIGO: TIntegerField
      FieldName = 'FIL_END_CID_CODIGO'
    end
    object CdsLookFiliaisFIL_END_CID_NOME: TStringField
      FieldName = 'FIL_END_CID_NOME'
      Size = 60
    end
    object CdsLookFiliaisFIL_END_CID_UF: TStringField
      FieldName = 'FIL_END_CID_UF'
      Size = 2
    end
    object CdsLookFiliaisFIL_END_CEP: TStringField
      FieldName = 'FIL_END_CEP'
      Size = 15
    end
    object CdsLookFiliaisFIL_INSCEST: TStringField
      FieldName = 'FIL_INSCEST'
      Size = 30
    end
    object CdsLookFiliaisFIL_EMAIL: TStringField
      FieldName = 'FIL_EMAIL'
      Size = 70
    end
    object CdsLookFiliaisFIL_HOMEPAGE: TStringField
      FieldName = 'FIL_HOMEPAGE'
      Size = 75
    end
    object CdsLookFiliaisFIL_END_COMPLETO: TStringField
      FieldName = 'FIL_END_COMPLETO'
      Size = 350
    end
    object CdsLookFiliaisFIL_FONE: TStringField
      FieldName = 'FIL_FONE'
      Size = 15
    end
    object CdsLookFiliaisFIL_FAX: TStringField
      FieldName = 'FIL_FAX'
      Size = 15
    end
    object CdsLookFiliaisFIL_NOMEFANTASIA: TStringField
      FieldName = 'FIL_NOMEFANTASIA'
      Size = 120
    end
    object CdsLookFiliaisMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object CdsLookFiliaisFIL_OBS: TBlobField
      FieldName = 'FIL_OBS'
    end
    object CdsLookFiliaisEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object CdsLookFiliaisDATA: TDateField
      FieldName = 'DATA'
    end
    object CdsLookFiliaisHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object CdsLookFiliaisUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object CdsLookFiliaisNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object CdsLookFiliaisIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object CdsLookFiliaisEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object CdsLookFiliaisFIL_COMOCOMPROU: TStringField
      FieldName = 'FIL_COMOCOMPROU'
      Size = 200
    end
    object CdsLookFiliaisFIL_ESTAEMPRESAUSAOS: TStringField
      FieldName = 'FIL_ESTAEMPRESAUSAOS'
      Size = 10
    end
    object CdsLookFiliaisFIL_NOMECONTATO: TStringField
      FieldName = 'FIL_NOMECONTATO'
      Size = 200
    end
    object CdsLookFiliaisFIL_SISTEMA: TStringField
      FieldName = 'FIL_SISTEMA'
      Size = 50
    end
    object CdsLookFiliaisFIL_BLOQUEADA: TIntegerField
      FieldName = 'FIL_BLOQUEADA'
    end
    object CdsLookFiliaisFIL_VALORMENSALIDADE: TFloatField
      FieldName = 'FIL_VALORMENSALIDADE'
    end
    object CdsLookFiliaisFIL_DATAVENDMENSALIDADE: TDateField
      FieldName = 'FIL_DATAVENDMENSALIDADE'
    end
    object CdsLookFiliaisFIL_MESCORRENTEPAGO: TIntegerField
      FieldName = 'FIL_MESCORRENTEPAGO'
    end
    object CdsLookFiliaisPERMITIRATUALIZAR: TIntegerField
      FieldName = 'PERMITIRATUALIZAR'
    end
    object CdsLookFiliaisFIL_USER_QTD: TIntegerField
      FieldName = 'FIL_USER_QTD'
    end
    object CdsLookFiliaisFIL_CPF: TStringField
      FieldName = 'FIL_CPF'
      Size = 30
    end
    object CdsLookFiliaisFIL_IDENTIDADE: TStringField
      FieldName = 'FIL_IDENTIDADE'
      Size = 30
    end
    object CdsLookFiliaisQTD_USER: TIntegerField
      FieldName = 'QTD_USER'
    end
    object CdsLookFiliaisDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object CdsLookFiliaisFIL_TIPOCLIENTE: TStringField
      FieldName = 'FIL_TIPOCLIENTE'
    end
    object CdsLookFiliaisEMP_BLOQUEIATUDO: TIntegerField
      FieldName = 'EMP_BLOQUEIATUDO'
    end
    object CdsLookFiliaisFIL_END_COMPLEMENTO: TStringField
      FieldName = 'FIL_END_COMPLEMENTO'
      Size = 999
    end
    object CdsLookFiliaisFIL_END_NUMERO: TStringField
      FieldName = 'FIL_END_NUMERO'
      Size = 999
    end
    object CdsLookFiliaisFIL_END_COD_IBGEUF: TStringField
      FieldName = 'FIL_END_COD_IBGEUF'
      Size = 30
    end
    object CdsLookFiliaisFIL_END_COD_IBGEMUNIC: TStringField
      FieldName = 'FIL_END_COD_IBGEMUNIC'
      Size = 60
    end
    object CdsLookFiliaisFIL_INSMUN: TStringField
      FieldName = 'FIL_INSMUN'
      Size = 30
    end
    object CdsLookFiliaisFIL_CNAE: TStringField
      FieldName = 'FIL_CNAE'
      Size = 30
    end
    object CdsLookFiliaisFIL_INSESTSUBTITUTO: TStringField
      FieldName = 'FIL_INSESTSUBTITUTO'
      Size = 30
    end
    object CdsLookFiliaisFIL_PAIS: TStringField
      FieldName = 'FIL_PAIS'
      Size = 60
    end
    object CdsLookFiliaisFIL_USARANFE: TStringField
      FieldName = 'FIL_USARANFE'
      Size = 3
    end
    object CdsLookFiliaisFIL_CORRETO: TIntegerField
      FieldName = 'FIL_CORRETO'
    end
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Title = 'NF-e Dotcompany 62-3588-6040'
    DocInfo.Subject = 'NF-e Dotcompany 62-3588-6040'
    DocInfo.Creator = 'NF-e Dotcompany 62-3588-6040'
    DocInfo.Producer = 'NF-e Dotcompany 62-3588-6040'
    BufferDocument = True
    DisableHyperlinks = False
    Left = 568
    Top = 296
  end
  object RVDS_NFE: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = RxNotaFiscal
    Left = 432
    Top = 112
  end
  object RVPRJ_NFE: TRvProject
    ProjectFile = 'D:\pen\fontes\oficina ok\RV\RelNfe.rav'
    Left = 464
    Top = 112
    RaveBlobNew = {
      6B190000BC8FDEB2AC02E4405241561A459C00000000075265706F7274320013
      545261766550726F6A6563744D616E616765720B5261766550726F6A65637408
      0D436F6D70696C654E6565646564000546616C73650846756C6C4E616D65060B
      5261766550726F6A6563740A43617465676F7269657308000A506172616D6574
      65727308000650495661727308000B556E697473466163746F72050000000000
      000080FF3F000006094461746156696577310D54526176654461746156696577
      006C050000000D5452617665446174615669657709446174615669657731080D
      436F6D70696C654E6565646564000546616C73650846756C6C4E616D65060944
      61746156696577310E436F6E6E656374696F6E4E616D650608525644535F4E46
      45000F00115452617665496E74656765724669656C6414446174615669657731
      434F445F454D505245534108094669656C644E616D65060B434F445F454D5052
      4553410846756C6C4E616D65060B434F445F454D50524553410453697A650104
      000000115452617665496E74656765724669656C64144461746156696577314E
      4F54415F46495343414C08094669656C644E616D65060B4E4F54415F46495343
      414C0846756C6C4E616D65060B4E4F54415F46495343414C0453697A65010400
      00000E5452617665446174654669656C6415446174615669657731444154415F
      454D495353414F08094669656C644E616D65060C444154415F454D495353414F
      0846756C6C4E616D65060C444154415F454D495353414F0453697A6501040000
      00105452617665537472696E674669656C640E44617461566965773153455249
      4508094669656C644E616D65060553455249450846756C6C4E616D6506055345
      5249450453697A650115000000105452617665537472696E674669656C641344
      61746156696577315354415455535F4E464508094669656C644E616D65060A53
      54415455535F4E46450846756C6C4E616D65060A5354415455535F4E46450453
      697A65010B000000105452617665537472696E674669656C6415446174615669
      65773152415A414F5F534F4349414C08094669656C644E616D65060C52415A41
      4F5F534F4349414C0846756C6C4E616D65060C52415A414F5F534F4349414C04
      53697A650179000000105452617665537472696E674669656C64104461746156
      69657731434E504A43504608094669656C644E616D650607434E504A43504608
      46756C6C4E616D650607434E504A4350460453697A6501100000000F54526176
      65466C6F61744669656C641344617461566965773156414C4F525F4E4F544108
      094669656C644E616D65060A56414C4F525F4E4F54410846756C6C4E616D6506
      0A56414C4F525F4E4F54410453697A650108000000105452617665537472696E
      674669656C640F44617461566965773153544154555308094669656C644E616D
      6506065354415455530846756C6C4E616D6506065354415455530453697A6501
      1A000000105452617665537472696E674669656C640E44617461566965773143
      4841564508094669656C644E616D65060543484156450846756C6C4E616D6506
      0543484156450453697A650133000000115452617665496E7465676572466965
      6C640B446174615669657731535408094669656C644E616D6506025354084675
      6C6C4E616D65060253540453697A650104000000105452617665537472696E67
      4669656C641444617461566965773143414D494E484F5F584D4C08094669656C
      644E616D65060B43414D494E484F5F584D4C0846756C6C4E616D65060B43414D
      494E484F5F584D4C0453697A650180FB000000105452617665537472696E6746
      69656C640E446174615669657731454D41494C08094669656C644E616D650605
      454D41494C0846756C6C4E616D650605454D41494C0453697A650180FB000000
      115452617665496E74656765724669656C6414446174615669657731434F445F
      434C49454E544508094669656C644E616D65060B434F445F434C49454E544508
      46756C6C4E616D65060B434F445F434C49454E54450453697A65010400000011
      5452617665426F6F6C65616E4669656C64104461746156696577314D41524341
      444F08094669656C644E616D6506074D41524341444F0846756C6C4E616D6506
      074D41524341444F0453697A650102000004075265706F72743200381300000C
      72656C61746F72696F6E666501000C72656C61746F72696F6E6665010C72656C
      61746F72696F6E6665000B54526176655265706F7274075265706F727432080D
      436F6D70696C654E6565646564000546616C73650846756C6C4E616D65060752
      65706F7274320946697273745061676500145265706F7274322E72656C61746F
      72696F6E66650A506172616D6574657273080006504956617273080000000094
      12000000095452617665506167650C72656C61746F72696F6E6665080D436F6D
      70696C654E6565646564000546616C73650846756C6C4E616D65060C72656C61
      746F72696F6E66650342696E020109477269644C696E657301050B4772696453
      706163696E670500D0CCCCCCCCCCCCFB3F0B4F7269656E746174696F6E000B70
      6F4C616E64536361706509506170657253697A6501090A506172616D65746572
      7308000650495661727308000001000B5452617665526567696F6E0F44617461
      5669657731526567696F6E08064865696768740500C8CCCCCCCCCCFC0140044C
      6566740500C0CCCCCCCCCCCCFC3F03546F700500C0CCCCCCCCCCCCFC3F055769
      6474680500D0CCCCCCCCCCB402400D436F6C756D6E53706163696E6705000000
      0000000000000000040009545261766542616E64124461746156696577315469
      746C6542616E640806416E63686F7201030942616E645374796C650808507269
      6E744C6F63070C706C426F647948656164657200000E436F6E74726F6C6C6572
      42616E6400114461746156696577314461746142616E64064865696768740500
      E8FFFFFFFFFFFFFD3F0D4D696E4865696768744C656674050000000000000000
      00000D506F736974696F6E56616C756505000000000000000000000001000954
      5261766554657874095469746C65546578740805436F6C6F7202E0FFFFEE0446
      6F6E74080743686172736574010105436F6C6F7202E0FFFFEE044E616D650605
      417269616C055069746368000A66705661726961626C650453697A6501180553
      74796C650700000B466F6E744A7573746966790008706A43656E746572044C65
      667405000000000000000000000454657874061052656C6174F372696F206465
      204E464503546F7005000000000000000000000557696474680500D0CCCCCCCC
      CCB4024000000009545261766542616E640D44617461566965773142616E6408
      06416E63686F7201030942616E645374796C6508085072696E744C6F63070C70
      6C426F647948656164657200085072696E744F63630707706F46697273740970
      6F4E65775061676500000E436F6E74726F6C6C657242616E6400114461746156
      696577314461746142616E64064865696768740500F0EEEEEEEEEEEEFC3F0D4D
      696E4865696768744C65667405000000000000000000000D506F736974696F6E
      56616C756505000000000000000000000007000A5452617665484C696E650E44
      6174615669657731484C696E6508064865696768740500000000000000000000
      044C6566740500000000000000000000094C696E655769647468050000000000
      000080FF3F044E455357000546616C736503546F70050028068195438BECFC3F
      0557696474680500383333333333930240000000095452617665546578740554
      657874310805436F6C6F7202E0FFFFEE04466F6E740807436861727365740101
      05436F6C6F7202E0FFFFEE044E616D650605417269616C055069746368000A66
      705661726961626C650453697A65010A055374796C650700000B466F6E744A75
      73746966790006706A4C656674044C6566740500F8B80A0886648BFA3F045465
      787406064E4665204EBA03546F700500D8A3703D0AD7A3F93F05576964746805
      0010EE183951E390FE3F00000009545261766554657874055465787433080543
      6F6C6F7202E0FFFFEE04466F6E74080743686172736574010105436F6C6F7202
      E0FFFFEE044E616D650605417269616C055069746368000A6670566172696162
      6C650453697A65010A055374796C650700000B466F6E744A7573746966790006
      706A4C656674044C6566740500C01B761363F8A1FE3F04546578740607434E50
      4A43504603546F700500C0F5285C8FC2F5F93F0557696474680500E0479C1BBB
      72BCFE3F000000095452617665546578740554657874340805436F6C6F7202E0
      FFFFEE04466F6E74080743686172736574010105436F6C6F7202E0FFFFEE044E
      616D650605417269616C055069746368000A66705661726961626C650453697A
      65010A055374796C650700000B466F6E744A7573746966790006706A4C656674
      044C6566740500486F93EE32A6ECFF3F0454657874060C52415A414F5F534F43
      49414C03546F700500C0F5285C8FC2F5F93F05576964746805003889001A6D2B
      AAFF3F000000095452617665546578740554657874350805436F6C6F7202E0FF
      FFEE04466F6E74080743686172736574010105436F6C6F7202E0FFFFEE044E61
      6D650605417269616C055069746368000A66705661726961626C650453697A65
      010A055374796C650700000B466F6E744A7573746966790006706A4C65667404
      4C656674050040E876BA8639D901400454657874060C4461746120456D697373
      E36F03546F700500C0F5285C8FC2F5F93F05576964746805000012E7C6AE1CEF
      FE3F000000095452617665546578740554657874360805436F6C6F7202E0FFFF
      EE04466F6E74080743686172736574010105436F6C6F7202E0FFFFEE044E616D
      650605417269616C055069746368000A66705661726961626C650453697A6501
      0A055374796C650700000B466F6E744A7573746966790006706A4C656674044C
      656674050048972060E9E9B301400454657874060556414C4F5203546F700500
      C0F5285C8FC2F5F93F0557696474680500E023CE8D5D39DEFE3F000000095452
      617665546578740554657874370805436F6C6F7202E0FFFFEE04466F6E740807
      43686172736574010105436F6C6F7202E0FFFFEE044E616D650605417269616C
      055069746368000A66705661726961626C650453697A65010A055374796C6507
      00000B466F6E744A7573746966790006706A4C656674044C65667405009028A7
      DEE17DFC01400454657874060653746174757303546F700500C0F5285C8FC2F5
      F93F0557696474680500000B953C7A28CBFE3F0000000D545261766544617461
      42616E64114461746156696577314461746142616E640806416E63686F720103
      0942616E645374796C650800064865696768740500D0CCCCCCCCCCCCFC3F0D4D
      696E4865696768744C65667405000000000000000000000D506F736974696F6E
      56616C756505000000000000000000000D436F6C756D6E53706163696E670500
      0000000000000000000844617461566965770009446174615669657731000600
      0D54526176654461746154657874094461746154657874310805436F6C6F7202
      E0FFFFEE04466F6E74080743686172736574010105436F6C6F7202E0FFFFEE04
      4E616D650605417269616C055069746368000A66705661726961626C65045369
      7A65010A055374796C650700000B466F6E744A7573746966790006706A4C6566
      74044C6566740500F8B80A0886648BFA3F0454657874060B4E4F54415F464953
      43414C03546F700500000000000000000000055769647468050090AB806048B6
      88FE3F09446174614669656C64060B4E4F54415F46495343414C084461746156
      69657700094461746156696577310000000D5452617665446174615465787409
      4461746154657874330805436F6C6F7202E0FFFFEE04466F6E74080743686172
      736574010105436F6C6F7202E0FFFFEE044E616D650605417269616C05506974
      6368000A66705661726961626C650453697A65010A055374796C650700000B46
      6F6E744A7573746966790006706A4C656674044C6566740500C01B761363F8A1
      FE3F04546578740607434E504A43504603546F70050000000000000000000005
      57696474680500285701C1906C91FF3F09446174614669656C640607434E504A
      43504608446174615669657700094461746156696577310000000D5452617665
      4461746154657874094461746154657874340805436F6C6F7202E0FFFFEE0446
      6F6E74080743686172736574010105436F6C6F7202E0FFFFEE044E616D650605
      417269616C055069746368000A66705661726961626C650453697A65010A0553
      74796C650700000B466F6E744A7573746966790006706A4C656674044C656674
      0500506F93EE32A6ECFF3F0454657874060C52415A414F5F534F4349414C0354
      6F70050000000000000000000005576964746805005807F6B512A5E700400944
      6174614669656C64060C52415A414F5F534F4349414C08446174615669657700
      094461746156696577310000000D545261766544617461546578740944617461
      54657874350805436F6C6F7202E0FFFFEE04466F6E7408074368617273657401
      0105436F6C6F7202E0FFFFEE044E616D650605417269616C055069746368000A
      66705661726961626C650453697A65010A055374796C650700000B466F6E744A
      7573746966790006706A4C656674044C656674050040E876BA8639D901400454
      657874060C444154415F454D495353414F03546F700500000000000000000000
      0557696474680500E096D218673BF4FE3F09446174614669656C64060C444154
      415F454D495353414F0844617461566965770009446174615669657731000000
      0D54526176654461746154657874094461746154657874360805436F6C6F7202
      E0FFFFEE04466F6E74080743686172736574010105436F6C6F7202E0FFFFEE04
      4E616D650605417269616C055069746368000A66705661726961626C65045369
      7A65010A055374796C650700000B466F6E744A7573746966790007706A526967
      6874044C656674050048972060E9E9B301400454657874060A56414C4F525F4E
      4F544103546F700500C0F5285C8FC2F5F93F0557696474680500C0BD6727F7D2
      F7FE3F09446174614669656C64060A56414C4F525F4E4F544108446174615669
      657700094461746156696577310000000D545261766544617461546578740944
      61746154657874370805436F6C6F7202E0FFFFEE04466F6E7408074368617273
      6574010105436F6C6F7202E0FFFFEE044E616D650605417269616C0550697463
      68000A66705661726961626C650453697A65010A055374796C650700000B466F
      6E744A7573746966790006706A4C656674044C65667405009028A7DEE17DFC01
      400454657874060653544154555303546F700500000000000000000000055769
      6474680500B0B87D5170C798FF3F09446174614669656C640606535441545553
      084461746156696577000944617461566965773100000009545261766542616E
      640542616E64310806416E63686F7201030942616E645374796C650808507269
      6E744C6F63070C706C426F647948656164657200085072696E744F6363070770
      6F466972737409706F4E6577506167650000064865696768740500006DA0D306
      3AEDFD3F0D4D696E4865696768744C65667405000000000000000000000D506F
      736974696F6E56616C7565050000000000000000000000050009545261766554
      6578740554657874320805436F6C6F7202E0FFFFEE04466F6E74080743686172
      736574010105436F6C6F7202E0FFFFEE044E616D650605417269616C05506974
      6368000A66705661726961626C650453697A65010A055374796C650700000B46
      6F6E744A7573746966790006706A4C656674044C6566740500F8B80A0886648B
      FA3F045465787406045154443A03546F700500D8A3703D0AD7A3FB3F05576964
      7468050010EE183951E390FE3F00000009545261766554657874055465787438
      0805436F6C6F7202E0FFFFEE04466F6E74080743686172736574010105436F6C
      6F7202E0FFFFEE044E616D650605417269616C055069746368000A6670566172
      6961626C650453697A65010A055374796C650700000B466F6E744A7573746966
      790006706A4C656674044C6566740500F8B80A0886648BFA3F04546578740606
      56414C4F523A03546F700500C01E85EB51B89EFD3F055769647468050048AE02
      8221D9A2FE3F0000000D54526176654461746154657874094461746154657874
      320804466F6E74080743686172736574010105436F6C6F720100044E616D6506
      05417269616C0453697A65010C055374796C650700000B466F6E744A75737469
      66790006706A4C656674044C6566740500808266666666A6FE3F045465787406
      09506172616D2E51544403546F70050000BF58F28B25BFFA3F05576964746805
      00580AD7A3703DAAFF3F09446174614669656C640609506172616D2E51544400
      00000D54526176654461746154657874094461746154657874380804466F6E74
      080743686172736574010105436F6C6F720100044E616D650605417269616C04
      53697A65010C055374796C650700000B466F6E744A7573746966790006706A4C
      656674044C6566740500808266666666A6FE3F0454657874060B506172616D2E
      544F54414C03546F700500A80D74DA40A78DFD3F0557696474680500580AD7A3
      703DAAFF3F09446174614669656C64060B506172616D2E544F54414C0000000A
      5452617665484C696E6506484C696E6531080648656967687405000000000000
      00000000044C6566740500000000000000000000094C696E6557696474680500
      00000000000080FF3F044E455357000546616C736503546F7005000860E5D022
      DBF9FA3F05576964746805003833333333339302400000}
  end
  object PopupMenu2: TPopupMenu
    Left = 713
    Top = 141
    object EnviarviaModem1: TMenuItem
      Caption = 'Enviar selecionado para o cliente'
      OnClick = EnviarviaModem1Click
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object EnviarPelaInternet1: TMenuItem
      Caption = 'Enviar lista para o Contador'
      Visible = False
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object impressocompleta1: TMenuItem
      Caption = 'Enviar lista selecionada para contador'
      Visible = False
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 561
    Top = 501
    object FazerbackupXMLdalista1: TMenuItem
      Caption = 'Fazer backup XML da lista'
      OnClick = FazerbackupXMLdalista1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object FazerbackuptodosXML1: TMenuItem
      Caption = 'Fazer backup todos XML'
      Visible = False
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object VerificarAtulizaes1: TMenuItem
      Caption = 'Verificar Atualiza'#231#245'es'
      OnClick = VerificarAtulizaes1Click
    end
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\Arquivos de programas\Borland\Delphi7\Bin\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    OnStatusChange = ACBrNFeStatusChange
    DANFE = IMPRIMENFERAVE1
    Left = 624
    Top = 384
  end
  object qryconshistorico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM HISTORICO_NFE')
    SQLConnection = Modulo.SQLConexao
    Left = 576
    Top = 384
    object qryconshistoricoCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
      Required = True
    end
    object qryconshistoricoNOTA_FISCAL: TIntegerField
      FieldName = 'NOTA_FISCAL'
      Required = True
    end
    object qryconshistoricoSERIE: TStringField
      FieldName = 'SERIE'
      Required = True
      Size = 3
    end
    object qryconshistoricoDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Required = True
    end
    object qryconshistoricoCHAVE: TStringField
      FieldName = 'CHAVE'
      Required = True
      Size = 44
    end
    object qryconshistoricoSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Required = True
    end
    object qryconshistoricoAMBIENTE: TIntegerField
      FieldName = 'AMBIENTE'
    end
    object qryconshistoricoMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object qryconshistoricoRECIBO: TStringField
      FieldName = 'RECIBO'
    end
    object qryconshistoricoSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object qryconshistoricoSERVIDOR: TStringField
      FieldName = 'SERVIDOR'
      Size = 100
    end
    object qryconshistoricoPROTOCOLO: TStringField
      FieldName = 'PROTOCOLO'
    end
    object qryconshistoricoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object qryconshistoricoCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 250
    end
    object qryconshistoricoFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
    end
    object qryconshistoricoEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object qryconshistoricoDATA: TDateField
      FieldName = 'DATA'
    end
    object qryconshistoricoHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object qryconshistoricoUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object qryconshistoricoNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object qryconshistoricoIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object qryconshistoricoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object qryconshistoricoFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
  end
  object RxNotaFiscal: TJvMemoryData
    FieldDefs = <
      item
        Name = 'COD_EMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'NOTA_FISCAL'
        DataType = ftInteger
      end
      item
        Name = 'DATA_EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'SERIE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'STATUS_NFE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RAZAO_SOCIAL'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'CNPJCPF'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'VALOR_NOTA'
        DataType = ftFloat
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'CHAVE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ST'
        DataType = ftInteger
      end
      item
        Name = 'CAMINHO_XML'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'COD_CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'MARCADO'
        DataType = ftBoolean
      end
      item
        Name = 'CLI_RAZAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CLI_CPFCNPJ'
        DataType = ftString
        Size = 20
      end>
    Left = 400
    Top = 113
    object RxNotaFiscalCOD_EMPRESA: TIntegerField
      FieldName = 'COD_EMPRESA'
    end
    object RxNotaFiscalNOTA_FISCAL: TIntegerField
      FieldName = 'NOTA_FISCAL'
    end
    object RxNotaFiscalDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object RxNotaFiscalSERIE: TStringField
      FieldName = 'SERIE'
    end
    object RxNotaFiscalSTATUS_NFE: TStringField
      FieldName = 'STATUS_NFE'
      Size = 10
    end
    object RxNotaFiscalRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 120
    end
    object RxNotaFiscalCNPJCPF: TStringField
      DisplayWidth = 25
      FieldName = 'CNPJCPF'
      Size = 30
    end
    object RxNotaFiscalVALOR_NOTA: TFloatField
      FieldName = 'VALOR_NOTA'
      DisplayFormat = '###,##0.00'
    end
    object RxNotaFiscalSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 25
    end
    object RxNotaFiscalCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 50
    end
    object RxNotaFiscalST: TIntegerField
      FieldName = 'ST'
    end
    object RxNotaFiscalCAMINHO_XML: TStringField
      DisplayWidth = 900
      FieldName = 'CAMINHO_XML'
      Size = 250
    end
    object RxNotaFiscalEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 250
    end
    object RxNotaFiscalCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object RxNotaFiscalMARCADO: TBooleanField
      FieldName = 'MARCADO'
    end
    object RxNotaFiscalCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
    end
    object RxNotaFiscalCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
    end
  end
  object QryConsultaNota: TSQLQuery
    OnCalcFields = QryConsultaNotaCalcFields
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      
        'SELECT N.cli_codigo,n.NOT_NUMERONFE,n.NOT_SERIE,n.data,n.NOT_TOT' +
        'NOTA,n.NT_VALORTOTALSERVICO,'
      
        'n.NOT_STATUS_NFE,C.cli_razao,C.cli_email,C.CLI_CPFCNPJ,n.NOT_DAT' +
        'AEMISSAO '
      'FROM NOTA N'
      'inner join clientes C on N.cli_codigo = C.cli_codigo'
      ''
      '                                           ')
    SQLConnection = Modulo.SQLConexao
    Left = 368
    Top = 112
    object QryConsultaNotaCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object QryConsultaNotaCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 100
    end
    object QryConsultaNotaCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 80
    end
    object QryConsultaNotaCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
      Size = 30
    end
    object QryConsultaNotaNOT_NUMERONFE: TIntegerField
      FieldName = 'NOT_NUMERONFE'
    end
    object QryConsultaNotaNOT_SERIE: TStringField
      FieldName = 'NOT_SERIE'
      Size = 3
    end
    object QryConsultaNotaDATA: TDateField
      FieldName = 'DATA'
    end
    object QryConsultaNotaNOT_TOTNOTA: TFMTBCDField
      FieldName = 'NOT_TOTNOTA'
      Precision = 20
      Size = 2
    end
    object QryConsultaNotaNT_VALORTOTALSERVICO: TFMTBCDField
      FieldName = 'NT_VALORTOTALSERVICO'
      Precision = 20
      Size = 2
    end
    object QryConsultaNotaNOT_STATUS_NFE: TIntegerField
      FieldName = 'NOT_STATUS_NFE'
    end
    object QryConsultaNotaNOT_DATAEMISSAO: TDateField
      FieldName = 'NOT_DATAEMISSAO'
    end
    object QryConsultaNotaCAMINHO_XML: TStringField
      FieldKind = fkCalculated
      FieldName = 'CAMINHO_XML'
      Size = 500
      Calculated = True
    end
    object QryConsultaNotaCAMINHO_PDF: TStringField
      FieldKind = fkCalculated
      FieldName = 'CAMINHO_PDF'
      Size = 500
      Calculated = True
    end
  end
  object dsRxNotaFiscal: TDataSource
    DataSet = RxNotaFiscal
    Left = 496
    Top = 112
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      '')
    SQLConnection = Modulo.SQLConexao
    Left = 129
    Top = 424
    object SQLQuery1FIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
    end
    object SQLQuery1CLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object SQLQuery1CLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
      Size = 30
    end
    object SQLQuery1CLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 100
    end
    object SQLQuery1CLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 80
    end
    object SQLQuery1CLI_CONTATOEMAIL: TStringField
      FieldName = 'CLI_CONTATOEMAIL'
      Size = 55
    end
  end
  object QryCliEmail: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CLIENTES'
      '')
    SQLConnection = Modulo.SQLConexao
    Left = 177
    Top = 264
    object QryCliEmailFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
    end
    object QryCliEmailCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object QryCliEmailCLI_CPFCNPJ: TStringField
      FieldName = 'CLI_CPFCNPJ'
      Size = 30
    end
    object QryCliEmailCLI_RAZAO: TStringField
      FieldName = 'CLI_RAZAO'
      Size = 100
    end
    object QryCliEmailCLI_EMAIL: TStringField
      FieldName = 'CLI_EMAIL'
      Size = 80
    end
    object QryCliEmailCLI_CONTATOEMAIL: TStringField
      FieldName = 'CLI_CONTATOEMAIL'
      Size = 55
    end
  end
  object IMPRIMENFERAVE1: TACBrNFeDANFERave
    ACBrNFe = ACBrNFe
    PathPDF = 'C:\Arquivos de programas\Borland\Delphi7\Bin\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimirDescPorc = False
    ImprimirTotalLiquido = False
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    LocalImpCanhoto = 0
    EspessuraBorda = 1
    TamanhoFonte_RazaoSocial = 12
    TamanhoFonte_ANTT = 10
    TributosPercentual = ptValorProdutos
    Left = 707
    Top = 258
  end
  object cdsCartaCorrecao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DtsCartaCorrecao'
    Left = 416
    Top = 224
    object cdsCartaCorrecaoFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Required = True
    end
    object cdsCartaCorrecaoNOT_CODIGO: TIntegerField
      FieldName = 'NOT_CODIGO'
      Required = True
    end
    object cdsCartaCorrecaoNOT_NR: TIntegerField
      FieldName = 'NOT_NR'
    end
    object cdsCartaCorrecaoNOT_ESPECIE: TStringField
      FieldName = 'NOT_ESPECIE'
      Size = 3
    end
    object cdsCartaCorrecaoNOT_SERIE: TStringField
      FieldName = 'NOT_SERIE'
      Size = 3
    end
    object cdsCartaCorrecaoNOT_DATAEMISSAO: TDateField
      FieldName = 'NOT_DATAEMISSAO'
    end
    object cdsCartaCorrecaoNOT_DATASAIDA: TDateField
      FieldName = 'NOT_DATASAIDA'
    end
    object cdsCartaCorrecaoPED_CODIGO: TStringField
      FieldName = 'PED_CODIGO'
      Size = 10
    end
    object cdsCartaCorrecaoNOT_TOTITENS: TFMTBCDField
      FieldName = 'NOT_TOTITENS'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_TOTNOTA: TFMTBCDField
      FieldName = 'NOT_TOTNOTA'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoTRA_CODIGO: TIntegerField
      FieldName = 'TRA_CODIGO'
    end
    object cdsCartaCorrecaoNOT_CPFCNPJ: TStringField
      FieldName = 'NOT_CPFCNPJ'
      Size = 14
    end
    object cdsCartaCorrecaoNOT_DESCONTO: TFMTBCDField
      FieldName = 'NOT_DESCONTO'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_ACRECIMO: TFMTBCDField
      FieldName = 'NOT_ACRECIMO'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_VALIPI: TFMTBCDField
      FieldName = 'NOT_VALIPI'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_ALIQIPI: TFloatField
      FieldName = 'NOT_ALIQIPI'
    end
    object cdsCartaCorrecaoNOT_BASEIPI: TFMTBCDField
      FieldName = 'NOT_BASEIPI'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoDELETADO: TIntegerField
      FieldName = 'DELETADO'
    end
    object cdsCartaCorrecaoNOT_VALICM: TFMTBCDField
      FieldName = 'NOT_VALICM'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_ALIQICM: TFloatField
      FieldName = 'NOT_ALIQICM'
    end
    object cdsCartaCorrecaoNOT_BASEICM: TFMTBCDField
      FieldName = 'NOT_BASEICM'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_SITUACAO: TStringField
      FieldName = 'NOT_SITUACAO'
      Required = True
      Size = 1
    end
    object cdsCartaCorrecaoNOT_BASESUBS: TFMTBCDField
      FieldName = 'NOT_BASESUBS'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_VALSUBS: TFMTBCDField
      FieldName = 'NOT_VALSUBS'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoFRETE: TIntegerField
      FieldName = 'FRETE'
    end
    object cdsCartaCorrecaoNOT_VALFRETE: TFMTBCDField
      FieldName = 'NOT_VALFRETE'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_VALSEGURO: TFMTBCDField
      FieldName = 'NOT_VALSEGURO'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_DESPACESS: TFMTBCDField
      FieldName = 'NOT_DESPACESS'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
    end
    object cdsCartaCorrecaoNOT_VOLUMES: TIntegerField
      FieldName = 'NOT_VOLUMES'
    end
    object cdsCartaCorrecaoNOT_TIPO_VOLUMES: TStringField
      FieldName = 'NOT_TIPO_VOLUMES'
      Size = 15
    end
    object cdsCartaCorrecaoNOT_ALIQSUBS: TFloatField
      FieldName = 'NOT_ALIQSUBS'
    end
    object cdsCartaCorrecaoCFOP_COF: TStringField
      FieldName = 'CFOP_COF'
      Size = 60
    end
    object cdsCartaCorrecaoNT_VALORISSQN: TFMTBCDField
      FieldName = 'NT_VALORISSQN'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNT_VALORTOTALSERVICO: TFMTBCDField
      FieldName = 'NT_VALORTOTALSERVICO'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_VALISSQN: TFMTBCDField
      FieldName = 'NOT_VALISSQN'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_BASEISSQN: TFMTBCDField
      FieldName = 'NOT_BASEISSQN'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_ALIISSQN: TFloatField
      FieldName = 'NOT_ALIISSQN'
    end
    object cdsCartaCorrecaoNOT_ITENS_DESCONTO: TFMTBCDField
      FieldName = 'NOT_ITENS_DESCONTO'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_ITENSSERVICO_DESCONTO: TFMTBCDField
      FieldName = 'NOT_ITENSSERVICO_DESCONTO'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_ITENS_TOTALPROD: TFMTBCDField
      FieldName = 'NOT_ITENS_TOTALPROD'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_ITENS_SERV_SUBTOTAL: TFMTBCDField
      FieldName = 'NOT_ITENS_SERV_SUBTOTAL'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoOS_CODIGO: TIntegerField
      FieldName = 'OS_CODIGO'
    end
    object cdsCartaCorrecaoMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object cdsCartaCorrecaoNOT_FORMAPGMT: TStringField
      FieldName = 'NOT_FORMAPGMT'
    end
    object cdsCartaCorrecaoNOT_OBSERVACAO: TBlobField
      FieldName = 'NOT_OBSERVACAO'
    end
    object cdsCartaCorrecaoEMP_GRUPO: TIntegerField
      FieldName = 'EMP_GRUPO'
    end
    object cdsCartaCorrecaoDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsCartaCorrecaoHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object cdsCartaCorrecaoUSER_NOME: TStringField
      FieldName = 'USER_NOME'
    end
    object cdsCartaCorrecaoNOMECOMPUTADOR: TStringField
      FieldName = 'NOMECOMPUTADOR'
    end
    object cdsCartaCorrecaoIPDAMAQUINA: TStringField
      FieldName = 'IPDAMAQUINA'
    end
    object cdsCartaCorrecaoEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object cdsCartaCorrecaoNOT_TRANSRAZAO: TStringField
      FieldName = 'NOT_TRANSRAZAO'
      Size = 200
    end
    object cdsCartaCorrecaoNOT_TRANSPLACA: TStringField
      FieldName = 'NOT_TRANSPLACA'
      Size = 15
    end
    object cdsCartaCorrecaoNOT_TRANSCNPJCPF: TStringField
      FieldName = 'NOT_TRANSCNPJCPF'
      Size = 25
    end
    object cdsCartaCorrecaoNOT_TRANSENDERECO: TStringField
      FieldName = 'NOT_TRANSENDERECO'
      Size = 200
    end
    object cdsCartaCorrecaoNOT_TRANSMUNICIPIO: TStringField
      FieldName = 'NOT_TRANSMUNICIPIO'
      Size = 60
    end
    object cdsCartaCorrecaoNOT_TRANSUF2: TStringField
      FieldName = 'NOT_TRANSUF2'
      Size = 6
    end
    object cdsCartaCorrecaoNOT_TRANSQTD: TStringField
      FieldName = 'NOT_TRANSQTD'
      Size = 10
    end
    object cdsCartaCorrecaoNOT_TRANSESPECIE: TStringField
      FieldName = 'NOT_TRANSESPECIE'
      Size = 50
    end
    object cdsCartaCorrecaoNOT_TRANSMARCA: TStringField
      FieldName = 'NOT_TRANSMARCA'
      Size = 50
    end
    object cdsCartaCorrecaoNOT_TRANSNUMERO: TStringField
      FieldName = 'NOT_TRANSNUMERO'
      Size = 30
    end
    object cdsCartaCorrecaoNOT_TRANSPESOBRUTO: TStringField
      FieldName = 'NOT_TRANSPESOBRUTO'
      Size = 10
    end
    object cdsCartaCorrecaoNOT_TRANSPESOLIQUIDO: TStringField
      FieldName = 'NOT_TRANSPESOLIQUIDO'
      Size = 15
    end
    object cdsCartaCorrecaoNOT_TRANSINSCRICAO: TStringField
      FieldName = 'NOT_TRANSINSCRICAO'
      Size = 30
    end
    object cdsCartaCorrecaoNOT_TRANSUF: TStringField
      FieldName = 'NOT_TRANSUF'
      Size = 6
    end
    object cdsCartaCorrecaoDUPLICATA1: TStringField
      FieldName = 'DUPLICATA1'
      Size = 15
    end
    object cdsCartaCorrecaoDUPLICATA2: TStringField
      FieldName = 'DUPLICATA2'
      Size = 15
    end
    object cdsCartaCorrecaoDUPLICATA3: TStringField
      FieldName = 'DUPLICATA3'
      Size = 15
    end
    object cdsCartaCorrecaoDUPLICATA4: TStringField
      FieldName = 'DUPLICATA4'
      Size = 15
    end
    object cdsCartaCorrecaoDUPLICATA5: TStringField
      FieldName = 'DUPLICATA5'
      Size = 15
    end
    object cdsCartaCorrecaoDUPLICATA6: TStringField
      FieldName = 'DUPLICATA6'
      Size = 15
    end
    object cdsCartaCorrecaoVENCIMENTO1: TStringField
      FieldName = 'VENCIMENTO1'
      Size = 15
    end
    object cdsCartaCorrecaoVENCIMENTO2: TStringField
      FieldName = 'VENCIMENTO2'
      Size = 15
    end
    object cdsCartaCorrecaoVENCIMENTO3: TStringField
      FieldName = 'VENCIMENTO3'
      Size = 15
    end
    object cdsCartaCorrecaoVENCIMENTO4: TStringField
      FieldName = 'VENCIMENTO4'
      Size = 15
    end
    object cdsCartaCorrecaoVENCIMENTO5: TStringField
      FieldName = 'VENCIMENTO5'
      Size = 15
    end
    object cdsCartaCorrecaoVENCIMENTO6: TStringField
      FieldName = 'VENCIMENTO6'
      Size = 15
    end
    object cdsCartaCorrecaoVALOR1: TStringField
      FieldName = 'VALOR1'
      Size = 15
    end
    object cdsCartaCorrecaoVALOR2: TStringField
      FieldName = 'VALOR2'
      Size = 15
    end
    object cdsCartaCorrecaoVALOR3: TStringField
      FieldName = 'VALOR3'
      Size = 15
    end
    object cdsCartaCorrecaoVALOR4: TStringField
      FieldName = 'VALOR4'
      Size = 15
    end
    object cdsCartaCorrecaoVALOR5: TStringField
      FieldName = 'VALOR5'
      Size = 15
    end
    object cdsCartaCorrecaoVALOR6: TStringField
      FieldName = 'VALOR6'
      Size = 15
    end
    object cdsCartaCorrecaoBOLETOAUTOMATICO: TIntegerField
      FieldName = 'BOLETOAUTOMATICO'
    end
    object cdsCartaCorrecaoNOT_STATUS: TStringField
      FieldName = 'NOT_STATUS'
      Size = 50
    end
    object cdsCartaCorrecaoNOT_HORASAIDA: TTimeField
      FieldName = 'NOT_HORASAIDA'
    end
    object cdsCartaCorrecaoNOT_ENTRADASAIDA: TIntegerField
      FieldName = 'NOT_ENTRADASAIDA'
    end
    object cdsCartaCorrecaoNOT_OBSCORPOITEM: TStringField
      FieldName = 'NOT_OBSCORPOITEM'
      Size = 999
    end
    object cdsCartaCorrecaoFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
    end
    object cdsCartaCorrecaoNOT_CHAVENFE: TStringField
      FieldName = 'NOT_CHAVENFE'
      Size = 999
    end
    object cdsCartaCorrecaoNOT_CAMINHOXMLNFE: TStringField
      FieldName = 'NOT_CAMINHOXMLNFE'
      Size = 999
    end
    object cdsCartaCorrecaoNOT_LOTE: TIntegerField
      FieldName = 'NOT_LOTE'
    end
    object cdsCartaCorrecaoMEMORESP: TStringField
      FieldName = 'MEMORESP'
      Size = 999
    end
    object cdsCartaCorrecaoWBRESPOSTA: TStringField
      FieldName = 'WBRESPOSTA'
      Size = 999
    end
    object cdsCartaCorrecaoMEMOLOG: TStringField
      FieldName = 'MEMOLOG'
      Size = 999
    end
    object cdsCartaCorrecaoMEMORESPWS: TStringField
      FieldName = 'MEMORESPWS'
      Size = 999
    end
    object cdsCartaCorrecaoMEMODADOS: TStringField
      FieldName = 'MEMODADOS'
      Size = 30
    end
    object cdsCartaCorrecaoNOT_BASEPIS: TFMTBCDField
      FieldName = 'NOT_BASEPIS'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_ALIQPIS: TFloatField
      FieldName = 'NOT_ALIQPIS'
    end
    object cdsCartaCorrecaoNOT_VALPIS: TFMTBCDField
      FieldName = 'NOT_VALPIS'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_BASECOFINS: TFMTBCDField
      FieldName = 'NOT_BASECOFINS'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_ALIQCOFINS: TFloatField
      FieldName = 'NOT_ALIQCOFINS'
    end
    object cdsCartaCorrecaoNOT_VALCOFINS: TFMTBCDField
      FieldName = 'NOT_VALCOFINS'
      Precision = 20
      Size = 2
    end
    object cdsCartaCorrecaoNOT_FORMADEEMISSAO: TStringField
      FieldName = 'NOT_FORMADEEMISSAO'
      Size = 30
    end
    object cdsCartaCorrecaoNOT_FORMAPGMTNFE: TStringField
      FieldName = 'NOT_FORMAPGMTNFE'
      Size = 30
    end
    object cdsCartaCorrecaoNOT_FINALILDADEEMISSAO: TStringField
      FieldName = 'NOT_FINALILDADEEMISSAO'
      Size = 30
    end
    object cdsCartaCorrecaoNOT_TIPOIMPRESSAODANFE: TStringField
      FieldName = 'NOT_TIPOIMPRESSAODANFE'
      Size = 30
    end
    object cdsCartaCorrecaoNOT_CALCULARAUTOMATICO: TIntegerField
      FieldName = 'NOT_CALCULARAUTOMATICO'
    end
    object cdsCartaCorrecaoNOT_TIPO: TStringField
      FieldName = 'NOT_TIPO'
      Size = 30
    end
    object cdsCartaCorrecaoNOT_STATUS_NFE: TIntegerField
      FieldName = 'NOT_STATUS_NFE'
    end
    object cdsCartaCorrecaoNOT_EFCSTATUS: TIntegerField
      FieldName = 'NOT_EFCSTATUS'
    end
    object cdsCartaCorrecaoNOT_NUMERONFE: TIntegerField
      FieldName = 'NOT_NUMERONFE'
    end
    object cdsCartaCorrecaoCFOP_DESCRICAO: TStringField
      FieldName = 'CFOP_DESCRICAO'
      Size = 999
    end
    object cdsCartaCorrecaoNFE_OPTANTESIMPLESNASCIONAL: TStringField
      FieldName = 'NFE_OPTANTESIMPLESNASCIONAL'
      Size = 1
    end
    object cdsCartaCorrecaoNOT_OBSFISCO: TStringField
      FieldName = 'NOT_OBSFISCO'
      Size = 999
    end
    object cdsCartaCorrecaoNOT_NFESTATUSSTRING: TStringField
      FieldName = 'NOT_NFESTATUSSTRING'
      Size = 60
    end
    object cdsCartaCorrecaoNOT_SEQUENCIA_CORRECAO: TIntegerField
      FieldName = 'NOT_SEQUENCIA_CORRECAO'
    end
  end
  object QryCartaCorrecao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from nota')
    SQLConnection = Modulo.SQLConexao
    Left = 352
    Top = 224
  end
  object DtsCartaCorrecao: TDataSetProvider
    DataSet = QryCartaCorrecao
    Left = 384
    Top = 224
  end
end
