Delivery-date: Mon, 09 Mar 2026 16:13:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzcIT-009mmT-03
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 16:13:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzcIS-0003NI-Tl
	for lore@pengutronix.de; Mon, 09 Mar 2026 16:13:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NPYa+wWntl4Mhrg4F0AbJautXpfnjfeDu9phEyV95Nc=; b=ysWghbmQSA28XtrwqNDErZPEI7
	pKGDXamQEnJ6VtR8cjQBRLO8v2tqY97BSxM1byCO+nAxP6Sui0yxpt/O1F3nzHYQ/gGSHwjfb/Vmt
	hdu7Dy2juLWcG4rgQa4jidwqHrAar8TCg41GOfLm0twep5AzV7mKmqwuXMeUkbE9Dmw04d4XiSVSE
	C+L6u1lDyV7eSKkbyzzEsayUaXgELhCRlboiYa0W+sbFoaIX7Nr8xgPxflq847XN0I4BqfUWz/Zlr
	cyTies5IxkJh9ixzuHgVPMGxx48Yw/XzCDtobUOwAGknNVgiYC5yF7NkHK9aB1NIptLYIZIX764kN
	AHhq+OJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzcI0-00000007ZQb-09NF;
	Mon, 09 Mar 2026 15:13:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzcHx-00000007ZPi-1Mpy
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 15:12:58 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vzcHv-0003FH-LT; Mon, 09 Mar 2026 16:12:55 +0100
Message-ID: <796bc1ae-80bd-492a-86a7-f7021a13d3f9@pengutronix.de>
Date: Mon, 9 Mar 2026 16:12:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: David Jander <david@protonic.nl>
References: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
 <20260309-v2026-02-0-topic-imx8-ecc-v2-3-6aab6d795061@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260309-v2026-02-0-topic-imx8-ecc-v2-3-6aab6d795061@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_081257_547548_01C06817 
X-CRM114-Status: GOOD (  28.15  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] drivers: ddr: imx8m: ddr_init.c: support ECC
 scrubbing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 3/9/26 8:46 AM, Steffen Trumtrar wrote:
> From: David Jander <david@protonic.nl>
> 
> This code comes from u-boot [1] and was introducesd in commit [2].

introduced*

> A fix from the patch [3] is also included, which doesn't seem to be
> added to u-boot, yet.
> 
> [1] https://github.com/u-boot/u-boot/
> [2] commit f3acb02386f4 ("drivers: ddr: imx8mp: Add inline ECC feature support")
> [3] https://patchwork.ozlabs.org/project/uboot/patch/20230123091702.7472-32-peng.fan@oss.nxp.com/

Interesting. Appears to still be unmerged.

> +#ifdef CONFIG_IMX8MP_DRAM_ECC

Remove the #ifdef here and use IS_ENABLED() below.

