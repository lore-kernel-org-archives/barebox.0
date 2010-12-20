Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PUoq6-0004YT-SR
	for barebox@lists.infradead.org; Mon, 20 Dec 2010 23:08:23 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
In-Reply-To: <m362uodqms.fsf@intrepid.localdomain> (Krzysztof Halasa's message
	of "Mon, 20 Dec 2010 23:30:03 +0100")
Date: Tue, 21 Dec 2010 00:08:03 +0100
Message-ID: <m3mxo0cab0.fsf@intrepid.localdomain>
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
Subject: [PATCH 11] Silence few warnings.
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEhhxYJhc2EgPGtoY0BwbS53YXcucGw+CgpkaWZmIC0t
Z2l0IGEvY29tbW9uL3N0YXJ0dXAuYyBiL2NvbW1vbi9zdGFydHVwLmMKaW5kZXggZThjMGU3YS4u
YmU3MDI0NSAxMDA2NDQKLS0tIGEvY29tbW9uL3N0YXJ0dXAuYworKysgYi9jb21tb24vc3RhcnR1
cC5jCkBAIC01Niw3ICs1Niw3IEBAIHN0YXRpYyB2b2lkIGRpc3BsYXlfbWVtaW5mbyh2b2lkKQog
CXByaW50ZigiTWFsbG9jIHNwYWNlOiAweCUwOGx4IC0+IDB4JTA4bHggKHNpemUgJXMpXG4iLAog
CQltc3RhcnQsIG1lbmQsIHNpemVfaHVtYW5fcmVhZGFibGUobXNpemUpKTsKICNpZmRlZiBDT05G
SUdfQVJNCi0JcHJpbnRmKCJTdGFjayBzcGFjZSA6IDB4JTA4bHggLT4gMHglMDhseCAoc2l6ZSAl
cylcbiIsCisJcHJpbnRmKCJTdGFjayBzcGFjZSA6IDB4JTA4eCAtPiAweCUwOHggKHNpemUgJXMp
XG4iLAogCQlTVEFDS19CQVNFLCBTVEFDS19CQVNFICsgU1RBQ0tfU0laRSwKIAkJc2l6ZV9odW1h
bl9yZWFkYWJsZShTVEFDS19TSVpFKSk7CiAjZW5kaWYKZGlmZiAtLWdpdCBhL2xpYi9yZWFkbGlu
ZS5jIGIvbGliL3JlYWRsaW5lLmMKaW5kZXggYjkwZGU3Ny4uYTNlMWRlOSAxMDA2NDQKLS0tIGEv
bGliL3JlYWRsaW5lLmMKKysrIGIvbGliL3JlYWRsaW5lLmMKQEAgLTE0MCw3ICsxNDAsNyBAQCBz
dGF0aWMgY2hhciogaGlzdF9uZXh0KHZvaWQpCiBzdGF0aWMgdm9pZCBjcmVhZF9hZGRfY2hhcihj
aGFyIGljaGFyLCBpbnQgaW5zZXJ0LCB1bnNpZ25lZCBsb25nICpudW0sCiAJICAgICAgIHVuc2ln
bmVkIGxvbmcgKmVvbF9udW0sIGNoYXIgKmJ1ZiwgdW5zaWduZWQgbG9uZyBsZW4pCiB7Ci0JdW5z
aWduZWQgbG9uZyB3bGVuOworCXVuc2lnbmVkIHdsZW47CiAKIAkvKiByb29tID8/PyAqLwogCWlm
IChpbnNlcnQgfHwgKm51bSA9PSAqZW9sX251bSkgewpAQCAtMTc3LDcgKzE3Nyw3IEBAIGludCBy
ZWFkbGluZShjb25zdCBjaGFyICpwcm9tcHQsIGNoYXIgKmJ1ZiwgaW50IGxlbikKIAl1bnNpZ25l
ZCBsb25nIG51bSA9IDA7CiAJdW5zaWduZWQgbG9uZyBlb2xfbnVtID0gMDsKIAl1bnNpZ25lZCBs
b25nIHJsZW47Ci0JdW5zaWduZWQgbG9uZyB3bGVuOworCXVuc2lnbmVkIHdsZW47CiAJaW50IGlj
aGFyOwogCWludCBpbnNlcnQgPSAxOwogCWludCByYyA9IDA7CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
