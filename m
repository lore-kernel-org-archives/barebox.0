Delivery-date: Wed, 11 Jan 2023 11:18:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFYBq-008j4k-A2
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 11:18:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFYBo-0004mL-Gj
	for lore@pengutronix.de; Wed, 11 Jan 2023 11:18:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i0RyjlmfFEd1DmwJ/XZlIwVA3LogP4OXPbGI6ev0SkU=; b=eK5btTQK7XEkseSYDI7oGBQVCM
	pVe1QhUUJaAkzIAUcWIkh7sszy02Zh99iHgN9aF3xPm2q5umYlN8jbb6gjidBzdhCWaMo1HXpV6h7
	6FnxRCLm52q30HyTHxuBcXUfUTpREJmjzuaBBaXEwYNhGfb12X/BUlyVVBAs3D41C//yqBECPDcYe
	+6WLiMFXvPDaHBypVdDUDwMC6Nykl1zlmsOl/v39P7wYapjZXNwa1sZC0JL0HMi9fghix58lezZiM
	sgCJLbzVrdB5W2YW8vdIiVKQE0HTOflCn6X9VVRZK/HLjVCEJlSAukQg56zDc+sOAxezR1WXKR6mP
	EEkiD9Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYAY-00Ajny-5N; Wed, 11 Jan 2023 10:17:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYAT-00AjmO-1i
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 10:17:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pFYAO-0004hN-TW; Wed, 11 Jan 2023 11:17:09 +0100
Message-ID: <e34cc83c-f3cc-27e0-ab23-fe00ccbf3e6e@pengutronix.de>
Date: Wed, 11 Jan 2023 11:17:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
 barebox@lists.infradead.org
References: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_021713_119907_BCA2B786 
X-CRM114-Status: GOOD (  27.40  )
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
Subject: Re: [PATCH v2 1/1] ARM: i.MX8M: add PCA9450 PMIC on rev-b EVK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

How do you generate your patches? Easiest is:

  git config sendemail.to barebox@lists.infradead.org
  git send-email -3 --annotate

This will take care to number the patches correctly.

On 11.01.23 11:01, Johannes Schneider wrote:
> Configure and setup the PMIC found on rev-b EVKs.
> The code is algiend with how imx8mn-evk handles both

aligned*

> PMIC variants: pca9450 vs bd71837

Please note which Boards you tested this on.

> 
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
> ---
>  arch/arm/boards/nxp-imx8mm-evk/lowlevel.c | 51 +++++++++++++++--------
>  1 file changed, 34 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> index 6132df53ec..409554c2d5 100644
> --- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> @@ -16,6 +16,7 @@
>  #include <mach/iomux-mx8mm.h>
>  #include <mach/imx8m-ccm-regs.h>
>  #include <mfd/bd71837.h>
> +#include <mfd/pca9450.h>
>  #include <mach/xload.h>
>  #include <soc/imx8m/ddr.h>
>  #include <image-metadata.h>
> @@ -38,6 +39,25 @@ static void setup_uart(void)
>  	putc_ll('>');
>  }
>  
> +static struct pmic_config pca9450_cfg[] = {
> +	/* BUCKxOUT_DVS0/1 control BUCK123 output */
> +	{ PCA9450_BUCK123_DVS, 0x29 },
> +	/*
> +	 * increase VDD_SOC to typical value 0.95V before first
> +	 * DRAM access, set DVS1 to 0.85v for suspend.
> +	 * Enable DVS control through PMIC_STBY_REQ and
> +	 * set B1_ENMODE=1 (ON by PMIC_ON_REQ=H)
> +	 */
> +	{ PCA9450_BUCK1OUT_DVS0, 0x1C },
> +	/* Set DVS1 to 0.85v for suspend */
> +	/* Enable DVS control through PMIC_STBY_REQ and set B1_ENMODE=1 (ON by PMIC_ON_REQ=H) */
> +	{ PCA9450_BUCK1OUT_DVS1, 0x14 },
> +	{ PCA9450_BUCK1CTRL, 0x59 },
> +
> +	/* set WDOG_B_CFG to cold reset */
> +	{ PCA9450_RESET_CTRL, 0xA1 },
> +};
> +
>  static struct pmic_config bd71837_cfg[] = {
>  	/* decrease RESET key long push time from the default 10s to 10ms */
>  	{ BD718XX_PWRONCONFIG1, 0x0 },
> @@ -51,21 +71,6 @@ static struct pmic_config bd71837_cfg[] = {
>  	{ BD718XX_REGLOCK, 0x11 },
>  };
>  
> -static void power_init_board(void)
> -{

Can you leave this function as-is? This will make the diff more
readable.

> -	struct pbl_i2c *i2c;
> -
> -	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
> -	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
> -
> -	imx8mm_early_clock_init();
> -	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> -
> -	i2c = imx8m_i2c_early_init(IOMEM(MX8MQ_I2C1_BASE_ADDR));
> -
> -	pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
> -}
> -
>  extern struct dram_timing_info imx8mm_evk_dram_timing;
>  
>  static void start_atf(void)
> @@ -78,8 +83,20 @@ static void start_atf(void)
>  	if (current_el() != 3)
>  		return;
>  
> -	power_init_board();
> -	imx8mm_ddr_init(&imx8mm_evk_dram_timing, DRAM_TYPE_LPDDR4);
> +	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SCL_I2C1_SCL);
> +	imx8mm_setup_pad(IMX8MM_PAD_I2C1_SDA_I2C1_SDA);
> +
> +	imx8mm_early_clock_init();
> +	imx8m_ccgr_clock_enable(IMX8M_CCM_CCGR_I2C1);
> +
> +	i2c = imx8m_i2c_early_init(IOMEM(MX8MM_I2C1_BASE_ADDR));
> +
> +	imx8mm_ddr_init(&imx8mm_evk_lpddr4_timing, DRAM_TYPE_LPDDR4);
> +	if (i2c_dev_probe(i2c, 0x25, true) == 0) {
> +		pmic_configure(i2c, 0x25, pca9450_cfg, ARRAY_SIZE(pca9450_cfg));
> +	} else {
> +		pmic_configure(i2c, 0x4b, bd71837_cfg, ARRAY_SIZE(bd71837_cfg));
> +	}

Nitpick: You can drop the braces (Kernel coding style).

>  
>  	imx8mm_load_and_start_image_via_tfa();
>  }

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



