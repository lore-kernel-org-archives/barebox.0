Delivery-date: Mon, 16 May 2022 13:17:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqYiy-00FWv2-KB
	for lore@lore.pengutronix.de; Mon, 16 May 2022 13:17:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqYix-0001he-3z
	for lore@pengutronix.de; Mon, 16 May 2022 13:17:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkjLKNA7eYRQnWFVEPLNDNXJC/glEZtp3kSGEh+mSto=; b=F9p788zr5XYuNc
	SdWNv3fdROCGEeZVPI9Ew9z5cwI26lejeNyXvxkjUPjnxbbjiyBg2is9XsppacvaGLPb9HWhafX2l
	zeECoQLKYU8zhd3IsGhoh5RUlQaw5D9w/C8qsq5TQFuZoEYGOxQRs9wLVtU84QYaJ4hKOpvC+JGvi
	IPxoqA2jEN0AGroix6UG3W5FfEzdjaq6RNbU5mmBUeagbrcxuhmsBtppOOazy/4GkQq98mDOMCI2x
	uYNfch/8J210Fxr5dQjyJ9gILl5b1uCOY5BB4onUfHtL4V9iG/P/fn+1Y3I+sLoSBLNAEv4LcyMtN
	7LP8YMdjRLZLrrUy3R6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqYhZ-007GWP-P0; Mon, 16 May 2022 11:15:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqYhV-007GV2-Bq
 for barebox@lists.infradead.org; Mon, 16 May 2022 11:15:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nqYhS-0001TD-Qz; Mon, 16 May 2022 13:15:42 +0200
Message-ID: <8453b93e-905d-3df5-88f1-53eb4d4679f4@pengutronix.de>
Date: Mon, 16 May 2022 13:15:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20220515193807.354903-1-sam@ravnborg.org>
 <20220515193807.354903-9-sam@ravnborg.org>
Content-Language: en-US
In-Reply-To: <20220515193807.354903-9-sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_041545_454378_5E6CDCD6 
X-CRM114-Status: GOOD (  24.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 8/8] ARM: at91: Add xload support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sam,

On 15.05.22 21:38, Sam Ravnborg wrote:
> This updates skov-arm9cpu with xload support, and we can now
> use barebox as a replacment for at91bootstrap.
> 
> Only boot via SD card is supported.
> 
> NOTE: Actual status
> [x] dbgu support in pbl works (can print)
> [x] Other init stuff ifdeffed out - from at91bootstrap
> [ ] Check what the original code used for div/mul - there is some confusion
> [ ] load barebox.bin and boots it. Right now mount fails

Is your SD-Card perhaps 2G or smaller? The AT91 PBL MCI functions
assume high capacity (> 2G). It's a quite ugly thing, but
finding out whether a card is High-Capacity or not happens
during init phase and as we don't redo init in PBL...

High Capacity cards reference start block offset in sectors, while
older cards use bytes. On i.MX, barebox just reads at offset 0
and all is good, but on AT91, we need to do random access, so
we need to decide whether to use sectors or bytes. Currently,
the driver hardcodes the sector assumption. I found this to be
the lesser evil to the alternative: having a full MMC stack in PBL. 

If that's indeed your issue, there's a heuristic possible:
Try to mount for High-Capacity, if that fails, assume non-high
capacity and try again. It's not 100%, but it's better than status quo.

> -static void __bare_init skov_arm9cpu_init(void *fdt)
> +ENTRY_FUNCTION(start_skov_arm9cpu_xload_mmc, r0, r1, r2)
>  {
> -	struct at91sam926x_board_cfg cfg;
> +	const struct sam92_pmc_config sam92_pmc_config = {
> +		/* X-tal is 16.000 MHz so 16 / 4 * (31 + 1) = 200 */
> +		.diva = 14,
> +		.mula = 171,
> +	};
> +	sam9263_lowlevel_init(&sam92_pmc_config);

This is needlessly fragile. Compiler is within rights to never push
this to stack and to regenerate a relocation entry here that points
at .data, which has not yet been relocated.

> +	arm_setup_stack(AT91SAM9263_SRAM0_BASE + AT91SAM9263_SRAM0_SIZE);

Both sam9263_lowlevel_init and arm_cpu_lowlevel_init are global functions,
so LR will be pushed to stack in-between, yet stack is only initialized here
after.

Also ENTRY_FUNCTION is __naked on ARM32, so it's a bad idea to do more
than the absolutely necessary stuff here as GCC can generate very unexpected
code when it decides to spill to stack inside a naked function.

We have ENTRY_FUNCTION_WITHSTACK now that removes this footgun.
Please use that instead.

>  
> -	cfg.pio = IOMEM(AT91SAM9263_BASE_PIOD);
> -	cfg.sdramc = IOMEM(AT91SAM9263_BASE_SDRAMC0);
> -	cfg.ebi_pio_is_peripha = true;
> -	cfg.matrix_csa = IOMEM(AT91SAM9263_BASE_MATRIX + AT91SAM9263_MATRIX_EBI0CSA);
> +	relocate_to_current_adr();
> +	setup_c();

My preference would be set up ENTRY_FUNCTION_WITHSTACK, so you don't have
to write naked code. Call arm_cpu_lowlevel_init() first thing, so you have
active I-Cache. Then relocate and setup_c and only then do the SoC-specific setup.

> +pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu_xload_mmc
> +FILE_barebox-skov-arm9cpu-xload-mmc.img = start_skov_arm9cpu_xload_mmc.pblb
> +MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000
> +image-$(CONFIG_MACH_SKOV_ARM9CPU) += barebox-skov-arm9cpu-xload-mmc.img
> +
>  pblb-$(CONFIG_MACH_SKOV_ARM9CPU) += start_skov_arm9cpu
>  FILE_barebox-skov-arm9cpu.img = start_skov_arm9cpu.pblb
>  MAX_PBL_MEMORY_SIZE_start_skov_arm9cpu = 0x12000

Unrelated to your patch, but you might know the answer: Why is there a max PBL memory size here?
AFAIK, you use at91bootstrap to chainload barebox into DRAM, why do you need
a PBL size limit then?

Cheers,
Ahmad



-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

