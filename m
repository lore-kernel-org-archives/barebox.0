Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VEPEo-0003i3-Fq
 for barebox@lists.infradead.org; Tue, 27 Aug 2013 19:47:40 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 8C4A9A626F
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2013 21:42:55 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 27 Aug 2013 21:42:48 +0200
Message-Id: <1377632568-3767-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] i.MX53: add imx53_add_mmc3
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2RldmljZXMtaW14NTMuaCB8IDUgKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWlt
eC9pbmNsdWRlL21hY2gvZGV2aWNlcy1pbXg1My5oIGIvYXJjaC9hcm0vbWFjaC1pbXgvaW5jbHVk
ZS9tYWNoL2RldmljZXMtaW14NTMuaAppbmRleCBkZjE0NjU0Li40NjIxYzUzIDEwMDY0NAotLS0g
YS9hcmNoL2FybS9tYWNoLWlteC9pbmNsdWRlL21hY2gvZGV2aWNlcy1pbXg1My5oCisrKyBiL2Fy
Y2gvYXJtL21hY2gtaW14L2luY2x1ZGUvbWFjaC9kZXZpY2VzLWlteDUzLmgKQEAgLTYyLDYgKzYy
LDExIEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IGRldmljZV9kICppbXg1M19hZGRfbW1jMihzdHJ1
Y3QgZXNkaGNfcGxhdGZvcm1fZGF0YSAqcGRhdGEpCiAJcmV0dXJuIGlteF9hZGRfZXNkaGMoKHZv
aWQgKilNWDUzX0VTREhDM19CQVNFX0FERFIsIDIsIHBkYXRhKTsKIH0KIAorc3RhdGljIGlubGlu
ZSBzdHJ1Y3QgZGV2aWNlX2QgKmlteDUzX2FkZF9tbWMzKHN0cnVjdCBlc2RoY19wbGF0Zm9ybV9k
YXRhICpwZGF0YSkKK3sKKwlyZXR1cm4gaW14X2FkZF9lc2RoYygodm9pZCAqKU1YNTNfRVNESEM0
X0JBU0VfQUREUiwgMywgcGRhdGEpOworfQorCiBzdGF0aWMgaW5saW5lIHN0cnVjdCBkZXZpY2Vf
ZCAqaW14NTNfYWRkX25hbmQoc3RydWN0IGlteF9uYW5kX3BsYXRmb3JtX2RhdGEgKnBkYXRhKQog
ewogCXN0cnVjdCByZXNvdXJjZSByZXNbXSA9IHsKLS0gCjEuOC4zLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==
