Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uou3E-0005V4-K6
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 11:26:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 71C8CBF0E7
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2013 13:21:06 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Tue, 18 Jun 2013 13:25:45 +0200
Message-Id: <1371554747-9052-2-git-send-email-t.gamez@phytec.de>
In-Reply-To: <1371554747-9052-1-git-send-email-t.gamez@phytec.de>
References: <1371554747-9052-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 1/3] ARM: OMAP: AM33xx: Add muxing function for spi0
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogVGVyZXNhIEfDoW1leiA8dC5nYW1lekBwaHl0ZWMuZGU+Ci0tLQogYXJj
aC9hcm0vbWFjaC1vbWFwL2FtMzN4eF9tdXguYyAgICAgICAgICAgICAgfCAgICA1ICsrKysrCiBh
cmNoL2FybS9tYWNoLW9tYXAvaW5jbHVkZS9tYWNoL2FtMzN4eC1tdXguaCB8ICAgIDEgKwogMiBm
aWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC9hcm0vbWFjaC1vbWFwL2FtMzN4eF9tdXguYyBiL2FyY2gvYXJtL21hY2gtb21hcC9h
bTMzeHhfbXV4LmMKaW5kZXggNDI0ZDEyMC4uYWJjODU4NiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0v
bWFjaC1vbWFwL2FtMzN4eF9tdXguYworKysgYi9hcmNoL2FybS9tYWNoLW9tYXAvYW0zM3h4X211
eC5jCkBAIC0zMTQsMyArMzE0LDggQEAgdm9pZCBhbTMzeHhfZW5hYmxlX21tYzBfcGluX211eCh2
b2lkKQogewogCWNvbmZpZ3VyZV9tb2R1bGVfcGluX211eChtbWMwX3Bpbl9tdXgpOwogfQorCit2
b2lkIGFtMzN4eF9lbmFibGVfc3BpMF9waW5fbXV4KHZvaWQpCit7CisJY29uZmlndXJlX21vZHVs
ZV9waW5fbXV4KHNwaTBfcGluX211eCk7Cit9CmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLW9t
YXAvaW5jbHVkZS9tYWNoL2FtMzN4eC1tdXguaCBiL2FyY2gvYXJtL21hY2gtb21hcC9pbmNsdWRl
L21hY2gvYW0zM3h4LW11eC5oCmluZGV4IDQ0YjkzYmQuLmQ2YjE5ZGQgMTAwNjQ0Ci0tLSBhL2Fy
Y2gvYXJtL21hY2gtb21hcC9pbmNsdWRlL21hY2gvYW0zM3h4LW11eC5oCisrKyBiL2FyY2gvYXJt
L21hY2gtb21hcC9pbmNsdWRlL21hY2gvYW0zM3h4LW11eC5oCkBAIC0yNTYsNSArMjU2LDYgQEAg
ZXh0ZXJuIHZvaWQgYW0zM3h4X2VuYWJsZV9pMmMyX3Bpbl9tdXgodm9pZCk7CiBleHRlcm4gdm9p
ZCBhbTMzeHhfZW5hYmxlX3VhcnQwX3Bpbl9tdXgodm9pZCk7CiBleHRlcm4gdm9pZCBhbTMzeHhf
ZW5hYmxlX3VhcnQyX3Bpbl9tdXgodm9pZCk7CiBleHRlcm4gdm9pZCBhbTMzeHhfZW5hYmxlX21t
YzBfcGluX211eCh2b2lkKTsKK2V4dGVybiB2b2lkIGFtMzN4eF9lbmFibGVfc3BpMF9waW5fbXV4
KHZvaWQpOwogCiAjZW5kaWYgLypfX0FNMzNYWF9NVVhfSF9fICovCi0tIAoxLjcuMC40CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWls
aW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
