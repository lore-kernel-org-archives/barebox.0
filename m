Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S1vp3-0007HZ-LK
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 08:20:43 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 671EBA60FD
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2012 09:20:36 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Mon, 27 Feb 2012 09:20:13 +0100
Message-Id: <1330330813-21605-7-git-send-email-eric@eukrea.com>
In-Reply-To: <1330330813-21605-1-git-send-email-eric@eukrea.com>
References: <20120222073359.GL3852@pengutronix.de>
 <1330330813-21605-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH v2 7/7] mx53-loco: update defconfig
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vY29uZmlncy9mcmVlc2NhbGVfbXg1M19sb2NvX2RlZmNvbmZpZyB8ICAgIDUgKysrKy0KIDEg
ZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2NvbmZpZ3MvZnJlZXNjYWxlX214NTNfbG9jb19kZWZjb25maWcgYi9hcmNo
L2FybS9jb25maWdzL2ZyZWVzY2FsZV9teDUzX2xvY29fZGVmY29uZmlnCmluZGV4IGI0ZTg3MmQu
LmJkMmJkYmUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2NvbmZpZ3MvZnJlZXNjYWxlX214NTNfbG9j
b19kZWZjb25maWcKKysrIGIvYXJjaC9hcm0vY29uZmlncy9mcmVlc2NhbGVfbXg1M19sb2NvX2Rl
ZmNvbmZpZwpAQCAtMjEsNyArMjEsNiBAQCBDT05GSUdfREVCVUdfSU5GTz15CiBDT05GSUdfQ01E
X0VESVQ9eQogQ09ORklHX0NNRF9TTEVFUD15CiBDT05GSUdfQ01EX1NBVkVFTlY9eQotQ09ORklH
X0NNRF9MT0FERU5WPXkKIENPTkZJR19DTURfRVhQT1JUPXkKIENPTkZJR19DTURfUFJJTlRFTlY9
eQogQ09ORklHX0NNRF9SRUFETElORT15CkBAIC00Niw2ICs0NSw3IEBAIENPTkZJR19DTURfTUFH
SUNWQVI9eQogQ09ORklHX0NNRF9NQUdJQ1ZBUl9IRUxQPXkKIENPTkZJR19DTURfR1BJTz15CiBD
T05GSUdfQ01EX1VOQ09NUFJFU1M9eQorQ09ORklHX0NNRF9JMkM9eQogQ09ORklHX05FVD15CiBD
T05GSUdfTkVUX0RIQ1A9eQogQ09ORklHX05FVF9ORlM9eQpAQCAtNTUsOSArNTUsMTIgQEAgQ09O
RklHX05FVF9URlRQX1BVU0g9eQogQ09ORklHX05FVF9ORVRDT05TT0xFPXkKIENPTkZJR19EUklW
RVJfTkVUX0ZFQ19JTVg9eQogIyBDT05GSUdfU1BJIGlzIG5vdCBzZXQKK0NPTkZJR19JMkM9eQor
Q09ORklHX0kyQ19JTVg9eQogQ09ORklHX01DST15CiBDT05GSUdfTUNJX1NUQVJUVVA9eQogQ09O
RklHX01DSV9JTVhfRVNESEM9eQorQ09ORklHX0kyQ19NQzM0NzA4PXkKIENPTkZJR19GU19GQVQ9
eQogQ09ORklHX0ZTX0ZBVF9XUklURT15CiBDT05GSUdfRlNfRkFUX0xGTj15Ci0tIAoxLjcuNy42
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJv
eCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
