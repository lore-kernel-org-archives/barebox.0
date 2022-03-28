Delivery-date: Mon, 28 Mar 2022 12:04:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYmEb-008sOq-GB
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 12:04:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYmEd-0001MB-PH
	for lore@pengutronix.de; Mon, 28 Mar 2022 12:04:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3AEoBtm3EzznRv5HDNIyChjN5mZZnNk/2UeQCH3kBno=; b=pUkwa9pFoJR5AVXHxXC4mbFW2a
	KDkDY96zrGpEH2qYOWgWPCABpM1HQTDpzHuF37udPFXCEaLo1ZEG3uBp6pzOfXnWtwEJ/rW7WOlZ6
	53JU8kG7ZJ/F4n7jWT6HPtpOwkmh16woyKFZhYWtJqGByGgLnGJ6YusTir6omK0h9E44rJwq5iQsn
	9Xc5jqw5MBVZpgheRvenY4tMTnEVwMTyzHTjpTZ31LTwGt9AlTW69w+8VPmF3k2vaDyeaaEjcU3Gd
	0D4p1B6OtWQI6FXA4Bt/AhH/FNHyDOQhlbDutG2U90Rh2UpQHs+Jov3hDLFa6SF83CJMzBCqpLclI
	X1wDmB2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYmDO-00873G-C3; Mon, 28 Mar 2022 10:03:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYmDJ-00872M-9a
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 10:03:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYmDH-0001Gz-C1; Mon, 28 Mar 2022 12:03:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYmDG-0003se-BI; Mon, 28 Mar 2022 12:03:02 +0200
Date: Mon, 28 Mar 2022 12:03:02 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220328100302.GS12181@pengutronix.de>
References: <32d47eaa-df0b-c949-ffd0-89e19ca1f244@pengutronix.de>
 <20220322090007.233155-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220322090007.233155-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:02:50 up 107 days, 18:48, 88 users,  load average: 0.47, 0.50,
 0.35
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_030305_361407_7110A65A 
X-CRM114-Status: GOOD (  26.26  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] crypto: Followup to crypto symbol renaming for algo
 registration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 22, 2022 at 10:00:07AM +0100, Uwe Kleine-K=F6nig wrote:
> The symbols were renamed to a nicer and consistent naming scheme, but I
> missed to adapt a few usages.
> =

> This was done using:
> =

> 	perl -p -i -e 's/\bCONFIG_(?:DIGEST_)?(MD5|SHA1|SHA224|SHA256|SHA384|SHA=
512|HMAC)\b/CONFIG_HAVE_DIGEST_$1/;' crypto/hmac.c crypto/sha2.c crypto/sha=
4.c
> =

> Now there don't seem to be any old names left:
> =

> Reported-by: Renaud Barbier <Renaud.Barbier@ametek.com>
> Fixes: 03fb5524b064 ("crypto: consistently name the algo digest symbols H=
AVE_DIGEST_...")
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  crypto/hmac.c | 12 ++++++------
>  crypto/sha2.c |  4 ++--
>  crypto/sha4.c |  4 ++--
>  3 files changed, 10 insertions(+), 10 deletions(-)

Applied, thanks

Sascha

> =

> diff --git a/crypto/hmac.c b/crypto/hmac.c
> index 37b270df7a95..20fc470d9059 100644
> --- a/crypto/hmac.c
> +++ b/crypto/hmac.c
> @@ -181,17 +181,17 @@ static int digest_hmac_register(char *name, unsigne=
d int pad_length)
>  =

>  static int digest_hmac_initcall(void)
>  {
> -	if (IS_ENABLED(CONFIG_MD5))
> +	if (IS_ENABLED(CONFIG_HAVE_DIGEST_MD5))
>  		digest_hmac_register("md5", 64);
> -	if (IS_ENABLED(CONFIG_SHA1))
> +	if (IS_ENABLED(CONFIG_HAVE_DIGEST_SHA1))
>  		digest_hmac_register("sha1", 64);
> -	if (IS_ENABLED(CONFIG_SHA224))
> +	if (IS_ENABLED(CONFIG_HAVE_DIGEST_SHA224))
>  		digest_hmac_register("sha224", 64);
> -	if (IS_ENABLED(CONFIG_SHA256))
> +	if (IS_ENABLED(CONFIG_HAVE_DIGEST_SHA256))
>  		digest_hmac_register("sha256", 64);
> -	if (IS_ENABLED(CONFIG_SHA384))
> +	if (IS_ENABLED(CONFIG_HAVE_DIGEST_SHA384))
>  		digest_hmac_register("sha384", 128);
> -	if (IS_ENABLED(CONFIG_SHA512))
> +	if (IS_ENABLED(CONFIG_HAVE_DIGEST_SHA512))
>  		digest_hmac_register("sha512", 128);
>  =

>  	return 0;
> diff --git a/crypto/sha2.c b/crypto/sha2.c
> index 013f5bb3b248..cac509564814 100644
> --- a/crypto/sha2.c
> +++ b/crypto/sha2.c
> @@ -338,7 +338,7 @@ static struct digest_algo m224 =3D {
>  =

>  static int sha224_digest_register(void)
>  {
> -	if (!IS_ENABLED(CONFIG_SHA224))
> +	if (!IS_ENABLED(CONFIG_HAVE_DIGEST_SHA224))
>  		return 0;
>  =

>  	return digest_algo_register(&m224);
> @@ -365,7 +365,7 @@ struct digest_algo m256 =3D {
>  #ifndef __PBL__
>  static int sha256_digest_register(void)
>  {
> -	if (!IS_ENABLED(CONFIG_SHA256))
> +	if (!IS_ENABLED(CONFIG_HAVE_DIGEST_SHA256))
>  		return 0;
>  =

>  	return digest_algo_register(&m256);
> diff --git a/crypto/sha4.c b/crypto/sha4.c
> index a2e90c0a2cae..8c94f5011dc2 100644
> --- a/crypto/sha4.c
> +++ b/crypto/sha4.c
> @@ -258,7 +258,7 @@ static struct digest_algo m384 =3D {
>  =

>  static int sha384_digest_register(void)
>  {
> -	if (!IS_ENABLED(CONFIG_SHA384))
> +	if (!IS_ENABLED(CONFIG_HAVE_DIGEST_SHA384))
>  		return 0;
>  =

>  	return digest_algo_register(&m384);
> @@ -284,7 +284,7 @@ static struct digest_algo m512 =3D {
>  =

>  static int sha512_digest_register(void)
>  {
> -	if (!IS_ENABLED(CONFIG_SHA512))
> +	if (!IS_ENABLED(CONFIG_HAVE_DIGEST_SHA512))
>  		return 0;
>  =

>  	return digest_algo_register(&m512);
> -- =

> 2.35.1
> =

> =

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

