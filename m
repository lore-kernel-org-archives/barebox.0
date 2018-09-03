Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fwnXr-0002Kh-U4
 for barebox@lists.infradead.org; Mon, 03 Sep 2018 12:01:29 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Mon,  3 Sep 2018 13:24:02 +0200
Message-Id: <20180903112408.2086-13-m.niestroj@grinn-global.com>
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
Subject: [PATCH 12/18] crypto: caam - fix incorrect define
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

UGljayBjb21taXQgY2MyZjhhYjUzMzRhNzM2ZmEwZTc3NWNmY2NmMDZjMWUyNjg2NjdmMCBmcm9t
IExpbnV4CnVwc3RyZWFtLgoKICAgIGNyeXB0bzogY2FhbSAtIGZpeCBpbmNvcnJlY3QgZGVmaW5l
CgogICAgRml4ZXM6IDNlYmZhOTJmNDlhNiAoImNyeXB0bzogY2FhbSAtIEFkZCBuZXcgbWFjcm9z
IGZvciBidWlsZGluZyBleHRlbmRlZCBTRUMgZGVzY3JpcHRvcnMgKD4gNjQgd29yZHMpIikKICAg
IFNpZ25lZC1vZmYtYnk6IFJhZHUgQWxleGUgPHJhZHUuYWxleGVAbnhwLmNvbT4KICAgIFNpZ25l
ZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgogICAgU2lnbmVk
LW9mZi1ieTogSGVyYmVydCBYdSA8aGVyYmVydEBnb25kb3IuYXBhbmEub3JnLmF1PgoKU2lnbmVk
LW9mZi1ieTogTWFyY2luIE5pZXN0cm9qIDxtLm5pZXN0cm9qQGdyaW5uLWdsb2JhbC5jb20+Ci0t
LQogZHJpdmVycy9jcnlwdG8vY2FhbS9kZXNjLmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2NyeXB0by9j
YWFtL2Rlc2MuaCBiL2RyaXZlcnMvY3J5cHRvL2NhYW0vZGVzYy5oCmluZGV4IGU5NjRhNWE5My4u
MmI1ZjQ5OTY3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2NyeXB0by9jYWFtL2Rlc2MuaAorKysgYi9k
cml2ZXJzL2NyeXB0by9jYWFtL2Rlc2MuaApAQCAtMTQ2OCw3ICsxNDY4LDcgQEAgc3RydWN0IHNl
YzRfc2dfZW50cnkgewogI2RlZmluZSBNQVRIX1NSQzFfUkVHMgkJKDB4MDIgPDwgTUFUSF9TUkMx
X1NISUZUKQogI2RlZmluZSBNQVRIX1NSQzFfUkVHMwkJKDB4MDMgPDwgTUFUSF9TUkMxX1NISUZU
KQogI2RlZmluZSBNQVRIX1NSQzFfSU1NCQkoMHgwNCA8PCBNQVRIX1NSQzFfU0hJRlQpCi0jZGVm
aW5lIE1BVEhfU1JDMV9EUE9WUkQJKDB4MDcgPDwgTUFUSF9TUkMwX1NISUZUKQorI2RlZmluZSBN
QVRIX1NSQzFfRFBPVlJECSgweDA3IDw8IE1BVEhfU1JDMV9TSElGVCkKICNkZWZpbmUgTUFUSF9T
UkMxX0lORklGTwkoMHgwYSA8PCBNQVRIX1NSQzFfU0hJRlQpCiAjZGVmaW5lIE1BVEhfU1JDMV9P
VVRGSUZPCSgweDBiIDw8IE1BVEhfU1JDMV9TSElGVCkKICNkZWZpbmUgTUFUSF9TUkMxX09ORQkJ
KDB4MGMgPDwgTUFUSF9TUkMxX1NISUZUKQotLSAKMi4xOC4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJv
eEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vYmFyZWJveAo=
