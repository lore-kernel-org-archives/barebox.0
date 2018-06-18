Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta25.messagelabs.com ([195.245.230.132])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fUqqX-0000Ga-Fp
 for barebox@lists.infradead.org; Mon, 18 Jun 2018 09:53:25 +0000
From: <Heinrich.Toews@wago.com>
Date: Mon, 18 Jun 2018 09:52:56 +0000
Message-ID: <1529315540-10480-1-git-send-email-heinrich.toews@wago.com>
Content-Language: en-US
Content-ID: <9DF0E8BFC972B24690CCB7173DA828EC@WAGO.com>
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
Subject: [PATCH] nand-bb: mtd_del_bb: fix missing pointer reset
To: barebox@lists.infradead.org
Cc: Heinrich.Toews@wago.com

RnJvbTogVMO2d3MsIEhlaW5yaWNoIDxIZWlucmljaC5Ub2V3c0B3YWdvLmNvbT4NCg0KSWYgYW4g
YXR0YWNoZWQgYmIgZGV2aWNlIHdhcyByZW1vdmVkIGJlZm9yZSB0aGUgYWN0dWFsIG10ZCBkZXZp
Y2UNCnRoZSBjb2RlIHdvdWxkIHRyeSBkdWUgdG8gYSBtaXNzaW5nIHBvaW50ZXIgcmVzZXQgdG8g
YWNjZXNzDQp0aGUgbm8gbW9yZSBwcmVzZW50IGJiIGRldmljZSBoYW5kbGUgd2hpY2ggbGVhZHMg
dG8gYSBwYWdlIGZhdWx0Lg0KDQpUaGlzIGJ1ZyB3YXMgbWFkZSB2aXNpYmxlIGJ5IGNvbW1pdCAi
NzY0OTQ3MyBtdGQ6IG5hbmQ6IHJlbW92ZQ0KYXV0b21hdGljYWxseSBjcmVhdGVkIGJiIGRldmlj
ZXMiIHdoaWNoIHJlbHlzIG9uIGEgY29ycmVjdA0KbXRkLT5jZGV2X2JiIGhhbmRsaW5nLg0KLS0t
DQogZHJpdmVycy9tdGQvbmFuZC9uYW5kLWJiLmMgfCAyICsrDQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQvbmFuZC9uYW5kLWJiLmMg
Yi9kcml2ZXJzL210ZC9uYW5kL25hbmQtYmIuYw0KaW5kZXggYzE5NzczOC4uMDEyMTYzZSAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvbXRkL25hbmQvbmFuZC1iYi5jDQorKysgYi9kcml2ZXJzL210ZC9u
YW5kL25hbmQtYmIuYw0KQEAgLTMxNiw2ICszMTYsOCBAQCB2b2lkIG10ZF9kZWxfYmIoc3RydWN0
IG10ZF9pbmZvICptdGQpDQogCWxpc3RfZGVsX2luaXQoJmJiLT5saXN0KTsNCiAJZnJlZShiYi0+
bmFtZSk7DQogCWZyZWUoYmIpOw0KKw0KKwltdGQtPmNkZXZfYmIgPSBOVUxMOw0KIH0NCiANCiAv
KioNCi0tIA0KMi43LjQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
