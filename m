Delivery-date: Wed, 02 Nov 2022 09:42:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq9Kf-00C3X3-NW
	for lore@lore.pengutronix.de; Wed, 02 Nov 2022 09:42:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oq9Ke-0005vt-8D
	for lore@pengutronix.de; Wed, 02 Nov 2022 09:42:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HmPU6wr6Hw/ZrpFZ/EyQSAMq2jl14/mOtPTvhcSiG7I=; b=s+KmingdudWSEYMI9H6W6fupDj
	ltauhsSeYCNZ4RuX1wpAAT1la0Hgzwqn96S0v25GAECX6Gjl7J4tPKYZGejZeG2umNyfggPo5zn9F
	eMY7rmIWfGYGU6X9gxivd64KR7lKtIfeadvGiczbLiGaajuYq8h5ftNy5TE5DWYYIN+AtlcC96h4O
	uDS9P/LVPw4QByhjNFwlMpyGBAxbFiwDoyt0k+YU4yGvZN6P2m8gaah6ldSOc4Wzi47+qqvUOYule
	GgdkNe0sLQxkJqUhvX9Iy5LbxTrlGAvYwZpxZF3lAwmIyQsir4l/n3QWbulp9QKefLD5Ww8pWPmgS
	PSDSmiiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq9JN-0095C1-7h; Wed, 02 Nov 2022 08:41:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oq9JI-009591-Cv
	for barebox@lists.infradead.org; Wed, 02 Nov 2022 08:41:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oq9JG-0005rM-Uk; Wed, 02 Nov 2022 09:41:18 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oq9JG-0000g5-MG; Wed, 02 Nov 2022 09:41:18 +0100
Date: Wed, 2 Nov 2022 09:41:18 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20221102084118.monxfljt7z2jorjm@pengutronix.de>
References: <20221101153048.772146-1-s.hauer@pengutronix.de>
 <20221101153048.772146-14-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221101153048.772146-14-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_014120_623708_63868D92 
X-CRM114-Status: GOOD (  30.41  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 13/14] ARM: i.MX: xload nand: Implement i.MX7 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,

On 22-11-01, Sascha Hauer wrote:
> i.MX7 xload NAND support works like on i.MX6, but the FCB is in a
> different format. The FCB page uses BCH62 ECC, has 8 ECC chunks with
> 128 bytes each with a resulting total page size of 1862 bytes. Also
> the page data is written with a pseudo randomizer enabled.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/imx7-regs.h |  1 +
>  arch/arm/mach-imx/include/mach/xload.h     |  1 +
>  arch/arm/mach-imx/xload-gpmi-nand.c        | 95 ++++++++++++++++++++--
>  3 files changed, 91 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/imx7-regs.h b/arch/arm/mach-imx/include/mach/imx7-regs.h
> index 1ee7d86e0e..379be9e062 100644
> --- a/arch/arm/mach-imx/include/mach/imx7-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx7-regs.h
> @@ -118,6 +118,7 @@
>  #define MX7_ENET1_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3E0000)
>  #define MX7_ENET2_BASE_ADDR		(MX7_AIPS3_BASE_ADDR + 0x3F0000)
>  
> +#define	MX7_APBH_BASE			0x33000000
>  #define MX7_GPMI_BASE			0x33002000
>  #define MX7_BCH_BASE			0x33004000
>  
> diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
> index 82bf663c42..ca0055aee2 100644
> --- a/arch/arm/mach-imx/include/mach/xload.h
> +++ b/arch/arm/mach-imx/include/mach/xload.h
> @@ -12,6 +12,7 @@ int imx6_spi_start_image(int instance);
>  int imx6_esdhc_start_image(int instance);
>  int imx6_nand_start_image(void);
>  int imx7_esdhc_start_image(int instance);
> +int imx7_nand_start_image(void);
>  int imx8m_esdhc_load_image(int instance, bool start);
>  int imx8mn_esdhc_load_image(int instance, bool start);
>  int imx8mp_esdhc_load_image(int instance, bool start);
> diff --git a/arch/arm/mach-imx/xload-gpmi-nand.c b/arch/arm/mach-imx/xload-gpmi-nand.c
> index 7e4033d74f..edffd69e6b 100644
> --- a/arch/arm/mach-imx/xload-gpmi-nand.c
> +++ b/arch/arm/mach-imx/xload-gpmi-nand.c
> @@ -13,6 +13,7 @@
>  #include <linux/mtd/rawnand.h>
>  #include <soc/imx/gpmi-nand.h>
>  #include <mach/imx6-regs.h>
> +#include <mach/imx7-regs.h>
>  #include <mach/clock-imx6.h>
>  #include <dma/apbh-dma.h>
>  
> @@ -228,7 +229,7 @@ static uint32_t mxs_nand_aux_status_offset(void)
>  }
>  
>  static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
> -		int oobsize, int pagenum, void *databuf, int raw)
> +		int oobsize, int pagenum, void *databuf, int raw, bool randomizer)

Here the change comes, so this anwers my question.

Regards,
  Marco

