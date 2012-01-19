Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RnnHX-0003oL-74
 for barebox@lists.infradead.org; Thu, 19 Jan 2012 08:23:41 +0000
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 19 Jan 2012 09:23:14 +0100
Message-Id: <1326961396-19782-3-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1326961396-19782-1-git-send-email-t.gamez@phytec.de>
References: <1326961396-19782-1-git-send-email-t.gamez@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] imx-ipu-fb: Fix offset for IPU Clock.
To: barebox@lists.infradead.org

VGhlIG9mZnNldCBmb3IgdGhlIElQVSBDbG9jayBpbiB0aGUgQ0dSMSByZWdpc3RlciBpcyAxOCBu
b3QgMjIuClNlZSBNQ0lNWDM1Uk0gdGFibGUgMTQtMTcuCgpTaWduZWQtb2ZmLWJ5OiBUZXJlc2Eg
R8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCiBkcml2ZXJzL3ZpZGVvL2lteC1pcHUtZmIu
YyB8ICAgIDIgKy0KIDEgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vaW14LWlwdS1mYi5jIGIvZHJpdmVycy92
aWRlby9pbXgtaXB1LWZiLmMKaW5kZXggYTNmZGI3Ni4uMzg1ZjU3NCAxMDA2NDQKLS0tIGEvZHJp
dmVycy92aWRlby9pbXgtaXB1LWZiLmMKKysrIGIvZHJpdmVycy92aWRlby9pbXgtaXB1LWZiLmMK
QEAgLTczNSw3ICs3MzUsNyBAQCBzdGF0aWMgdm9pZCBpcHVfZmJfZW5hYmxlKHN0cnVjdCBmYl9p
bmZvICppbmZvKQogCiAJLyogU3RhcnQgdGhlIGNsb2NrICovCiAJcmVnID0gcmVhZGwoSU1YX0ND
TV9CQVNFICsgQ0NNX0NHUjEpOwotCXJlZyB8PSAoMyA8PCAyMik7CisJcmVnIHw9ICgzIDw8IDE4
KTsKIAl3cml0ZWwocmVnLCBJTVhfQ0NNX0JBU0UgKyBDQ01fQ0dSMSk7CiAKIAkvKiBpcHVfaWRt
YWMuYzo6aXB1X2lkbWFjX2luaXQoKSAqLwotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
