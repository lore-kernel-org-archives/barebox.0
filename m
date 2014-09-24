Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWnn9-0006Cx-V2
 for barebox@lists.infradead.org; Wed, 24 Sep 2014 14:43:40 +0000
Received: from e6520eb.local.eukrea.fr (unknown [88.170.243.169])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 07EB8A633D
 for <barebox@lists.infradead.org>; Wed, 24 Sep 2014 16:43:00 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed, 24 Sep 2014 16:43:17 +0200
Message-Id: <1411569797-12017-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] imx35-regs: add UART2 to CCM defines
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2lteDM1LXJlZ3MuaCB8IDEgKwogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVk
ZS9tYWNoL2lteDM1LXJlZ3MuaCBiL2FyY2gvYXJtL21hY2gtaW14L2luY2x1ZGUvbWFjaC9pbXgz
NS1yZWdzLmgKaW5kZXggYmJmZGUyMy4uYjMwMDM3YyAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFj
aC1pbXgvaW5jbHVkZS9tYWNoL2lteDM1LXJlZ3MuaAorKysgYi9hcmNoL2FybS9tYWNoLWlteC9p
bmNsdWRlL21hY2gvaW14MzUtcmVncy5oCkBAIC0xNTMsNiArMTUzLDcgQEAKICNkZWZpbmUgTVgz
NV9DQ01fQ0dSMV9GRUNfU0hJRlQJMAogI2RlZmluZSBNWDM1X0NDTV9DR1IxX0kyQzFfU0hJRlQJ
MTAKICNkZWZpbmUgTVgzNV9DQ01fQ0dSMV9TREhDMV9TSElGVAkyNgorI2RlZmluZSBNWDM1X0ND
TV9DR1IyX1VBUlQyX1NISUZUCTE4CiAjZGVmaW5lIE1YMzVfQ0NNX0NHUjJfVVNCX1NISUZUCTIy
CiAKICNkZWZpbmUgTVgzNV9DQ01fUkNTUl9NRU1fQ1RSTF9TSElGVAkJMjUKLS0gCjEuOS4zCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
