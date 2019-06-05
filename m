Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYT5P-0004bK-6W
 for barebox@lists.infradead.org; Wed, 05 Jun 2019 10:24:04 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed,  5 Jun 2019 12:23:56 +0200
Message-Id: <20190605102356.5761-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] mvebu: make the compiler inline mvebu_remap_registers
To: barebox@lists.infradead.org

V2l0aG91dCB0aGF0IGdjYyA3LjMuMSAoZnJvbSBPU0VMQVMuVG9vbGNoYWluLTIwMTguMDIuMCkg
bWFrZXMKbXZlYnVfcmVtYXBfcmVnaXN0ZXJzIGEgc3RhbmRhbG9uZSBmdW5jdGlvbiB3aGljaCBp
biBpdHMgcHJvbG9nIHNhdmVzCnR3byByZWdpc3RlcnMgdG8gdGhlIHN0YWNrLiBIb3dldmVyIHRo
aXMgZnVuY3Rpb24gaXMgY2FsbGVkIGVhcmx5IGR1cmluZwpzdGFydHVwIHdoZW4gdGhlcmUgaXMg
bm8gc3RhY2sgYXZhaWxhYmxlIHlldCBhbmQgc3Agc3RpbGwgcG9pbnRzIGludG8KdGhlIG5pcnZh
bmEgd2hpY2ggbWFrZXMgYmFyZWJveCBjcmFzaC4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogYXJjaC9hcm0vbWFj
aC1tdmVidS9jb21tb24uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtbXZlYnUvY29tbW9uLmMg
Yi9hcmNoL2FybS9tYWNoLW12ZWJ1L2NvbW1vbi5jCmluZGV4IDZiNGZhOGI4ODlkMS4uNTY1MGMx
ZWQ4NzI2IDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW12ZWJ1L2NvbW1vbi5jCisrKyBiL2Fy
Y2gvYXJtL21hY2gtbXZlYnUvY29tbW9uLmMKQEAgLTE4OCw3ICsxODgsNyBAQCBtZW1faW5pdGNh
bGwobXZlYnVfbWVtaW5pdCk7CiAjZGVmaW5lIE1WRUJVX0JSSURHRV9SRUdfQkFTRQkJMHgyMDAw
MAogI2RlZmluZSBERVZJQ0VfSU5URVJOQUxfQkFTRV9BRERSCShNVkVCVV9CUklER0VfUkVHX0JB
U0UgKyAweDgwKQogCi1zdGF0aWMgdm9pZCBtdmVidV9yZW1hcF9yZWdpc3RlcnModm9pZCkKK3N0
YXRpYyBfX2Fsd2F5c19pbmxpbmUgdm9pZCBtdmVidV9yZW1hcF9yZWdpc3RlcnModm9pZCkKIHsK
IAl2b2lkIF9faW9tZW0gKmJhc2UgPSBtdmVidV9nZXRfaW5pdGlhbF9pbnRfcmVnX2Jhc2UoKTsK
IAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
