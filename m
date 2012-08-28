Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T6Ned-0003Nf-J7
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 15:24:37 +0000
Received: from eb-e6520.local.eukrea.com (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 850FE4B0015
 for <barebox@lists.infradead.org>; Tue, 28 Aug 2012 17:24:30 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 28 Aug 2012 17:24:26 +0200
Message-Id: <1346167466-10098-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1346167466-10098-1-git-send-email-eric@eukrea.com>
References: <1346167466-10098-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/2] stringlist: fix division by zero
To: barebox@lists.infradead.org

bGVuIGlzIGNoZWNrZWQgaW5zdGVhZCBvZiBudW0gc28gd2hlbiBudW0gaXMgemVybywgd2UgZ2V0
IGEKZGl2aXNpb24gYnkgemVybyBhIGZldyBsaW5lcyBsYXRlcgoKU2lnbmVkLW9mZi1ieTogRXJp
YyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogbGliL3N0cmluZ2xpc3QuYyB8ICAgIDQg
KystLQogMSBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvbGliL3N0cmluZ2xpc3QuYyBiL2xpYi9zdHJpbmdsaXN0LmMKaW5kZXggYjk2
NWFhMC4uYThhZjE1ZCAxMDA2NDQKLS0tIGEvbGliL3N0cmluZ2xpc3QuYworKysgYi9saWIvc3Ry
aW5nbGlzdC5jCkBAIC04Nyw4ICs4Nyw4IEBAIHZvaWQgc3RyaW5nX2xpc3RfcHJpbnRfYnlfY29s
dW1uKHN0cnVjdCBzdHJpbmdfbGlzdCAqc2wpCiAJCXJldHVybjsKIAogCW51bSA9IDgwIC8gKGxl
biArIDEpOwotCWlmIChsZW4gPT0gMCkKLQkJbGVuID0gMTsKKwlpZiAobnVtID09IDApCisJCW51
bSA9IDE7CiAKIAlpID0gMDsKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KGVudHJ5LCAmc2wtPmxpc3Qs
IGxpc3QpIHsKLS0gCjEuNy43LjYKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94
Cg==
