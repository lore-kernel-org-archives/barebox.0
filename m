Delivery-date: Wed, 04 Mar 2026 14:14:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxm40-007zkT-2X
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 14:14:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxm40-00057p-LA
	for lore@pengutronix.de; Wed, 04 Mar 2026 14:14:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKQvmbtiL2v5qmgt3HS97INiT/RiBEj866EnOIcdNic=; b=BwGNZQjKj8U+TQ
	FZkeM400R3AbWY+IELn/NMv2TsyrC9Ogm0FVZEbbTIflIfKJMywQ3BF0IcbDBVSL5OV8L8ilXenty
	Wbu1h7eFpU9ZlQBQ12KXKJ2IeAg2H5bTY4voRWQDalTVItUQU9SvkuHSSj1GSW4ALeSF9c+MZ7T5l
	xZNf1vIAfxwb7QOWA06bkr7iqiNNo0jz8J6n4FjapmKRlW7yANP+TQN0w7QcrcL0zwHFQKCd/R3cq
	dZG4QRTcqVSb938mp+o0tCuHWuzl0GCtopJa1D5m9uSASiuWzp9cMmVMRR7PZ7oDp6L1VL87e+aJP
	tsQc/R1Va58JjtuxOxeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxm3V-0000000HEZJ-0RAR;
	Wed, 04 Mar 2026 13:14:25 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxm3S-0000000HEYQ-1SkV
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 13:14:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=KKQvmbtiL2v5qmgt3HS97INiT/RiBEj866EnOIcdNic=;
	b=Iig2w5yNf1NkapnA6KMkzFaFB6ebVUdZLjFBsu6a9cqp0Zmk04OwZFTK0oxvJJ2d/F3U0Jg0sJ2L1
	 nrQfOklzBBDbo9h5mYusGBWVzEemFGMzQxle9URocWJNCPEzaSlqBU4omn7vPvm80kcZ88inTjGQxU
	 aRT050VwYvQYese1ntCYJcQJ/4v2ElWfz0x1Wt+ixuxwGgCJd19xLaKjVO9Zv/9jJ+bDPjLlx2wZ5V
	 lB0GcXn3W2aw0SAwLlViRfadktjxlWnUHoto0m2Ux99iqvYdT/crKmmrHaBOyKYtVWifBAIBPKIoM3
	 d+R5LtQJReAzQnhXH8CzfHTE23GsFHA==
X-MSG-ID: 0df75826-17cc-11f1-9155-005056817704
Date: Wed, 4 Mar 2026 14:14:19 +0100
From: David Jander <david@protonic.nl>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20260304141419.6905c8d8@erd003.prtnl>
In-Reply-To: <6377d7e5-ce81-4a8d-ab91-26da384ae5d9@pengutronix.de>
References: <20260304-v2026-02-0-topic-imx8-ecc-v1-0-700698530c5c@pengutronix.de>
	<20260304-v2026-02-0-topic-imx8-ecc-v1-3-700698530c5c@pengutronix.de>
	<18ef490b-4b99-49f9-89d1-9ce2d346d4a4@pengutronix.de>
	<20260304132322.0b0d956f@erd003.prtnl>
	<6377d7e5-ce81-4a8d-ab91-26da384ae5d9@pengutronix.de>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_051422_538734_9D1644E5 
X-CRM114-Status: GOOD (  45.87  )
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
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Daniel Maslowski <info@orangecms.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] drivers: ddr: imx8m: ddr_init.c: support ECC
 scrubbing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, 4 Mar 2026 13:33:42 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hello David,
> 
> On 3/4/26 1:23 PM, David Jander wrote:
> > On Wed, 4 Mar 2026 12:43:55 +0100
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:  
> >>> +config IMX8MP_DRAM_ECC
> >>> +	bool "Enable LPDDR4 ECC feature on i.MX8MP boards"
> >>> +	depends on ARCH_IMX8MP
> >>> +	help
> >>> +	  The i.MX8MP SoC supports ECC on the LPDDR4 memory. Select Y to enable
> >>> +	  this feature. The total amount of memory available will be reduced by
> >>> +	  1/8th.    
> >>
> >> A generic option is too confusing when it's only affecting a single board.  
> > 
> > Why should it affect only a single board? This is a general feature of this
> > SoC and it can be enabled for any other board that uses this SoC with LPDDR4
> > chips.  
> 
> Sure and a user would expect that enabling this option would turn on
> inline ECC, but it currently does so only for the Protonic board.
> The i.MX8MP-EVK won't magically get ECC support with this enabled and I
> think it may even fail to compile as it doesn't provide
> board_dram_ecc_scrub on its own, so having this option in this form is
> IMO confusing to users.
> 
> My suggestion below is thus to make ECC use a per-board (entry point)
> decision instead of a build-wide decision.

Oh, sorry for the missing context on my side. Ideally the ecc scrubbing
function should be made generic, so that all boards can use it. There is
already enough code duplication going on IMHO... why add even more?
Or, likewise, if you add more code to one copy of lpddr4-timing.c, shouldn't
it be added to all of them?

