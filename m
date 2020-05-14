Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZIUs-0005EW-0z
 for barebox@lists.infradead.org; Thu, 14 May 2020 18:22:19 +0000
Received: from mailer.emlix.com (p5098be52.dip0.t-ipconnect.de [80.152.190.82])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1.emlix.com (Postfix) with ESMTPS id 810565FD85
 for <barebox@lists.infradead.org>; Thu, 14 May 2020 20:22:12 +0200 (CEST)
From: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>
Date: Thu, 14 May 2020 20:21:49 +0200
Message-Id: <a657213deb361b7d40bfbe2a951ee28e984c8441.1589477005.git.dg@emlix.com>
In-Reply-To: <cover.1589477005.git.dg@emlix.com>
References: <cover.1589477005.git.dg@emlix.com>
In-Reply-To: <cover.1589477005.git.dg@emlix.com>
References: <cover.1589477005.git.dg@emlix.com>
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
Subject: [PATCH v2 01/10] Remove CONFIG_SLICE
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

U2luY2Ugd2UgYXJlIHVuY29uZGl0aW9uYWxseSBjb21waWxpbmcgYW5kIGxpbmtpbmcgdGhlIHNs
aWNlIGNvZGUsIGl0IGRvZXMKbm90IG1ha2Ugc2Vuc2UgdG8gaGF2ZSBhIGNvbmZpZyBvcHRpb24g
dGhhdCBkZXBlbmRzIG9uIENPTkZJR19QT0xMRVIuClRoZSBDT05GSUdfU0xJQ0Ugb3B0aW9uIHdh
cyBhbHNvIGJyb2tlbiBiZWNhdXNlIGl0IHdhcyBtaXNzaW5nIHRoZSAiYm9vbCIKbGluZSB0byBk
ZW5vdGUgaXRzIHR5cGUuCgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgR2zDtmNrbmVyIDxkZ0BlbWxp
eC5jb20+Ci0tLQogY29tbWFuZHMvS2NvbmZpZyB8IDEgLQogY29tbW9uL0tjb25maWcgICB8IDQg
LS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2NvbW1h
bmRzL0tjb25maWcgYi9jb21tYW5kcy9LY29uZmlnCmluZGV4IDVmZjY0NTQ0Mi4uMzNiYzQ3NDNi
IDEwMDY0NAotLS0gYS9jb21tYW5kcy9LY29uZmlnCisrKyBiL2NvbW1hbmRzL0tjb25maWcKQEAg
LTI3Miw3ICsyNzIsNiBAQCBjb25maWcgQ01EX1BPTExFUgogY29uZmlnIENNRF9TTElDRQogCXRy
aXN0YXRlCiAJcHJvbXB0ICJzbGljZSIKLQlkZXBlbmRzIG9uIFNMSUNFCiAJaGVscAogCSAgc2xp
Y2VzIGFyZSBhIHdheSB0byBwcm90ZWN0IHJlc291cmNlcyBmcm9tIGJlaW5nIGFjY2Vzc2VkIGJ5
IHBvbGxlcnMuIFRoZSBzbGljZQogCSAgY29tbWFuZCBjYW4gYmUgdXNlZCB0byBwcmludCBpbmZv
cm1hdGlvbnMgYWJvdXQgc2xpY2VzIGFuZCBhbHNvIHRvIG1hbmlwdWxhdGUKZGlmZiAtLWdpdCBh
L2NvbW1vbi9LY29uZmlnIGIvY29tbW9uL0tjb25maWcKaW5kZXggYmQyYWViYWM3Li40MDBjMDU1
M2MgMTAwNjQ0Ci0tLSBhL2NvbW1vbi9LY29uZmlnCisrKyBiL2NvbW1vbi9LY29uZmlnCkBAIC05
MTMsMTAgKzkxMyw2IEBAIGNvbmZpZyBCQVJFQk9YQ1JDMzJfVEFSR0VUCiBjb25maWcgUE9MTEVS
CiAJYm9vbCAiZ2VuZXJpYyBwb2xsaW5nIGluZnJhc3RydWN0dXJlIgogCi1jb25maWcgU0xJQ0UK
LQlkZXBlbmRzIG9uIFBPTExFUgotCWRlZmF1bHQgeQotCiBjb25maWcgU1RBVEUKIAlib29sICJn
ZW5lcmljIHN0YXRlIGluZnJhc3RydWN0dXJlIgogCXNlbGVjdCBDUkMzMgotLSAKMi4xNy4xCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KYmFyZWJveCBt
YWlsaW5nIGxpc3QKYmFyZWJveEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vYmFyZWJveAo=
