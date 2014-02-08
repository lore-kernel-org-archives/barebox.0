Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WC8m1-0004ml-U7
 for barebox@lists.infradead.org; Sat, 08 Feb 2014 14:20:50 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 3F8B7D4804E
 for <barebox@lists.infradead.org>; Sat,  8 Feb 2014 15:16:24 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Sat,  8 Feb 2014 15:16:07 +0100
Message-Id: <1391868972-31978-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1391868972-31978-1-git-send-email-eric@eukrea.com>
References: <1391868972-31978-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/7] ARM: i.MX53: Add sata to devicetree
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vZHRzL2lteDUzLmR0c2kgfCA5ICsrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9pbXg1My5kdHNpIGIvYXJjaC9hcm0v
ZHRzL2lteDUzLmR0c2kKaW5kZXggNjc4NTQ3Yy4uOTE2NTliOCAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vZHRzL2lteDUzLmR0c2kKKysrIGIvYXJjaC9hcm0vZHRzL2lteDUzLmR0c2kKQEAgLTc1LDYg
Kzc1LDE1IEBACiAJCWludGVycnVwdC1wYXJlbnQgPSA8JnR6aWM+OwogCQlyYW5nZXM7CiAKKwkJ
c2F0YTogc2F0YUAxMDAwMDAwMCB7CisJCQljb21wYXRpYmxlID0gImZzbCxpbXg1My1haGNpIjsK
KwkJCXJlZyA9IDwweDEwMDAwMDAwIDB4MTAwMD47CisJCQlpbnRlcnJ1cHRzID0gPDI4PjsKKwkJ
CWNsb2NrcyA9IDwmY2xrcyAxNzM+LCA8JmNsa3MgNT4sIDwmY2xrcyAxODg+OworCQkJY2xvY2st
bmFtZXMgPSAic2F0YSIsICJhaGIiLCAicGVyIjsKKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJ
CX07CisKIAkJaXB1OiBpcHVAMTgwMDAwMDAgewogCQkJI2NydGMtY2VsbHMgPSA8MT47CiAJCQlj
b21wYXRpYmxlID0gImZzbCxpbXg1My1pcHUiOwotLSAKMS44LjMuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK
