Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZfVFX-0001Ti-Fv
 for barebox@lists.infradead.org; Fri, 25 Sep 2015 15:49:29 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri, 25 Sep 2015 17:48:49 +0200
Message-Id: <1443196132-573-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1443196132-573-1-git-send-email-eric@eukrea.com>
References: <1443196132-573-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/6] imx25: register usb-misc by default
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1pbXgvaW14MjUuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvaW14MjUuYyBiL2FyY2gvYXJtL21hY2gt
aW14L2lteDI1LmMKaW5kZXggZTg3ZDkzNC4uODc2MWQ2MyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0v
bWFjaC1pbXgvaW14MjUuYworKysgYi9hcmNoL2FybS9tYWNoLWlteC9pbXgyNS5jCkBAIC03NCw2
ICs3NCw3IEBAIGludCBpbXgyNV9kZXZpY2VzX2luaXQodm9pZCkKIAlhZGRfZ2VuZXJpY19kZXZp
Y2UoImlteDMxLWdwaW8iLCAyLCBOVUxMLCBNWDI1X0dQSU8zX0JBU0VfQUREUiwgMHgxMDAwLCBJ
T1JFU09VUkNFX01FTSwgTlVMTCk7CiAJYWRkX2dlbmVyaWNfZGV2aWNlKCJpbXgzMS1ncGlvIiwg
MywgTlVMTCwgTVgyNV9HUElPNF9CQVNFX0FERFIsIDB4MTAwMCwgSU9SRVNPVVJDRV9NRU0sIE5V
TEwpOwogCWFkZF9nZW5lcmljX2RldmljZSgiaW14MjEtd2R0IiwgMCwgTlVMTCwgTVgyNV9XRE9H
X0JBU0VfQUREUiwgMHgxMDAwLCBJT1JFU09VUkNFX01FTSwgTlVMTCk7CisJYWRkX2dlbmVyaWNf
ZGV2aWNlKCJpbXgyNS11c2ItbWlzYyIsIDAsIE5VTEwsIE1YMjVfVVNCX09UR19CQVNFX0FERFIg
KyAweDYwMCwgMHgxMDAsIElPUkVTT1VSQ0VfTUVNLCBOVUxMKTsKIAogCXJldHVybiAwOwogfQot
LSAKMi40LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
