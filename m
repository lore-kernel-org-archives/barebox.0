Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gs0O9-0005jR-Ue
 for barebox@lists.infradead.org; Fri, 08 Feb 2019 07:15:58 +0000
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
Date: Fri,  8 Feb 2019 08:15:25 +0100
Message-Id: <20190208071526.19150-7-u.oelmann@pengutronix.de>
In-Reply-To: <20190208071526.19150-1-u.oelmann@pengutronix.de>
References: <20190208071526.19150-1-u.oelmann@pengutronix.de>
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
Subject: [PATCH 6/7] common: state: harmonize code with dt-utils
To: Barebox List <barebox@lists.infradead.org>

TGludXggdXNlcnNwYWNlIHdpdGggcmVjZW50IGdsaWJjIHZlcnNpb25zIGxldHMgYmFyZWJveC1z
dGF0ZSBzdWZmZXIgZnJvbQpsaW51eC9zdGF0LmggcmVkZWZpbmluZyAnc3RydWN0IHN0YXR4JyBh
bmQgYmVjYXVzZSBvZiB0aGF0IHN3aXRjaGVkIHRvIHRoZQppbmNsdXNpb24gb2Ygc3lzL3N0YXQu
aCBpbnN0ZWFkLCBzZWUgZHQtdXRpbHMgY29tbWl0IDFjODBlMzE4NzJhZSAoInNyYzogZml4CmNv
bXBpbGF0aW9uIGZvciBnbGliYyB2ZXJzaW9uIDIuMjcuOTAwMC0zNi5mYzI5IGFuZCBuZXdlciIp
LgoKV2UgY2FuIGZvbGxvdyB0aGlzIHN3aXRjaCBpbiBiYXJlYm94IHdpdGhvdXQgYW55IHByb2Js
ZW1zLCB0b28sIGFzIGluIGJhcmVib3gKc3lzL3N0YXQuaCBpbmNsdWRlcyBsaW51eC9zdGF0Lmgg
KGFuZCBhZGRzIHNvbWUgbW9yZSBkZWZpbml0aW9ucyBvbiB0b3AgdGhhdApkb24ndCBodXJ0IHVz
IGhlcmUpLgoKU2lnbmVkLW9mZi1ieTogVWxyaWNoIMOWbG1hbm4gPHUub2VsbWFubkBwZW5ndXRy
b25peC5kZT4KLS0tCiBjb21tb24vc3RhdGUvYmFja2VuZF9zdG9yYWdlLmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9j
b21tb24vc3RhdGUvYmFja2VuZF9zdG9yYWdlLmMgYi9jb21tb24vc3RhdGUvYmFja2VuZF9zdG9y
YWdlLmMKaW5kZXggOGNkODIyZWVjNDg2Li5mY2E4ODdlOTNmYTMgMTAwNjQ0Ci0tLSBhL2NvbW1v
bi9zdGF0ZS9iYWNrZW5kX3N0b3JhZ2UuYworKysgYi9jb21tb24vc3RhdGUvYmFja2VuZF9zdG9y
YWdlLmMKQEAgLTE5LDcgKzE5LDcgQEAKICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KICNpbmNs
dWRlIDxsaW51eC9saXN0Lmg+CiAjaW5jbHVkZSA8bGludXgvbXRkL210ZC1hYmkuaD4KLSNpbmNs
dWRlIDxsaW51eC9zdGF0Lmg+CisjaW5jbHVkZSA8c3lzL3N0YXQuaD4KICNpbmNsdWRlIDxtYWxs
b2MuaD4KICNpbmNsdWRlIDxwcmludGsuaD4KIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFy
ZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vYmFyZWJveAo=
