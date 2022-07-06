Delivery-date: Wed, 06 Jul 2022 14:03:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o93kh-007gMq-Am
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 14:03:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o93kj-0004HE-FD
	for lore@pengutronix.de; Wed, 06 Jul 2022 14:03:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZUrFe96BZoJ9N/AqEdR3wFtS2DEeZsvQEmF43RRTEas=; b=FHOJuKnNpUQ4ws2dXnVPUXG6Mz
	AbjlaELJzIrjkRU1FpZ8QX9rXPS+L8a4ZX9HfR9jCP3gA0tjxka1JdzHl5302jsqGrOlLga3ukKz/
	aO3AuvvzrQX107H2LrbQ30NfSdVyL+1ou+MhMnmRkjyImH52xyXf64r1D1ckUqGBtwpue7L1xwU+I
	yE/xAfN9FambWYvbUmxXTC6KEejegiypWtbf0qN/yBlTcjOqotfeTcgIMOpXNYnfKVN0QOf9pqdXg
	j28OClhmW5Q9z90wg9oZEFfaYPaOValpUYgmcykxRcrzxYwCpqVkpR/yvFqTQ5dzPW8A/KMnJ81Ck
	wAizu3cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o93j0-009n9A-BD; Wed, 06 Jul 2022 12:01:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o93iu-009n64-5t
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 12:01:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o93iq-0003hy-08; Wed, 06 Jul 2022 14:01:36 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1o93ip-0002qG-JD; Wed, 06 Jul 2022 14:01:35 +0200
Date: Wed, 6 Jul 2022 14:01:35 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, David Jander <david@protonic.nl>
Message-ID: <20220706120135.2mbr6t6ri7yr5d3j@pengutronix.de>
References: <20220706081236.2833520-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220706081236.2833520-1-u.kleine-koenig@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_050140_269955_D3683DF4 
X-CRM114-Status: GOOD (  12.33  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MM: Consolidate common code to load image and
 jump to it via TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Uwe,

thanks for the patch.

On 22-07-06, Uwe Kleine-König wrote:

...

> @@ -96,11 +92,6 @@ extern struct dram_timing_info imx8mm_evk_dram_timing;
>  
>  static void start_atf(void)
>  {
> -	size_t bl31_size;
> -	const u8 *bl31;
> -	enum bootsource src;
> -	int instance;
> -
>  	/*
>  	 * If we are in EL3 we are running for the first time and need to
>  	 * initialize the DRAM and run TF-A (BL31). The TF-A will then jump
> @@ -112,35 +103,7 @@ static void start_atf(void)
>  	power_init_board();
>  	imx8mm_ddr_init(&imx8mm_evk_dram_timing);

I would move the imx8mm_ddr_init() into your helper
imx8mm_load_and_start_image_via_tfa() and pass the timing as argument.
So your helper doesn't depend on the 'hopefully' intialized DRAM. Else I
would add a comment above your helper, that the DRAM must be initialized
before calling this function.

Regards,
  Marco


