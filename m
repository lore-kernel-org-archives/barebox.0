Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZKwa-0000di-Jl
 for barebox@lists.infradead.org; Thu, 24 Oct 2013 13:27:21 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 0F67994035E
 for <barebox@lists.infradead.org>; Thu, 24 Oct 2013 15:26:53 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 24 Oct 2013 15:26:52 +0200
Message-Id: <1382621212-28611-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] bcb: fix compilation
To: barebox@lists.infradead.org

dGhpcyBmaXggOgphcmNoL2FybS9tYWNoLW14cy9iY2IuYzoyNjg6IGVycm9yOiB0b28gZmV3IGFy
Z3VtZW50cyB0byBmdW5jdGlvbiAnY2hpcC0+ZWNjLnJlYWRfcGFnZV9yYXcnCmFyY2gvYXJtL21h
Y2gtbXhzL2JjYi5jOjMwOTogZXJyb3I6IHRvbyBmZXcgYXJndW1lbnRzIHRvIGZ1bmN0aW9uICdj
aGlwLT53cml0ZV9wYWdlJwoKY2F1dGlvbiA6IHRoaXMgaXMgTk9UIHJ1bnRpbWUgdGVzdGVkLgoK
U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1teHMvYmNiLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1teHMvYmNiLmMg
Yi9hcmNoL2FybS9tYWNoLW14cy9iY2IuYwppbmRleCBhZjUxZDI0Li5iNWQ3OTNlIDEwMDY0NAot
LS0gYS9hcmNoL2FybS9tYWNoLW14cy9iY2IuYworKysgYi9hcmNoL2FybS9tYWNoLW14cy9iY2Iu
YwpAQCAtMjY1LDcgKzI2NSw3IEBAIHN0YXRpYyBpbnQgZmluZF9mY2Ioc3RydWN0IG10ZF9pbmZv
ICptdGQsIHZvaWQgKnJlZiwgaW50IHBhZ2UpCiAKIAljaGlwLT5zZWxlY3RfY2hpcChtdGQsIDAp
OwogCWNoaXAtPmNtZGZ1bmMobXRkLCBOQU5EX0NNRF9SRUFEMCwgMHgwMCwgcGFnZSk7Ci0JcmV0
ID0gY2hpcC0+ZWNjLnJlYWRfcGFnZV9yYXcobXRkLCBjaGlwLCBidWYpOworCXJldCA9IGNoaXAt
PmVjYy5yZWFkX3BhZ2VfcmF3KG10ZCwgY2hpcCwgYnVmLCAxLCBwYWdlKTsKIAlpZiAocmV0KSB7
CiAJCXByaW50ZigiRmFpbGVkIHRvIHJlYWQgRkNCIGZyb20gcGFnZSAldTogJWRcbiIsIHBhZ2Us
IHJldCk7CiAJCXJldHVybiByZXQ7CkBAIC0zMDYsNyArMzA2LDcgQEAgc3RhdGljIGludCB3cml0
ZV9mY2Ioc3RydWN0IG10ZF9pbmZvICptdGQsIHZvaWQgKmJ1ZiwgaW50IGJsb2NrKQogCiAJcHJp
bnRmKCJXcml0aW5nIEZDQiB0byBibG9jayAlMDh4XG4iLCBibG9jayk7CiAJY2hpcC0+c2VsZWN0
X2NoaXAobXRkLCAwKTsKLQlyZXQgPSBjaGlwLT53cml0ZV9wYWdlKG10ZCwgY2hpcCwgYnVmLCBw
YWdlLCAwLCAxKTsKKwlyZXQgPSBjaGlwLT53cml0ZV9wYWdlKG10ZCwgY2hpcCwgMCwgbXRkLT5l
cmFzZXNpemUsIGJ1ZiwgMSwgcGFnZSwgMCwgMSk7CiAJaWYgKHJldCkgewogCQlwcmludGYoIkZh
aWxlZCB0byB3cml0ZSBGQ0IgdG8gYmxvY2sgJTA4eDogJWRcbiIsIGJsb2NrLCByZXQpOwogCX0K
LS0gCjEuOC4zLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
