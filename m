Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P6OR9-0008W2-49
	for barebox@lists.infradead.org; Thu, 14 Oct 2010 14:05:44 +0000
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Thu, 14 Oct 2010 16:05:29 +0200
Message-Id: <1287065132-20372-7-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 07/10] imx35-regs: add defines for USB and SD
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1pbXgvaW5jbHVkZS9tYWNoL2lteDM1LXJlZ3MuaCB8ICAgIDMgKysrCiAxIGZpbGVz
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9h
cmNoL2FybS9tYWNoLWlteC9pbmNsdWRlL21hY2gvaW14MzUtcmVncy5oIGIvYXJjaC9hcm0vbWFj
aC1pbXgvaW5jbHVkZS9tYWNoL2lteDM1LXJlZ3MuaAppbmRleCA1Y2ZiNzg4Li5iMmIzNjBhIDEw
MDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWlteC9pbmNsdWRlL21hY2gvaW14MzUtcmVncy5oCisr
KyBiL2FyY2gvYXJtL21hY2gtaW14L2luY2x1ZGUvbWFjaC9pbXgzNS1yZWdzLmgKQEAgLTUxLDYg
KzUxLDcgQEAKICNkZWZpbmUgSU1YX1NESEMxX0JBU0UJCTB4NTNGQjQwMDAKICNkZWZpbmUgSU1Y
X1NESEMyX0JBU0UJCTB4NTNGQjgwMDAKICNkZWZpbmUgSU1YX1NESEMzX0JBU0UJCTB4NTNGQkMw
MDAKKyNkZWZpbmUgSU1YX09UR19CQVNFCQkweDUzRkY0MDAwCiAKIC8qCiAgKiBDbG9jayBDb250
cm9sbGVyIE1vZHVsZSAoQ0NNKQpAQCAtNzMsNiArNzQsOCBAQAogCiAjZGVmaW5lIENDTV9DR1Ix
X0ZFQ19TSElGVAkwCiAjZGVmaW5lIENDTV9DR1IxX0kyQzFfU0hJRlQJMTAKKyNkZWZpbmUgQ0NN
X0NHUjFfU0RIQzFfU0hJRlQJMjYKKyNkZWZpbmUgQ0NNX0NHUjJfVVNCX1NISUZUCTIyCiAKICNk
ZWZpbmUgUERSMF9BVVRPX01VWF9ESVYoeCkJKCgoeCkgJiAweDcpIDw8IDkpCiAjZGVmaW5lIFBE
UjBfQ0NNX1BFUl9BSEIoeCkJKCgoeCkgJiAweDcpIDw8IDEyKQotLSAKMS43LjAuNAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGlu
ZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
