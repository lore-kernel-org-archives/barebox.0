Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6Tnb-0000oG-NQ
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 21:58:17 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id ACD2CA6152
 for <barebox@lists.infradead.org>; Tue, 28 Aug 2012 23:58:10 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 28 Aug 2012 23:58:08 +0200
Message-Id: <1346191088-12657-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] m25p80: wait for flash before returning after erase
To: barebox@lists.infradead.org

ZWxzZSB3aGVuIHdlIGRvICJlcmFzZSAvZGV2L20yNXAwLnJvb3RmczsgcmVzZXQiLCB0aGUgYm9h
cmQKd2lsbCBuZXZlciByZWJvb3QgYXMgdGhlIGZsYXNoIGlzIGJ1c3kgdG8gZmluaXNoIHRoZSBl
cmFzZQpjb21tYW5kLgoKU2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5j
b20+Ci0tLQogZHJpdmVycy9ub3IvbTI1cDgwLmMgfCAgICA0ICsrKy0KIDEgZmlsZXMgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bm9yL20yNXA4MC5jIGIvZHJpdmVycy9ub3IvbTI1cDgwLmMKaW5kZXggZGFhZjYwYy4uNTcxM2Fk
NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ub3IvbTI1cDgwLmMKKysrIGIvZHJpdmVycy9ub3IvbTI1
cDgwLmMKQEAgLTI1Nyw2ICsyNTcsOSBAQCBzdGF0aWMgc3NpemVfdCBtMjVwODBfZXJhc2Uoc3Ry
dWN0IGNkZXYgKmNkZXYsIHNpemVfdCBjb3VudCwgbG9mZl90IG9mZnNldCkKIAkJfQogCX0KIAor
CWlmICh3YWl0X3RpbGxfcmVhZHkoZmxhc2gpKQorCQlyZXR1cm4gLUVUSU1FRE9VVDsKKwogCXJl
dHVybiAwOwogfQogCkBAIC02ODQsNyArNjg3LDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzcGlf
ZGV2aWNlX2lkICpqZWRlY19wcm9iZShzdHJ1Y3Qgc3BpX2RldmljZSAqc3BpKQogCXJldHVybiBO
VUxMOwogfQogCi0KIHN0YXRpYyBzdHJ1Y3QgZmlsZV9vcGVyYXRpb25zIG0yNXA4MF9vcHMgPSB7
CiAJLnJlYWQgICA9IG0yNXA4MF9yZWFkLAogCS53cml0ZSAgPSBtMjVwODBfd3JpdGUsCi0tIAox
LjcuNy42CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
