Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5-g21.free.fr ([2a01:e0c:1:1599::14])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpEKL-0004qg-RV
 for barebox@lists.infradead.org; Sat, 07 Dec 2013 09:37:36 +0000
Received: from localhost.localdomain (unknown [82.233.81.124])
 by smtp5-g21.free.fr (Postfix) with ESMTP id F357ED48149
 for <barebox@lists.infradead.org>; Sat,  7 Dec 2013 10:37:08 +0100 (CET)
From: =?UTF-8?q?Eric=20B=C3=A9nard?= <eric@eukrea.com>
Date: Sat,  7 Dec 2013 10:36:56 +0100
Message-Id: <1386409020-11914-3-git-send-email-eric@eukrea.com>
In-Reply-To: <1386409020-11914-1-git-send-email-eric@eukrea.com>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 3/7] at91: sama5d3: use the sama5 smc instead of the sam9 one
To: barebox@lists.infradead.org

U2lnbmVkLW9mZi1ieTogRXJpYyBCw6luYXJkIDxlcmljQGV1a3JlYS5jb20+Ci0tLQogYXJjaC9h
cm0vbWFjaC1hdDkxL0tjb25maWcgICB8IDEgLQogYXJjaC9hcm0vbWFjaC1hdDkxL01ha2VmaWxl
ICB8IDIgKy0KIGFyY2gvYXJtL21hY2gtYXQ5MS9zYW1hNWQzLmMgfCAyICstCiAzIGZpbGVzIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNo
L2FybS9tYWNoLWF0OTEvS2NvbmZpZyBiL2FyY2gvYXJtL21hY2gtYXQ5MS9LY29uZmlnCmluZGV4
IDZhYjM3NGUuLmQ0MTFlZGMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL21hY2gtYXQ5MS9LY29uZmln
CisrKyBiL2FyY2gvYXJtL21hY2gtYXQ5MS9LY29uZmlnCkBAIC0yNCw3ICsyNCw2IEBAIGNvbmZp
ZyBTT0NfQVQ5MVNBTTkKIGNvbmZpZyBTT0NfU0FNQTUKIAlib29sCiAJc2VsZWN0IENQVV9WNwot
CXNlbGVjdCBBVDkxU0FNOV9TTUMKIAlzZWxlY3QgQVQ5MVNBTTlfVElNRVIKIAogY29uZmlnIEFS
Q0hfVEVYVF9CQVNFCmRpZmYgLS1naXQgYS9hcmNoL2FybS9tYWNoLWF0OTEvTWFrZWZpbGUgYi9h
cmNoL2FybS9tYWNoLWF0OTEvTWFrZWZpbGUKaW5kZXggYWI4MGU1Zi4uMThkMTU2YyAxMDA2NDQK
LS0tIGEvYXJjaC9hcm0vbWFjaC1hdDkxL01ha2VmaWxlCisrKyBiL2FyY2gvYXJtL21hY2gtYXQ5
MS9NYWtlZmlsZQpAQCAtMzAsNCArMzAsNCBAQCBvYmotJChDT05GSUdfQVJDSF9BVDkxU0FNOUcy
MCkgKz0gYXQ5MXNhbTkyNjAubyBhdDkxc2FtOTI2MF9kZXZpY2VzLm8KIG9iai0kKENPTkZJR19B
UkNIX0FUOTFTQU05RzQ1KSArPSBhdDkxc2FtOWc0NS5vIGF0OTFzYW05ZzQ1X2RldmljZXMubwog
b2JqLSQoQ09ORklHX0FSQ0hfQVQ5MVNBTTlYNSkJKz0gYXQ5MXNhbTl4NS5vIGF0OTFzYW05eDVf
ZGV2aWNlcy5vCiBvYmotJChDT05GSUdfQVJDSF9BVDkxU0FNOU4xMikJKz0gYXQ5MXNhbTluMTIu
byBhdDkxc2FtOW4xMl9kZXZpY2VzLm8KLW9iai0kKENPTkZJR19BUkNIX1NBTUE1RDMpCSs9IHNh
bWE1ZDMubyBzYW1hNWQzX2RldmljZXMubworb2JqLSQoQ09ORklHX0FSQ0hfU0FNQTVEMykJKz0g
c2FtYTVkMy5vIHNhbWE1ZDNfZGV2aWNlcy5vIHNhbWE1X3NtYy5vCmRpZmYgLS1naXQgYS9hcmNo
L2FybS9tYWNoLWF0OTEvc2FtYTVkMy5jIGIvYXJjaC9hcm0vbWFjaC1hdDkxL3NhbWE1ZDMuYwpp
bmRleCBhYTY4MWFhLi5hY2JmMDE4IDEwMDY0NAotLS0gYS9hcmNoL2FybS9tYWNoLWF0OTEvc2Ft
YTVkMy5jCisrKyBiL2FyY2gvYXJtL21hY2gtYXQ5MS9zYW1hNWQzLmMKQEAgLTM4Niw3ICszODYs
NyBAQCBzdGF0aWMgdm9pZCBzYW1hNWQzX2luaXRpYWxpemUodm9pZCkKIAlhdDkxX2FkZF9zYW05
eDVfZ3Bpbyg0LCBTQU1BNUQzX0JBU0VfUElPRSk7CiAKIAlhdDkxX2FkZF9waXQoU0FNQTVEM19C
QVNFX1BJVCk7Ci0JYXQ5MV9hZGRfc2FtOV9zbWMoREVWSUNFX0lEX1NJTkdMRSwgU0FNQTVEM19C
QVNFX0hTTUMgKyAweDYwMCwgMHhhMCk7CisJYXQ5MV9hZGRfc2FtYTVfc21jKERFVklDRV9JRF9T
SU5HTEUsIFNBTUE1RDNfQkFTRV9IU01DICsgMHg2MDAsIDB4YTApOwogfQogCiBBVDkxX1NPQ19T
VEFSVChzYW1hNWQzKQotLSAKMS44LjMuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmJhcmVib3ggbWFpbGluZyBsaXN0CmJhcmVib3hAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Jh
cmVib3gK
