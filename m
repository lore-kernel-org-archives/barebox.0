Delivery-date: Tue, 04 Jul 2023 09:53:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGaqL-00EWrB-Ts
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 09:53:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGaqJ-0007m8-CV
	for lore@pengutronix.de; Tue, 04 Jul 2023 09:52:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k3gsESjY+BuREVQLNl4W0CVUQQtbrxrPSoNsfb0JbGs=; b=gHCwc6nSjpIT4TSmwVmrgG75eg
	ETmiq1t5wgzuFHghQcAbl3k9l2gcE0BWZE2qO5FDl5KJR7beY0EcBtzMmO7J99rLP/IL0zAp2R+cO
	s+Z4wG1e8J0oHZkZkJHPlhL97w7JlWWcvbqivUG3gBeNX5Wpx0s3iPmbbnZv1Eni1iOxZjxp269Xc
	J+bu27R6jUomuBBEozQOUQPeK3o4icmKy72AXD9cXVQYOVO2osoKAfR5Yg/LWoM/8+GHg4/EPc344
	0vTUk3uRUW2pxPNUhv9zEdbuC47sLAxEjrWWRWlDk3LVn7C3LvHLVIWWr1hBXwh+7XQ+w7jU49Tsq
	wsy5VxNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGapb-00CUPN-1V;
	Tue, 04 Jul 2023 07:52:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGapY-00CULw-09
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 07:52:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGapW-0007eC-Fq; Tue, 04 Jul 2023 09:52:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGapW-0003Jz-8F; Tue, 04 Jul 2023 09:52:10 +0200
Date: Tue, 4 Jul 2023 09:52:10 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230704075210.GV18491@pengutronix.de>
References: <20230703230111.2831022-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230703230111.2831022-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_005212_106276_063AE56C 
X-CRM114-Status: GOOD (  23.41  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX8MP: Debix: refactor lowlevel setup
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 04, 2023 at 01:01:10AM +0200, Marco Felsch wrote:
> Pass the dram timing info and devicetree data as parameter instead of
> hardcode them into the function. The required information is passed by
> the ENTRY_FUNCTION after the relocation and the setup_c is done. This
> prepares the lowlevel code for adding new boards with minimal effort.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/boards/polyhex-debix/lowlevel.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/polyhex-debix/lowlevel.c b/arch/arm/boards/polyhex-debix/lowlevel.c
> index 1c8be39559..bb4d6f53a0 100644
> --- a/arch/arm/boards/polyhex-debix/lowlevel.c
> +++ b/arch/arm/boards/polyhex-debix/lowlevel.c
> @@ -83,7 +83,7 @@ static void power_init_board(void)
>  
>  extern struct dram_timing_info imx8mp_debix_dram_timing;
>  
> -static void start_atf(void)
> +static void start_atf(struct dram_timing_info *dram_timing)
>  {
>  	/*
>  	 * If we are in EL3 we are running for the first time and need to
> @@ -95,7 +95,7 @@ static void start_atf(void)
>  
>  	power_init_board();
>  
> -	imx8mp_ddr_init(&imx8mp_debix_dram_timing, DRAM_TYPE_LPDDR4);
> +	imx8mp_ddr_init(dram_timing, DRAM_TYPE_LPDDR4);
>  
>  	imx8mp_load_and_start_image_via_tfa();
>  }
> @@ -116,16 +116,17 @@ static void start_atf(void)
>   *
>   * 4. Standard barebox boot flow continues
>   */
> -static __noreturn noinline void imx8mp_debix_model_a_start(void)
> +static __noreturn noinline void
> +imx8mp_debix_start(struct dram_timing_info *dram_timing, void *dtb)
>  {
>  	setup_uart();
>  
> -	start_atf();
> +	start_atf(dram_timing);
>  
>  	/*
>  	 * Standard entry we hit once we initialized both DDR and ATF
>  	 */
> -	imx8mp_barebox_entry(__dtb_z_imx8mp_debix_model_a_start);
> +	imx8mp_barebox_entry(dtb);
>  }
>  
>  ENTRY_FUNCTION(start_polyhex_debix, r0, r1, r2)
> @@ -135,5 +136,6 @@ ENTRY_FUNCTION(start_polyhex_debix, r0, r1, r2)
>  	relocate_to_current_adr();
>  	setup_c();
>  
> -	imx8mp_debix_model_a_start();
> +	imx8mp_debix_start(&imx8mp_debix_dram_timing,
> +			   __dtb_z_imx8mp_debix_model_a_start);
>  }
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


