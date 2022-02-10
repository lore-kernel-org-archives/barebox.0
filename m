Delivery-date: Thu, 10 Feb 2022 16:42:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIBaq-00Bvv9-75
	for lore@lore.pengutronix.de; Thu, 10 Feb 2022 16:42:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nIBao-0002mZ-BT
	for lore@pengutronix.de; Thu, 10 Feb 2022 16:42:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ryBj20AY9KtZhsNnTRlbrhj2E8PxPGEEa2Q6REacBaE=; b=bYqes6rgkQ46bUTPwXoK+zFzk1
	cta3aZkQCFDRV64af4ZW4VxZkAwt1qKId2hAcjk5VioHjarfTRvCZS66q6IXtX7gl85cqc4qvZZMt
	y+Qs6QKxuCCv88+GtjoaDmvXqIevf86jEQg4HVkRdSqGpRl2Mf52YqK7Kd9Rr10jOsSICxSqxHYTV
	3PwBCcw8AbmgFb4XGdLGCzpE9WzDbkMNkvKdpo8eWOTP68iZKzEvGUk8VrvNFH3566+dbX6G3A+dM
	/tnp0sI9sbn6ZKjQHTvOH7D+aPpzmL8EqPtT4r4XswTeOCfcp1QryT3FUnaGEHkBKV5AdB/042B44
	yqyMeRhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIBZJ-004FYC-1w; Thu, 10 Feb 2022 15:41:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIBZE-004FXq-B8
 for barebox@lists.infradead.org; Thu, 10 Feb 2022 15:41:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nIBZC-0002iC-Ek; Thu, 10 Feb 2022 16:41:06 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nIBZC-0002vx-5Q; Thu, 10 Feb 2022 16:41:06 +0100
Date: Thu, 10 Feb 2022 16:41:06 +0100
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
 Bastian Krause <bst@pengutronix.de>
Message-ID: <20220210154106.GB18637@pengutronix.de>
References: <20220209085125.177442-1-u.kleine-koenig@pengutronix.de>
 <c4e9f860-74cd-4054-5af6-b3a37a2fd064@pengutronix.de>
 <20220209095924.x7p4wo47thxbeih5@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220209095924.x7p4wo47thxbeih5@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:40:57 up 62 days, 26 min, 82 users,  load average: 0.09, 0.14,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_074108_410783_3AD86176 
X-CRM114-Status: GOOD (  30.84  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] crypto: consistently name the algo digest symbols
 HAVE_DIGEST_...
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 09, 2022 at 10:59:24AM +0100, Uwe Kleine-K=F6nig wrote:
> The better naming prevents confusion (for me at least) because
> MACHINE_ID depends on a symbol that cannot be enabled manually.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

> On Wed, Feb 09, 2022 at 10:32:21AM +0100, Ahmad Fatoum wrote:
> > On 09.02.22 09:51, Uwe Kleine-K=F6nig wrote:
> > > SHA1 is a symbol that cannot be enabled manually and all other symbols
> > > needing it, select it:
> > > =

> > > $ git grep -B3 -E '(depends on|select) SHA1\>' HEAD
> > > HEAD:common/Kconfig-config MACHINE_ID
> > > HEAD:common/Kconfig-    bool "compute unique machine-id"
> > > HEAD:common/Kconfig-    depends on FLEXIBLE_BOOTARGS
> > > HEAD:common/Kconfig:    depends on SHA1
> > > --
> > > HEAD:crypto/Kconfig-
> > > HEAD:crypto/Kconfig-config DIGEST_SHA1_GENERIC
> > > HEAD:crypto/Kconfig-    bool "SHA1"
> > > HEAD:crypto/Kconfig:    select SHA1
> > > --
> > > HEAD:crypto/Kconfig-config DIGEST_SHA1_ARM
> > > HEAD:crypto/Kconfig-    tristate "SHA1 digest algorithm (ARM-asm)"
> > > HEAD:crypto/Kconfig-    depends on ARM
> > > HEAD:crypto/Kconfig:    select SHA1
> > > =

