Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWgP7-0003Y5-6b
 for barebox@lists.infradead.org; Wed, 24 Sep 2014 06:50:22 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2CBC9A00262
 for <barebox@lists.infradead.org>; Wed, 24 Sep 2014 08:49:58 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Wed, 24 Sep 2014 08:49:51 +0200
Message-Id: <1411541391-19948-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH] read_file_2: Fix return value
To: barebox@lists.infradead.org

U2V0IHJldHVybiB2YWx1ZSBjb3JyZWN0IGluIGVycm9yIGNhc2UuClRoaXMgcHJldmVudHMgYmFy
ZWJveCBmcm9tIGNyYXNoaW5nIGluIHNvbWUgY29uZGl0aW9ucy4KClNpZ25lZC1vZmYtYnk6IFRl
cmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGxpYi9saWJmaWxlLmMgfCAgICA0
ICsrKy0KIDEgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2xpYi9saWJmaWxlLmMgYi9saWIvbGliZmlsZS5jCmluZGV4IGM2ZmI2ZDcu
LmM2MjZlMmYgMTAwNjQ0Ci0tLSBhL2xpYi9saWJmaWxlLmMKKysrIGIvbGliL2xpYmZpbGUuYwpA
QCAtMTYzLDggKzE2MywxMCBAQCBhZ2FpbjoKIAlidWYgPSB4emFsbG9jKHJlYWRfc2l6ZSArIDEp
OwogCiAJZmQgPSBvcGVuKGZpbGVuYW1lLCBPX1JET05MWSk7Ci0JaWYgKGZkIDwgMCkKKwlpZiAo
ZmQgPCAwKSB7CisJCXJldCA9IGZkOwogCQlnb3RvIGVycl9vdXQ7CisJfQogCiAJcmV0ID0gcmVh
ZF9mdWxsKGZkLCBidWYsIHJlYWRfc2l6ZSk7CiAJaWYgKHJldCA8IDApCi0tIAoxLjcuMC40CgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
