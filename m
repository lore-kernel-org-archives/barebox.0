Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLsCf-0002q5-95
 for barebox@lists.infradead.org; Fri, 07 Mar 2014 10:40:35 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 1BAFC4B0140
 for <barebox@lists.infradead.org>; Fri,  7 Mar 2014 11:40:07 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Fri,  7 Mar 2014 11:39:58 +0100
Message-Id: <1394188803-13456-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1394188803-13456-1-git-send-email-eric@eukrea.com>
References: <20140210091152.GM17250@pengutronix.de>
 <1394188803-13456-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 2/7] ARM: i.MX53: Add sata to devicetree
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQp2MjogdXBk
YXRlIHRoZSBTQVRBIGVudHJ5IHRvIGJlIGNvbXBhdGlibGUgd2l0aCB0aGUga2VybmVsLCBidXQg
ZG8KICBub3QgdXNlIHRoZSBMaW51eC1uZXh0IGR0cy4gVGhpcyBtZWFucyB1c2UgcGxhaW4gbnVt
YmVycywgYnV0IHRoZQogIGNvcnJlY3QgY2xvY2sgbmFtZXMuCiAgCiBhcmNoL2FybS9kdHMvaW14
NTMuZHRzaSB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL2lteDUzLmR0c2kgYi9hcmNoL2FybS9kdHMvaW14NTMu
ZHRzaQppbmRleCA2Nzg1NDdjLi5hMjhjNGM3IDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvaW14
NTMuZHRzaQorKysgYi9hcmNoL2FybS9kdHMvaW14NTMuZHRzaQpAQCAtNzUsNiArNzUsMTUgQEAK
IAkJaW50ZXJydXB0LXBhcmVudCA9IDwmdHppYz47CiAJCXJhbmdlczsKIAorCQlzYXRhOiBzYXRh
QDEwMDAwMDAwIHsKKwkJCWNvbXBhdGlibGUgPSAiZnNsLGlteDUzLWFoY2kiOworCQkJcmVnID0g
PDB4MTAwMDAwMDAgMHgxMDAwPjsKKwkJCWludGVycnVwdHMgPSA8Mjg+OworCQkJY2xvY2tzID0g
PCZjbGtzIDE3Mz4sIDwmY2xrcyAxODg+LCA8JmNsa3MgNT47CisJCQljbG9jay1uYW1lcyA9ICJz
YXRhX2dhdGUiLCAic2F0YV9yZWYiLCAiYWhiIjsKKwkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CisJ
CX07CisKIAkJaXB1OiBpcHVAMTgwMDAwMDAgewogCQkJI2NydGMtY2VsbHMgPSA8MT47CiAJCQlj
b21wYXRpYmxlID0gImZzbCxpbXg1My1pcHUiOwotLSAKMS44LjMuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK
