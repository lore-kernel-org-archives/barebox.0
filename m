Delivery-date: Thu, 12 Jan 2023 16:02:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFz64-009sLh-Qi
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 16:02:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFz62-0004XU-O5
	for lore@pengutronix.de; Thu, 12 Jan 2023 16:02:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SZaMMuimW4OIUDp6kb1YfYDVVOW1mfmi1GEaIkrm4C0=; b=EnkmH6l9lfJ2P7HJx79gSCnm/L
	lImQi5r1vXiS06QWFIohreZy9iX4/3FTsuomq+iEcc46U4qn+XwntvMFg1I7VmZ/PM2Wm5h2aqNlf
	hhfhEUui6lHLBBlhI6V7zb7wEQz/PTQLliwzaNW9RNepdz9C0dSjHLE1CJ0bEHXSDVWldaSYQgV2Z
	pta1tW4iwOUXgcr14U9aa+huPsl5YE0HKL5ozQyj5ka8CfzdUqNi0EzS9wymXjMIO6BqZrnZ9KWnW
	UU7HJKBRzuU7AoUUSxpx0zlHvJ5f9flExtqZutCHftjxaTFO6oX3ilfVSxOGRY76DJNKXtP1dtx4A
	8uDqgHXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFz52-00FVjm-NP; Thu, 12 Jan 2023 15:01:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFz4x-00FViU-Oq
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 15:01:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFz4w-0004GL-Gp; Thu, 12 Jan 2023 16:01:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFz4w-0004Jn-5d; Thu, 12 Jan 2023 16:01:18 +0100
Date: Thu, 12 Jan 2023 16:01:18 +0100
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230112150118.GY24755@pengutronix.de>
References: <20230111113729.779283-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111113729.779283-1-johannes.schneider@leica-geosystems.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_070119_826964_619B2B1D 
X-CRM114-Status: GOOD (  23.07  )
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
Subject: Re: [PATCH v4] ARM: i.MX8M: separate function call for clock_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 12:37:29PM +0100, Johannes Schneider wrote:
> Add a separate function call for imx8mp_early_clock_init, to avoid
> confusion with imx8mm.
> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  arch/arm/boards/nxp-imx8mp-evk/lowlevel.c       |  2 +-
>  arch/arm/boards/tqma8mpxl/lowlevel.c            |  2 +-
>  arch/arm/mach-imx/imx8m.c                       | 12 +++++++++---
>  arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h |  1 +
>  4 files changed, 12 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> index 4f24dd4cd4..3cb24df1ca 100644
> --- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> @@ -72,7 +72,7 @@ static void power_init_board(void)
>  	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
>  	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
>  
> -	imx8mm_early_clock_init();
> +	imx8mp_early_clock_init();
>  	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
>  
>  	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
> diff --git a/arch/arm/boards/tqma8mpxl/lowlevel.c b/arch/arm/boards/tqma8mpxl/lowlevel.c
> index 0ce0e7a73b..037c7abf4b 100644
> --- a/arch/arm/boards/tqma8mpxl/lowlevel.c
> +++ b/arch/arm/boards/tqma8mpxl/lowlevel.c
> @@ -73,7 +73,7 @@ static void power_init_board(void)
>  	imx8mp_setup_pad(MX8MP_PAD_I2C1_SCL__I2C1_SCL | I2C_PAD_CTRL);
>  	imx8mp_setup_pad(MX8MP_PAD_I2C1_SDA__I2C1_SDA | I2C_PAD_CTRL);
>  
> -	imx8mm_early_clock_init();
> +	imx8mp_early_clock_init();
>  	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
>  
>  	i2c = imx8m_i2c_early_init(IOMEM(MX8MP_I2C1_BASE_ADDR));
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index 9758525b54..7f3856e545 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -182,7 +182,7 @@ int imx8mq_init(void)
>  #define IMX8MM_CCM_ANALOG_SYS_PLL2_GEN_CTRL	0x104
>  #define IMX8MM_CCM_ANALOG_SYS_PLL3_GEN_CTRL	0x114
>  
> -static void __imx8mm_early_clock_init(unsigned long pll3_freq) /* and later */
> +static void __imx8m_early_clock_init(unsigned long pll3_freq) /* and later */
>  {
>  	void __iomem *ana = IOMEM(MX8M_ANATOP_BASE_ADDR);
>  	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
> @@ -252,14 +252,20 @@ static void __imx8mm_early_clock_init(unsigned long pll3_freq) /* and later */
>  
>  void imx8mm_early_clock_init(void)
>  {
> -	__imx8mm_early_clock_init(750000000UL);
> +	__imx8m_early_clock_init(750000000UL);
>  }
>  
>  void imx8mn_early_clock_init(void)
>  {
> -	__imx8mm_early_clock_init(600000000UL);
> +	__imx8m_early_clock_init(600000000UL);
>  }
>  
> +void imx8mp_early_clock_init(void)
> +{
> +	__imx8m_early_clock_init(750000000UL);
> +}
> +
> +
>  #define KEEP_ALIVE			0x18
>  #define VER_L				0x1c
>  #define VER_H				0x20
> diff --git a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
> index eeb15f4dd0..659615e1cc 100644
> --- a/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
> @@ -53,6 +53,7 @@
>  void imx8m_early_setup_uart_clock(void);
>  void imx8mm_early_clock_init(void);
>  void imx8mn_early_clock_init(void);
> +void imx8mp_early_clock_init(void);
>  void imx8m_clock_set_target_val(int clock_id, u32 val);
>  void imx8m_ccgr_clock_enable(int index);
>  void imx8m_ccgr_clock_disable(int index);
> -- 
> 2.25.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