> > > Fixes: aada84e72e15 ("common: machine_id: introduce machine id genera=
tion")
> > > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > =

> > SHA1 is selected by either DIGEST_SHA1_GENERIC or DIGEST_SHA1_ARM.
> > I don't think this is correct.
> =

> Yes, understood that now, too and agree my patch is bad.
> =

> My confusion wouldn't have happend with this patch:
> =

>  common/Kconfig |  2 +-
>  crypto/Kconfig | 34 +++++++++++++++++-----------------
>  2 files changed, 18 insertions(+), 18 deletions(-)
> =

> diff --git a/common/Kconfig b/common/Kconfig
> index e540cba7ebaa..6e82f8900e6b 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1042,7 +1042,7 @@ config RESET_SOURCE
>  config MACHINE_ID
>  	bool "compute unique machine-id"
>  	depends on FLEXIBLE_BOOTARGS
> -	depends on SHA1
> +	depends on HAVE_DIGEST_SHA1
>  	help
>  	  Compute a persistent machine-specific id and store it to $global.mach=
ine_id.
>  	  The id is a hash of device-specific information added via
> diff --git a/crypto/Kconfig b/crypto/Kconfig
> index ff83a40f5b43..19994c9d8372 100644
> --- a/crypto/Kconfig
> +++ b/crypto/Kconfig
> @@ -14,25 +14,25 @@ menuconfig DIGEST
>  =

>  if DIGEST
>  =

> -config MD5
> +config HAVE_DIGEST_MD5
>  	bool
>  =

> -config SHA1
> +config HAVE_DIGEST_SHA1
>  	bool
>  =

> -config SHA224
> +config HAVE_DIGEST_SHA224
>  	bool
>  =

> -config SHA256
> +config HAVE_DIGEST_SHA256
>  	bool
>  =

> -config SHA384
> +config HAVE_DIGEST_SHA384
>  	bool
>  =

> -config SHA512
> +config HAVE_DIGEST_SHA512
>  	bool
>  =

> -config DIGEST_HMAC
> +config HAVE_DIGEST_HMAC
>  	bool
>  =

>  config DIGEST_CRC32_GENERIC
> @@ -41,36 +41,36 @@ config DIGEST_CRC32_GENERIC
>  =

>  config DIGEST_MD5_GENERIC
>  	bool "MD5"
> -	select MD5
> +	select HAVE_DIGEST_MD5
>  =

>  config DIGEST_SHA1_GENERIC
>  	bool "SHA1"
> -	select SHA1
> +	select HAVE_DIGEST_SHA1
>  =

>  config DIGEST_SHA224_GENERIC
>  	bool "SHA224"
> -	select SHA224
> +	select HAVE_DIGEST_SHA224
>  =

>  config DIGEST_SHA256_GENERIC
>  	bool "SHA256"
> -	select SHA256
> +	select HAVE_DIGEST_SHA256
>  =

>  config DIGEST_SHA384_GENERIC
>  	bool "SHA384"
> -	select SHA384
> +	select HAVE_DIGEST_SHA384
>  =

>  config DIGEST_SHA512_GENERIC
>  	bool "SHA512"
> -	select SHA512
> +	select HAVE_DIGEST_SHA512
>  =

>  config DIGEST_HMAC_GENERIC
>  	bool "HMAC"
> -	select DIGEST_HMAC
> +	select HAVE_DIGEST_HMAC
>  =

>  config DIGEST_SHA1_ARM
>  	tristate "SHA1 digest algorithm (ARM-asm)"
>  	depends on ARM
> -	select SHA1
> +	select HAVE_DIGEST_SHA1
>  	help
>  	  SHA-1 secure hash standard (FIPS 180-1/DFIPS 180-2) implemented
>  	  using optimized ARM assembler.
> @@ -78,8 +78,8 @@ config DIGEST_SHA1_ARM
>  config DIGEST_SHA256_ARM
>  	tristate "SHA-224/256 digest algorithm (ARM-asm and NEON)"
>  	depends on ARM
> -	select SHA256
> -	select SHA224
> +	select HAVE_DIGEST_SHA256
> +	select HAVE_DIGEST_SHA224
>  	help
>  	  SHA-256 secure hash standard (DFIPS 180-2) implemented
>  	  using optimized ARM assembler and NEON, when available.
> -- =

> 2.34.1
> =

> =

> -- =

> Pengutronix e.K.                           | Uwe Kleine-K=F6nig          =
  |
> Industrial Linux Solutions                 | https://www.pengutronix.de/ |



> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

