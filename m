Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQyg9-0004JI-89
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:08:21 +0000
Received: by mail-wi0-f169.google.com with SMTP id n3so2611478wiv.4
 for <barebox@lists.infradead.org>; Mon, 08 Sep 2014 06:07:58 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Mon,  8 Sep 2014 15:07:56 +0200
Message-Id: <1410181677-17441-3-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH] pinctrl: at91: fix the pin_to_controller function
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

T3RoZXIgZnVuY3Rpb25zIHVzZSBwaW5fdG9fY29udHJvbGxlciB0byByZXRyaWV2ZSBhIGF0OTFf
Z3Bpb19jaGlwIHN0cnVjdHVyZSwKc28gZml4IHBpbl90b19jb250cm9sbGVyIHRvIHJldHVybiB0
aGUgY29ycmVjdCB2YWx1ZS4KClNpZ25lZC1vZmYtYnk6IFJhcGhhw6tsIFBvZ2dpIDxwb2dnaS5y
YXBoQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1hdDkxLmMgfCA0ICsr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtYXQ5MS5jIGIvZHJpdmVycy9waW5jdHJs
L3BpbmN0cmwtYXQ5MS5jCmluZGV4IGUyMTJmN2EuLjNkYzgxYzcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvcGluY3RybC9waW5jdHJsLWF0OTEuYworKysgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1h
dDkxLmMKQEAgLTcxLDExICs3MSwxMSBAQCBzdGF0aWMgaW50IGdwaW9fYmFua3M7CiAKIHN0YXRp
YyBzdHJ1Y3QgYXQ5MV9ncGlvX2NoaXAgZ3Bpb19jaGlwW01BWF9HUElPX0JBTktTXTsKIAotc3Rh
dGljIGlubGluZSB2b2lkIF9faW9tZW0gKnBpbl90b19jb250cm9sbGVyKHVuc2lnbmVkIHBpbikK
K3N0YXRpYyBpbmxpbmUgc3RydWN0IGF0OTFfZ3Bpb19jaGlwICpwaW5fdG9fY29udHJvbGxlcih1
bnNpZ25lZCBwaW4pCiB7CiAJcGluIC89IE1BWF9OQl9HUElPX1BFUl9CQU5LOwogCWlmIChsaWtl
bHkocGluIDwgZ3Bpb19iYW5rcykpCi0JCXJldHVybiBncGlvX2NoaXBbcGluXS5yZWdiYXNlOwor
CQlyZXR1cm4gJmdwaW9fY2hpcFtwaW5dOwogCiAJcmV0dXJuIE5VTEw7CiB9Ci0tIAoyLjEuMAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
