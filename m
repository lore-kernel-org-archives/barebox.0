Delivery-date: Wed, 09 Feb 2022 11:13:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHjyy-00AXvf-Qu
	for lore@lore.pengutronix.de; Wed, 09 Feb 2022 11:13:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nHjyx-0007PH-70
	for lore@pengutronix.de; Wed, 09 Feb 2022 11:13:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PqvywOBumkAfT2Fnv1MlV4jSrUn7BvlP5zVs/jBjAzw=; b=kVnz+Dvd3V5EfnsB/3ON1Wj9bi
	KkJize8rjUG9MugRK9SC20/B63cnKorWIWRyyYFr/vlNMQIHA9fXM8HBsaxweEe2Ho3F1Lz0boOv1
	yELDoLXkK/SgM25R3tItrYsuJfXDm6UvP2M39VwhdCh+1Fy/BUPoelZbp/gVAOI9kXcOGHaOHebx0
	exlaXVrlRhueGaGviwAbCSvpVQhHAvz5KDlGzWEisL8PhELxXpQuht0GK95y3PxXn72UWAOIZmSTO
	23GpqVCCuy4RYmi1NkWJTEmaA/hWvHwJE0i5DTn3/I/0mVTqtlJPmWMaIHxWvsoZKN0TWAZIfxhYw
	10USRWFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHjxH-00H9IK-PA; Wed, 09 Feb 2022 10:12:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjl5-00H3ck-TR
 for barebox@bombadil.infradead.org; Wed, 09 Feb 2022 09:59:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=vSCTVneaM4daTb7TYtFIdKtr9JM0f601b2RRzl9BNWE=; b=qANS5RLqQNzD/sF0vQXwBTPgq9
 3OBsdTwmALG4P/3f13sw7vXbUSJNvfRJPyRRx8Ni6lem9S5OOFfmQO6paV/H2yvv6Ho2lLQjyzqQb
 Xq0QxomUhdRc3m15r6m5WkR4Qx3jjH1tl8c+mp43D3S+IOmpFjE2UqqH4V5TxsjnsykRFb/ZsNsvA
 v+gfRCiC1SoD4HMdBVWF548zieQmdN1rKZEkNDrnmhXRfL4BtH2zIdEfZYPAnYWZO++wglWCQwSet
 Po26D78oOfcr6Qg+llcRT51W464B6RaqO0JZlM6zQoMADQjM9r8lVmdAi/d6t16x24T/9Ws9yoNiH
 +hRN8jHQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHjl2-007Krd-8E
 for barebox@lists.infradead.org; Wed, 09 Feb 2022 09:59:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1nHjl0-0004qD-7X; Wed, 09 Feb 2022 10:59:26 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nHjl0-00FTeh-7Y; Wed, 09 Feb 2022 10:59:25 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1nHjky-00D48m-Fw; Wed, 09 Feb 2022 10:59:24 +0100
Date: Wed, 9 Feb 2022 10:59:24 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Message-ID: <20220209095924.x7p4wo47thxbeih5@pengutronix.de>
References: <20220209085125.177442-1-u.kleine-koenig@pengutronix.de>
 <c4e9f860-74cd-4054-5af6-b3a37a2fd064@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <c4e9f860-74cd-4054-5af6-b3a37a2fd064@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_095928_310014_6AA2CA10 
X-CRM114-Status: GOOD (  16.64  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0146077966231589824=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] crypto: consistently name the algo digest symbols
 HAVE_DIGEST_...
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--===============0146077966231589824==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2qde5rrx3acxeljn"
Content-Disposition: inline


