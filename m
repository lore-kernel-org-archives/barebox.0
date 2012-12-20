Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tlh1G-0005vZ-3H
 for barebox@lists.infradead.org; Thu, 20 Dec 2012 14:22:43 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id C2756BF0F5
 for <barebox@lists.infradead.org>; Fri, 21 Dec 2012 22:38:38 +0100 (CET)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 20 Dec 2012 15:22:33 +0100
Message-Id: <1356013354-25832-6-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1356013354-25832-1-git-send-email-t.gamez@phytec.de>
References: <1356013354-25832-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv2 5/6] ARM OMAP: Apply EHCI device register functions
To: barebox@lists.infradead.org

ClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGFy
Y2gvYXJtL2JvYXJkcy9iZWFnbGUvYm9hcmQuYyB8ICAgIDMgKy0tCiBhcmNoL2FybS9ib2FyZHMv
cGFuZGEvYm9hcmQuYyAgfCAgICAzICstLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9hcmRzL2JlYWdsZS9i
b2FyZC5jIGIvYXJjaC9hcm0vYm9hcmRzL2JlYWdsZS9ib2FyZC5jCmluZGV4IGUwZTFkYTYuLjg4
MDk2YmIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9iZWFnbGUvYm9hcmQuYworKysgYi9h
cmNoL2FybS9ib2FyZHMvYmVhZ2xlL2JvYXJkLmMKQEAgLTI5Myw4ICsyOTMsNyBAQCBzdGF0aWMg
aW50IGJlYWdsZV9kZXZpY2VzX2luaXQodm9pZCkKIAogI2lmZGVmIENPTkZJR19VU0JfRUhDSV9P
TUFQCiAJaWYgKGVoY2lfb21hcF9pbml0KCZvbWFwX2VoY2lfcGRhdGEpID49IDApCi0JCWFkZF91
c2JfZWhjaV9kZXZpY2UoREVWSUNFX0lEX0RZTkFNSUMsIE9NQVAzX0VIQ0lfQkFTRSwKLQkJCQkg
ICAgT01BUDNfRUhDSV9CQVNFICsgMHgxMCwgJmVoY2lfcGRhdGEpOworCQlvbWFwM19hZGRfZWhj
aSgmZWhjaV9wZGF0YSk7CiAjZW5kaWYgLyogQ09ORklHX1VTQl9FSENJX09NQVAgKi8KICNpZmRl
ZiBDT05GSUdfT01BUF9HUE1DCiAJLyogV1AgaXMgbWFkZSBoaWdoIGFuZCBXQUlUMSBhY3RpdmUg
TG93ICovCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib2FyZHMvcGFuZGEvYm9hcmQuYyBiL2FyY2gv
YXJtL2JvYXJkcy9wYW5kYS9ib2FyZC5jCmluZGV4IDgwNTRhNmEuLjRjYTJhODEgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL2JvYXJkcy9wYW5kYS9ib2FyZC5jCisrKyBiL2FyY2gvYXJtL2JvYXJkcy9w
YW5kYS9ib2FyZC5jCkBAIC04Niw4ICs4Niw3IEBAIHN0YXRpYyB2b2lkIHBhbmRhX2VoY2lfaW5p
dCh2b2lkKQogCS8qIGVuYWJsZSBwb3dlciB0byBodWIgKi8KIAlncGlvX3NldF92YWx1ZShHUElP
X0hVQl9QT1dFUiwgMSk7CiAKLQlhZGRfdXNiX2VoY2lfZGV2aWNlKERFVklDRV9JRF9EWU5BTUlD
LCAweDRhMDY0YzAwLAotCQkJICAgIDB4NGEwNjRjMDAgKyAweDEwLCAmZWhjaV9wZGF0YSk7CisJ
b21hcDQ0eHhfYWRkX2VoY2koJmVoY2lfcGRhdGEpOwogfQogI2Vsc2UKIHN0YXRpYyB2b2lkIHBh
bmRhX2VoY2lfaW5pdCh2b2lkKQotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2JhcmVib3gK
