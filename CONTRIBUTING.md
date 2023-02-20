# Katkı Sunma {.unnumbered} {#sec-contrbuting}

Daha tam olarak bir lisans belirlenmese de, *Yaşam Bilimlerinde Veri Analiz* dersi açık kaynaklı bir şekilde herkesin kullanımına sunulacaktır. Dolayısıyla, dileyen herkes bu derse katkı sağlayabilir.

## Hangi konularda katkı sağlayabilirim?

İki temel konu üzerinde katkı sağlayabilirsiniz:

Şu anda benim odağım dersleri hazırlayıp eklemek. Bu yüzden derslerde bulunabilecek imla hatalarını düzeltmeye fazla vakit ayıramıyorum. Bu noktaların belirtilmesi güzel bir katkı olur şu an için.

Bunun dışında ders materyal hazırlama ekibi olarak da katkıda bulunabilirsiniz. Bazı dersleri, kaynak olmadan doğaçlama bir şekilde anlattığım da oluyor. Bu durumda, anlattığım dersin materyalini hazırlama görevi üstlenebilirsiniz.

## Nasıl katkı sağlarım?

En basit şekilde katkı sağlamak isterseniz, derslerde görüğünüz hataları *Issues* kısmında belirtebilirsiniz. İş yoğunluğuma bağlı olarak en kısa zamanda sorunları çözmeye çalışacağım.

Eğer daha aktif bir şekilde katılım sağlamak isterseniz bu depoyu çatallayabilir (fork) ve yapacağınız katkıları birleştirme isteği (pull request) göndererek benimle paylaşabilirsiniz. Bu noktada bilmeniz gereken bir kaç nokta var:

Bu depoda iki tane dal bulunmaktadır:

+ main: Derslerin kaynak kodlarının bulunduğu dal. Bu dal üzerindeki metinler, `Rmd`, `md`, veya `qmd` formatlarında hazırlanmıştır. Bu dosyaları R üzerinde düzenleyerek katkıda bulunabilirsiniz.
+ gh-pages: İnternet sitesinini oluşturan markdown ve derslerin derlenmiş `html` dosyalarının bulunduğu dal.

Dersler ile ilgili doğrudan katkılarınızı (genel olarak `Rmd` dökümanları ekleme ya da varolan dökümanları değiştirme) `main` dalında gerçekleştiriniz. Bu dökümanları daha sonra otomatik olarak `html` formatına dönüştürülerek, `gh-pages` dalına aktarılacaktır.

Dersime gösterdiğiniz ilgi için teşekkürler!
