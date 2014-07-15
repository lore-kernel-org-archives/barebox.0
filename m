Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x230.google.com ([2a00:1450:400c:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X6yqg-0003i9-Rl
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 09:16:35 +0000
Received: by mail-wg0-f48.google.com with SMTP id x13so5309853wgg.19
 for <barebox@lists.infradead.org>; Tue, 15 Jul 2014 02:16:12 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Tue, 15 Jul 2014 11:16:40 +0200
Message-Id: <1405415800-7846-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH] mtd: atmel_nand: add SOFT_BCH support
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

VG8gdXNlIHNvZnQgZWNjIHdpdGggbmFuZCB3aXRoIDhrIHBhZ2UsIHdlIG5lZWQgdGhlIEJDSCBz
dXBwb3J0LgpUaGlzIGNvbW1pdCBhZGRzIHRoZSBwb3NzaWJpbHR5IGZvciBhdG1lbF9uYW5kIHRv
IGVuYWJsZSBTT0ZUX0JDSC4KClNpZ25lZC1vZmYtYnk6IFJhcGhhw6tsIFBvZ2dpIDxwb2dnaS5y
YXBoQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYyB8ICAgIDUg
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL210ZC9uYW5kL2F0bWVsX25hbmQuYyBiL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5j
CmluZGV4IGU5YjJhZjcuLmQ1NDJhODMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbXRkL25hbmQvYXRt
ZWxfbmFuZC5jCisrKyBiL2RyaXZlcnMvbXRkL25hbmQvYXRtZWxfbmFuZC5jCkBAIC0xMTY0LDYg
KzExNjQsMTEgQEAgc3RhdGljIGludCBfX2luaXQgYXRtZWxfbmFuZF9wcm9iZShzdHJ1Y3QgZGV2
aWNlX2QgKmRldikKIAkJbmFuZF9jaGlwLT5lY2MubW9kZSA9IE5BTkRfRUNDX0hXOwogCX0KIAor
CWlmIChJU19FTkFCTEVEKENPTkZJR19OQU5EX0VDQ19CQ0gpICYmCisJCXBkYXRhLT5lY2NfbW9k
ZSA9PSBOQU5EX0VDQ19TT0ZUX0JDSCkgeworCQluYW5kX2NoaXAtPmVjYy5tb2RlID0gTkFORF9F
Q0NfU09GVF9CQ0g7CisJfQorCiAJbmFuZF9jaGlwLT5jaGlwX2RlbGF5ID0gNDA7CQkvKiA0MHVz
IGNvbW1hbmQgZGVsYXkgdGltZSAqLwogCiAJaWYgKGhvc3QtPmJvYXJkLT5idXNfd2lkdGhfMTYp
IHsJLyogMTYtYml0IGJ1cyB3aWR0aCAqLwotLSAKMS43LjkuNQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVi
b3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2JhcmVib3gK
