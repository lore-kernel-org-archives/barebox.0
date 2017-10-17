Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e4Rjn-0000O4-3i
 for barebox@lists.infradead.org; Tue, 17 Oct 2017 13:16:51 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Tue, 17 Oct 2017 15:16:24 +0200
Message-Id: <20171017131625.23837-2-u.oelmann@pengutronix.de>
In-Reply-To: <20171017131625.23837-1-u.oelmann@pengutronix.de>
References: <20171017131625.23837-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 1/2] commands: i2c: do not restrict i2c_write's data to be
 hex-formatted
To: Barebox List <barebox@lists.infradead.org>

VGhlIHByaWNlIHRvIHBheSBpcyBuZWVkaW5nIHRoZSB1c3VhbCBwcmVmaXggIjB4IiBmb3IgZWFj
aCBoZXgtZm9ybWF0dGVkIG51bWJlci4KClNpZ25lZC1vZmYtYnk6IFVscmljaCDDlmxtYW5uIDx1
Lm9lbG1hbm5AcGVuZ3V0cm9uaXguZGU+Ci0tLQogY29tbWFuZHMvaTJjLmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9j
b21tYW5kcy9pMmMuYyBiL2NvbW1hbmRzL2kyYy5jCmluZGV4IDU3MzAzMmFiMTU4OC4uYjc0YzUz
NTA5ZjM4IDEwMDY0NAotLS0gYS9jb21tYW5kcy9pMmMuYworKysgYi9jb21tYW5kcy9pMmMuYwpA
QCAtMTI5LDcgKzEyOSw3IEBAIHN0YXRpYyBpbnQgZG9faTJjX3dyaXRlKGludCBhcmdjLCBjaGFy
ICphcmd2W10pCiAKIAlidWYgPSB4bWFsbG9jKGNvdW50KTsKIAlmb3IgKGkgPSAwOyBpIDwgY291
bnQ7IGkrKykKLQkJKihidWYgKyBpKSA9IChjaGFyKSBzaW1wbGVfc3RydG9sKGFyZ3Zbb3B0aW5k
K2ldLCBOVUxMLCAxNik7CisJCSooYnVmICsgaSkgPSAoY2hhcikgc2ltcGxlX3N0cnRvbChhcmd2
W29wdGluZCtpXSwgTlVMTCwgMCk7CiAKIAlyZXQgPSBpMmNfd3JpdGVfcmVnKCZjbGllbnQsIHJl
ZyB8IHdpZGUsIGJ1ZiwgY291bnQpOwogCWlmIChyZXQgIT0gY291bnQpIHsKLS0gCjIuMTEuMAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3gg
bWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
