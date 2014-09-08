Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x236.google.com ([2a00:1450:400c:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQz8n-0004zi-BF
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:37:58 +0000
Received: by mail-we0-f182.google.com with SMTP id w62so15037610wes.41
 for <barebox@lists.infradead.org>; Mon, 08 Sep 2014 06:37:35 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Mon,  8 Sep 2014 15:37:38 +0200
Message-Id: <1410183458-19535-2-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1410183458-19535-1-git-send-email-poggi.raph@gmail.com>
References: <1410183458-19535-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v2] pinctrl: at91: add driver data
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

VGhpcyBjb21taXQgYWRkcyB0aGUgZHJpdmVyIGRhdGEgZm9yIHRoZSBncGlvLWF0OTEgZHJpdmVy
LgoKU2lnbmVkLW9mZi1ieTogUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhAZ21haWwuY29tPgot
LS0KIGRyaXZlcnMvcGluY3RybC9waW5jdHJsLWF0OTEuYyB8IDEwICsrKysrKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waW5jdHJs
L3BpbmN0cmwtYXQ5MS5jIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYXQ5MS5jCmluZGV4IGQz
NDIzZDAuLjNjNmIzOGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLWF0OTEu
YworKysgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1hdDkxLmMKQEAgLTYwNiw4ICs2MDYsMTAg
QEAgc3RhdGljIHN0cnVjdCBncGlvX29wcyBhdDkxX2dwaW9fb3BzID0gewogc3RhdGljIHN0cnVj
dCBvZl9kZXZpY2VfaWQgYXQ5MV9ncGlvX2R0X2lkc1tdID0gewogCXsKIAkJLmNvbXBhdGlibGUg
PSAiYXRtZWwsYXQ5MXJtOTIwMC1ncGlvIiwKKwkJLmRhdGEgPSAodW5zaWduZWQgbG9uZykmYXQ5
MXJtOTIwMF9vcHMsCiAJfSwgewogCQkuY29tcGF0aWJsZSA9ICJhdG1lbCxhdDkxc2FtOXg1LWdw
aW8iLAorCQkuZGF0YSA9ICh1bnNpZ25lZCBsb25nKSZhdDkxc2FtOXg1X29wcywKIAl9LCB7CiAJ
CS8qIHNlbnRpbmVsICovCiAJfSwKQEAgLTYyOSw2ICs2MzEsMTIgQEAgc3RhdGljIGludCBhdDkx
X2dwaW9fcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCiAKIAlhdDkxX2dwaW8gPSAmZ3Bpb19j
aGlwW2FsaWFzX2lkeF07CiAKKwlyZXQgPSBkZXZfZ2V0X2RydmRhdGEoZGV2LCAodW5zaWduZWQg
bG9uZyAqKSZhdDkxX2dwaW8tPm9wcyk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgImRl
dl9nZXRfZHJ2ZGF0YSBmYWlsZWQ6ICVkXG4iLCByZXQpOworCQlyZXR1cm4gcmV0OworCX0KKwog
CWNsayA9IGNsa19nZXQoZGV2LCBOVUxMKTsKIAlpZiAoSVNfRVJSKGNsaykpIHsKIAkJcmV0ID0g
UFRSX0VSUihjbGspOwpAQCAtNjY3LDggKzY3NSwxMCBAQCBzdGF0aWMgaW50IGF0OTFfZ3Bpb19w
cm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
X2lkIGF0OTFfZ3Bpb19pZHNbXSA9IHsKIAl7CiAJCS5uYW1lID0gImF0OTFybTkyMDAtZ3BpbyIs
CisJCS5kcml2ZXJfZGF0YSA9ICh1bnNpZ25lZCBsb25nKSZhdDkxcm05MjAwX29wcywKIAl9LCB7
CiAJCS5uYW1lID0gImF0OTFzYW05eDUtZ3BpbyIsCisJCS5kcml2ZXJfZGF0YSA9ICh1bnNpZ25l
ZCBsb25nKSZhdDkxc2FtOXg1X29wcywKIAl9LCB7CiAJCS8qIHNlbnRpbmVsICovCiAJfSwKLS0g
CjIuMS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
YmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
