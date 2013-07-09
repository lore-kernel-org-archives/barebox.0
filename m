Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwU9C-0002vX-Gf
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:23:47 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 500EDBF0F4
 for <barebox@lists.infradead.org>; Tue,  9 Jul 2013 11:17:33 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 9 Jul 2013 11:23:22 +0200
Message-Id: <1373361802-31080-12-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
References: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv2 12/12] PCM051: Pass barebox partition information
To: barebox@lists.infradead.org

cGNtMDUxIHVzZXMgZm91ciBNTE8gTkFORCBwYXJ0aXRpb25zLCBzbyB0aGUgZGVmYXVsdCBvZmZz
ZXQKdG8gdGhlIGJhcmVib3ggY2FuIG5vdCBiZSB1c2VkLiBQYXNzIGN1c3RvbSBzdHJ1Y3QuCgpT
aWduZWQtb2ZmLWJ5OiBUZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCiBhcmNo
L2FybS9ib2FyZHMvcGNtMDUxL2JvYXJkLmMgfCAgICA5ICsrKysrKysrKwogMSBmaWxlcyBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vYm9hcmRzL3BjbTA1MS9ib2FyZC5jIGIvYXJjaC9hcm0vYm9hcmRzL3BjbTA1MS9ib2FyZC5j
CmluZGV4IDZlZjFmNGIuLjE5OTNmMzQgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9wY20w
NTEvYm9hcmQuYworKysgYi9hcmNoL2FybS9ib2FyZHMvcGNtMDUxL2JvYXJkLmMKQEAgLTMyLDYg
KzMyLDcgQEAKICNpbmNsdWRlIDxtYWNoL2FtMzN4eC1tdXguaD4KICNpbmNsdWRlIDxtYWNoL2Ft
MzN4eC1zaWxpY29uLmg+CiAjaW5jbHVkZSA8bWFjaC9jcHN3Lmg+CisjaW5jbHVkZSA8bWFjaC9n
ZW5lcmljLmg+CiAjaW5jbHVkZSA8bWFjaC9ncG1jLmg+CiAjaW5jbHVkZSA8bWFjaC9ncG1jX25h
bmQuaD4KICNpbmNsdWRlIDxzcGkvc3BpLmg+CkBAIC0xMjEsNiArMTIyLDEzIEBAIHN0YXRpYyBz
dHJ1Y3QgZ3BtY19uYW5kX3BsYXRmb3JtX2RhdGEgbmFuZF9wbGF0ID0gewogCS5uYW5kX2NmZyA9
ICZwY20wNTFfbmFuZF9jZmcsCiB9OwogCitzdGF0aWMgc3RydWN0IG9tYXBfYmFyZWJveF9wYXJ0
IHBjbTA1MV9iYXJlYm94X3BhcnQgPSB7CisJLm5hbmRfb2Zmc2V0ID0gU1pfNTEySywKKwkubmFu
ZF9zaXplID0gU1pfNTEySywKKwkubm9yX29mZnNldCA9IFNaXzEyOEssCisJLm5vcl9zaXplID0g
U1pfNTEySywKK307CisKIHN0YXRpYyB2b2lkIHBjbTA1MV9zcGlfaW5pdCh2b2lkKQogewogCWlu
dCByZXQ7CkBAIC0xOTcsNiArMjA1LDcgQEAgc3RhdGljIGludCBwY20wNTFfZGV2aWNlc19pbml0
KHZvaWQpCiAJCWJyZWFrOwogCX0KIAorCW9tYXBfc2V0X2JhcmVib3hfcGFydCgmcGNtMDUxX2Jh
cmVib3hfcGFydCk7CiAJYXJtbGludXhfc2V0X2Jvb3RwYXJhbXMoKHZvaWQgKikoQU0zM1hYX0RS
QU1fQUREUl9TUEFDRV9TVEFSVCArIDB4MTAwKSk7CiAJYXJtbGludXhfc2V0X2FyY2hpdGVjdHVy
ZShNQUNIX1RZUEVfUENNMDUxKTsKIAotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2JhcmVib3gK
