Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x229.google.com ([2a00:1450:4013:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WCQoZ-00011N-Jj
 for barebox@lists.infradead.org; Sun, 09 Feb 2014 09:36:40 +0000
Received: by mail-ea0-f169.google.com with SMTP id h10so2416959eak.28
 for <barebox@lists.infradead.org>; Sun, 09 Feb 2014 01:36:14 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun,  9 Feb 2014 10:35:58 +0100
Message-Id: <1391938558-18466-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1391938558-18466-1-git-send-email-alex.aring@gmail.com>
References: <1391938558-18466-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/2] bpkfs: fix compiler warning
To: barebox@lists.infradead.org

Q29ycmVjdCBmb3JtYXRzdHJpbmcgb2Ygc2l6ZV90IGlzICV6dSBvdGhlcndpc2Ugd2UgZ2V0OgoK
ZnMvYnBrZnMuYzogSW4gZnVuY3Rpb24g4oCYYnBrZnNfcHJvYmXigJk6CmZzL2Jwa2ZzLmM6NDQw
OjM6IHdhcm5pbmc6IGZvcm1hdCDigJglZOKAmSBleHBlY3RzIGFyZ3VtZW50IG9mIHR5cGUg4oCY
aW504oCZLApidXQgYXJndW1lbnQgNSBoYXMgdHlwZSDigJhzaXplX3TigJkgWy1XZm9ybWF0PV0K
ICAgZGV2X2RiZyhkZXYsICIlZDogb2Zmc2V0ID0gJWRcbiIsIGksIGQtPm9mZnNldCk7CgpTaWdu
ZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgQXJpbmcgPGFsZXguYXJpbmdAZ21haWwuY29tPgotLS0KIGZz
L2Jwa2ZzLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKCmRpZmYgLS1naXQgYS9mcy9icGtmcy5jIGIvZnMvYnBrZnMuYwppbmRleCBhZTc2ODFh
Li44MzUyMzA3IDEwMDY0NAotLS0gYS9mcy9icGtmcy5jCisrKyBiL2ZzL2Jwa2ZzLmMKQEAgLTQz
Nyw3ICs0MzcsNyBAQCBzdGF0aWMgaW50IGJwa2ZzX3Byb2JlKHN0cnVjdCBkZXZpY2VfZCAqZGV2
KQogCiAJCWRldl9kYmcoZGV2LCAiJWQ6IHR5cGUgPSAweCV4ID0+ICVzXG4iLCBpLCBkLT50eXBl
LCBkLT5uYW1lKTsKIAkJZGV2X2RiZyhkZXYsICIlZDogc2l6ZSA9ICVsbHVcbiIsIGksIGQtPnNp
emUpOwotCQlkZXZfZGJnKGRldiwgIiVkOiBvZmZzZXQgPSAlZFxuIiwgaSwgZC0+b2Zmc2V0KTsK
KwkJZGV2X2RiZyhkZXYsICIlZDogb2Zmc2V0ID0gJXp1XG4iLCBpLCBkLT5vZmZzZXQpOwogCiAJ
CWRldl9kYmcoZGV2LCAiJWQ6IGh3X2lkID0gMHgleCA9PiAlc1xuIiwgaSwgaC0+aHdfaWQsIGgt
Pm5hbWUpOwogCi0tIAoxLjguNS40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJv
eAo=
