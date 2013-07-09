Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwU9Y-0002xo-AI
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 09:24:08 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 91FCBBF0FA
 for <barebox@lists.infradead.org>; Tue,  9 Jul 2013 11:17:33 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 9 Jul 2013 11:23:17 +0200
Message-Id: <1373361802-31080-7-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCHv2 07/12] ARM: AM33xx: Enable clock for all GPIO banks
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Ci0tLQogYXJj
aC9hcm0vbWFjaC1vbWFwL2FtMzN4eF9jbG9jay5jIHwgICAxMiArKysrKysrKysrKysKIDEgZmls
ZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9hcmNoL2FybS9tYWNoLW9tYXAvYW0zM3h4X2Nsb2NrLmMgYi9hcmNoL2FybS9tYWNoLW9tYXAv
YW0zM3h4X2Nsb2NrLmMKaW5kZXggNDQ1MWQ2Mi4uZTRkOWQ3NyAxMDA2NDQKLS0tIGEvYXJjaC9h
cm0vbWFjaC1vbWFwL2FtMzN4eF9jbG9jay5jCisrKyBiL2FyY2gvYXJtL21hY2gtb21hcC9hbTMz
eHhfY2xvY2suYwpAQCAtNTMsNiArNTMsMTggQEAgc3RhdGljIHZvaWQgaW50ZXJmYWNlX2Nsb2Nr
c19lbmFibGUodm9pZCkKIAkvKiBHUElPMCAqLwogCV9fcmF3X3dyaXRlbChQUkNNX01PRF9FTiwg
Q01fV0tVUF9HUElPMF9DTEtDVFJMKTsKIAl3aGlsZSAoX19yYXdfcmVhZGwoQ01fV0tVUF9HUElP
MF9DTEtDVFJMKSAhPSBQUkNNX01PRF9FTik7CisKKwkvKiBHUElPMSAqLworCV9fcmF3X3dyaXRl
bChQUkNNX01PRF9FTiwgQ01fUEVSX0dQSU8xX0NMS0NUUkwpOworCXdoaWxlIChfX3Jhd19yZWFk
bChDTV9QRVJfR1BJTzFfQ0xLQ1RSTCkgIT0gUFJDTV9NT0RfRU4pOworCisJLyogR1BJTzIgKi8K
KwlfX3Jhd193cml0ZWwoUFJDTV9NT0RfRU4sIENNX1BFUl9HUElPMl9DTEtDVFJMKTsKKwl3aGls
ZSAoX19yYXdfcmVhZGwoQ01fUEVSX0dQSU8yX0NMS0NUUkwpICE9IFBSQ01fTU9EX0VOKTsKKwor
CS8qIEdQSU8zICovCisJX19yYXdfd3JpdGVsKFBSQ01fTU9EX0VOLCBDTV9QRVJfR1BJTzNfQ0xL
Q1RSTCk7CisJd2hpbGUgKF9fcmF3X3JlYWRsKENNX1BFUl9HUElPM19DTEtDVFJMKSAhPSBQUkNN
X01PRF9FTik7CiB9CiAKIHN0YXRpYyB2b2lkIHBvd2VyX2RvbWFpbl90cmFuc2l0aW9uX2VuYWJs
ZSh2b2lkKQotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2JhcmVib3gK