--2qde5rrx3acxeljn
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The better naming prevents confusion (for me at least) because
MACHINE_ID depends on a symbol that cannot be enabled manually.

Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
---
On Wed, Feb 09, 2022 at 10:32:21AM +0100, Ahmad Fatoum wrote:
> On 09.02.22 09:51, Uwe Kleine-K=F6nig wrote:
> > SHA1 is a symbol that cannot be enabled manually and all other symbols
> > needing it, select it:
> >=20
> > $ git grep -B3 -E '(depends on|select) SHA1\>' HEAD
> > HEAD:common/Kconfig-config MACHINE_ID
> > HEAD:common/Kconfig-    bool "compute unique machine-id"
> > HEAD:common/Kconfig-    depends on FLEXIBLE_BOOTARGS
> > HEAD:common/Kconfig:    depends on SHA1
> > --
> > HEAD:crypto/Kconfig-
> > HEAD:crypto/Kconfig-config DIGEST_SHA1_GENERIC
> > HEAD:crypto/Kconfig-    bool "SHA1"
> > HEAD:crypto/Kconfig:    select SHA1
> > --
> > HEAD:crypto/Kconfig-config DIGEST_SHA1_ARM
> > HEAD:crypto/Kconfig-    tristate "SHA1 digest algorithm (ARM-asm)"
> > HEAD:crypto/Kconfig-    depends on ARM
> > HEAD:crypto/Kconfig:    select SHA1
> >=20
> > Fixes: aada84e72e15 ("common: machine_id: introduce machine id generati=
on")
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
>=20
> SHA1 is selected by either DIGEST_SHA1_GENERIC or DIGEST_SHA1_ARM.
> I don't think this is correct.

Yes, understood that now, too and agree my patch is bad.

My confusion wouldn't have happend with this patch:

 common/Kconfig |  2 +-
 crypto/Kconfig | 34 +++++++++++++++++-----------------
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index e540cba7ebaa..6e82f8900e6b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1042,7 +1042,7 @@ config RESET_SOURCE
 config MACHINE_ID
 	bool "compute unique machine-id"
 	depends on FLEXIBLE_BOOTARGS
-	depends on SHA1
+	depends on HAVE_DIGEST_SHA1
 	help
 	  Compute a persistent machine-specific id and store it to $global.machin=
e_id.
 	  The id is a hash of device-specific information added via
diff --git a/crypto/Kconfig b/crypto/Kconfig
index ff83a40f5b43..19994c9d8372 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -14,25 +14,25 @@ menuconfig DIGEST
=20
 if DIGEST
=20
-config MD5
+config HAVE_DIGEST_MD5
 	bool
=20
-config SHA1
+config HAVE_DIGEST_SHA1
 	bool
=20
-config SHA224
+config HAVE_DIGEST_SHA224
 	bool
=20
-config SHA256
+config HAVE_DIGEST_SHA256
 	bool
=20
-config SHA384
+config HAVE_DIGEST_SHA384
 	bool
=20
-config SHA512
+config HAVE_DIGEST_SHA512
 	bool
=20
-config DIGEST_HMAC
+config HAVE_DIGEST_HMAC
 	bool
=20
 config DIGEST_CRC32_GENERIC
@@ -41,36 +41,36 @@ config DIGEST_CRC32_GENERIC
=20
 config DIGEST_MD5_GENERIC
 	bool "MD5"
-	select MD5
+	select HAVE_DIGEST_MD5
=20
 config DIGEST_SHA1_GENERIC
 	bool "SHA1"
-	select SHA1
+	select HAVE_DIGEST_SHA1
=20
 config DIGEST_SHA224_GENERIC
 	bool "SHA224"
-	select SHA224
+	select HAVE_DIGEST_SHA224
=20
 config DIGEST_SHA256_GENERIC
 	bool "SHA256"
-	select SHA256
+	select HAVE_DIGEST_SHA256
=20
 config DIGEST_SHA384_GENERIC
 	bool "SHA384"
-	select SHA384
+	select HAVE_DIGEST_SHA384
=20
 config DIGEST_SHA512_GENERIC
 	bool "SHA512"
-	select SHA512
+	select HAVE_DIGEST_SHA512
=20
 config DIGEST_HMAC_GENERIC
 	bool "HMAC"
-	select DIGEST_HMAC
+	select HAVE_DIGEST_HMAC
=20
 config DIGEST_SHA1_ARM
 	tristate "SHA1 digest algorithm (ARM-asm)"
 	depends on ARM
-	select SHA1
+	select HAVE_DIGEST_SHA1
 	help
 	  SHA-1 secure hash standard (FIPS 180-1/DFIPS 180-2) implemented
 	  using optimized ARM assembler.
@@ -78,8 +78,8 @@ config DIGEST_SHA1_ARM
 config DIGEST_SHA256_ARM
 	tristate "SHA-224/256 digest algorithm (ARM-asm and NEON)"
 	depends on ARM
-	select SHA256
-	select SHA224
+	select HAVE_DIGEST_SHA256
+	select HAVE_DIGEST_SHA224
 	help
 	  SHA-256 secure hash standard (DFIPS 180-2) implemented
 	  using optimized ARM assembler and NEON, when available.
--=20
2.34.1


--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--2qde5rrx3acxeljn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmIDkHcACgkQwfwUeK3K
7AmDnQf/UfL0eK07hQIP9EG1IiUrMs0bm0R4wers2YJQV2sE/sOCKsuYVC1f+18s
hI3yXIPQpgDQOAk5zNnaXuA/iK8FWTJIqMoPm17uHdfvXJCCpsIeabrwG45jAOkC
L8HcU3AL5U7eUJWgF5jJUYccxlBTroEYreuKTnLF7cDR9sek+3glKd5XOzfBnCQv
UO9oZQycJEF1lxob8f93fX+mST/prlrXrrFCWuDnF4MP3+uJPn7OH960I1E5BS9/
IMkr7ZBuvIAQ1PR579OmDC2+Ci0uG4jN61+45+4QRGiquTfSXf7wzbsRLErrBGWn
G892yn/rfxuxgu5/xjR5WpLPa20p9A==
=X7y1
-----END PGP SIGNATURE-----

--2qde5rrx3acxeljn--


--===============0146077966231589824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0146077966231589824==--


