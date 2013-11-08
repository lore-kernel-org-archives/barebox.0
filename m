Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeZjL-0006km-0r
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 00:15:19 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  8 Nov 2013 01:14:55 +0100
Message-Id: <1383869695-25566-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH] partitions: dos: don't open code get_unaligned_le32
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KLS0tCkhlbGxvLAoKbm90ZSB0aGlzIGlzIG9ubHkgY29tcGlsZSB0ZXN0ZWQuCgpC
ZXN0IHJlZ2FyZHMKVXdlCgogY29tbW9uL3BhcnRpdGlvbnMvZG9zLmMgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9jb21t
b24vcGFydGl0aW9ucy9kb3MuYyBiL2NvbW1vbi9wYXJ0aXRpb25zL2Rvcy5jCmluZGV4IDMxYjFl
ZDYuLjlhZmQxMjIgMTAwNjQ0Ci0tLSBhL2NvbW1vbi9wYXJ0aXRpb25zL2Rvcy5jCisrKyBiL2Nv
bW1vbi9wYXJ0aXRpb25zL2Rvcy5jCkBAIC0xMDUsNyArMTA1LDcgQEAgc3RhdGljIGludCBkb3Nf
Z2V0X2Rpc2tfc2lnbmF0dXJlKHN0cnVjdCBwYXJhbV9kICpwLCB2b2lkICpfcHJpdikKIAlpZiAo
IWJ1ZikKIAkJcmV0dXJuIC1FSU87CiAKLQlwcml2LT5zaWduYXR1cmUgPSBsZTMyX3RvX2NwdXAo
KF9fbGUzMiAqKShidWYgKyAweDFiOCkpOworCXByaXYtPnNpZ25hdHVyZSA9IGdldF91bmFsaWdu
ZWRfbGUzMihidWYgKyAweDFiOCk7CiAKIAlmcmVlKGJ1Zik7CiAKLS0gCjEuOC40LnJjMwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFp
bGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
