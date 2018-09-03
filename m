Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwnIJ-00022S-IW
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 11:45:25 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 13:44:25 +0200
Message-Id: <20180903114452.4611-1-m.niestroj@grinn-global.com>
In-Reply-To: <20180903112408.2086-1-m.niestroj@grinn-global.com>
References: <20180903112408.2086-1-m.niestroj@grinn-global.com>
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
Subject: [PATCH 10/18] crypto: caam - avoid double inclusion in desc_constr.h
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

UGljayBjb21taXQgY2QzNzM2OTFkMjYyYWZlYTUyM2Y0YWU2ZWJmM2RlZTNhMjA0YzhhNyBmcm9t
IExpbnV4CnVwc3RyZWFtLgoKICAgIGNyeXB0bzogY2FhbSAtIGF2b2lkIGRvdWJsZSBpbmNsdXNp
b24gaW4gZGVzY19jb25zdHIuaAoKICAgIFNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhv
cmlhLmdlYW50YUBueHAuY29tPgogICAgU2lnbmVkLW9mZi1ieTogSGVyYmVydCBYdSA8aGVyYmVy
dEBnb25kb3IuYXBhbmEub3JnLmF1PgoKU2lnbmVkLW9mZi1ieTogTWFyY2luIE5pZXN0cm9qIDxt
Lm5pZXN0cm9qQGdyaW5uLWdsb2JhbC5jb20+Ci0tLQogZHJpdmVycy9jcnlwdG8vY2FhbS9kZXNj
X2NvbnN0ci5oIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvY3J5cHRvL2NhYW0vZGVzY19jb25zdHIuaCBiL2RyaXZlcnMvY3J5
cHRvL2NhYW0vZGVzY19jb25zdHIuaAppbmRleCAzMDUwNjllNzQuLjNlMmVlNzg1YiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9jcnlwdG8vY2FhbS9kZXNjX2NvbnN0ci5oCisrKyBiL2RyaXZlcnMvY3J5
cHRvL2NhYW0vZGVzY19jb25zdHIuaApAQCAtNCw2ICs0LDkgQEAKICAqIENvcHlyaWdodCAyMDA4
LTIwMTIgRnJlZXNjYWxlIFNlbWljb25kdWN0b3IsIEluYy4KICAqLwogCisjaWZuZGVmIERFU0Nf
Q09OU1RSX0gKKyNkZWZpbmUgREVTQ19DT05TVFJfSAorCiAjaW5jbHVkZSAiZGVzYy5oIgogI2lu
Y2x1ZGUgInJlZ3MuaCIKIApAQCAtNDAzLDMgKzQwNiw1IEBAIGRvIHsgXAogCUFQUEVORF9NQVRI
X0lNTV91NjQoTFNISUZULCBkZXNjLCBkZXN0LCBzcmMwLCBzcmMxLCBkYXRhKQogI2RlZmluZSBh
cHBlbmRfbWF0aF9yc2hpZnRfaW1tX3U2NChkZXNjLCBkZXN0LCBzcmMwLCBzcmMxLCBkYXRhKSBc
CiAJQVBQRU5EX01BVEhfSU1NX3U2NChSU0hJRlQsIGRlc2MsIGRlc3QsIHNyYzAsIHNyYzEsIGRh
dGEpCisKKyNlbmRpZiAvKiBERVNDX0NPTlNUUl9IICovCi0tIAoyLjE4LjAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlz
dApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
