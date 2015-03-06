Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTspZ-00034y-K5
 for barebox@lists.infradead.org; Fri, 06 Mar 2015 14:02:25 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 4DC61A00215
 for <barebox@lists.infradead.org>; Fri,  6 Mar 2015 15:02:47 +0100 (CET)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Fri, 6 Mar 2015 14:59:32 +0100
Message-Id: <1425650372-29593-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] ARM: phycore-am335x-som: Fix boards with no SPI
To: barebox@lists.infradead.org

Qm9hcmRzIGxpa2UgcGh5Qk9BUkQtV0VHQS1yZGsgZG8gbm90IGhhdmUgU1BJIEZsYXNoLgpUaGUg
Y29tcGF0aWJsZSBzdHJpbmcgd2FzIG5vdCB1cGRhdGVkIHdoZW4gbWVyZ2luZyBhbGwgcGh5dGVj
CmFtMzM1eCBTT01zIHRvIG9uZSBib2FyZCBmaWxlLgpVcGRhdGluZyB0aGlzIG5vdy4KClNpZ25l
ZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGFyY2gvYXJt
L2R0cy9hbTMzNXgtcGh5dGVjLXBoeWNvcmUtc29tLW5vLXNwaS5kdHMgfCAyICstCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNo
L2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHljb3JlLXNvbS1uby1zcGkuZHRzIGIvYXJjaC9hcm0v
ZHRzL2FtMzM1eC1waHl0ZWMtcGh5Y29yZS1zb20tbm8tc3BpLmR0cwppbmRleCA2MzUwNzA2Li5h
ZDAzZDRkIDEwMDY0NAotLS0gYS9hcmNoL2FybS9kdHMvYW0zMzV4LXBoeXRlYy1waHljb3JlLXNv
bS1uby1zcGkuZHRzCisrKyBiL2FyY2gvYXJtL2R0cy9hbTMzNXgtcGh5dGVjLXBoeWNvcmUtc29t
LW5vLXNwaS5kdHMKQEAgLTEyLDcgKzEyLDcgQEAKIAogLyB7CiAJbW9kZWwgPSAiUGh5dGVjIHBo
eUNPUkUgQU0zMzV4IjsKLQljb21wYXRpYmxlID0gInBoeXRlYyxwaHljb3JlLWFtMzM1eC1zb20i
LCAidGksYW0zM3h4IjsKKwljb21wYXRpYmxlID0gInBoeXRlYyxwaHljb3JlLWFtMzM1eC1zb20i
LCAicGh5dGVjLGFtMzM1eC1zb20iLCAidGksYW0zM3h4IjsKIH07CiAKICZlZXByb20gewotLSAK
MS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
