Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YG6OW-0007mm-NK
 for barebox@lists.infradead.org; Tue, 27 Jan 2015 13:41:29 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 27 Jan 2015 14:41:01 +0100
Message-Id: <1422366061-26735-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] watchdog: imx: error out on negative timeouts
To: barebox@lists.infradead.org

SSdtIG5vdCBzdXJlIHdoZXJlIGEgbmVnYXRpdmUgdGltZW91dCBjb3VsZCBjb21lIGZyb20gYnV0
IG1ha2luZyB0aGUKY29kZSBtb3JlIHJvYnVzdCBmb3Igbm8gYWRkaXRpb25hbCBydW50aW1lIGNv
c3QgaXMgZ29vZCBuZXZlcnRoZWxlc3MuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5p
ZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvd2F0Y2hkb2cv
aW14d2QuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvd2F0Y2hkb2cvaW14d2QuYyBiL2RyaXZlcnMvd2F0
Y2hkb2cvaW14d2QuYwppbmRleCAzMWMzZDBkODUzNTMuLjY2ZTlmNjg0OGY3NCAxMDA2NDQKLS0t
IGEvZHJpdmVycy93YXRjaGRvZy9pbXh3ZC5jCisrKyBiL2RyaXZlcnMvd2F0Y2hkb2cvaW14d2Qu
YwpAQCAtODcsNyArODcsNyBAQCBzdGF0aWMgaW50IGlteDIxX3dhdGNoZG9nX3NldF90aW1lb3V0
KHN0cnVjdCBpbXhfd2QgKnByaXYsIGludCB0aW1lb3V0KQogCiAJZGV2X2RiZyhwcml2LT5kZXYs
ICIlczogJWRcbiIsIF9fZnVuY19fLCB0aW1lb3V0KTsKIAotCWlmICghdGltZW91dCB8fCB0aW1l
b3V0ID4gMTI4KQorCWlmICh0aW1lb3V0IDw9IDAgfHwgdGltZW91dCA+IDEyOCkKIAkJcmV0dXJu
IC1FSU5WQUw7CiAKIAlpZiAodGltZW91dCA+IDApCi0tIAoyLjEuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK
