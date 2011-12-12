Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaDHp-00073t-Go
 for barebox@lists.infradead.org; Mon, 12 Dec 2011 21:19:50 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 3C595A63B0
 for <barebox@lists.infradead.org>; Mon, 12 Dec 2011 22:19:44 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon, 12 Dec 2011 22:19:35 +0100
Message-Id: <1323724779-370-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1323724779-370-1-git-send-email-eric@eukrea.com>
References: <1323724779-370-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/6] CPUIMX35: enable the watchdog clock asap
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgzNS9sb3dsZXZlbC5jIHwgICAgNSArKysrKwogMSBmaWxl
cyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vYm9hcmRzL2V1a3JlYV9jcHVpbXgzNS9sb3dsZXZlbC5jIGIvYXJjaC9hcm0vYm9h
cmRzL2V1a3JlYV9jcHVpbXgzNS9sb3dsZXZlbC5jCmluZGV4IGE5MDlhODcuLjk2OWM4MTMgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtL2JvYXJkcy9ldWtyZWFfY3B1aW14MzUvbG93bGV2ZWwuYworKysg
Yi9hcmNoL2FybS9ib2FyZHMvZXVrcmVhX2NwdWlteDM1L2xvd2xldmVsLmMKQEAgLTEyMyw2ICsx
MjMsMTEgQEAgdm9pZCBfX2JhcmVfaW5pdCBfX25ha2VkIGJvYXJkX2luaXRfbG93bGV2ZWwodm9p
ZCkKIAlyIHw9IDB4MDAwMDAwMDM7CiAJd3JpdGVsKHIsIGNjbV9iYXNlICsgQ0NNX0NHUjEpOwog
CisJLyogZW5hYmxlIHdhdGNoZG9nIGFzYXAgKi8KKwlyID0gcmVhZGwoY2NtX2Jhc2UgKyBDQ01f
Q0dSMik7CisJciB8PSAweDAzMDAwMDAwOworCXdyaXRlbChyLCBjY21fYmFzZSArIENDTV9DR1Iy
KTsKKwogCXIgPSByZWFkbChJTVhfTDJDQ19CQVNFICsgTDJYMF9BVVhfQ1RSTCk7CiAJciB8PSAw
eDEwMDA7CiAJd3JpdGVsKHIsIElNWF9MMkNDX0JBU0UgKyBMMlgwX0FVWF9DVFJMKTsKLS0gCjEu
Ny42LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
