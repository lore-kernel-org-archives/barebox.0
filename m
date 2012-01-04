Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiOCU-0002we-IS
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 10:36:07 +0000
Received: from localhost.localdomain (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 720394B009B
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 11:36:00 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Wed,  4 Jan 2012 11:35:59 +0100
Message-Id: <1325673359-8101-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] u_serial: add setbrg to be able to use loadb & co
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogZHJpdmVy
cy91c2IvZ2FkZ2V0L3Vfc2VyaWFsLmMgfCAgICA1ICsrKysrCiAxIGZpbGVzIGNoYW5nZWQsIDUg
aW5zZXJ0aW9ucygrKSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9n
YWRnZXQvdV9zZXJpYWwuYyBiL2RyaXZlcnMvdXNiL2dhZGdldC91X3NlcmlhbC5jCmluZGV4IGUz
MTBjM2EuLjk4MGI1MjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdXNiL2dhZGdldC91X3NlcmlhbC5j
CisrKyBiL2RyaXZlcnMvdXNiL2dhZGdldC91X3NlcmlhbC5jCkBAIC00MjAsNiArNDIwLDEwIEBA
IHN0YXRpYyBpbnQgc2VyaWFsX2dldGMoc3RydWN0IGNvbnNvbGVfZGV2aWNlICpjZGV2KQogc3Rh
dGljIHZvaWQgc2VyaWFsX2ZsdXNoKHN0cnVjdCBjb25zb2xlX2RldmljZSAqY2RldikKIHsKIH0K
K3N0YXRpYyBpbnQgc2VyaWFsX3NldGJhdWRyYXRlKHN0cnVjdCBjb25zb2xlX2RldmljZSAqY2Rl
diwgaW50IGJhdWRyYXRlKQoreworCXJldHVybiAwOworfQogCiBzdGF0aWMgc3RydWN0IGNvbnNv
bGVfZGV2aWNlICpteWNkZXY7CiAKQEAgLTQ2OSw2ICs0NzMsNyBAQCBpbnQgZ3NlcmlhbF9jb25u
ZWN0KHN0cnVjdCBnc2VyaWFsICpnc2VyLCB1OCBwb3J0X251bSkKIAljZGV2LT5wdXRjID0gc2Vy
aWFsX3B1dGM7CiAJY2Rldi0+Z2V0YyA9IHNlcmlhbF9nZXRjOwogCWNkZXYtPmZsdXNoID0gc2Vy
aWFsX2ZsdXNoOworCWNkZXYtPnNldGJyZyA9IHNlcmlhbF9zZXRiYXVkcmF0ZTsKIAljb25zb2xl
X3JlZ2lzdGVyKGNkZXYpOwogCW15Y2RldiA9IGNkZXY7CiAKLS0gCjEuNy43LjUKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcg
bGlzdApiYXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9iYXJlYm94Cg==
