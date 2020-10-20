Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUpYr-00052e-Gb
 for barebox@lists.infradead.org; Tue, 20 Oct 2020 11:12:14 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Tue, 20 Oct 2020 13:12:08 +0200
Message-Id: <20201020111208.14216-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] mfd: mc34704: fix register reading
To: barebox@lists.infradead.org

QWNjb3JkaW5nIHRvIHRoZSBkYXRhIHNoZWV0IChNQzM0NzA0IFJldi4gOC4wLCAxMi8yMDE0KSBt
dXN0IGFsd2F5cyBoYXZlCnRoZSBNU0Igc2V0IGluIHRoZSAiU3ViLWFkZHJlc3MiIGJ5dGUgZm9y
IHJlYWRzLgoKVGhpcyBmaXhlcyByZWFkaW5nIG91dCByZWdpc3RlcnMgb24gYSBNQzM0NzA0QUVQ
IGNoaXAuCgpGaXhlczogNTE0Mzg3NzExZjJkICgiaTJjOiBhZGQgZHJpdmVyIGZvciB0aGUgTUMz
NDcwNCBQTUlDIikKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtv
ZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL21mZC9tYzM0NzA0LmMgfCA0ICsrLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZmQvbWMzNDcwNC5jIGIvZHJpdmVycy9tZmQvbWMzNDcwNC5jCmluZGV4
IDRhYTAyYjc0ZmYyMC4uMjkwNzFjNWNjZmNlIDEwMDY0NAotLS0gYS9kcml2ZXJzL21mZC9tYzM0
NzA0LmMKKysrIGIvZHJpdmVycy9tZmQvbWMzNDcwNC5jCkBAIC00Myw3ICs0Myw3IEBAIGludCBt
YzM0NzA0X3JlZ19yZWFkKHN0cnVjdCBtYzM0NzA0ICptYzM0NzA0LCB1OCByZWcsIHU4ICp2YWwp
CiB7CiAJaW50IHJldDsKIAotCXJldCA9IGkyY19yZWFkX3JlZyhtYzM0NzA0LT5jbGllbnQsIHJl
ZywgdmFsLCAxKTsKKwlyZXQgPSBpMmNfcmVhZF9yZWcobWMzNDcwNC0+Y2xpZW50LCAxIDw8IDcg
fCByZWcsIHZhbCwgMSk7CiAKIAlyZXR1cm4gcmV0ID09IDEgPyAwIDogcmV0OwogfQpAQCAtMTEy
LDcgKzExMiw3IEBAIHN0YXRpYyBpbnQgbWMzNDcwNF9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRl
dikKIAltYzM0NzA0X2RldiA9IHh6YWxsb2Moc2l6ZW9mKHN0cnVjdCBtYzM0NzA0KSk7CiAJbWMz
NDcwNF9kZXYtPmNkZXYubmFtZSA9IERSSVZFUk5BTUU7CiAJbWMzNDcwNF9kZXYtPmNsaWVudCA9
IHRvX2kyY19jbGllbnQoZGV2KTsKLQltYzM0NzA0X2Rldi0+Y2Rldi5zaXplID0gMjU2OworCW1j
MzQ3MDRfZGV2LT5jZGV2LnNpemUgPSAxMjg7CiAJbWMzNDcwNF9kZXYtPmNkZXYuZGV2ID0gZGV2
OwogCW1jMzQ3MDRfZGV2LT5jZGV2Lm9wcyA9ICZtYzM0NzA0X2ZvcHM7CiAKLS0gCjIuMjguMAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
