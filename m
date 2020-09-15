Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI7Wy-0001uw-51
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 09:45:44 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 15 Sep 2020 11:45:40 +0200
Message-Id: <20200915094540.26840-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] scripts/imx-usb-loader: Drop duplicate definition of ALIGN
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

VGhpcyBmaXhlczoKCglzY3JpcHRzL2lteC9pbXgtdXNiLWxvYWRlci5jOjQyOiB3YXJuaW5nOiAi
QUxJR04iIHJlZGVmaW5lZAoJICNkZWZpbmUgQUxJR04oeCwgYSkgICAgICAgICgoKHgpICsgKGEp
IC0gMSkgJiB+KChhKSAtIDEpKQoKCUluIGZpbGUgaW5jbHVkZWQgZnJvbSBzY3JpcHRzL2lteC9p
bXgtdXNiLWxvYWRlci5jOjM1OgoJc2NyaXB0cy9pbmNsdWRlL2xpbnV4L2tlcm5lbC5oOjEwOiBu
b3RlOiB0aGlzIGlzIHRoZSBsb2NhdGlvbiBvZiB0aGUgcHJldmlvdXMgZGVmaW5pdGlvbgoJICNk
ZWZpbmUgQUxJR04oeCwgYSkgIF9fQUxJR05fTUFTSyh4LCAodHlwZW9mKHgpKShhKSAtIDEpCgpG
aXhlczogYTg3NmQxNmU2YWQzICgic2NyaXB0czogZGVmaW5lIEFMSUdOKHgpIGluIHNjcmlwdHMn
IDxsaW51eC9rZXJuZWwuaD4iKQpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5r
bGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIHNjcmlwdHMvaW14L2lteC11c2ItbG9h
ZGVyLmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9zY3JpcHRzL2lteC9pbXgtdXNiLWxvYWRlci5jIGIvc2NyaXB0cy9pbXgvaW14LXVzYi1sb2Fk
ZXIuYwppbmRleCAyOGYzNDI2MzNkNDMuLmUyNzdkMjkwMzUyZSAxMDA2NDQKLS0tIGEvc2NyaXB0
cy9pbXgvaW14LXVzYi1sb2FkZXIuYworKysgYi9zY3JpcHRzL2lteC9pbXgtdXNiLWxvYWRlci5j
CkBAIC0zOSw4ICszOSw2IEBACiAKICNkZWZpbmUgZ2V0X21pbihhLCBiKSAoKChhKSA8IChiKSkg
PyAoYSkgOiAoYikpCiAKLSNkZWZpbmUgQUxJR04oeCwgYSkgICAgICAgICgoKHgpICsgKGEpIC0g
MSkgJiB+KChhKSAtIDEpKQotCiAjZGVmaW5lIEZUX0FQUAkweGFhCiAjZGVmaW5lIEZUX0NTRgkw
eGNjCiAjZGVmaW5lIEZUX0RDRAkweGVlCi0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
