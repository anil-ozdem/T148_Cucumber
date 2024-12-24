
  Feature: TC19 kullanici belirlenen miktarda urun bulabilmeli
    @wip
   Scenario Outline: TC19 Kullanici arattigi urunlerin
                     belirlenen miktar veya daha fazla bulunabildigini test edebilmeli

     Given kullanici test data dosyasinda verilen "toUrl" anasayfaya gider
     When arama kutusuna "<aranacakKelime>" yazip aratir
     Then arama sonucunda "<belirlenenMiktar>" veya daha fazla urun bulunabildigini test eder
     And senkronizasyon icin 1 saniye bekler
     And sayfayi kapatir

     Examples:
     |aranacakKelime|belirlenenMiktar|
     |phone         |3               |
     |dress         |8               |
     |java          |0               |
     |samsung       |2               |
     |baby          |1               |