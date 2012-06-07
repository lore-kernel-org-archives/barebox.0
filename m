Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SccRq-0004G5-Rv
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 13:08:23 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Thu, 07 Jun 2012 15:04:07 +0200
Message-ID: <m3aa0fl1dk.fsf@intrepid.localdomain>
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
Subject: [PATCH] Fix a panic in crypto hash calculations due to uninitialized
 variable.
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEhhxYJhc2EgPGtoY0BwbS53YXcucGw+CgpkaWZmIC0t
Z2l0IGEvY29tbW9uL2RpZ2VzdC5jIGIvY29tbW9uL2RpZ2VzdC5jCmluZGV4IGEzMjczOTUuLmMy
YzQzMWMgMTAwNjQ0Ci0tLSBhL2NvbW1vbi9kaWdlc3QuYworKysgYi9jb21tb24vZGlnZXN0LmMK
QEAgLTg2LDcgKzg2LDcgQEAgaW50IGRpZ2VzdF9maWxlX3dpbmRvdyhzdHJ1Y3QgZGlnZXN0ICpk
LCBjaGFyICpmaWxlbmFtZSwKIAl1bG9uZyBsZW4gPSAwOwogCWludCBmZCwgbm93LCByZXQgPSAw
OwogCXVuc2lnbmVkIGNoYXIgKmJ1ZjsKLQlpbnQgZmxhZ3M7CisJaW50IGZsYWdzID0gMDsKIAog
CWQtPmluaXQoZCk7CiAKCi0tIApLcnp5c3p0b2YgSGFsYXNhCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
