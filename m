Delivery-date: Tue, 04 Jul 2023 09:35:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGaZM-00EVz6-Ds
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 09:35:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGaZK-0005Ny-01
	for lore@pengutronix.de; Tue, 04 Jul 2023 09:35:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G4e0i6s/kwMCKrBlxwda7kR6EIgYzzl/j53vOEldlec=; b=fmcGbS9KNRNgCc7NKxH46ZsGao
	Hae5cHXNAF17uswpDAvpO50bdpudA9X+sBcCTqD2rzVXJxFoaRcSqEY8k+/RsQP/L9BjfToewWOgi
	OVDmqV/xIRIAuG7Q0s3pPzOXQVQoXteUQwYhErayWPcy2frb/Mdjla2tiFplzNN4SIbuGO3C5QUeg
	5d90IVqabzdqNoUOxOWTp+lwXBVaaZKAknirytBUArQlWTCJl8sWCfYQhU2wCrq3DCH1jGDHZyK7/
	fqTXngujB5p06JczpnfTQRfxjOOrcbTDUnl/xfq2rUUABClHOVEz0bkSwVq+x7R1vcMbhnehvjot/
	mlUpulsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGaYB-00CRPz-2z;
	Tue, 04 Jul 2023 07:34:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGaY8-00CRPR-1r
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 07:34:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qGaY7-00053q-9W; Tue, 04 Jul 2023 09:34:11 +0200
Message-ID: <418be9b6-d7d6-17db-4cf7-daac25baaac2@pengutronix.de>
Date: Tue, 4 Jul 2023 09:34:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230703230111.2831022-1-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230703230111.2831022-1-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_003412_618053_61430AAA 
X-CRM114-Status: GOOD (  20.81  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX8MP: Debix: refactor lowlevel setup
 functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 04.07.23 01:01, Marco Felsch wrote:
> Pass the dram timing info and devicetree data as parameter instead of
> hardcode them into the function. The required information is passed by
> the ENTRY_FUNCTION after the relocation and the setup_c is done. This
> prepares the lowlevel code for adding new boards with minimal effort.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/polyhex-debix/lowlevel.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



