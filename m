Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YRHgp-00026i-K6
 for barebox@lists.infradead.org; Fri, 27 Feb 2015 09:58:36 +0000
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 27 Feb 2015 10:56:04 +0100
Message-Id: <1425030964-45167-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] net: cpsw: invalidate complete buffer
To: barebox@lists.infradead.org

V2l0aG91dCBpbnZhbGlkYXRpbmcgdGhlIGNvbXBsZXRlIGJ1ZmZlciBiZWZvcmUgZ2l2aW5nIGl0
IHRvCmRtYV9pbnZfcmFuZ2UsIHdlIGdvdCBzdHJhbmdlIHBhY2tldHMuCgpTaWduZWQtb2ZmLWJ5
OiBKYW4gV2VpdHplbCA8ai53ZWl0emVsQHBoeXRlYy5kZT4KVGVzdGVkLWJ5OiBUZXJlc2EgR8Oh
bWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCiBkcml2ZXJzL25ldC9jcHN3LmMgfCAyICstCiAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC9jcHN3LmMgYi9kcml2ZXJzL25ldC9jcHN3LmMKaW5kZXggNzk5ZmFjOC4u
MzNhZmRjMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9uZXQvY3Bzdy5jCisrKyBiL2RyaXZlcnMvbmV0
L2Nwc3cuYwpAQCAtODg2LDcgKzg4Niw3IEBAIHN0YXRpYyBpbnQgY3Bzd19yZWN2KHN0cnVjdCBl
dGhfZGV2aWNlICplZGV2KQogCWludCBsZW47CiAKIAl3aGlsZSAoY3BkbWFfcHJvY2Vzcyhwcml2
LCAmcHJpdi0+cnhfY2hhbiwgJmJ1ZmZlciwgJmxlbikgPj0gMCkgewotCQlkbWFfaW52X3Jhbmdl
KCh1bG9uZylidWZmZXIsICh1bG9uZylidWZmZXIgKyBsZW4pOworCQlkbWFfaW52X3JhbmdlKCh1
bG9uZylidWZmZXIsICh1bG9uZylidWZmZXIgKyBQS1RTSVpFKTsKIAkJbmV0X3JlY2VpdmUoZWRl
diwgYnVmZmVyLCBsZW4pOwogCQljcGRtYV9zdWJtaXQocHJpdiwgJnByaXYtPnJ4X2NoYW4sIGJ1
ZmZlciwgUEtUU0laRSk7CiAJfQotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9iYXJlYm94Cg==
