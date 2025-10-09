Delivery-date: Thu, 09 Oct 2025 10:50:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6mLg-005tZG-17
	for lore@lore.pengutronix.de;
	Thu, 09 Oct 2025 10:50:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v6mLf-0005Fr-Le
	for lore@pengutronix.de; Thu, 09 Oct 2025 10:50:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/zecCBamwX3k8/wG1vF0hx+unlFRQ/aTDEqN3mSkxUI=; b=MraRLq/yQlr8LUkoSLu+ny2h1s
	YNACuQJ/tgXQvkbi3sagEAYmZqBcobVyRzWfMDwplj8KEnPYF/SxoYRbOB0Nls0fvR/Qi9mjuoIvp
	caSRkW3O4mQM6bLDVMxHcemwNYvnzeXYGu3qRDz/VaZ4quVE+3BfM+BT+hnOFRUTetYWh0CkjU3wR
	/b5TwCBmnEx0YRR6Yr6nCDXASvBflJl1LWhYsaapQDAkWmCGvYj1Y+PNt02fydqmxkdaWJcgg5dPG
	b7kjukO96nwvnN5iDAab0r0475IvIMpLW88Awf8lxpkQRACX2Ta70KjXI7GhYsnxHi5uNxT5K1I4o
	m6SU2AMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mKz-00000005Z6y-0gQS;
	Thu, 09 Oct 2025 08:49:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6mKw-00000005Z6Z-1oxP
	for barebox@lists.infradead.org;
	Thu, 09 Oct 2025 08:49:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v6mKu-00059r-AF; Thu, 09 Oct 2025 10:49:20 +0200
