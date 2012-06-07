Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SccSx-0002Pi-Ur
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 13:09:33 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Thu, 07 Jun 2012 15:05:11 +0200
Message-ID: <m362b3l1bs.fsf@intrepid.localdomain>
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
Subject: [PATCH] Fix SHA224 to produce 28 bytes of hash (instead of 32).
To: barebox@lists.infradead.org

VGhpcyBmaXhlcyBhIHBhbmljIGluIHNoYTIyNHN1bS4KClNpZ25lZC1vZmYtYnk6IEtyenlzenRv
ZiBIYcWCYXNhIDxraGNAcG0ud2F3LnBsPgoKZGlmZiAtLWdpdCBhL2NyeXB0by9zaGEyLmMgYi9j
cnlwdG8vc2hhMi5jCmluZGV4IDMwOTZlZmUuLmFmYmUwYzMgMTAwNjQ0Ci0tLSBhL2NyeXB0by9z
aGEyLmMKKysrIGIvY3J5cHRvL3NoYTIuYwpAQCAtMjc0LDcgKzI3NCw4IEBAIHN0YXRpYyB2b2lk
IHNoYTJfZmluaXNoKHNoYTJfY29udGV4dCAqIGN0eCwgdWludDhfdCBkaWdlc3RbMzJdKQogCVBV
VF9VSU5UMzJfQkUoY3R4LT5zdGF0ZVs0XSwgZGlnZXN0LCAxNik7CiAJUFVUX1VJTlQzMl9CRShj
dHgtPnN0YXRlWzVdLCBkaWdlc3QsIDIwKTsKIAlQVVRfVUlOVDMyX0JFKGN0eC0+c3RhdGVbNl0s
IGRpZ2VzdCwgMjQpOwotCVBVVF9VSU5UMzJfQkUoY3R4LT5zdGF0ZVs3XSwgZGlnZXN0LCAyOCk7
CisJaWYgKCFjdHgtPmlzMjI0KQorCQlQVVRfVUlOVDMyX0JFKGN0eC0+c3RhdGVbN10sIGRpZ2Vz
dCwgMjgpOwogfQogCiBzdHJ1Y3Qgc2hhMiB7CgotLSAKS3J6eXN6dG9mIEhhbGFzYQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5n
IGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
