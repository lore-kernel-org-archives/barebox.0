Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XS5vu-0004hW-1e
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 15:05:14 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 32262A0040A
 for <barebox@lists.infradead.org>; Thu, 11 Sep 2014 17:04:50 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 11 Sep 2014 17:04:49 +0200
Message-Id: <1410447889-19648-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] commands: of_dump: Fix return value
To: barebox@lists.infradead.org

SW4gYW4gZXJyb3IgY2FzZSB0aGUgcmV0dXJuIHZhbHVlIGlzIHNldCBuaWNlbHkKYnV0IDAgaXMg
YWx3YXlzIGJlZWluZyByZXR1cm5lZC4KClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQu
Z2FtZXpAcGh5dGVjLmRlPgotLS0KIGNvbW1hbmRzL29mX2R1bXAuYyB8ICAgIDQgKystLQogMSBm
aWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvY29tbWFuZHMvb2ZfZHVtcC5jIGIvY29tbWFuZHMvb2ZfZHVtcC5jCmluZGV4IDEyMjJlYmYu
LjUxM2E0YjggMTAwNjQ0Ci0tLSBhL2NvbW1hbmRzL29mX2R1bXAuYworKysgYi9jb21tYW5kcy9v
Zl9kdW1wLmMKQEAgLTM0LDcgKzM0LDcgQEAKIHN0YXRpYyBpbnQgZG9fb2ZfZHVtcChpbnQgYXJn
YywgY2hhciAqYXJndltdKQogewogCWludCBvcHQ7Ci0JaW50IHJldDsKKwlpbnQgcmV0ID0gMDsK
IAlpbnQgZml4ID0gMDsKIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKnJvb3QgPSBOVUxMLCAqbm9kZSwg
Km9mX2ZyZWUgPSBOVUxMOwogCWNoYXIgKmR0YmZpbGUgPSBOVUxMOwpAQCAtMTE3LDcgKzExNyw3
IEBAIG91dDoKIAlpZiAob2ZfZnJlZSkKIAkJb2ZfZGVsZXRlX25vZGUob2ZfZnJlZSk7CiAKLQly
ZXR1cm4gMDsKKwlyZXR1cm4gcmV0OwogfQogCiBCQVJFQk9YX0NNRF9IRUxQX1NUQVJUKG9mX2R1
bXApCi0tIAoxLjcuMC40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
