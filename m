Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cJ3Sm-00057j-Rn
 for barebox@lists.infradead.org; Mon, 19 Dec 2016 19:19:10 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Mon, 19 Dec 2016 20:18:45 +0100
Message-Id: <20161219191845.17226-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] ata: ide-sff: don't call free for ide_port in error path
To: barebox@lists.infradead.org

VGhlIGlkZV9wb3J0IGlzIHByb3ZpZGVkIGJ5IHRoZSBjYWxsZXIgc28gaXQncyBub3QgaW4gdGhl
IHJlc3BvbnNpYmlsaXR5Cm9mIHRoaXMgZnVuY3Rpb24gdG8gZnJlZSB0aGlzIG1lbW9yeSBpbiBj
YXNlIG9mIGVycm9yLgpBY3R1YWxseSBhbGwgY2FsbGVycyBkbyB0aGUgZnJlZSB0aGVtc2VsdmVz
LCB0b28uCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvYXRhL2lkZS1zZmYuYyB8IDkgKysrKy0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvYXRhL2lkZS1zZmYuYyBiL2RyaXZlcnMvYXRhL2lkZS1zZmYuYwppbmRl
eCBlMzJjYzNmYzI0ZjguLjZkYzg5ZDc5YTU0MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9hdGEvaWRl
LXNmZi5jCisrKyBiL2RyaXZlcnMvYXRhL2lkZS1zZmYuYwpAQCAtMzg5LDExICszODksMTAgQEAg
aW50IGlkZV9wb3J0X3JlZ2lzdGVyKHN0cnVjdCBpZGVfcG9ydCAqaWRlKQogCWlkZS0+cG9ydC5v
cHMgPSAmaWRlX29wczsKIAogCXJldCA9IGF0YV9wb3J0X3JlZ2lzdGVyKCZpZGUtPnBvcnQpOwot
CWlmICghcmV0KQotCQlhdGFfcG9ydF9kZXRlY3QoJmlkZS0+cG9ydCk7Ci0KIAlpZiAocmV0KQot
CQlmcmVlKGlkZSk7CisJCXJldHVybiByZXQ7CisKKwlhdGFfcG9ydF9kZXRlY3QoJmlkZS0+cG9y
dCk7CiAKLQlyZXR1cm4gcmV0OworCXJldHVybiAwOwogfQotLSAKMi4xMS4wCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxp
c3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
