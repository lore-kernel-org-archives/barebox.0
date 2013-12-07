Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpEKI-0004qe-PN
 for barebox@lists.infradead.org; Sat, 07 Dec 2013 09:37:32 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 73F0CD480D5
 for <barebox@lists.infradead.org>; Sat,  7 Dec 2013 10:37:02 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Sat,  7 Dec 2013 10:36:54 +0100
Message-Id: <1386409020-11914-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/7] atmel_nand: check gpio validity before using it
To: barebox@lists.infradead.org

ZWxzZSB3ZSBnZXQgOiAiaW52YWxpZCBHUElPIC0yMiIKKGFzIGVuYWJsZV9waW4gaXMgRUlOVkFM
KQoKdGVzdGVkIG9uIFNBTUE1RDM1CgpTaWduZWQtb2ZmLWJ5OiBFcmljIELDqW5hcmQgPGVyaWNA
ZXVrcmVhLmNvbT4KLS0tCiBkcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYyB8IDQgKystLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYyBiL2RyaXZlcnMvbXRkL25hbmQvYXRt
ZWxfbmFuZC5jCmluZGV4IGEwZjA5NjYuLjY1OGFlNTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRk
L25hbmQvYXRtZWxfbmFuZC5jCisrKyBiL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jCkBA
IC0xMDcsNyArMTA3LDcgQEAgc3RhdGljIHN0cnVjdCBuYW5kX2VjY2xheW91dCBhdG1lbF9wbWVj
Y19vb2JpbmZvOwogICovCiBzdGF0aWMgdm9pZCBhdG1lbF9uYW5kX2VuYWJsZShzdHJ1Y3QgYXRt
ZWxfbmFuZF9ob3N0ICpob3N0KQogewotCWlmIChob3N0LT5ib2FyZC0+ZW5hYmxlX3BpbikKKwlp
ZiAoZ3Bpb19pc192YWxpZChob3N0LT5ib2FyZC0+ZW5hYmxlX3BpbikpCiAJCWdwaW9fc2V0X3Zh
bHVlKGhvc3QtPmJvYXJkLT5lbmFibGVfcGluLCAwKTsKIH0KIApAQCAtMTE2LDcgKzExNiw3IEBA
IHN0YXRpYyB2b2lkIGF0bWVsX25hbmRfZW5hYmxlKHN0cnVjdCBhdG1lbF9uYW5kX2hvc3QgKmhv
c3QpCiAgKi8KIHN0YXRpYyB2b2lkIGF0bWVsX25hbmRfZGlzYWJsZShzdHJ1Y3QgYXRtZWxfbmFu
ZF9ob3N0ICpob3N0KQogewotCWlmIChob3N0LT5ib2FyZC0+ZW5hYmxlX3BpbikKKwlpZiAoZ3Bp
b19pc192YWxpZChob3N0LT5ib2FyZC0+ZW5hYmxlX3BpbikpCiAJCWdwaW9fc2V0X3ZhbHVlKGhv
c3QtPmJvYXJkLT5lbmFibGVfcGluLCAxKTsKIH0KIAotLSAKMS44LjMuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0
CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