>  {
>  	void __iomem *bch_regs = info->bch_base;
>  	unsigned column = 0;
> @@ -332,6 +333,12 @@ static int mxs_nand_read_page(struct mxs_nand_info *info, int writesize,
>  		d->pio_words[4] = (dma_addr_t)databuf;
>  		d->pio_words[5] = (dma_addr_t)(databuf + writesize);
>  
> +		if (randomizer) {
> +			d->pio_words[2] |= GPMI_ECCCTRL_RANDOMIZER_ENABLE |
> +					   GPMI_ECCCTRL_RANDOMIZER_TYPE2;
> +			d->pio_words[3] |= (pagenum % 256) << 16;
> +		}
> +
>  		/* Compile DMA descriptor - disable the BCH block. */
>  		d = &info->desc[descnum++];
>  		d->data = MXS_DMA_DESC_NAND_WAIT_4_READY |
> @@ -841,7 +848,7 @@ static uint32_t calc_chksum(void *buf, size_t size)
>  	return ~chksum;
>  }
>  
> -static int get_fcb(struct mxs_nand_info *info, void *databuf)
> +static int imx6_get_fcb(struct mxs_nand_info *info, void *databuf)
>  {
>  	int i, pagenum, ret;
>  	uint32_t checksum;
> @@ -849,13 +856,13 @@ static int get_fcb(struct mxs_nand_info *info, void *databuf)
>  
>  	/* First page read fails, this shouldn't be necessary */
>  	mxs_nand_read_page(info, info->organization.pagesize,
> -		info->organization.oobsize, 0, databuf, 1);
> +		info->organization.oobsize, 0, databuf, 1, false);
>  
>  	for (i = 0; i < 4; i++) {
>  		pagenum = info->organization.pages_per_eraseblock * i;
>  
>  		ret = mxs_nand_read_page(info, info->organization.pagesize,
> -			info->organization.oobsize, pagenum, databuf, 1);
> +			info->organization.oobsize, pagenum, databuf, 1, false);
>  		if (ret)
>  			continue;
>  
> @@ -887,6 +894,66 @@ static int get_fcb(struct mxs_nand_info *info, void *databuf)
>  	return -EINVAL;
>  }
>  
> +static int imx7_get_fcb_n(struct mxs_nand_info *info, void *databuf, int num)
> +{
> +	int ret;
> +	int flips = 0;
> +	uint8_t	*status;
> +	int i;
> +
> +	ret = mxs_nand_read_page(info, BCH62_WRITESIZE, BCH62_OOBSIZE,
> +				 info->organization.pages_per_eraseblock * num, databuf, 0, true);
> +	if (ret)
> +		return ret;
> +
> +	/* Loop over status bytes, accumulating ECC status. */
> +	status = databuf + BCH62_WRITESIZE + 32;
> +
> +	for (i = 0; i < 8; i++) {
> +		switch (status[i]) {
> +		case 0x0:
> +			break;
> +		case 0xff:
> +			/*
> +			 * A status of 0xff means the chunk is erased, but due to
> +			 * the randomizer we see this as random data. Explicitly
> +			 * memset it.
> +			 */
> +			memset(databuf + 0x80 * i, 0xff, 0x80);
> +			break;
> +		case 0xfe:
> +			return -EBADMSG;
> +		default:
> +			flips += status[0];
> +			break;
> +		}
> +	}
> +
> +	return ret;
> +}
> +
> +static int imx7_get_fcb(struct mxs_nand_info *info, void *databuf)
> +{
> +	int i, ret;
> +	struct fcb_block *fcb = &info->fcb;
> +
> +	mxs_nand_mode_fcb_62bit(info->bch_base);
> +
> +	for (i = 0; i < 4; i++) {
> +		ret = imx7_get_fcb_n(info, databuf, i);
> +		if (!ret)
> +			break;
> +	}
> +
> +	if (ret) {
> +		pr_err("Cannot find FCB\n");
> +	} else {
> +		memcpy(fcb, databuf, sizeof(*fcb));
> +	}
> +
> +	return ret;
> +}
> +
>  static int get_dbbt(struct mxs_nand_info *info, void *databuf)
>  {
>  	int i, ret;
> @@ -991,7 +1058,7 @@ static int read_firmware(struct mxs_nand_info *info, int startpage,
>  		}
>  
>  		ret = mxs_nand_read_page(info, pagesize, oobsize,
> -			curpage, dest, 0);
> +			curpage, dest, 0, false);
>  		if (ret) {
>  			pr_debug("Failed to read page %d\n", curpage);
>  			return ret;
> @@ -1012,6 +1079,7 @@ struct imx_nand_params {
>  	struct mxs_nand_info info;
>  	struct apbh_dma apbh;
>  	void *sdram;
> +	int (*get_fcb)(struct mxs_nand_info *info, void *databuf);
>  };
>  
>  static int __maybe_unused imx6_nand_load_image(struct imx_nand_params *params,
> @@ -1036,7 +1104,7 @@ static int __maybe_unused imx6_nand_load_image(struct imx_nand_params *params,
>  	if (ret)
>  		return ret;
>  
> -	ret = get_fcb(info, databuf);
> +	ret = params->get_fcb(info, databuf);
>  	if (ret)
>  		return ret;
>  
> @@ -1120,6 +1188,7 @@ int imx6_nand_start_image(void)
>  		.apbh.regs = IOMEM(MX6_APBH_BASE_ADDR),
>  		.apbh.id = IMX28_DMA,
>  		.sdram = (void *)MX6_MMDC_PORT01_BASE_ADDR,
> +		.get_fcb = imx6_get_fcb,
>  	};
>  
>  	/* Apply ERR007117 workaround */
> @@ -1127,3 +1196,17 @@ int imx6_nand_start_image(void)
>  
>  	return imx_nand_start_image(&params);
>  }
> +
> +int imx7_nand_start_image(void)
> +{
> +	static struct imx_nand_params params = {
> +		.info.io_base = IOMEM(MX7_GPMI_BASE),
> +		.info.bch_base = IOMEM(MX7_BCH_BASE),
> +		.apbh.regs = IOMEM(MX7_APBH_BASE),
> +		.apbh.id = IMX28_DMA,
> +		.sdram = (void *)MX7_DDR_BASE_ADDR,
> +		.get_fcb = imx7_get_fcb,
> +	};
> +
> +	return imx_nand_start_image(&params);
> +}
> -- 
> 2.30.2
> 
> 
> 


