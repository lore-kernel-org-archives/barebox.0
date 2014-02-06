Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBS17-0004gX-6Z
 for barebox@lists.infradead.org; Thu, 06 Feb 2014 16:41:34 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Thu,  6 Feb 2014 17:40:50 +0100
Message-Id: <1391704854-3141-6-git-send-email-u.kleine-koenig@pengutronix.de>
In-Reply-To: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
References: <1391704854-3141-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 5/9] nfs: drop an unneeded variable from nfs_do_open()
To: barebox@lists.infradead.org

V2hpbGUgYXQgaXQgYWxzbyBmaXggdGhlIHR5cGUgb2YgZmxlbiBob2xkaW5nIGEgc3RyaW5nIGxl
bmd0aAooaW50IC0+IHNpemVfdCkuCgpTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8
dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgotLS0KIGZzL25mcy5jIHwgMTggKysrKysr
KystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9mcy9uZnMuYyBiL2ZzL25mcy5jCmluZGV4IGYxNjQzZmVlYmJm
OS4uMzczMTU5ZDZmZmI3IDEwMDY0NAotLS0gYS9mcy9uZnMuYworKysgYi9mcy9uZnMuYwpAQCAt
NjE2LDcgKzYxNiw3IEBAIHN0YXRpYyBzdHJ1Y3QgZmlsZV9wcml2ICpuZnNfZG9fb3BlbihzdHJ1
Y3QgZGV2aWNlX2QgKmRldiwgY29uc3QgY2hhciAqZmlsZW5hbWUpCiAJc3RydWN0IGZpbGVfcHJp
diAqcHJpdjsKIAlzdHJ1Y3QgbmZzX3ByaXYgKm5wcml2ID0gZGV2LT5wcml2OwogCWludCByZXQ7
Ci0JY29uc3QgY2hhciAqZm5hbWUsICp0b2s7CisJY29uc3QgY2hhciAqdG9rOwogCiAJcHJpdiA9
IHh6YWxsb2Moc2l6ZW9mKCpwcml2KSk7CiAKQEAgLTYyOSwyNSArNjI5LDIzIEBAIHN0YXRpYyBz
dHJ1Y3QgZmlsZV9wcml2ICpuZnNfZG9fb3BlbihzdHJ1Y3QgZGV2aWNlX2QgKmRldiwgY29uc3Qg
Y2hhciAqZmlsZW5hbWUpCiAKIAlmaWxlbmFtZSsrOwogCi0JZm5hbWUgPSBmaWxlbmFtZTsKLQog
CW1lbWNweShwcml2LT5maWxlZmgsIG5wcml2LT5yb290ZmgsIE5GU19GSFNJWkUpOwogCi0Jd2hp
bGUgKCpmbmFtZSkgewotCQlpbnQgZmxlbjsKKwl3aGlsZSAoKmZpbGVuYW1lKSB7CisJCXNpemVf
dCBmbGVuOwogCi0JCXRvayA9IHN0cmNocihmbmFtZSwgJy8nKTsKKwkJdG9rID0gc3RyY2hyKGZp
bGVuYW1lLCAnLycpOwogCQlpZiAodG9rKQotCQkJZmxlbiA9IHRvayAtIGZuYW1lOworCQkJZmxl
biA9IHRvayAtIGZpbGVuYW1lOwogCQllbHNlCi0JCQlmbGVuID0gc3RybGVuKGZuYW1lKTsKKwkJ
CWZsZW4gPSBzdHJsZW4oZmlsZW5hbWUpOwogCi0JCXJldCA9IG5mc19sb29rdXBfcmVxKHByaXYs
IGZuYW1lLCBmbGVuKTsKKwkJcmV0ID0gbmZzX2xvb2t1cF9yZXEocHJpdiwgZmlsZW5hbWUsIGZs
ZW4pOwogCQlpZiAocmV0KQogCQkJZ290byBvdXQ7CiAKIAkJaWYgKHRvaykKLQkJCWZuYW1lICs9
IGZsZW4gKyAxOworCQkJZmlsZW5hbWUgKz0gZmxlbiArIDE7CiAJCWVsc2UKIAkJCWJyZWFrOwog
CX0KLS0gCjEuOC41LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
