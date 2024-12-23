
  Feature: US1008 Kullanici yanlis bilgilerle giris yapamaz

    Scenario: TC12 kullainici yanlis password ile giris yapamamali

      Given kullanici testotomasyonu anasayfaya gider
      Then account butonuna basar
      And email olarak "toGecerliEmail" girer
      And password olarak "toGecersizPassword" girer
      Then signIn butonuna basar
      And sisteme giris yapamadigini test eder
      And senkronizasyon icin 3 saniye bekler
      And sayfayi kapatir

    Scenario: TC13 kullainici yanlis email ile giris yapamamali

      Given kullanici testotomasyonu anasayfaya gider
      Then account butonuna basar
      And email olarak "toGecersizEmail" girer
      And password olarak "toGecerliPassword" girer
      Then signIn butonuna basar
      And sisteme giris yapamadigini test eder
      And senkronizasyon icin 3 saniye bekler
      And sayfayi kapatir

    Scenario: TC14 kullainici yanlis email ve yanlis password ile giris yapamamali

      Given kullanici testotomasyonu anasayfaya gider
      Then account butonuna basar
      And email olarak "toGecersizEmail" girer
      And password olarak "toGecersizPassword" girer
      Then signIn butonuna basar
      And sisteme giris yapamadigini test eder
      And senkronizasyon icin 3 saniye bekler
      And sayfayi kapatir