> +static void ddrc_inline_ecc_scrub(unsigned int start_address,
> +				  unsigned int range_address)
> +{
> +	unsigned int tmp;
> +
> +	pr_debug("ECC scrub %08x-%08x\n", start_address, range_address);
> +	/* Step1: Enable quasi-dynamic programming */
> +	reg32_write(DDRC_SWCTL(0), 0x00000000);
> +	/* Step2: Set ECCCFG1.ecc_parity_region_lock to 1 */
> +	reg32setbit(DDRC_ECCCFG1(0), 0x4);
> +	/* Step3: Block the AXI ports from taking the transaction */
> +	reg32_write(DDRC_PCTRL_0(0), 0x0);
> +	/* Step4: Set scrub start address */
> +	reg32_write(DDRC_SBRSTART0(0), start_address);
> +	/* Step5: Set scrub range address */
> +	reg32_write(DDRC_SBRRANGE0(0), range_address);
> +	/* Step6: Set scrub_mode to write */
> +	reg32_write(DDRC_SBRCTL(0), 0x00000014);
> +	/* Step7: Set the desired pattern through SBRWDATA0 registers */
> +	reg32_write(DDRC_SBRWDATA0(0), 0x55aa55aa);
> +	/* Step8: Enable the SBR by programming SBRCTL.scrub_en=1 */
> +	reg32setbit(DDRC_SBRCTL(0), 0x0);
> +	/* Step9: Poll SBRSTAT.scrub_done=1 */
> +	tmp = reg32_read(DDRC_SBRSTAT(0));
> +	while (tmp != 0x00000002)
> +		tmp = reg32_read(DDRC_SBRSTAT(0)) & 0x2;
> +	/* Step10: Poll SBRSTAT.scrub_busy=0 */
> +	tmp = reg32_read(DDRC_SBRSTAT(0));
> +	while (tmp != 0x0)
> +		tmp = reg32_read(DDRC_SBRSTAT(0)) & 0x1;
> +	/* Step11: Disable SBR by programming SBRCTL.scrub_en=0 */
> +	clrbits_le32(DDRC_SBRCTL(0), 0x1);
> +	/* Step12: Prepare for normal scrub operation(Read) and set scrub_interval*/
> +	reg32_write(DDRC_SBRCTL(0), 0xff20);
> +	/* Step13: Enable the SBR by programming SBRCTL.scrub_en=1 */
> +	reg32_write(DDRC_SBRCTL(0), 0xff21);
> +	/* Step14: Enable AXI ports by programming */
> +	reg32_write(DDRC_PCTRL_0(0), 0x1);
> +	/* Step15: Disable quasi-dynamic programming */
> +	reg32_write(DDRC_SWCTL(0), 0x00000001);
> +}
> +
> +static void ddrc_inline_ecc_scrub_end(unsigned int start_address,
> +				      unsigned int range_address)
> +{
> +	pr_debug("ECC  end %08x-%08x\n", start_address, range_address);
> +	/* Step1: Enable quasi-dynamic programming */
> +	reg32_write(DDRC_SWCTL(0), 0x00000000);
> +	/* Step2: Block the AXI ports from taking the transaction */
> +	reg32_write(DDRC_PCTRL_0(0), 0x0);
> +	/* Step3: Set scrub start address */
> +	reg32_write(DDRC_SBRSTART0(0), start_address);
> +	/* Step4: Set scrub range address */
> +	reg32_write(DDRC_SBRRANGE0(0), range_address);
> +	/* Step5: Disable SBR by programming SBRCTL.scrub_en=0 */
> +	clrbits_le32(DDRC_SBRCTL(0), 0x1);
> +	/* Step6: Prepare for normal scrub operation(Read) and set scrub_interval */
> +	reg32_write(DDRC_SBRCTL(0), 0x100);
> +	/* Step7: Enable the SBR by programming SBRCTL.scrub_en=1 */
> +	reg32_write(DDRC_SBRCTL(0), 0x101);
> +	/* Step8: Enable AXI ports by programming */
> +	reg32_write(DDRC_PCTRL_0(0), 0x1);
> +	/* Step9: Disable quasi-dynamic programming */
> +	reg32_write(DDRC_SWCTL(0), 0x00000001);
> +}
> +
> +static void dram_ecc_scrub(struct dram_timing_info *dram_timing)
> +{
> +	/* memory range to scrub in words (=1.75G) */
> +	unsigned int range_in_words = 0x1c000000;

For clarity, maybe define some macros? Something like

ECC_STRIDE	SZ_2G
ECC_INLINE_SIZE	...
ECC_SCRUB_CHUNK ECC_STRIDE - ECC_INLINE_SIZE

and use that instead of the hex constants?

> +	/* start scrubbing at RAM address */
> +	unsigned int start_address;
> +	/* scrub up until this address */
> +	unsigned int range_address;
> +
> +	BUG_ON(!dram_timing->size);

Wouldn't this panic on all non-ECC board entry points? Mixing boards
with inline ECC and without should continue to work.

See also below for naming the member for clarity.

> +
> +	for (start_address = 0x0;
> +	     start_address + range_in_words - 1 <= dram_timing->size / 4;
> +	     start_address += range_in_words + 0x04000000) {
> +		range_address = start_address + range_in_words - 1;
> +		/* scrub in 1.75G chunk sizes */
> +		ddrc_inline_ecc_scrub(start_address, range_address);
> +	}
> +	
> +	ddrc_inline_ecc_scrub_end(0x0, dram_timing->size / 4 - 1);
> +}
> +#endif
> +
>  static unsigned int g_cdd_rr_max[4];
>  static unsigned int g_cdd_rw_max[4];
>  static unsigned int g_cdd_wr_max[4];
> @@ -642,6 +732,11 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
>  	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
>  	pr_debug("ddrmix config done\n");
>  
> +#ifdef CONFIG_IMX8MP_DRAM_ECC
> +	if (dram->ddrc_type == DDRC_TYPE_MP)

if (IS_ENABLED(CONFIG_IMX8MP_DRAM_ECC) && dram->ddrc_type == DDRC_TYPE_MP)

> +		dram_ecc_scrub(dram_timing);
> +#endif
> +
>  	/* save the dram timing config into memory */
>  	dram_config_save(dram, dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
>  
> diff --git a/include/soc/imx/ddr.h b/include/soc/imx/ddr.h
> index 6426062900..9a5d341100 100644
> --- a/include/soc/imx/ddr.h
> +++ b/include/soc/imx/ddr.h
> @@ -101,6 +101,7 @@ struct dram_timing_info {
>  		unsigned int ddrphy_pie_num;
>  		/* initialized drate table */
>  		unsigned int fsp_table[4];
> +		resource_size_t size;

The member name should either have ecc in it or there should be an extra
member that enables ecc, e.g.:

dram_timing::ecc_full_size

or

dram_timing::size
dram_timing::enable_ecc

or something along these lines.

>  	);
>  };
>  
> diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
> index 5df07772b3..f07cef9a9e 100644
> --- a/include/soc/imx8m/ddr.h
> +++ b/include/soc/imx8m/ddr.h
> @@ -186,6 +186,8 @@
>  #define DDRC_SBRWDATA0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf2c)
>  #define DDRC_SBRWDATA1(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf30)
>  #define DDRC_PDCH(X)             (DDRC_IPS_BASE_ADDR(X) + 0xf34)
> +#define DDRC_SBRSTART0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf38)
> +#define DDRC_SBRRANGE0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf40)
>  
>  #define DDRC_FREQ1_DERATEEN(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2020)
>  #define DDRC_FREQ1_DERATEINT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2024)
> @@ -380,4 +382,6 @@ static inline void imx8m_ddr_load_train_code(enum dram_type dram_type,
>  	ddr_load_train_code(&imx8m_dram_controller, dram_type, fw_type);
>  }
>  
> +#define DDRC_PHY_REG(x)	((x) * 4)

Unused?

> +
>  #endif
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



