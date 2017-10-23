Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e6YvK-0004md-6A
 for barebox@lists.infradead.org; Mon, 23 Oct 2017 09:21:33 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Date: Mon, 23 Oct 2017 11:21:00 +0200
Message-Id: <20171023092103.10023-1-uwe@kleine-koenig.org>
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
Subject: [PATCH v2 0/3] ARM: i.MX: bbu-internal: new handler to make use of
 mmc boot partitions
To: barebox@lists.infradead.org

SGVsbG8sCgp0aGlzIGlzIHYyIG9mIHRoZSBzZXJpZXMuIEkgZHJvcHBlZCB0aGUgZXJyb3IgbWVz
c2FnZXMgYXMgcmVxdWVzdGVkIGJ5ClNhc2NoYSBhbmQgb25seSB1c2UgdGhlIG5ldyBmdW5jdGlv
biBvbiBhIHNpbmdsZSBib2FyZCBub3cgYXMgdGhlIG90aGVycwpoYXZlIHRoZSBlbnZpcm9ubWVu
dCBpbiBib290MS4gQWxzbyB0aGVyZSBpcyBhIGNvbW1lbnQgbm93IGFib3V0IHdoYXQKdGhlIG5l
dyBoYW5kbGVyIGRvZXMgYW5kIGhvdyBpdCBzaG91bGQgYmUgdXNlZC4KClV3ZSBLbGVpbmUtS8O2
bmlnICgzKToKICBBUk06IGkuTVg6IGJidS1pbnRlcm5hbDogbWFrZSBmaWxlbmFtZSBmb3IgZGV2
aWNlIHRvIHdyaXRlIHRvCiAgICBhZGFwdGFibGUKICBBUk06IGkuTVg6IGJidS1pbnRlcm5hbDog
bmV3IGhhbmRsZXIgdG8gbWFrZSB1c2Ugb2YgbW1jIGJvb3QKICAgIHBhcnRpdGlvbnMKICBBUk06
IGkuTVg6IGJidS1pbnRlcm5hbDogdXBkYXRlIHRxbWE2eCB0byBtYWtlIHVzZSBvZiBuZXcgYmJ1
IGhhbmRsZXIKCiBhcmNoL2FybS9ib2FyZHMvdHFtYTZ4L2JvYXJkLmMgICAgICAgfCAgIDIgKy0K
IGFyY2gvYXJtL21hY2gtaW14L2lteC1iYnUtaW50ZXJuYWwuYyB8IDExMyArKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLQogYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2Ji
dS5oIHwgIDEwICsrKysKIDMgZmlsZXMgY2hhbmdlZCwgMTA3IGluc2VydGlvbnMoKyksIDE4IGRl
bGV0aW9ucygtKQoKLS0gCjIuMTQuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVi
b3gK