Message-ID: <37482d38-768d-40cf-a00c-26444378ecba@pengutronix.de>
Date: Thu, 9 Oct 2025 10:49:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: maudspierings@gocontroll.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251008-ddr3-v1-1-8fe874a12878@gocontroll.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251008-ddr3-v1-1-8fe874a12878@gocontroll.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_014922_479878_B7373042 
X-CRM114-Status: GOOD (  23.87  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: imx: add ddr3 ram support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

thanks for your patch.

While the directory is indeed drivers/ddr/imx, it's a different RAM
controller than on the i.MX6, which is already used with DDR3.

I would rather suggest: "ARM: i.MX8M: ddr:" as prefix.

On 10/8/25 2:25 PM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> Add the necessary bits to use DDR3 on imx platforms.
> 
> Tested on Ka-Ro tx8m-1610 (imx8mm) based platform with DDR3L memory.
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/ddr/imx/ddrphy_train.c | 18 ++++++++++++++++++
>  firmware/Kconfig               |  3 +++
>  firmware/Makefile              |  4 ++++
>  include/soc/imx/ddr.h          | 10 ++++++++++
>  4 files changed, 35 insertions(+)
> 
> diff --git a/drivers/ddr/imx/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
> index 24997a6f36676b61b548e08c330dbfdcf336abc0..3185aaf61e494a72ecfac5760fa06f6c39b398ce 100644
> --- a/drivers/ddr/imx/ddrphy_train.c
> +++ b/drivers/ddr/imx/ddrphy_train.c
> @@ -52,6 +52,19 @@ void ddr_get_firmware_ddr4(void)
>  			     &ddr4_dmem_2d_size);
>  }
>  
> +static const u16 *ddr3_imem_1d;
> +static size_t ddr3_imem_1d_size;
> +static const u16 *ddr3_dmem_1d;
> +static size_t ddr3_dmem_1d_size;
> +
> +void ddr_get_firmware_ddr3(void)
> +{
> +	get_builtin_firmware(ddr3_imem_1d_bin, &ddr3_imem_1d,
> +			     &ddr3_imem_1d_size);
> +	get_builtin_firmware(ddr3_dmem_1d_bin, &ddr3_dmem_1d,
> +			     &ddr3_dmem_1d_size);
> +}
> +
>  void ddr_load_train_code(struct dram_controller *dram, enum dram_type dram_type,
>  			 enum fw_type fw_type)
>  {
> @@ -82,6 +95,11 @@ void ddr_load_train_code(struct dram_controller *dram, enum dram_type dram_type,
>  			dmem = ddr4_dmem_2d;
>  			dsize = ddr4_dmem_2d_size;
>  		}
> +	} else if (dram_is_ddr3(dram_type)) {
> +		imem = ddr3_imem_1d;
> +		isize = ddr3_imem_1d_size;
> +		dmem = ddr3_dmem_1d;
> +		dsize = ddr3_dmem_1d_size;
>  	} else {
>  		panic("No matching DDR PHY firmware found");
>  	}
> diff --git a/firmware/Kconfig b/firmware/Kconfig
> index 14a1c3d3a84407029e576e8e46993f828784f48b..a97a1e0dd324fa2ff95a0e77d1057bc45aa1ad07 100644
> --- a/firmware/Kconfig
> +++ b/firmware/Kconfig
> @@ -22,6 +22,9 @@ config MISSING_FIRMWARE_ERROR
>  	  If in doubt, say Y and refer to the documentation on where to acquire the
>  	  needed firmware.
>  
> +config FIRMWARE_IMX_DDR3_PMU_TRAIN
> +	bool
> +
>  config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
>  	bool
>  
> diff --git a/firmware/Makefile b/firmware/Makefile
> index 1fe770a2d900f216dd457d88aee761df4ada26c6..163055554d51b0cc9547f4a43f97c39d23f8eb65 100644
> --- a/firmware/Makefile
> +++ b/firmware/Makefile
> @@ -12,6 +12,10 @@ pbl-firmware-$(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) += \
>  	ddr4_imem_1d.bin \
>  	ddr4_imem_2d.bin
>  
> +pbl-firmware-$(CONFIG_FIRMWARE_IMX_DDR3_PMU_TRAIN) += \
> +	ddr3_dmem_1d.bin \
> +	ddr3_imem_1d.bin
> +
>  pbl-firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MM_OPTEE),-optee,)
>  pbl-firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MN_OPTEE),-optee,)
>  pbl-firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MP_OPTEE),-optee,)
> diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
> index 1e64613895d1b0bcfd5f48a55e0a8bcabd4d96c5..642606290082643dfed9fbeb283652b877d28639 100644
> --- a/include/soc/imx/ddr.h
> +++ b/include/soc/imx/ddr.h
> @@ -18,6 +18,7 @@ enum dram_type {
>  #define DRAM_TYPE_MASK	0x00ff
>  	DRAM_TYPE_LPDDR4	= 0 << 0,
>  	DRAM_TYPE_DDR4		= 1 << 0,
> +	DRAM_TYPE_DDR3		= 2 << 0,
>  };
>  
>  static inline enum dram_type get_dram_type(unsigned type)
> @@ -115,11 +116,14 @@ struct dram_controller {
>  
>  void ddr_get_firmware_lpddr4(void);
>  void ddr_get_firmware_ddr4(void);
> +void ddr_get_firmware_ddr3(void);
>  
>  static inline void ddr_get_firmware(enum dram_type dram_type)
>  {
>  	if (dram_type == DRAM_TYPE_LPDDR4)
>  		ddr_get_firmware_lpddr4();
> +	else if (dram_type == DRAM_TYPE_DDR3)
> +		ddr_get_firmware_ddr3();
>  	else
>  		ddr_get_firmware_ddr4();
>  }
> @@ -188,6 +192,12 @@ static inline bool dram_is_ddr4(enum dram_type dram_type)
>  		dram_type == DRAM_TYPE_DDR4;
>  }
>  
> +static inline bool dram_is_ddr3(enum dram_type dram_type)
> +{
> +	return IS_ENABLED(CONFIG_FIRMWARE_IMX_DDR3_PMU_TRAIN) &&
> +		dram_type == DRAM_TYPE_DDR3;
> +}
> +
>  #define DDRC_PHY_REG(x)	((x) * 4)
>  
>  #endif /* __SOC_IMX_DDR_H */
> 
> ---
> base-commit: 8785a6ad7467b6f1f70b6e12aa2ceb2fdd5d8546
> change-id: 20251008-ddr3-177f68e06a31
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



