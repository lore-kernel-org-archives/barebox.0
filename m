Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkBTR-0003PT-52
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 13:10:54 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9B36BA003DF
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 15:11:36 +0200 (CEST)
From: =?UTF-8?q?Stefan=20M=C3=BCller-Klieser?= <s.mueller-klieser@phytec.de>
Date: Mon, 20 Apr 2015 15:10:27 +0200
Message-Id: <1429535427-16243-2-git-send-email-s.mueller-klieser@phytec.de>
In-Reply-To: <1429535427-16243-1-git-send-email-s.mueller-klieser@phytec.de>
References: <1429535427-16243-1-git-send-email-s.mueller-klieser@phytec.de>
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
Subject: [RFC][PATCH 1/1] scripts/Makefile: add TARGETCC
To: barebox@lists.infradead.org

VGhpcyBnaXZlcyB0aGUgYnVpbGRzeXN0ZW0gdGhlIGFiaWxpdHkgdG8gaGFuZCBkb3duIHVzZXIg
c3BhY2UgdG9vbGNoYWluCnNldHRpbmdzIHRvIHRhcmdldCB0b29scyBpbiB0aGUgc2NyaXB0cyBm
b2xkZXIsIGlmIG5lY2Vzc2FyeS4KClNpZ25lZC1vZmYtYnk6IFN0ZWZhbiBNw7xsbGVyLUtsaWVz
ZXIgPHMubXVlbGxlci1rbGllc2VyQHBoeXRlYy5kZT4KLS0tCiBzY3JpcHRzL01ha2VmaWxlIHwg
NCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvc2NyaXB0cy9NYWtlZmlsZSBiL3NjcmlwdHMvTWFrZWZpbGUKaW5kZXggNzRj
MjIxMy4uODcyY2Q5OSAxMDA2NDQKLS0tIGEvc2NyaXB0cy9NYWtlZmlsZQorKysgYi9zY3JpcHRz
L01ha2VmaWxlCkBAIC00MCw4ICs0MCwxMCBAQCB0YXJnZXRwcm9ncy0kKENPTkZJR19JTURfVEFS
R0VUKSArPSBiYXJlYm94aW1kLXRhcmdldAogIyBMZXQgY2xlYW4gZGVzY2VuZCBpbnRvIHN1YmRp
cnMKIHN1YmRpci0JKz0gYmFzaWMga2NvbmZpZyBzZXR1cG1icgogCitUQVJHRVRDQyA/PSAkKEND
KQorCiBxdWlldF9jbWRfY3NpbmdsZQk9IENDICAgICAgJEAKLSAgICAgIGNtZF9jc2luZ2xlCT0g
JChDQykgLVdwLC1NRCwkKGRlcGZpbGUpICQoQ0ZMQUdTKSAtbyAkQCAkPAorICAgICAgY21kX2Nz
aW5nbGUJPSAkKFRBUkdFVENDKSAtV3AsLU1ELCQoZGVwZmlsZSkgJChDRkxBR1MpIC1vICRAICQ8
CiAKIF9fdGFyZ2V0cHJvZ3MJOj0gJChzb3J0ICQodGFyZ2V0cHJvZ3MteSkgJCh0YXJnZXRwcm9n
cy1tKSkKIHRhcmdldC1jc2luZ2xlCTo9ICQoZm9yZWFjaCBtLCQoX190YXJnZXRwcm9ncyksJChp
ZiAkKCQobSktb2JqcyksLCQobSkpKQotLSAKMS45LjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApiYXJlYm94QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9iYXJlYm94Cg==
