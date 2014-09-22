Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([212.27.42.1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWBry-00041Q-Q1
 for barebox@lists.infradead.org; Mon, 22 Sep 2014 22:14:07 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp1-g21.free.fr (Postfix) with ESMTP id 13E87940002
 for <barebox@lists.infradead.org>; Tue, 23 Sep 2014 00:13:22 +0200 (CEST)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Tue, 23 Sep 2014 00:13:34 +0200
Message-Id: <1411424015-16466-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 1/2] serial-imx: fix for non of usage
To: barebox@lists.infradead.org

dGhpcyB3YXMgYnJva2VuIGJ5IDoKIjM4NDNiZmQgc2VyaWFsOiBpbXg6IERldGVybWluZSBkZXZp
Y2UgbmFtZSBmcm9tIGRldmljZSB0cmVlIgoKVGVzdGVkIG9uIGFuIGkuTVgzNS4KClNpZ25lZC1v
ZmYtYnk6IEVyaWMgQsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGRyaXZlcnMvc2VyaWFs
L3NlcmlhbF9pbXguYyB8IDEwICsrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zZXJpYWwvc2VyaWFs
X2lteC5jIGIvZHJpdmVycy9zZXJpYWwvc2VyaWFsX2lteC5jCmluZGV4IDQ3NGJmYWYuLmU5N2Zk
MmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc2VyaWFsL3NlcmlhbF9pbXguYworKysgYi9kcml2ZXJz
L3NlcmlhbC9zZXJpYWxfaW14LmMKQEAgLTMzOCwxMCArMzM4LDExIEBAIHN0YXRpYyBpbnQgaW14
X3NlcmlhbF9wcm9iZShzdHJ1Y3QgZGV2aWNlX2QgKmRldikKIAljZGV2LT5mbHVzaCA9IGlteF9z
ZXJpYWxfZmx1c2g7CiAJY2Rldi0+c2V0YnJnID0gaW14X3NlcmlhbF9zZXRiYXVkcmF0ZTsKIAlj
ZGV2LT5saW51eF9jb25zb2xlX25hbWUgPSAidHR5bXhjIjsKLQlkZXZuYW1lID0gb2ZfYWxpYXNf
Z2V0KGRldi0+ZGV2aWNlX25vZGUpOwotCWlmIChkZXZuYW1lKQotCQljZGV2LT5kZXZuYW1lID0g
eHN0cmR1cChkZXZuYW1lKTsKLQorCWlmIChkZXYtPmRldmljZV9ub2RlKSB7CisJCWRldm5hbWUg
PSBvZl9hbGlhc19nZXQoZGV2LT5kZXZpY2Vfbm9kZSk7CisJCWlmIChkZXZuYW1lKQorCQkJY2Rl
di0+ZGV2bmFtZSA9IHhzdHJkdXAoZGV2bmFtZSk7CisJfQogCWlteF9zZXJpYWxfaW5pdF9wb3J0
KGNkZXYpOwogCiAJLyogRW5hYmxlIFVBUlQgKi8KQEAgLTM1Miw3ICszNTMsNiBAQCBzdGF0aWMg
aW50IGlteF9zZXJpYWxfcHJvYmUoc3RydWN0IGRldmljZV9kICpkZXYpCiAJY29uc29sZV9yZWdp
c3RlcihjZGV2KTsKIAlwcml2LT5ub3RpZnkubm90aWZpZXJfY2FsbCA9IGlteF9jbG9ja3NvdXJj
ZV9jbG9ja19jaGFuZ2U7CiAJY2xvY2tfcmVnaXN0ZXJfY2xpZW50KCZwcml2LT5ub3RpZnkpOwot
CiAJcmV0dXJuIDA7CiAKIGVycl9mcmVlOgotLSAKMS45LjMKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9iYXJlYm94Cg==
