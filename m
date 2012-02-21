Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rzda7-0005XI-R9
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 00:27:49 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 687CFA61B0
 for <barebox@lists.infradead.org>; Tue, 21 Feb 2012 01:27:41 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 21 Feb 2012 01:27:33 +0100
Message-Id: <1329784059-6006-1-git-send-email-eric@eukrea.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/7] add i2c clock support
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1pbXgvc3BlZWQtaW14NTMuYyB8ICAgMjYgKysrKysrKysrKysrKysrKysrKysrKysr
KysKIDEgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlteC9zcGVlZC1pbXg1My5jIGIvYXJjaC9hcm0vbWFj
aC1pbXgvc3BlZWQtaW14NTMuYwppbmRleCAwZDZhYzI0Li5hMjM4NWZhIDEwMDY0NAotLS0gYS9h
cmNoL2FybS9tYWNoLWlteC9zcGVlZC1pbXg1My5jCisrKyBiL2FyY2gvYXJtL21hY2gtaW14L3Nw
ZWVkLWlteDUzLmMKQEAgLTE2OSw2ICsxNjksMzEgQEAgdW5zaWduZWQgbG9uZyBpbXhfZ2V0X2Zl
Y2Nsayh2b2lkKQogCXJldHVybiBpbXhfZ2V0X2lwZ2NsaygpOwogfQogCitzdGF0aWMgdW5zaWdu
ZWQgbG9uZyBpbXhfZ2V0X2lwZ19wZXJjbGsodm9pZCkKK3sKKwl1MzIgcmVnOworCisJcmVnID0g
Y2NtX3JlYWRsKE1YNV9DQ01fQ0JDRFIpOworCWlmICghKHJlZyAmIE1YNV9DQ01fQ0JDRFJfUEVS
SVBIX0NMS19TRUwpKQorCQlyZXR1cm4gcGxsMl9zd19nZXRfcmF0ZSgpOworCXJlZyA9IGNjbV9y
ZWFkbChNWDVfQ0NNX0NCQ01SKTsKKwlzd2l0Y2ggKChyZWcgJiBNWDVfQ0NNX0NCQ01SX1BFUklQ
SF9DTEtfU0VMX01BU0spID4+CisJCU1YNV9DQ01fQ0JDTVJfUEVSSVBIX0NMS19TRUxfT0ZGU0VU
KSB7CisJY2FzZSAwOgorCQlyZXR1cm4gcGxsMV9tYWluX2dldF9yYXRlKCk7CisJY2FzZSAxOgor
CQlyZXR1cm4gcGxsM19zd19nZXRfcmF0ZSgpOworCS8qIGNhc2UgMjoKKwkJVE9ETyA6IExQX0FQ
TSAqLworCX0KKwlyZXR1cm4gMDsKK30KKwordW5zaWduZWQgbG9uZyBpbXhfZ2V0X2kyY2Nsayh2
b2lkKQoreworCXJldHVybiBpbXhfZ2V0X2lwZ19wZXJjbGsoKTsKK30KKwogdW5zaWduZWQgbG9u
ZyBpbXhfZ2V0X21tY2Nsayh2b2lkKQogewogCXUzMiByZWcsIHByZWRpdiwgcG9kZiwgcmF0ZTsK
QEAgLTIwMSw0ICsyMjYsNSBAQCB2b2lkIGlteF9kdW1wX2Nsb2Nrcyh2b2lkKQogCXByaW50Zigi
aXBnOiAgJWxkXG4iLCBpbXhfZ2V0X2lwZ2NsaygpKTsKIAlwcmludGYoImZlYzogICVsZFxuIiwg
aW14X2dldF9mZWNjbGsoKSk7CiAJcHJpbnRmKCJncHQ6ICAlbGRcbiIsIGlteF9nZXRfZ3B0Y2xr
KCkpOworCXByaW50ZigiaTJjOiAgJWxkXG4iLCBpbXhfZ2V0X2kyY2NsaygpKTsKIH0KLS0gCjEu
Ny43LjYKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
