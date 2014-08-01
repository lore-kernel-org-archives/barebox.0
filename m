Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22d.google.com ([2a00:1450:400c:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDD5e-0004we-Dm
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:41:46 +0000
Received: by mail-we0-f173.google.com with SMTP id q58so4332326wes.18
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 06:41:22 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Fri,  1 Aug 2014 15:42:17 +0200
Message-Id: <1406900538-29656-2-git-send-email-raphael.poggi@erocca.com>
In-Reply-To: <1406900538-29656-1-git-send-email-raphael.poggi@erocca.com>
References: <1406900538-29656-1-git-send-email-raphael.poggi@erocca.com>
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
Subject: [PATCH 1/2] dt-bindings: pinctrl: add at91 file
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

RnJvbTogUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhAZ21haWwuY29tPgoKU2lnbmVkLW9mZi1i
eTogUmFwaGHDq2wgUG9nZ2kgPHBvZ2dpLnJhcGhAZ21haWwuY29tPgotLS0KIGluY2x1ZGUvZHQt
YmluZGluZ3MvcGluY3RybC9hdDkxLmggfCAgIDM1ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcGluY3RybC9hdDkxLmgKCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwvYXQ5MS5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9w
aW5jdHJsL2F0OTEuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi4wZmVlNmZm
Ci0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9waW5jdHJsL2F0OTEuaApA
QCAtMCwwICsxLDM1IEBACisvKgorICogVGhpcyBoZWFkZXIgcHJvdmlkZXMgY29uc3RhbnRzIGZv
ciBtb3N0IGF0OTEgcGluY3RybCBiaW5kaW5ncy4KKyAqCisgKiBDb3B5cmlnaHQgKEMpIDIwMTMg
SmVhbi1DaHJpc3RvcGhlIFBMQUdOSU9MLVZJTExBUkQgPHBsYWduaW9qQGpjcm9zb2Z0LmNvbT4K
KyAqCisgKiBHUEx2MiBvbmx5CisgKi8KKworI2lmbmRlZiBfX0RUX0JJTkRJTkdTX0FUOTFfUElO
Q1RSTF9IX18KKyNkZWZpbmUgX19EVF9CSU5ESU5HU19BVDkxX1BJTkNUUkxfSF9fCisKKyNkZWZp
bmUgQVQ5MV9QSU5DVFJMX05PTkUJCSgwIDw8IDApCisjZGVmaW5lIEFUOTFfUElOQ1RSTF9QVUxM
X1VQCQkoMSA8PCAwKQorI2RlZmluZSBBVDkxX1BJTkNUUkxfTVVMVElfRFJJVkUJKDEgPDwgMSkK
KyNkZWZpbmUgQVQ5MV9QSU5DVFJMX0RFR0xJVENICQkoMSA8PCAyKQorI2RlZmluZSBBVDkxX1BJ
TkNUUkxfUFVMTF9ET1dOCQkoMSA8PCAzKQorI2RlZmluZSBBVDkxX1BJTkNUUkxfRElTX1NDSE1J
VAkJKDEgPDwgNCkKKyNkZWZpbmUgQVQ5MV9QSU5DVFJMX0RFQk9VTkNFCQkoMSA8PCAxNikKKyNk
ZWZpbmUgQVQ5MV9QSU5DVFJMX0RFQk9VTkNFX1ZBTCh4KQkoeCA8PCAxNykKKworI2RlZmluZSBB
VDkxX1BJTkNUUkxfUFVMTF9VUF9ERUdMSVRDSAkoQVQ5MV9QSU5DVFJMX1BVTExfVVAgfCBBVDkx
X1BJTkNUUkxfREVHTElUQ0gpCisKKyNkZWZpbmUgQVQ5MV9QSU9BCTAKKyNkZWZpbmUgQVQ5MV9Q
SU9CCTEKKyNkZWZpbmUgQVQ5MV9QSU9DCTIKKyNkZWZpbmUgQVQ5MV9QSU9ECTMKKyNkZWZpbmUg
QVQ5MV9QSU9FCTQKKworI2RlZmluZSBBVDkxX1BFUklQSF9HUElPCTAKKyNkZWZpbmUgQVQ5MV9Q
RVJJUEhfQQkJMQorI2RlZmluZSBBVDkxX1BFUklQSF9CCQkyCisjZGVmaW5lIEFUOTFfUEVSSVBI
X0MJCTMKKyNkZWZpbmUgQVQ5MV9QRVJJUEhfRAkJNAorCisjZW5kaWYgLyogX19EVF9CSU5ESU5H
U19BVDkxX1BJTkNUUkxfSF9fICovCi0tIAoxLjcuOS41CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vYmFyZWJveAo=
