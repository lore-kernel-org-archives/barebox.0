Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOoO5-0000O7-8f
 for barebox@lists.infradead.org; Thu, 18 Oct 2012 11:35:43 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3D434BF0F0
 for <barebox@lists.infradead.org>; Thu, 18 Oct 2012 13:35:32 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Thu, 18 Oct 2012 13:35:30 +0200
Message-Id: <1350560130-21431-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] ARM OMAP: Enable gpio output
To: barebox@lists.infradead.org

RW5hYmxlIG91dHB1dCBpbnN0ZWFkIG9mIGRpc2FibGluZyBpdC4KClNpZ25lZC1vZmYtYnk6IFRl
cmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGFyY2gvYXJtL21hY2gtb21hcC9v
bWFwNF9nZW5lcmljLmMgfCAgICAyICstCiAxIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9ucygr
KSwgMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLW9tYXAvb21hcDRf
Z2VuZXJpYy5jIGIvYXJjaC9hcm0vbWFjaC1vbWFwL29tYXA0X2dlbmVyaWMuYwppbmRleCA3NjEz
NGYyLi5kNzc3MWJmIDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLW9tYXAvb21hcDRfZ2VuZXJp
Yy5jCisrKyBiL2FyY2gvYXJtL21hY2gtb21hcC9vbWFwNF9nZW5lcmljLmMKQEAgLTUzMiw3ICs1
MzIsNyBAQCBub2lubGluZSBpbnQgb21hcDRfc2NhbGVfdmNvcmVzKHVuc2lnbmVkIHZzZWwwX3Bp
bikKIAkJd3JpdGVsKHZhbCwgYmFzZSArIDB4MTkwKTsKIAogCQl2YWwgPSAgcmVhZGwoYmFzZSAr
IDB4MTM0KTsKLQkJdmFsICY9ICgxIDw8ICh2c2VsMF9waW4gJiBHUElPX01BU0spKTsKKwkJdmFs
ICY9IH4oMSA8PCAodnNlbDBfcGluICYgR1BJT19NQVNLKSk7CiAJCXdyaXRlbCh2YWwsIGJhc2Ug
KyAweDEzNCk7CiAKIAkJdmFsID0gMSA8PCAodnNlbDBfcGluICYgR1BJT19NQVNLKTsKLS0gCjEu
Ny4wLjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpi
YXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
