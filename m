Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJSCp-0004Li-0A
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 17:58:27 +0000
Received: from e6520eb.local.eukrea.com (unknown [88.170.243.169])
 by smtp5-g21.free.fr (Postfix) with ESMTP id 1E8B3D4800D
 for <barebox@lists.infradead.org>; Tue, 10 Sep 2013 19:58:03 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 10 Sep 2013 19:57:55 +0200
Message-Id: <1378835876-29402-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1378835876-29402-1-git-send-email-eric@eukrea.com>
References: <1378835876-29402-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/3] imx28-regs: i.MX28 has 2 USB controllers
To: barebox@lists.infradead.org

c28gZGVjbGFyZSBib3RoIGJhc2UgYWRkcmVzcwoKU2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJk
IDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9hcm0vbWFjaC1teHMvaW5jbHVkZS9tYWNoL2lt
eDI4LXJlZ3MuaCB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1teHMvaW5jbHVkZS9tYWNoL2lt
eDI4LXJlZ3MuaCBiL2FyY2gvYXJtL21hY2gtbXhzL2luY2x1ZGUvbWFjaC9pbXgyOC1yZWdzLmgK
aW5kZXggZmE4ZWRkNy4uMDg4MjgyOSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vbWFjaC1teHMvaW5j
bHVkZS9tYWNoL2lteDI4LXJlZ3MuaAorKysgYi9hcmNoL2FybS9tYWNoLW14cy9pbmNsdWRlL21h
Y2gvaW14MjgtcmVncy5oCkBAIC00MSw3ICs0MSw4IEBACiAjZGVmaW5lIElNWF9EQkdVQVJUX0JB
U0UJMHg4MDA3NDAwMAogI2RlZmluZSBJTVhfVVNCUEhZMF9CQVNFCTB4ODAwN2MwMDAKICNkZWZp
bmUgSU1YX1VTQlBIWTFfQkFTRQkweDgwMDdlMDAwCi0jZGVmaW5lIElNWF9VU0JfQkFTRQkJMHg4
MDA4MDAwMAorI2RlZmluZSBJTVhfVVNCMF9CQVNFCQkweDgwMDgwMDAwCisjZGVmaW5lIElNWF9V
U0IxX0JBU0UJCTB4ODAwOTAwMDAKICNkZWZpbmUgSU1YX0ZFQzBfQkFTRQkJMHg4MDBGMDAwMAog
I2RlZmluZSBJTVhfRkVDMV9CQVNFCQkweDgwMEY0MDAwCiAKLS0gCjEuOC4zLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
