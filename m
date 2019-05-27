Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001n1-Mr
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-00021u-Hc
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003CW-P1
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:27 +0200
Message-Id: <20190527095744.5923-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 01/18] kbuild: suppress warnings from 'getconf LFS_*'
To: barebox@lists.infradead.org

RnJvbTogTWFzYWhpcm8gWWFtYWRhIDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KClN1
cHByZXNzIHdhcm5pbmdzIGZvciBzeXN0ZW1zIHRoYXQgZG8gbm90IHJlY29nbml6ZSBMRlNfKi4K
CiBnZXRjb25mOiBubyBzdWNoIGNvbmZpZ3VyYXRpb24gcGFyYW1ldGVyIGBMRlNfQ0ZMQUdTJwog
Z2V0Y29uZjogbm8gc3VjaCBjb25maWd1cmF0aW9uIHBhcmFtZXRlciBgTEZTX0xERkxBR1MnCiBn
ZXRjb25mOiBubyBzdWNoIGNvbmZpZ3VyYXRpb24gcGFyYW1ldGVyIGBMRlNfTElCUycKCkZpeGVz
OiBkN2YxNGM2NmMyNzMgKCJrYnVpbGQ6IEVuYWJsZSBMYXJnZSBGaWxlIFN1cHBvcnQgZm9yIGhv
c3Rwcm9ncyIpClJlcG9ydGVkLWJ5OiBDaGVuIEZlbmcgPHB1Y2suY2hlbkBoaXNpbGljb24uY29t
PgpTaWduZWQtb2ZmLWJ5OiBNYXNhaGlybyBZYW1hZGEgPHlhbWFkYS5tYXNhaGlyb0Bzb2Npb25l
eHQuY29tPgpBY2tlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5n
dXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogQWhtYWQgRmF0b3VtIDxhLmZhdG91bUBwZW5ndXRy
b25peC5kZT4KLS0tCiBNYWtlZmlsZSB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZp
bGUKaW5kZXggMjkzNDdiNjc4MDNjLi5jMDlhNTgwMjZhZjYgMTAwNjQ0Ci0tLSBhL01ha2VmaWxl
CisrKyBiL01ha2VmaWxlCkBAIC0xNzcsOSArMTc3LDkgQEAgQ09ORklHX1NIRUxMIDo9ICQoc2hl
bGwgaWYgWyAteCAiJCRCQVNIIiBdOyB0aGVuIGVjaG8gJCRCQVNIOyBcCiAJICBlbHNlIGlmIFsg
LXggL2Jpbi9iYXNoIF07IHRoZW4gZWNobyAvYmluL2Jhc2g7IFwKIAkgIGVsc2UgZWNobyBzaDsg
ZmkgOyBmaSkKIAotSE9TVF9MRlNfQ0ZMQUdTIDo9ICQoc2hlbGwgZ2V0Y29uZiBMRlNfQ0ZMQUdT
KQotSE9TVF9MRlNfTERGTEFHUyA6PSAkKHNoZWxsIGdldGNvbmYgTEZTX0xERkxBR1MpCi1IT1NU
X0xGU19MSUJTIDo9ICQoc2hlbGwgZ2V0Y29uZiBMRlNfTElCUykKK0hPU1RfTEZTX0NGTEFHUyA6
PSAkKHNoZWxsIGdldGNvbmYgTEZTX0NGTEFHUyAyPi9kZXYvbnVsbCkKK0hPU1RfTEZTX0xERkxB
R1MgOj0gJChzaGVsbCBnZXRjb25mIExGU19MREZMQUdTIDI+L2Rldi9udWxsKQorSE9TVF9MRlNf
TElCUyA6PSAkKHNoZWxsIGdldGNvbmYgTEZTX0xJQlMgMj4vZGV2L251bGwpCiAKIEhPU1RDQyAg
ICAgICA9IGdjYwogSE9TVENYWCAgICAgID0gZysrCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpiYXJlYm94IG1haWxpbmcgbGlzdApi
YXJlYm94QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9iYXJlYm94Cg==
