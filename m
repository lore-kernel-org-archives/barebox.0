Delivery-date: Wed, 11 Jan 2023 12:27:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZGX-008l6J-IF
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 12:27:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFZGV-0000Xf-My
	for lore@pengutronix.de; Wed, 11 Jan 2023 12:27:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dyZBWBFEiCiTOJz824Qzo8n0W8gM6ql1Z1vnN4b/CFk=; b=dUM1rtsQkU422U+uUSLBDOwb0z
	9vZbewTB3Ldm76XUuBI3Vsa9bawP2pujs0KC7MuWoY7i30aUavh43KeMfjku0yDje7dRIuKPgI/tH
	j22p404AlCf9ofHXtziP1zkSBZiYc2nIEgIa5yH8QwrPtAA8tzgm0Ogm5dyNifmhyrGGXNg4e8gL7
	BQ4sx/Qb9z9JY5udEgo3dcPg6CqpGcULtz3Na+kARtUyUFJd8qkUZKRJG7CJHVjfyiEpqrOOHpYkW
	VlUV/w8MOLhvFm61SdeBqu+T+9nCk0lrkEZZFkU3x5ulbz3mukrFXSh2Qw1igHq02DmcNyJo3VoQd
	Jn/v2CZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZFE-00B3JR-4G; Wed, 11 Jan 2023 11:26:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFZF7-00B3Gg-1l
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 11:26:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pFZF2-00005O-2q; Wed, 11 Jan 2023 12:26:00 +0100
Message-ID: <e5db1632-aea5-17ac-92b8-1ef3e2c9f482@pengutronix.de>
Date: Wed, 11 Jan 2023 12:25:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
References: <20230111111656.757271-1-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230111111656.757271-1-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_032605_124778_EC39370F 
X-CRM114-Status: GOOD (  20.38  )
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
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] ARM: i.MX8M: separate function call for clock_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.01.23 12:16, Johannes Schneider wrote:
> Add a separate function call for imx8mp_early_clock_init, to avoid
> confusion with imx8mm.

Sounds good. Can you touch up arch/arm/boards/tqma8mpxl/lowlevel.c as well?

> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  arch/arm/boards/nxp-imx8mp-evk/lowlevel.c       |  2 +-
>  arch/arm/mach-imx/imx8m.c                       | 12 +++++++++---
>  arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h |  1 +
>  3 files changed, 11 insertions(+), 4 deletions(-)
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

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



