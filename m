Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wmk0d-0006Pu-Px
 for barebox@lists.infradead.org; Tue, 20 May 2014 13:23:12 +0000
Received: by mail-ee0-f46.google.com with SMTP id t10so590706eei.19
 for <barebox@lists.infradead.org>; Tue, 20 May 2014 06:22:49 -0700 (PDT)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 20 May 2014 15:22:40 +0200
Message-Id: <1400592160-31498-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] i2c: correct string format type
To: barebox@lists.infradead.org

VGhlIHBhcmFtZXRlciBjb3VudCBpcyB1MTYsIG90aGVyd2lzZSB3ZSBnZXQ6Cgpkcml2ZXJzL2ky
Yy9pMmMuYzoxODY6Mjogd2FybmluZzogZm9ybWF0IOKAmCV6deKAmSBleHBlY3RzIGFyZ3VtZW50
IG9mIHR5cGUK4oCYc2l6ZV904oCZLCBidXQgYXJndW1lbnQgNSBoYXMgdHlwZSDigJhpbnTigJkg
Wy1XZm9ybWF0PV0KICBkZXZfZGJnKCZjbGllbnQtPmRldiwgIiVzOiAlenVAJXUgLS0+ICVkXG4i
LCBfX2Z1bmNfXywKClNpZ25lZC1vZmYtYnk6IEFsZXhhbmRlciBBcmluZyA8YWxleC5hcmluZ0Bn
bWFpbC5jb20+Ci0tLQogZHJpdmVycy9pMmMvaTJjLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2kyYy9p
MmMuYyBiL2RyaXZlcnMvaTJjL2kyYy5jCmluZGV4IDk4NzM5NTcuLjU5ZGZmMGIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvaTJjL2kyYy5jCisrKyBiL2RyaXZlcnMvaTJjL2kyYy5jCkBAIC0xODMsNyAr
MTgzLDcgQEAgaW50IGkyY19yZWFkX3JlZyhzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LCB1MzIg
YWRkciwgdTggKmJ1ZiwgdTE2IGNvdW50KQogCW1zZy0+bGVuID0gaTsKIAogCXN0YXR1cyA9IGky
Y190cmFuc2ZlcihjbGllbnQtPmFkYXB0ZXIsIG1zZywgQVJSQVlfU0laRShtc2cpKTsKLQlkZXZf
ZGJnKCZjbGllbnQtPmRldiwgIiVzOiAlenVAJXUgLS0+ICVkXG4iLCBfX2Z1bmNfXywKKwlkZXZf
ZGJnKCZjbGllbnQtPmRldiwgIiVzOiAldUAldSAtLT4gJWRcbiIsIF9fZnVuY19fLAogCQljb3Vu
dCwgYWRkciwgc3RhdHVzKTsKIAogCWlmIChzdGF0dXMgPT0gQVJSQVlfU0laRShtc2cpKQotLSAK
MS45LjMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
