Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aiev3-00063K-1O
 for barebox@lists.infradead.org; Wed, 23 Mar 2016 09:17:38 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 23 Mar 2016 10:17:09 +0100
Message-Id: <1458724629-10033-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] defaultenv-2: add automount for nfs
To: barebox@lists.infradead.org

QXV0b21hdGljYWxseSBtb3VudCB0aGUgcGF0aCB0aGF0IGlzIGFsc28gdXNlZCBmb3IgbmV0IGJv
b3RpbmcgYnkKZGVmYXVsdCB0byAvbW50L25mcy4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZGVmYXVsdGVudi9k
ZWZhdWx0ZW52LTItYmFzZS9pbml0L2F1dG9tb3VudCB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZGVmYXVs
dGVudi9kZWZhdWx0ZW52LTItYmFzZS9pbml0L2F1dG9tb3VudCBiL2RlZmF1bHRlbnYvZGVmYXVs
dGVudi0yLWJhc2UvaW5pdC9hdXRvbW91bnQKaW5kZXggZmU1NmQ5MjBlN2U5Li5mZDFmNWE2ZjQ5
NGUgMTAwNjQ0Ci0tLSBhL2RlZmF1bHRlbnYvZGVmYXVsdGVudi0yLWJhc2UvaW5pdC9hdXRvbW91
bnQKKysrIGIvZGVmYXVsdGVudi9kZWZhdWx0ZW52LTItYmFzZS9pbml0L2F1dG9tb3VudApAQCAt
MTAsMTEgKzEwLDExIEBAIGZpCiBta2RpciAtcCAvbW50L3RmdHAKIGF1dG9tb3VudCAvbW50L3Rm
dHAgJ2lmdXAgZXRoMCAmJiBtb3VudCAtdCB0ZnRwICRldGgwLnNlcnZlcmlwIC9tbnQvdGZ0cCcK
IAotIyBhdXRvbW91bnQgbmZzIHNlcnZlciBleGFtcGxlCisjIGF1dG9tb3VudCBuZnMgc2VydmVy
J3MgbmZzcm9vdAorCitta2RpciAtcCAvbW50L25mcworYXV0b21vdW50IC9tbnQvbmZzICdpZnVw
IGV0aDAgJiYgbW91bnQgLXQgbmZzICR7ZXRoMC5zZXJ2ZXJpcH06L2hvbWUvJHtnbG9iYWwudXNl
cn0vbmZzcm9vdC8ke2dsb2JhbC5ob3N0bmFtZX0gL21udC9uZnMnCiAKLSNuZnNob3N0PXNvbWVo
b3N0Ci0jbWtkaXIgLXAgL21udC8ke25mc2hvc3R9Ci0jYXV0b21vdW50IC9tbnQvJG5mc2hvc3Qg
ImlmdXAgZXRoMCAmJiBtb3VudCAtdCBuZnMgJHtuZnNob3N0fTovdGZ0cGJvb3QgL21udC8ke25m
c2hvc3R9IgogCiAjIEZBVCBvbiB1c2IgZGlzayBleGFtcGxlCiAKLS0gCjIuNy4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
