Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TG4Vz-0006c6-Qw
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 08:59:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9D6B6A30A1
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 10:59:37 +0200 (CEST)
From: =?UTF-8?q?Teresa=20G=C3=A1mez?= <t.gamez@phytec.de>
Date: Mon, 24 Sep 2012 10:59:35 +0200
Message-Id: <1348477176-25398-1-git-send-email-t.gamez@phytec.de>
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
Subject: [PATCH 1/2] drivers gpio: Check for negativ gpio values
To: barebox@lists.infradead.org

ClNpZ25lZC1vZmYtYnk6IFRlcmVzYSBHw6FtZXogPHQuZ2FtZXpAcGh5dGVjLmRlPgotLS0KIGRy
aXZlcnMvZ3Bpby9ncGlvLmMgfCAgICAyICstCiAxIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vZ3Bpby5jIGIv
ZHJpdmVycy9ncGlvL2dwaW8uYwppbmRleCA2YWQ4ZDI3Li4wOTY2ZTJhIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwaW8vZ3Bpby5jCisrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLmMKQEAgLTEwLDcgKzEw
LDcgQEAgc3RhdGljIHN0cnVjdCBncGlvX2NoaXAgKmdwaW9fZGVzY1tBUkNIX05SX0dQSU9TXTsK
IAogc3RhdGljIGludCBncGlvX2lzX3ZhbGlkKHVuc2lnbmVkIGdwaW8pCiB7Ci0JaWYgKGdwaW8g
PCBBUkNIX05SX0dQSU9TKQorCWlmIChncGlvIDwgQVJDSF9OUl9HUElPUyAmJiBncGlvID49IDAp
CiAJCXJldHVybiAxOwogCXJldHVybiAwOwogfQotLSAKMS43LjAuNAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJh
cmVib3hAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2JhcmVib3gK