> > Even more so, I suspect this feature is present on some other SoCs as well
> > which use the same Synopsys DesignWare IP with this feature enabled. In that
> > case you'd probably want to make a more generic dram driver though. I suspect
> > chips like the Rockchip RK3588 or RK3576 might support this also, but I
> > haven't tried, and since those chips have binary dram init blobs this is
> > probably not easy to figure out.  
> 
> Interesting. While I have seen ECC documented for RK3568, I thought it
> was not available for the RK3588.

Hmm... yes the RK3568 probably also supports it. They all have the same
Synopsys DesignWare IP with different configurations. The 88 and 76 have a
newer version that adds LPDDR5 and drops (LP)DDR3 support.
Not sure, but I suspect i.MX935 and i.MX95 might use the same.

> By the way, Daniel (Cc'd) has been working on reverse engineering the
> Rockchip DRAM init blob, so maybe that's moving within reach :)

This is pretty cool!
Keep me posted with news about this. I have a lot of questions about this blob
with regards to hardware design details. I don't think I'll get answers from
Rockchip besides the usual "copy our reference design", but this effort might
help a lot.

Best regards,

> > 
> > Best regards,
> >   
> >> Alternative suggestion:
> >>
> >>   - make IMX8MP_DRAM_ECC a hidden symbol
> >>   - select it from the protonic board
> >>   - Turn the RAM timings of the protonic board into a header and
> >>     replace #ifdef CONFIG_IMX8MP_DRAM_ECC with #ifdef USE_ECC
> >>   - Add two source code files, that include the new header once with
> >>     USE_ECC supported and once without
> >>   - Add two entry points which only differ in what RAM timings are used
> >>
> >> Also worth considering: adding the size of the region to be scrubbed or
> >> the function doing the scrubbing into dram_timing_info.
> >>
> >> Thoughts?
> >>
> >> Cheers,
> >> Ahmad
> >>  
> >>> +
> >>>  endmenu
> >>>  
> >>>  endif
> >>> diff --git a/drivers/ddr/imx/imx8m_ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
> >>> index c16e04d274..6398a2b971 100644
> >>> --- a/drivers/ddr/imx/imx8m_ddr_init.c
> >>> +++ b/drivers/ddr/imx/imx8m_ddr_init.c
> >>> @@ -45,6 +45,74 @@ static void ddr_cfg_umctl2(struct dram_controller *dram, struct dram_cfg_param *
> >>>  	}
> >>>  }
> >>>  
> >>> +#ifdef CONFIG_IMX8MP_DRAM_ECC
> >>> +void ddrc_inline_ecc_scrub(unsigned int start_address,
> >>> +			   unsigned int range_address)
> >>> +{
> >>> +	unsigned int tmp;
> >>> +
> >>> +	pr_debug("ECC scrub %08x-%08x\n", start_address, range_address);
> >>> +	/* Step1: Enable quasi-dynamic programming */
> >>> +	reg32_write(DDRC_SWCTL(0), 0x00000000);
> >>> +	/* Step2: Set ECCCFG1.ecc_parity_region_lock to 1 */
> >>> +	reg32setbit(DDRC_ECCCFG1(0), 0x4);
> >>> +	/* Step3: Block the AXI ports from taking the transaction */
> >>> +	reg32_write(DDRC_PCTRL_0(0), 0x0);
> >>> +	/* Step4: Set scrub start address */
> >>> +	reg32_write(DDRC_SBRSTART0(0), start_address);
> >>> +	/* Step5: Set scrub range address */
> >>> +	reg32_write(DDRC_SBRRANGE0(0), range_address);
> >>> +	/* Step6: Set scrub_mode to write */
> >>> +	reg32_write(DDRC_SBRCTL(0), 0x00000014);
> >>> +	/* Step7: Set the desired pattern through SBRWDATA0 registers */
> >>> +	reg32_write(DDRC_SBRWDATA0(0), 0x55aa55aa);
> >>> +	/* Step8: Enable the SBR by programming SBRCTL.scrub_en=1 */
> >>> +	reg32setbit(DDRC_SBRCTL(0), 0x0);
> >>> +	/* Step9: Poll SBRSTAT.scrub_done=1 */
> >>> +	tmp = reg32_read(DDRC_SBRSTAT(0));
> >>> +	while (tmp != 0x00000002)
> >>> +		tmp = reg32_read(DDRC_SBRSTAT(0)) & 0x2;
> >>> +	/* Step10: Poll SBRSTAT.scrub_busy=0 */
> >>> +	tmp = reg32_read(DDRC_SBRSTAT(0));
> >>> +	while (tmp != 0x0)
> >>> +		tmp = reg32_read(DDRC_SBRSTAT(0)) & 0x1;
> >>> +	/* Step11: Disable SBR by programming SBRCTL.scrub_en=0 */
> >>> +	clrbits_le32(DDRC_SBRCTL(0), 0x1);
> >>> +	/* Step12: Prepare for normal scrub operation(Read) and set scrub_interval*/
> >>> +	reg32_write(DDRC_SBRCTL(0), 0xff20);
> >>> +	/* Step13: Enable the SBR by programming SBRCTL.scrub_en=1 */
> >>> +	reg32_write(DDRC_SBRCTL(0), 0xff21);
> >>> +	/* Step14: Enable AXI ports by programming */
> >>> +	reg32_write(DDRC_PCTRL_0(0), 0x1);
> >>> +	/* Step15: Disable quasi-dynamic programming */
> >>> +	reg32_write(DDRC_SWCTL(0), 0x00000001);
> >>> +}
> >>> +
> >>> +void ddrc_inline_ecc_scrub_end(unsigned int start_address,
> >>> +			       unsigned int range_address)
> >>> +{
> >>> +	pr_debug("ECC  end %08x-%08x\n", start_address, range_address);
> >>> +	/* Step1: Enable quasi-dynamic programming */
> >>> +	reg32_write(DDRC_SWCTL(0), 0x00000000);
> >>> +	/* Step2: Block the AXI ports from taking the transaction */
> >>> +	reg32_write(DDRC_PCTRL_0(0), 0x0);
> >>> +	/* Step3: Set scrub start address */
> >>> +	reg32_write(DDRC_SBRSTART0(0), start_address);
> >>> +	/* Step4: Set scrub range address */
> >>> +	reg32_write(DDRC_SBRRANGE0(0), range_address);
> >>> +	/* Step5: Disable SBR by programming SBRCTL.scrub_en=0 */
> >>> +	clrbits_le32(DDRC_SBRCTL(0), 0x1);
> >>> +	/* Step6: Prepare for normal scrub operation(Read) and set scrub_interval */
> >>> +	reg32_write(DDRC_SBRCTL(0), 0x100);
> >>> +	/* Step7: Enable the SBR by programming SBRCTL.scrub_en=1 */
> >>> +	reg32_write(DDRC_SBRCTL(0), 0x101);
> >>> +	/* Step8: Enable AXI ports by programming */
> >>> +	reg32_write(DDRC_PCTRL_0(0), 0x1);
> >>> +	/* Step9: Disable quasi-dynamic programming */
> >>> +	reg32_write(DDRC_SWCTL(0), 0x00000001);
> >>> +}
> >>> +#endif
> >>> +
> >>>  static unsigned int g_cdd_rr_max[4];
> >>>  static unsigned int g_cdd_rw_max[4];
> >>>  static unsigned int g_cdd_wr_max[4];
> >>> @@ -642,6 +710,11 @@ int imx8m_ddr_init(struct dram_controller *dram, struct dram_timing_info *dram_t
> >>>  	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
> >>>  	pr_debug("ddrmix config done\n");
> >>>  
> >>> +#ifdef CONFIG_IMX8MP_DRAM_ECC
> >>> +	if (dram->ddrc_type == DDRC_TYPE_MP)
> >>> +		board_dram_ecc_scrub();
> >>> +#endif
> >>> +
> >>>  	/* save the dram timing config into memory */
> >>>  	dram_config_save(dram, dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
> >>>  
> >>> diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
> >>> index 5df07772b3..08ebf61da0 100644
> >>> --- a/include/soc/imx8m/ddr.h
> >>> +++ b/include/soc/imx8m/ddr.h
> >>> @@ -186,6 +186,8 @@
> >>>  #define DDRC_SBRWDATA0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf2c)
> >>>  #define DDRC_SBRWDATA1(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf30)
> >>>  #define DDRC_PDCH(X)             (DDRC_IPS_BASE_ADDR(X) + 0xf34)
> >>> +#define DDRC_SBRSTART0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf38)
> >>> +#define DDRC_SBRRANGE0(X)        (DDRC_IPS_BASE_ADDR(X) + 0xf40)
> >>>  
> >>>  #define DDRC_FREQ1_DERATEEN(X)         (DDRC_IPS_BASE_ADDR(X) + 0x2020)
> >>>  #define DDRC_FREQ1_DERATEINT(X)        (DDRC_IPS_BASE_ADDR(X) + 0x2024)
> >>> @@ -380,4 +382,13 @@ static inline void imx8m_ddr_load_train_code(enum dram_type dram_type,
> >>>  	ddr_load_train_code(&imx8m_dram_controller, dram_type, fw_type);
> >>>  }
> >>>  
> >>> +#define DDRC_PHY_REG(x)	((x) * 4)
> >>> +
> >>> +void board_dram_ecc_scrub(void);
> >>> +
> >>> +void ddrc_inline_ecc_scrub(unsigned int start_address,
> >>> +			   unsigned int range_address);
> >>> +void ddrc_inline_ecc_scrub_end(unsigned int start_address,
> >>> +			       unsigned int range_address);
> >>> +
> >>>  #endif
> >>>     
> >>  
> > 
> > 
> >   
> 



-- 
David Jander
Protonic Holland.
tel.: +31 (0) 229 212928
De Factorij 36 / 1689 AL Zwaag


