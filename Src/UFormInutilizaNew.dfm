object FormInutilizaNew: TFormInutilizaNew
  Left = 643
  Top = 283
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Inutilizar Nota Fiscal Eletr'#244'nica'
  ClientHeight = 332
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblTipo: TLabel
    Left = 8
    Top = 47
    Width = 53
    Height = 13
    Caption = 'N'#186'. Inicial'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 108
    Top = 47
    Width = 45
    Height = 13
    Caption = 'N'#186'. Final'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 88
    Width = 69
    Height = 13
    Caption = 'Justificativa'
  end
  object Label3: TLabel
    Left = 187
    Top = 45
    Width = 139
    Height = 13
    Caption = 'Data Emiss'#227'o Nota Fiscal'
  end
  object Label4: TLabel
    Left = 347
    Top = 45
    Width = 29
    Height = 13
    Caption = 'S'#233'rie'
  end
  object MJustificativa: TMemo
    Left = 8
    Top = 104
    Width = 461
    Height = 156
    Hint = 
      'Justificativa de inutiliza'#231#227'o deve conter no m'#237'nimo 15 caractere' +
      's.'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object StBar: TStatusBar
    Left = 0
    Top = 314
    Width = 479
    Height = 18
    Panels = <
      item
        Width = 150
      end>
    ExplicitTop = 318
    ExplicitWidth = 626
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 479
    Height = 38
    Align = alTop
    Alignment = taRightJustify
    Caption = 'Inutilizar Nota Fiscal Eletr'#244'nica    '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object btnInutiliza: TBitBtn
    Left = 8
    Top = 267
    Width = 149
    Height = 40
    Cursor = crHandPoint
    Caption = 'Inutilizar Agora!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnInutilizaClick
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
  object btnCancela: TBitBtn
    Left = 158
    Top = 267
    Width = 150
    Height = 40
    Cursor = crHandPoint
    Caption = '&Cancelar'
    TabOrder = 3
    OnClick = btnCancelaClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000BB010000BB0100000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7B7BB13C3C8A00006B0D
      0D7710107901016C3C3C8A7B7BB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF59599D0E0E7807159E081BB8091BCC0A1CD20A1CC00716A30E0E785959
      9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5959A1020582081AAA0308BE0613BE0A
      15B10F19BC0D1CCE030AD00819B60205825959A1FFFFFFFFFFFFFFFFFF7B7BBD
      0E0E8208179F0000AA0715BF0308800202880808940D0DA2151FBB060EBF0817
      AB0E0E827B7BBDFFFFFFFFFFFF3C3C970511970205960A1BAE0000BC050EC802
      0687000094FFFFFF0B0BA0141BB90206AB05109C3C3C97FFFFFFFFFFFF232392
      05119108129C1416B10814B50000C7040DCB02068A000099FFFFFF0B0BA30C16
      AE05119A232392FFFFFFFFFFFF0B0B8E09128C0B129A0B0BA01214B1141FBE15
      15CB141DC607098A00009D0000A60D13A5040D900B0B8EFFFFFFFFFFFF0B0B92
      3A43AA171E9C0A0A9D0B0BA61516B44A52CE3737CC343AC407098B0000A01015
      9C161E930B0B92FFFFFFFFFFFF23239E373EAF2B31A5040494FFFFFF0B0BA619
      1AB75961CC4646C53A3FB805078622269C363BAC23239EFFFFFFFFFFFF3C3CAA
      252BAB5E60C20A0C910B0B94FFFFFF0B0BAA1819B74E53C15353BE4448B14B4D
      B4262BAA3C3CAAFFFFFFFFFFFF7B7BC90F0F9E5A5DBF5457BF080A9304049A09
      09A60E0EAD1314B9464AB96161C05053B90F0F9E7B7BC9FFFFFFFFFFFFFFFFFF
      5959BF0F11A66D6FC97779D03737B01C1CA52325AE4649BC6F70CB6163C2090A
      A35959BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5959BF0F0FA84748BB7373CC8A
      8AD88B8BD97676CD4242B90F0FA65959BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF7B7BCF3C3CB80202A62424B23131B51111AB3D3DB87B7BCFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object btnFechar: TBitBtn
    Left = 309
    Top = 267
    Width = 160
    Height = 40
    Cursor = crHandPoint
    Caption = '&Sair'
    TabOrder = 4
    OnClick = btnFecharClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D639B196098145D95105A
      920D5890135C920C578F9999997171715454545151514F4F4F4C4C4C4A4A4A47
      474745454525679D3274A83D7CAF4784B54E8ABA3E7EAD0C578FFFFFFFFFFFFF
      585858A2A2A2A2A2A2A3A3A3A4A4A4A4A4A4A5A5A52F6FA578ABD278ABD373A7
      D169A0CD407FAE0F5991FFFFFFFFFFFF5C5C5CA1A1A13C7340A0A1A1A3A3A3A3
      A3A3A4A4A43674AA7DAFD45B9AC95495C75896C84180AE135C94FFFFFFFFFFFF
      606060A0A0A03D7641367139A2A2A2A2A2A2A3A3A33D79B082B3D7629FCC5A9A
      C95E9BCA4381AF19609837823E347E3B3179372E7534499150468F4C39733DA1
      A1A1A2A2A2457EB488B7D967A3CF619ECC639FCC4583B11F649C3B874289CB92
      84C88D80C6887BC38377C17F478F4D3B743FA1A1A14C84BA8DBBDB6EA8D166A6
      D15FB4DF4785B12569A13E8B468FCE997DC68778C38173C07C74C07C79C28149
      904F547F575489BF94BFDD75ADD463B8E14BD4FF428BB82C6EA641904A94D29F
      91D09A8DCD9689CB9284C88D519858417C469F9F9F5A8EC498C3E07CB3D774AF
      D65EC4ED4B88B33473AB44944D42914B3F8D483D89455DA4655AA06145834B9E
      9E9E9E9E9E6092C99EC7E283B8DA7DB4D77EB3D74F89B43B79B1FFFFFFFFFFFF
      7777779A9A9A3D8A45498A4F9C9C9C9D9D9D9D9D9D6696CCA2CBE389BDDC83B9
      DA84B9DA518BB5437EB6FFFFFFFFFFFF7A7A7A999999529159999A999B9B9B9C
      9C9C9C9C9C6C9AD0A7CEE58FC1DF89BDDC8BBDDC538DB64B84BCFFFFFFFFFFFF
      7D7D7D9999999999999A9A9A9A9A9A9B9B9B9B9B9B6F9DD3AAD1E7ABD1E798C7
      E191C2DE568FB75289C1FFFFFFFFFFFF8080807E7E7E7C7C7C7A7A7A77777775
      7575727272719ED46F9ED687B2DCABD3E8A9D0E65890B8598EC6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF709ED66D9C
      D485B1DA5A91B96093CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6D9CD46A9AD26697CF}
  end
  object EDataEmissao: TJvDatePickerEdit
    Left = 187
    Top = 61
    Width = 139
    Height = 21
    AllowNoDate = True
    ButtonWidth = 27
    Checked = True
    TabOrder = 5
  end
  object ENInicial: TJvSpinEdit
    Left = 8
    Top = 61
    Width = 73
    Height = 22
    TabOrder = 7
  end
  object ENFinal: TJvSpinEdit
    Left = 108
    Top = 61
    Width = 73
    Height = 22
    TabOrder = 8
  end
  object edtserie: TEdit
    Left = 345
    Top = 61
    Width = 40
    Height = 25
    TabOrder = 9
  end
  object QryParametrosNFE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM NFECONF '
      '')
    SQLConnection = Modulo.SQLConexao
    Left = 257
    Top = 160
    object QryParametrosNFENFE_CODIGO: TIntegerField
      FieldName = 'NFE_CODIGO'
    end
    object QryParametrosNFENFE_CERTIFICADOCAMINHO: TStringField
      FieldName = 'NFE_CERTIFICADOCAMINHO'
      Size = 250
    end
    object QryParametrosNFENFE_CERTIFICADOSENHA: TStringField
      FieldName = 'NFE_CERTIFICADOSENHA'
      Size = 250
    end
    object QryParametrosNFENFE_CERTIFICADONUMEROSERIE: TStringField
      FieldName = 'NFE_CERTIFICADONUMEROSERIE'
      Size = 250
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
      Size = 250
    end
    object QryParametrosNFENFE_GERALSALVARARQENVRESP: TStringField
      FieldName = 'NFE_GERALSALVARARQENVRESP'
      Size = 250
    end
    object QryParametrosNFENFE_WEBSERVICEUFDESTINO: TStringField
      FieldName = 'NFE_WEBSERVICEUFDESTINO'
      Size = 250
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
      Size = 250
    end
    object QryParametrosNFENFE_PROXYPORTA: TStringField
      FieldName = 'NFE_PROXYPORTA'
      Size = 250
    end
    object QryParametrosNFENFE_PROXYUSUARIO: TStringField
      FieldName = 'NFE_PROXYUSUARIO'
      Size = 250
    end
    object QryParametrosNFENFE_PROXYSENHA: TStringField
      FieldName = 'NFE_PROXYSENHA'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTECNPJ: TStringField
      FieldName = 'NFE_EMITENTECNPJ'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTEINSCESTAD: TStringField
      FieldName = 'NFE_EMITENTEINSCESTAD'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTERAZAO: TStringField
      FieldName = 'NFE_EMITENTERAZAO'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTEFANTASIA: TStringField
      FieldName = 'NFE_EMITENTEFANTASIA'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTEFONE: TStringField
      FieldName = 'NFE_EMITENTEFONE'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTECEP: TStringField
      FieldName = 'NFE_EMITENTECEP'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTELOGRADOURO: TStringField
      FieldName = 'NFE_EMITENTELOGRADOURO'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTENUMERO: TStringField
      FieldName = 'NFE_EMITENTENUMERO'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTECOMPLEMENTO: TStringField
      FieldName = 'NFE_EMITENTECOMPLEMENTO'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTEBAIRRO: TStringField
      FieldName = 'NFE_EMITENTEBAIRRO'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTECODCIDADE: TStringField
      FieldName = 'NFE_EMITENTECODCIDADE'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTECIDADE: TStringField
      FieldName = 'NFE_EMITENTECIDADE'
      Size = 250
    end
    object QryParametrosNFENFE_EMITENTEUF: TStringField
      FieldName = 'NFE_EMITENTEUF'
      Size = 250
    end
    object QryParametrosNFENFE_EMAILSMTP: TStringField
      FieldName = 'NFE_EMAILSMTP'
      Size = 250
    end
    object QryParametrosNFENFE_EMAILPORTA: TStringField
      FieldName = 'NFE_EMAILPORTA'
      Size = 250
    end
    object QryParametrosNFENFE_EMAILUSUARIO: TStringField
      FieldName = 'NFE_EMAILUSUARIO'
      Size = 250
    end
    object QryParametrosNFENFE_EMAILSENHA: TStringField
      FieldName = 'NFE_EMAILSENHA'
      Size = 250
    end
    object QryParametrosNFENFE_EMAILASSUNTO: TStringField
      FieldName = 'NFE_EMAILASSUNTO'
      Size = 250
    end
    object QryParametrosNFENFE_EMAILSMTPSEGURO: TIntegerField
      FieldName = 'NFE_EMAILSMTPSEGURO'
    end
    object QryParametrosNFENFE_EMAILMENSAGEM: TStringField
      FieldName = 'NFE_EMAILMENSAGEM'
      Size = 250
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
  end
end
