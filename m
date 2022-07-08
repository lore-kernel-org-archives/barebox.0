Delivery-date: Fri, 08 Jul 2022 10:16:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9j9t-00AHqM-F8
	for lore@lore.pengutronix.de; Fri, 08 Jul 2022 10:16:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o9j9v-0003w2-7Z
	for lore@pengutronix.de; Fri, 08 Jul 2022 10:16:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XMc3284loGt6lc8KsdVktuaJlQ1fdqoYWk3AIdczNC4=; b=MbwfHDMlfn6frO3fIVtefsqUGr
	+LAndlizUoWu/wwFEg7uOxjf0HXonWujWiV2UenDGWK1RlL09gInon9dEsA4BgUXsv/hvQtnwocVr
	2NoDybXYWrgYwAvPMOjDaBV0tqffD0+9tXhGjfKL83lyVgol+NNeC0Y7iI0ESygWa7Lhs5+jZMO1v
	o/pMjvKhGcfSwbSzYe5/44sitcneh9ZMZoo7LZJV0yZzN92LsB47q/A91mCsRw9nUJj/Ub6ceH4+T
	OZtMmA5j2q0gPDYW4QjwkREuTy8wihnHGcw8cgIMJRGHgX6PnCwGcs2xVK1/RSWcE6oN8JOYDU8fL
	nqZO7x4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9j88-002R34-Ks; Fri, 08 Jul 2022 08:14:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9j71-002QWQ-9g
	for barebox@lists.infradead.org; Fri, 08 Jul 2022 08:13:20 +0000
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1o9j6v-0003LD-Nq; Fri, 08 Jul 2022 10:13:13 +0200
Message-ID: <5005d887bc0885c563d5f853c0938d587ec8f319.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Steffen Trumtrar <str@pengutronix.de>, barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 08 Jul 2022 10:13:13 +0200
In-Reply-To: <20220708062411.711639-3-str@pengutronix.de>
References: <20220708062411.711639-1-str@pengutronix.de>
	 <20220708062411.711639-3-str@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_011319_381295_7F170647 
X-CRM114-Status: GOOD (  14.68  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/5] ARM: socfpga: achilles: use
 ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Freitag, dem 08.07.2022 um 08:24 +0200 schrieb Steffen Trumtrar:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Use the newer function ENTRY_FUNCTION_WITHSTACK.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/boards/reflex-achilles/lowlevel.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
> index 162cd58c58..0fc94fc2b1 100644
> --- a/arch/arm/boards/reflex-achilles/lowlevel.c
> +++ b/arch/arm/boards/reflex-achilles/lowlevel.c
> @@ -31,12 +31,16 @@
>  
>  extern char __dtb_z_socfpga_arria10_achilles_start[];
>  
> -static noinline void achilles_start(void)
> +#define ARRIA10_STACKTOP	ARRIA10_OCRAM_ADDR + SZ_256K
> +
> +ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_xload, ARRIA10_STACKTOP, r0, r1, r2)
>  {
>  	int pbl_index = 0;
>  	int barebox = 0;
>  	int bitstream = 0;
>  
> +	arm_cpu_lowlevel_init();

Drive-by comment, as I've spotted it in the context of this patch: the
Arria10 CPU is a Cortex A9, which has quite a few known errata, some of
which need to be worked around in the bootloader. You might want to
consider adding a SoC specific cpu lowlevel init function, like the
ones for i.MX6 and Zynq, to apply the relevant workarounds.

Regards,
Lucas

> +	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
>  
>  	relocate_to_current_adr();
>  	setup_c();
> @@ -75,13 +79,6 @@ static noinline void achilles_start(void)
>  	arria10_start_image(barebox);
>  }
>  
> -ENTRY_FUNCTION(start_socfpga_achilles_xload, r0, r1, r2)
> -{
> -	arm_cpu_lowlevel_init();
> -	arm_setup_stack(ARRIA10_OCRAM_ADDR + SZ_256K);
> -	achilles_start();
> -}
> -
>  ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
>  {
>  	void *fdt;
> @@ -91,7 +88,7 @@ ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
>  	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
>  }
>  
> -ENTRY_FUNCTION(start_socfpga_achilles_bringup, r0, r1, r2)
> +ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_bringup, ARRIA10_STACKTOP, r0, r1, r2)
>  {
>  	void *fdt;
>  




