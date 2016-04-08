Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aoc3Q-0008Kt-Oe
 for barebox@lists.infradead.org; Fri, 08 Apr 2016 19:26:53 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  8 Apr 2016 21:26:26 +0200
Message-Id: <1460143586-1043-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] pinctrl: mxs: add raw value from device tree to debug output
To: barebox@lists.infradead.org

Tm90IHN1cmUgdGhpcyBpcyBvZiBnZW5lcmFsIGludGVyZXN0LCBidXQgaXQgaGVscGVkIG1lIG1h
dGNoaW5nIHBpbgpjb25maWdzIGZyb20gYSBzdGF0aWMgdGFibGUgdG8gZGV2aWNlIHRyZWUgZW50
cmllcy4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdA
cGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtbXhzLmMgfCA0ICsr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtbXhzLmMgYi9kcml2ZXJzL3BpbmN0cmwv
cGluY3RybC1teHMuYwppbmRleCBlYzBhYWVjNjdmMDYuLmZhMTE3NmZlMWJkNiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtbXhzLmMKKysrIGIvZHJpdmVycy9waW5jdHJsL3Bp
bmN0cmwtbXhzLmMKQEAgLTg5LDggKzg5LDggQEAgc3RhdGljIGludCBteHNfcGluY3RybF9zZXRf
c3RhdGUoc3RydWN0IHBpbmN0cmxfZGV2aWNlICpwZGV2LCBzdHJ1Y3QgZGV2aWNlX25vZGUKIAkJ
d3JpdGVsKDB4MyA8PCBzaGlmdCwgcmVnICsgU1RNUF9PRkZTRVRfUkVHX0NMUik7CiAJCXdyaXRl
bChtdXhzZWwgPDwgc2hpZnQsIHJlZyArIFNUTVBfT0ZGU0VUX1JFR19TRVQpOwogCi0JCWRldl9k
YmcoaW9tdXgtPnBpbmN0cmwuZGV2LCAicGluICVkLCBtdXggJWQsIG1hOiAlZCwgdm9sOiAlZCwg
cHVsbDogJWRcbiIsCi0JCQkJcGluaWQsIG11eHNlbCwgbWEsIHZvbCwgcHVsbCk7CisJCWRldl9k
YmcoaW9tdXgtPnBpbmN0cmwuZGV2LCAiKHZhbDogMHgleCkgcGluICVkLCBtdXggJWQsIG1hOiAl
ZCwgdm9sOiAlZCwgcHVsbDogJWRcbiIsCisJCQkJdmFsLCBwaW5pZCwgbXV4c2VsLCBtYSwgdm9s
LCBwdWxsKTsKIAogCQkvKiBkcml2ZSAqLwogCQlyZWcgPSBpb211eC0+YmFzZSArIDB4MzAwOwot
LSAKMi43LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
