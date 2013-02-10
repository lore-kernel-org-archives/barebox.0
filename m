Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U4ZgH-0005kL-9w
 for barebox@lists.infradead.org; Sun, 10 Feb 2013 16:23:11 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 63262A62DB
 for <barebox@lists.infradead.org>; Sun, 10 Feb 2013 17:23:00 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Sun, 10 Feb 2013 17:22:51 +0100
Message-Id: <1360513371-16470-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1360513371-16470-1-git-send-email-eric@eukrea.com>
References: <1360513371-16470-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/3] mx23-evk: update defconfig
To: barebox@lists.infradead.org

LSBlbmFibGUgVVNCIGdhZGdldCBhbmQgREZVCi0gZW5hYmxlIE1DSSBhbmQgcHJvYmUgYXQgYm9v
dAotIGVuYWJsZSBFWFQ0IGFuZCBGQVQgZmlsZXN5c3RlbXMKClNpZ25lZC1vZmYtYnk6IEVyaWMg
QsOpbmFyZCA8ZXJpY0BldWtyZWEuY29tPgotLS0KIGFyY2gvYXJtL2NvbmZpZ3MvaW14MjNldmtf
ZGVmY29uZmlnIHwgMTcgKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2NvbmZpZ3Mv
aW14MjNldmtfZGVmY29uZmlnIGIvYXJjaC9hcm0vY29uZmlncy9pbXgyM2V2a19kZWZjb25maWcK
aW5kZXggMmZjNmViZS4uMTUwMmQyMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vY29uZmlncy9pbXgy
M2V2a19kZWZjb25maWcKKysrIGIvYXJjaC9hcm0vY29uZmlncy9pbXgyM2V2a19kZWZjb25maWcK
QEAgLTUsMjAgKzUsMjkgQEAgQ09ORklHX0JST0tFTj15CiBDT05GSUdfTE9OR0hFTFA9eQogQ09O
RklHX0NNRExJTkVfRURJVElORz15CiBDT05GSUdfQVVUT19DT01QTEVURT15Ci1DT05GSUdfUEFS
VElUSU9OPXkKLSMgQ09ORklHX0RFRkFVTFRfRU5WSVJPTk1FTlQgaXMgbm90IHNldAorQ09ORklH
X0RFRkFVTFRfRU5WSVJPTk1FTlRfR0VORVJJQ19ORVc9eQorQ09ORklHX0RFRkFVTFRfRU5WSVJP
Tk1FTlRfR0VORVJJQz15CitDT05GSUdfUkVTRVRfU09VUkNFPXkKIENPTkZJR19ERUJVR19JTkZP
PXkKIENPTkZJR19DTURfRURJVD15CiBDT05GSUdfQ01EX1NMRUVQPXkKIENPTkZJR19DTURfU0FW
RUVOVj15Ci1DT05GSUdfQ01EX0xPQURFTlY9eQogQ09ORklHX0NNRF9FWFBPUlQ9eQogQ09ORklH
X0NNRF9QUklOVEVOVj15CiBDT05GSUdfQ01EX1JFQURMSU5FPXkKIENPTkZJR19DTURfRUNIT19F
PXkKK0NPTkZJR19DTURfUkVTRVQ9eQogQ09ORklHX0NNRF9NVEVTVD15CiBDT05GSUdfQ01EX01U
RVNUX0FMVEVSTkFUSVZFPXkKLUNPTkZJR19DTURfUkVTRVQ9eQogQ09ORklHX0NNRF9USU1FT1VU
PXkKIENPTkZJR19DTURfUEFSVElUSU9OPXkKICMgQ09ORklHX1NQSSBpcyBub3Qgc2V0CitDT05G
SUdfVVNCX0dBREdFVD15CitDT05GSUdfVVNCX0dBREdFVF9ERlU9eQorQ09ORklHX01DST15CitD
T05GSUdfTUNJX1NUQVJUVVA9eQorQ09ORklHX01DSV9NWFM9eQorQ09ORklHX0ZTX0VYVDQ9eQor
Q09ORklHX0ZTX0ZBVD15CitDT05GSUdfRlNfRkFUX1dSSVRFPXkKK0NPTkZJR19GU19GQVRfTEZO
PXkKLS0gCjEuNy4xMS43CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KYmFyZWJveCBtYWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
