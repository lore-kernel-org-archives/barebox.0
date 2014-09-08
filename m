Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQygA-0004JJ-4i
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:08:22 +0000
Received: by mail-wg0-f43.google.com with SMTP id x12so2249368wgg.14
 for <barebox@lists.infradead.org>; Mon, 08 Sep 2014 06:07:57 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Mon,  8 Sep 2014 15:07:55 +0200
Message-Id: <1410181677-17441-2-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1410181677-17441-1-git-send-email-poggi.raph@gmail.com>
References: <1410181677-17441-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH] pinctrl: at91: add driver data
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

VGhpcyBjb21taXQgYWRkcyB0aGUgZHJpdmVyIGRhdGEgZm9yIHRoZSBncGlvLWF0OTEgZHJpdmVy
LgoKU2lnbmVkLW9mZi1ieTogUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhAZ21haWwuY29tPgot
LS0KIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLWF0OTEuYyB8IDEwICsrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waW5jdHJs
L3BpbmN0cmwtYXQ5MS5jIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYXQ5MS5jCmluZGV4IGQz
NDIzZDAuLjI5ZTU0Y2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLWF0OTEu
YworKysgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1hdDkxLmMKQEAgLTYwNiw4ICs2MDYsMTAg
QEAgc3RhdGljIHN0cnVjdCBncGlvX29wcyBhdDkxX2dwaW9fb3BzID0gewogc3RhdGljIHN0cnVj
dCBvZl9kZXZpY2VfaWQgYXQ5MV9ncGlvX2R0X2lkc1tdID0gewogCXsKIAkJLmNvbXBhdGlibGUg
PSAiYXRtZWwsYXQ5MXJtOTIwMC1ncGlvIiwKKyAgICAgICAgICAgICAgICAuZGF0YSA9ICh1bnNp
Z25lZCBsb25nKSZhdDkxcm05MjAwX29wcywKIAl9LCB7CiAJCS5jb21wYXRpYmxlID0gImF0bWVs
LGF0OTFzYW05eDUtZ3BpbyIsCisJCS5kYXRhID0gKHVuc2lnbmVkIGxvbmcpJmF0OTFzYW05eDVf
b3BzLAogCX0sIHsKIAkJLyogc2VudGluZWwgKi8KIAl9LApAQCAtNjI5LDYgKzYzMSwxMiBAQCBz
dGF0aWMgaW50IGF0OTFfZ3Bpb19wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAogCWF0OTFf
Z3BpbyA9ICZncGlvX2NoaXBbYWxpYXNfaWR4XTsKIAorCXJldCA9IGRldl9nZXRfZHJ2ZGF0YShk
ZXYsICh1bnNpZ25lZCBsb25nICopJmF0OTFfZ3Bpby0+b3BzKTsKKyAgICAgICAgaWYgKHJldCkg
eworICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAiZGV2X2dldF9kcnZkYXRhIGZhaWxlZDog
JWRcbiIsIHJldCk7CisgICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKKyAgICAgICAgfQorCiAJ
Y2xrID0gY2xrX2dldChkZXYsIE5VTEwpOwogCWlmIChJU19FUlIoY2xrKSkgewogCQlyZXQgPSBQ
VFJfRVJSKGNsayk7CkBAIC02NjcsOCArNjc1LDEwIEBAIHN0YXRpYyBpbnQgYXQ5MV9ncGlvX3By
b2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2KQogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Vf
aWQgYXQ5MV9ncGlvX2lkc1tdID0gewogCXsKIAkJLm5hbWUgPSAiYXQ5MXJtOTIwMC1ncGlvIiwK
KyAgICAgICAgICAgICAgICAuZHJpdmVyX2RhdGEgPSAodW5zaWduZWQgbG9uZykmYXQ5MXJtOTIw
MF9vcHMsCiAJfSwgewogCQkubmFtZSA9ICJhdDkxc2FtOXg1LWdwaW8iLAorCQkuZHJpdmVyX2Rh
dGEgPSAodW5zaWduZWQgbG9uZykmYXQ5MXNhbTl4NV9vcHMsCiAJfSwgewogCQkvKiBzZW50aW5l
bCAqLwogCX0sCi0tIAoyLjEuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
