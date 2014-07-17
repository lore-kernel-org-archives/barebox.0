Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x236.google.com ([2a00:1450:400c:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X7kXx-0001dK-4F
 for barebox@lists.infradead.org; Thu, 17 Jul 2014 12:12:29 +0000
Received: by mail-we0-f182.google.com with SMTP id k48so1481217wev.27
 for <barebox@lists.infradead.org>; Thu, 17 Jul 2014 05:11:54 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Thu, 17 Jul 2014 14:12:20 +0200
Message-Id: <1405599141-5992-3-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1405599141-5992-1-git-send-email-poggi.raph@gmail.com>
References: <1405599141-5992-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 2/3 v2] mtd: atmel_nand: fix bit error correction
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

V2hlbiBwbWVjYyB1c2VzIGEgMTAyNCBzZWN0b3Igc2l6ZSB0byBjb3JyZWN0IGJpdCBlcnJvciwg
dGhlIGdmIGRpbWVuc2lvbgptdXN0IGJlIDE0LgoKU28gdGhpcyBjb21taXQgY2hvb3NlcyB0aGUg
cmlnaHQgZGVncmVlIGZvciBkaWZmZXJlbnQgc2VjdG9yIHNpemUgKDUxMiBvciAxMDI0KS4KClNp
Z25lZC1vZmYtYnk6IFJhcGhhw6tsIFBvZ2dpIDxwb2dnaS5yYXBoQGdtYWlsLmNvbT4KLS0tCiBk
cml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYyB8ICAgIDMgKystCiAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tdGQv
bmFuZC9hdG1lbF9uYW5kLmMgYi9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYwppbmRleCBh
MDJmMzhmLi4xY2U3ZDRkIDEwMDY0NAotLS0gYS9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQu
YworKysgYi9kcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYwpAQCAtNzk2LDcgKzc5Niw4IEBA
IHN0YXRpYyBpbnQgX19pbml0IGF0bWVsX3BtZWNjX25hbmRfaW5pdF9wYXJhbXMoc3RydWN0IGRl
dmljZV9kICpkZXYsCiAJc3dpdGNoIChtdGQtPndyaXRlc2l6ZSkgewogCWNhc2UgMjA0ODoKIAlj
YXNlIDQwOTY6Ci0JCWhvc3QtPnBtZWNjX2RlZ3JlZSA9IFBNRUNDX0dGX0RJTUVOU0lPTl8xMzsK
KwkJaG9zdC0+cG1lY2NfZGVncmVlID0gKHNlY3Rvcl9zaXplID09IDUxMikgPworCQkJCQlQTUVD
Q19HRl9ESU1FTlNJT05fMTMgOiBQTUVDQ19HRl9ESU1FTlNJT05fMTQ7CiAJCWhvc3QtPnBtZWNj
X2N3X2xlbiA9ICgxIDw8IGhvc3QtPnBtZWNjX2RlZ3JlZSkgLSAxOwogCQlob3N0LT5wbWVjY19z
ZWN0b3JfbnVtYmVyID0gbXRkLT53cml0ZXNpemUgLyBzZWN0b3Jfc2l6ZTsKIAkJaG9zdC0+cG1l
Y2NfYnl0ZXNfcGVyX3NlY3RvciA9IHBtZWNjX2dldF9lY2NfYnl0ZXMoCi0tIAoxLjcuOS41CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
