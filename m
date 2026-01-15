Delivery-date: Thu, 15 Jan 2026 16:31:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgPJp-001dmU-05
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 16:31:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgPJo-0004qk-02
	for lore@pengutronix.de; Thu, 15 Jan 2026 16:31:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yV01IY0El6dMfXTABCCdFBujpWLYiSM+xs5VGhPvPws=; b=Osm1jhGHR1MUSbix/6f4MeZiC5
	/cJ2qj8MY/a2fBiwe2wSgEmr1xYdFuDXFNQdplr1eio4jiL/BEXKbRZVARwT73KgmELFZFWNt9+cW
	fgST5k6xta7L+6v3/zu/vY54COFD9/2iQXWnZBxVez37lsYWKePGdxPEkOCBX6JdIAzATferYuJmE
	au3QQvQumZoNi480XiP5DedFGX9Dfs9ejPugYTn3EIalaWAN7wk3Iaw5G3DvoAvdFB/JvB2RrNaFU
	oN0PtrhDZkwGWRWqIcfz74Oc7uhe9vjC4AqT9GNQLCyP/Irw5njz3ydagXJJ6RPR/dxaHhk6VHYLd
	WTg15S8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgPJC-0000000CbSc-21Al;
	Thu, 15 Jan 2026 15:30:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgPJ9-0000000CbSD-3ntF
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 15:30:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgPJ8-0004k4-6m; Thu, 15 Jan 2026 16:30:46 +0100
Message-ID: <83b6d33b-e1a4-4adc-ac2a-733764f32d7d@pengutronix.de>
Date: Thu, 15 Jan 2026 16:30:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-13-8f0625ac5471@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-13-8f0625ac5471@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_073047_952038_E61D5147 
X-CRM114-Status: GOOD (  20.70  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 13/23] ARM: i.MX8M: add support to pass BL3x bl_params
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/10/25 9:34 PM, Marco Felsch wrote:
> Add support to handover the BL32 and BL33 entrypoints via the TF-A
> struct::bl_params in arg0. This eliminates the requirement to share the
> different load addresses between multiple binaries to lower the BSP
> integration effort.
>
> In addition to the entriespoints, this commit also adds the support to
> pass the builtin barebox DTB to OP-TEE if enabled.
>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---


> +config ARCH_IMX_ATF_PASS_BL_PARAMS
> +	bool "Pass BL3x bl_params as arg0 to TF-A"
> +	depends on ARCH_IMX_ATF
> +	select ARM_ATF
> +	select ARCH_HAS_EARLY_FDT_SUPPORT
> +	help
> +	  Enable this option if you are using an upstream TF-A that uses
> +	  the struct::bl_params to handover all required BL32 and BL33
> +	  information required to start the BL32 and BL33 image.
> +
> +	  Since upstream TF-A v2.12 all i.MX8M support this feature except for
> +	  the i.MX8MQ.
I think the help text is misleading, because you still need to enable
the PBL_EARLY_FDT_LOAD option for this to actually work.

What you want instead is for the SoC symbols for i.MX8M[MNQ] to select
ARCH_HAS_EARLY_FDT_SUPPORT and then this symbol here would select
PBL_EARLY_FDT_LOAD.

PBL_EARLY_FDT_LOAD itself would lose its prompt, but you probably will
want to keep a

  prompt "Include Early FDT loading support" if COMPILE_TEST

So it has coverage from the static analyzers running for sandbox.

> +	if (!IS_ENABLED(CONFIG_ARCH_IMX_ATF_PASS_BL_PARAMS) || cpu_is_mx8mq()) {

Ok, good thing this is guarded, so I think that answers my questions
regarding the LIBFDT dependency.

> +		ret = pbl_load_fdt(fdt, buf, bufsz);

Did you consider replacing the uncompressed DT in the handoff data if we
already spent the time to decompress it here?

> +		if (!ret) {
> +			unsigned long mem_base = MX8M_DDR_CSD1_BASE_ADDR;
> +			unsigned long mem_sz;
> +
> +			if (cpu_is_mx8mn())
> +				mem_sz = imx8m_ddrc_sdram_size(16);
> +			else
> +				mem_sz = imx8m_ddrc_sdram_size(32);
> +
> +			fdt = buf;
> +			ret = fdt_fixup_mem(fdt, &mem_base, &mem_sz, 1);
> +			if (ret) {
> +				pr_warn("Failed to fixup FDT memory node, continue without\n");
> +				fdt = NULL;
> +			}

Ok, that answers my question about the memory being inaccurate.

Keep in mind that all this runs without MMU enabled, so it will be
slower. A FIXME comment may be apt to alert to this fact.

Thanks,
Ahmad


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



