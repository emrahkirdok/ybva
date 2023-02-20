# Katkı Sunma {.unnumbered} {#sec-contrbuting}

Daha tam olarak bir lisans belirlenmese de, *Yaşam Bilimlerinde Veri Analiz* dersi açık kaynaklı bir şekilde herkesin kullanımına sunulacaktır. Dolayısıyla, dileyen herkes bu derse katkı sağlayabilir.

## Hangi konularda katkı sağlayabilirim?

Şu anda benim odağım dersleri hazırlayıp eklemek. Bu yüzden derslerde bulunabilecek imla hatalarını düzeltmeye fazla vakit ayıramıyorum. Bu noktaların belirtilmesi güzel bir katkı olur şu an için.

Öğrencilerim ise derslerde işlediğimiz ve notları hazır olmayan konuları hazırlamaya her zaman gönüllü olabilirler.

## Nasıl katkı sağlarım?

En basit şekilde katkı sağlamak isterseniz, derslerde görüğünüz hataları *Issues* kısmında belirtebilirsiniz. İş yoğunluğuma bağlı olarak en kısa zamanda sorunları çözmeye çalışacağım.

Eğer daha aktif bir şekilde katılım sağlamak isterseniz bu depoyu çatallayabilir (fork) ve yapacağınız katkıları birleştirme isteği (pull request) göndererek benimle paylaşabilirsiniz. Bu noktada bilmeniz gereken bir kaç nokta var:

Bu depoda iki tane dal bulunmaktadır:

+ main: Derslerin `Rmd` kaynak kodlarının bulunduğu dal
+ gh-pages: İnternet sitesinini oluşturan markdown ve derslerin derlenmiş `html` dosyalarının bulunduğu dal

Dersler ile ilgili doğrudan katkılarınızı (genel olarak `Rmd` dökümanları ekleme ya da varolan dökümanları değiştirme) `main` dalında gerçekleştiriniz. Bu dökümanları daha sonra `html` formatında derleyerek `gh-pages` dalına aktaracağım.

Burada iki farklı kelime ile başlayan dosyalar göreceksiniz:

+ metin (bu başlangıca sahip dosyalar, `knitr` ile `html` formatına dönüştürülecek)
+ sunum (bu başlangıca sahip dosyalar, `knitr` ile `ioslides` sunum formatına dönüştürülecek)

Ekleyeceğiniz dökümanın tipi neyse, o başlangıcı kullanırsanız işim biraz daha kolaylaşır.

Dersime gösterdiğiniz ilgi için teşekkürler!
