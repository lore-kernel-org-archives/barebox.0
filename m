Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arcturus.kleine-koenig.org ([78.47.169.190])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yi6x1-0005Wj-GZ
 for barebox@lists.infradead.org; Tue, 14 Apr 2015 19:56:52 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Date: Tue, 14 Apr 2015 21:56:23 +0200
Message-Id: <1429041383-18927-1-git-send-email-uwe@kleine-koenig.org>
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
Subject: [RFC PATCH] pci: Improve handling of constant id_table pointer
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>

RnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4K
ClRoaXMgbWFrZXMgaXQgbW9yZSBvYnZpb3VzIHdoeSB0aGUgY2FzdCBpcyBuZWVkZWQuIFN0aWxs
IGxvb2tzIHVnbHkgdGhvdWdoLgoKU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL3BjaS9idXMuYyB8IDYg
KysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2J1cy5jIGIvZHJpdmVycy9wY2kvYnVzLmMKaW5kZXgg
ODY2YWIwOC4uZmNhNGY1YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9wY2kvYnVzLmMKKysrIGIvZHJp
dmVycy9wY2kvYnVzLmMKQEAgLTI3LDExICsyNywxMSBAQCBzdGF0aWMgaW50IHBjaV9tYXRjaChz
dHJ1Y3QgZGV2aWNlX2QgKmRldiwgc3RydWN0IGRyaXZlcl9kICpkcnYpCiB7CiAJc3RydWN0IHBj
aV9kZXYgKnBkZXYgPSB0b19wY2lfZGV2KGRldik7CiAJc3RydWN0IHBjaV9kcml2ZXIgKnBkcnYg
PSB0b19wY2lfZHJpdmVyKGRydik7Ci0Jc3RydWN0IHBjaV9kZXZpY2VfaWQgKmlkOworCWNvbnN0
IHN0cnVjdCBwY2lfZGV2aWNlX2lkICppZDsKIAotCWZvciAoaWQgPSAoc3RydWN0IHBjaV9kZXZp
Y2VfaWQgKilwZHJ2LT5pZF90YWJsZTsgaWQtPnZlbmRvcjsgaWQrKykKKwlmb3IgKGlkID0gcGRy
di0+aWRfdGFibGU7IGlkLT52ZW5kb3I7IGlkKyspCiAJCWlmIChwY2lfbWF0Y2hfb25lX2Rldmlj
ZShpZCwgcGRldikpIHsKLQkJCWRldi0+cHJpdiA9IGlkOworCQkJZGV2LT5wcml2ID0gKC8qIG5v
bi1jb25zdCAqLyB2b2lkICopaWQ7CiAJCQlyZXR1cm4gMDsKIAkJfQogCi0tIAoyLjEuNAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFp
bGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
