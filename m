Delivery-date: Thu, 02 Feb 2023 08:24:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNTxN-00B6Z4-Ro
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 08:24:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNTxL-0004TI-8C
	for lore@pengutronix.de; Thu, 02 Feb 2023 08:24:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9bkPKJ41dXDSy+/CCLXis8zy3g+x+pgtw3DMvFbgkE8=; b=kKP3Wem4U4hzC4fJEfpDHqMH5h
	vQ1JO7sgwBCOpPOq5JUtnzm2qiSFlSbFreCbyG7QXh4RrjbepMFpjxhDVrIuAUtuIagcWNybT+jim
	zd71GkDVTMwTgoe1zI9FNAwojwNO8wf8x6kAlJsu1Oa/fBDjZLW8Uno6KhCkQTB4F4cu2S6PrerbI
	1V2pS/gJFzKbaMoDQpDS0WtekAu5KZHdwtgAyp1RdlT9K0x+3yrk0pkpCQT2lRCf5iH/m7oOQUgKH
	9lN2ycf8f4qK3qO5aVpw5+tRP0iyKc57fbca/ogoBHmAPe5k8qdsghHx3nNF9SLnBmNqBr3XKMZ2Z
	g44Wr2gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNTw7-00Ecxd-9d; Thu, 02 Feb 2023 07:23:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNTw2-00Ecwj-50
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 07:23:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNTw0-0004NT-Tz; Thu, 02 Feb 2023 08:23:04 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pNTvz-00029q-Of; Thu, 02 Feb 2023 08:23:03 +0100
Date: Thu, 2 Feb 2023 08:23:03 +0100
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230202072303.GJ13319@pengutronix.de>
References: <20230201053334.971854-1-contact@jookia.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230201053334.971854-1-contact@jookia.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_232306_208089_E5F79F5D 
X-CRM114-Status: GOOD (  23.11  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ddr_dimms: Check spd->mem_type before computing
 parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 01, 2023 at 04:33:34PM +1100, John Watts wrote:
> Checking the mem_type here as well as the CRC means developers can
> just read the SPD and pass it directly to parameter computation.
> 
> This makes it so developers can rely fully on parameters for checking
> if RAM is compatible with their board and not need to worry about reading
> SPD data themselves.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---
>  common/ddr1_dimm_params.c | 5 +++++
>  common/ddr2_dimm_params.c | 7 +++++++
>  common/ddr3_dimm_params.c | 5 +++++
>  common/ddr4_dimm_params.c | 5 +++++
>  4 files changed, 22 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/ddr1_dimm_params.c b/common/ddr1_dimm_params.c
> index 3f8759c351..77e047a051 100644
> --- a/common/ddr1_dimm_params.c
> +++ b/common/ddr1_dimm_params.c
> @@ -221,6 +221,11 @@ unsigned int ddr1_compute_dimm_parameters(unsigned int mclk_ps,
>  {
>  	int ret;
>  
> +	if (spd->mem_type != SPD_MEMTYPE_DDR) {
> +		printf("DIMM: SPD data is not DDR1\n");
> +		return 3;
> +	}
> +
>  	ret = ddr1_spd_check(spd);
>  	if (ret) {
>  		printf("DIMM: failed checksum\n");
> diff --git a/common/ddr2_dimm_params.c b/common/ddr2_dimm_params.c
> index 2cec662ecb..b9c0922385 100644
> --- a/common/ddr2_dimm_params.c
> +++ b/common/ddr2_dimm_params.c
> @@ -206,6 +206,13 @@ unsigned int ddr2_compute_dimm_parameters(unsigned int mclk_ps,
>  {
>  	int ret;
>  
> +	if (spd->mem_type != SPD_MEMTYPE_DDR2 &&
> +	    spd->mem_type != SPD_MEMTYPE_DDR2_FBDIMM &&
> +	    spd->mem_type != SPD_MEMTYPE_DDR2_FBDIMM_PROBE) {
> +		printf("DIMM: SPD data is not DDR2\n");
> +		return 3;
> +	}
> +
>  	ret = ddr2_spd_check(spd);
>  	if (ret) {
>  		printf("DIMM: failed checksum\n");
> diff --git a/common/ddr3_dimm_params.c b/common/ddr3_dimm_params.c
> index 6c3dbc6877..1b7512a275 100644
> --- a/common/ddr3_dimm_params.c
> +++ b/common/ddr3_dimm_params.c
> @@ -86,6 +86,11 @@ unsigned int ddr3_compute_dimm_parameters(const struct ddr3_spd_eeprom *spd,
>  	int ftb_10th_ps;
>  	int i;
>  
> +	if (spd->mem_type != SPD_MEMTYPE_DDR3) {
> +		printf("DIMM: SPD data is not DDR3\n");
> +		return 3;
> +	}
> +
>  	ret = ddr3_spd_check(spd);
>  	if (ret) {
>  		printf("DIMM: failed checksum\n");
> diff --git a/common/ddr4_dimm_params.c b/common/ddr4_dimm_params.c
> index 9fa3225d90..045cbd457c 100644
> --- a/common/ddr4_dimm_params.c
> +++ b/common/ddr4_dimm_params.c
> @@ -136,6 +136,11 @@ unsigned int ddr4_compute_dimm_parameters(const struct ddr4_spd_eeprom *spd,
>  	u8 *ptr;
>  	u8 val;
>  
> +	if (spd->mem_type != SPD_MEMTYPE_DDR4) {
> +		printf("DIMM: SPD data is not DDR4\n");
> +		return 3;
> +	}
> +
>  	ret = ddr4_spd_check(spd);
>  	if (ret) {
>  		printf("DIMM: failed checksum\n");
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


