Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6OR8-0008Ve-1z
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 14:05:41 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 14 Oct 2010 16:05:24 +0200
Message-Id: <1287065132-20372-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1287065132-20372-1-git-send-email-eric@eukrea.com>
References: <1287065132-20372-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 02/10] mx25: add MMC clock support
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1pbXgvc3BlZWQtaW14MjUuYyB8ICAgIDcgKysrKysrKwogMSBmaWxlcyBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0v
bWFjaC1pbXgvc3BlZWQtaW14MjUuYyBiL2FyY2gvYXJtL21hY2gtaW14L3NwZWVkLWlteDI1LmMK
aW5kZXggOTYwNTY3NC4uZThmZWI2YiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1pbXgvc3Bl
ZWQtaW14MjUuYworKysgYi9hcmNoL2FybS9tYWNoLWlteC9zcGVlZC1pbXgyNS5jCkBAIC04Miw2
ICs4MiwxMSBAQCB1bnNpZ25lZCBsb25nIGlteF9nZXRfaTJjY2xrKHZvaWQpCiAJcmV0dXJuIGlt
eF9nZXRfcGVyY2xrKDYpOwogfQogCit1bnNpZ25lZCBsb25nIGlteF9nZXRfbW1jY2xrKHZvaWQp
Cit7CisJcmV0dXJuIGlteF9nZXRfcGVyY2xrKDMpOworfQorCiBpbnQgaW14X2R1bXBfY2xvY2tz
KHZvaWQpCiB7CiAJcHJpbnRmKCJtcGxsOiAgICAlMTBkIEh6XG4iLCBpbXhfZ2V0X21wbGxjbGso
KSk7CkBAIC05Miw2ICs5Nyw4IEBAIGludCBpbXhfZHVtcF9jbG9ja3Modm9pZCkKIAlwcmludGYo
ImdwdDogICAgICUxMGQgSHpcbiIsIGlteF9nZXRfaXBnY2xrKCkpOwogCXByaW50ZigibmFuZDog
ICAgJTEwZCBIelxuIiwgaW14X2dldF9wZXJjbGsoOCkpOwogCXByaW50ZigibGNkOiAgICAgJTEw
ZCBIelxuIiwgaW14X2dldF9wZXJjbGsoNykpOworCXByaW50ZigiaTJjOiAgICAgJTEwZCBIelxu
IiwgaW14X2dldF9wZXJjbGsoNikpOworCXByaW50Zigic2RoYzE6ICAgJTEwZCBIelxuIiwgaW14
X2dldF9wZXJjbGsoMykpOwogCXJldHVybiAwOwogfQogCi0tIAoxLjcuMC40CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxp
c3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
