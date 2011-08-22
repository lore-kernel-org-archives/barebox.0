Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QvUuD-0007SF-Kl
	for barebox@lists.infradead.org; Mon, 22 Aug 2011 13:51:10 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 38738BF0DC
	for <barebox@lists.infradead.org>;
	Mon, 22 Aug 2011 15:54:59 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Mon, 22 Aug 2011 15:51:04 +0200
Message-Id: <1314021065-10784-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv2 1/2] ARM pcm043: Use PDR0 to change cpu freq
To: barebox@lists.infradead.org

SW5zdGVhZCBvZiBjaGFuZ2luZyB0aGUgTVBDVEwgdG8gc2V0IGFuIG90aGVyIGNwdSBmcmVxdWVu
Y3ksCnVzZSB0aGUgcG9zdCBkaXZpZGVyLgoKVGhpcyBwcmV2ZW50cyBmcmVlemluZyB3aGVuIGNo
YW5naW5nIHRoZSBjbG9jayBmcm9tIDM5OU1IeiB0byA1MzJNSHouCgpTaWduZWQtb2ZmLWJ5OiBU
ZXJlc2EgR8OhbWV6IDx0LmdhbWV6QHBoeXRlYy5kZT4KLS0tCiBhcmNoL2FybS9ib2FyZHMvcGNt
MDQzL3BjbTA0My5jIHwgICAgOCArKysrLS0tLQogMSBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL3BjbTA0
My9wY20wNDMuYyBiL2FyY2gvYXJtL2JvYXJkcy9wY20wNDMvcGNtMDQzLmMKaW5kZXggOTY2ODk5
YS4uNWNkNjQzMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9hcmRzL3BjbTA0My9wY20wNDMuYwor
KysgYi9hcmNoL2FybS9ib2FyZHMvcGNtMDQzL3BjbTA0My5jCkBAIC0zMDEsOCArMzAxLDggQEAg
c3RhdGljIGludCBwY20wNDNfY29yZV9zZXR1cCh2b2lkKQogCiBjb3JlX2luaXRjYWxsKHBjbTA0
M19jb3JlX3NldHVwKTsKIAotI2RlZmluZSBNUENUTF9QQVJBTV8zOTkgICAgIChJTVhfUExMX1BE
KDApIHwgSU1YX1BMTF9NRkQoMTUpIHwgSU1YX1BMTF9NRkkoOCkgfCBJTVhfUExMX01GTig1KSkK
LSNkZWZpbmUgTVBDVExfUEFSQU1fNTMyICAgICAoKDEgPDwgMzEpIHwgSU1YX1BMTF9QRCgwKSB8
IElNWF9QTExfTUZEKDExKSB8IElNWF9QTExfTUZJKDExKSB8IElNWF9QTExfTUZOKDEpKQorI2Rl
ZmluZSBDQ01fUERSMF9QQVJBTV8zOTkJKCgxIDw8IDEyKSB8ICgxIDw8IDE2KSkKKyNkZWZpbmUg
Q0NNX1BEUjBfUEFSQU1fNTMyCSgxIDw8IDEyKQogCiBzdGF0aWMgaW50IGRvX2NwdWZyZXEoc3Ry
dWN0IGNvbW1hbmQgKmNtZHRwLCBpbnQgYXJnYywgY2hhciAqYXJndltdKQogewpAQCAtMzE1LDEw
ICszMTUsMTAgQEAgc3RhdGljIGludCBkb19jcHVmcmVxKHN0cnVjdCBjb21tYW5kICpjbWR0cCwg
aW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKIAogCXN3aXRjaCAoZnJlcSkgewogCWNhc2UgMzk5Ogot
CQl3cml0ZWwoTVBDVExfUEFSQU1fMzk5LCBJTVhfQ0NNX0JBU0UgKyBDQ01fTVBDVEwpOworCQl3
cml0ZWwoQ0NNX1BEUjBfUEFSQU1fMzk5LCBJTVhfQ0NNX0JBU0UgKyBDQ01fUERSMCk7CiAJCWJy
ZWFrOwogCWNhc2UgNTMyOgotCQl3cml0ZWwoTVBDVExfUEFSQU1fNTMyLCBJTVhfQ0NNX0JBU0Ug
KyBDQ01fTVBDVEwpOworCQl3cml0ZWwoQ0NNX1BEUjBfUEFSQU1fNTMyLCBJTVhfQ0NNX0JBU0Ug
KyBDQ01fUERSMCk7CiAJCWJyZWFrOwogCWRlZmF1bHQ6CiAJCXJldHVybiBDT01NQU5EX0VSUk9S
X1VTQUdFOwotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
