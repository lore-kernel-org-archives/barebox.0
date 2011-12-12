Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaDHz-00076d-Ps
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 21:20:01 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 8802AA635B
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2011 22:19:54 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon, 12 Dec 2011 22:19:38 +0100
Message-Id: <1323724779-370-5-git-send-email-eric@eukrea.com>
In-Reply-To: <1323724779-370-1-git-send-email-eric@eukrea.com>
References: <1323724779-370-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 5/6] CPUIMX51: configure SD1 iomux when ESDHC is enabled
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vYm9hcmRzL2V1a3JlYV9jcHVpbXg1MS9ldWtyZWFfY3B1aW14NTEuYyB8ICAgIDkgKysrKysr
KysrCiAxIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDUxL2V1a3JlYV9jcHVpbXg1
MS5jIGIvYXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXg1MS9ldWtyZWFfY3B1aW14NTEuYwpp
bmRleCBhMTI4ZDUwLi5hMmRiNmQ5IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib2FyZHMvZXVrcmVh
X2NwdWlteDUxL2V1a3JlYV9jcHVpbXg1MS5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFf
Y3B1aW14NTEvZXVrcmVhX2NwdWlteDUxLmMKQEAgLTg4LDYgKzg4LDE1IEBAIHN0YXRpYyBzdHJ1
Y3QgcGFkX2Rlc2MgZXVrcmVhX2NwdWlteDUxX3BhZHNbXSA9IHsKIAlNWDUxX1BBRF9OQU5ERl9D
UzFfX05BTkRGX0NTMSwKIAkvKiBMQ0QgQkwgKi8KIAlNWDUxX1BBRF9ESTFfRDFfQ1NfX0dQSU8z
XzQsCisjaWZkZWYgQ09ORklHX01DSV9JTVhfRVNESEMKKwkvKiBTRCAxICovCisJTVg1MV9QQURf
U0QxX0NNRF9fU0QxX0NNRCwKKwlNWDUxX1BBRF9TRDFfQ0xLX19TRDFfQ0xLLAorCU1YNTFfUEFE
X1NEMV9EQVRBMF9fU0QxX0RBVEEwLAorCU1YNTFfUEFEX1NEMV9EQVRBMV9fU0QxX0RBVEExLAor
CU1YNTFfUEFEX1NEMV9EQVRBMl9fU0QxX0RBVEEyLAorCU1YNTFfUEFEX1NEMV9EQVRBM19fU0Qx
X0RBVEEzLAorI2VuZGlmCiB9OwogCiAjZGVmaW5lIEdQSU9fTEFOODcwMF9SRVNFVAkoMSAqIDMy
ICsgMzEpCi0tIAoxLjcuNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
