Delivery-date: Fri, 20 May 2022 13:05:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0Re-0032rz-LY
	for lore@lore.pengutronix.de; Fri, 20 May 2022 13:05:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0Rd-0006Lp-GC
	for lore@pengutronix.de; Fri, 20 May 2022 13:05:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cvc6CHy1WdEgeQwcLi+LI6d2l1qk1s/07MI0at8eT5A=; b=FHcuhJ+3oc6lz7
	iPxU0aiDvI+1OjiUW9ZdtXNAw4hG5BINhXFEn+AKpze1yyT5XQWimieKoVca4RtwMZMAB/tZ/8log
	JyxNwFwpmKKGKFb9Xv4Mwp8k7B33GAjhTRhTQPpDWLz3yKmqaKa24pS7c7zER74OnRLgLQLBqFzN/
	2nLDO8aDX+II/rms1jCdO5lodqJXNOA3nmAmSkTttK3Rl+y0avqCBi5GXfFmsMZZUTiysxOePX8TE
	H9wIJEqkxM+KBySGSuTZafzoUtyBrERHZj/kdLnP8izUZH4KpwBBpmBZVxDlT151gHWWBldXLdUnt
	FqxROVRAn4zo8rw/FPmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns0QH-00ByLh-Ko; Fri, 20 May 2022 11:03:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns0OQ-00BxEJ-8U
 for barebox@bombadil.infradead.org; Fri, 20 May 2022 11:02:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
 Reply-To:Cc:Content-ID:Content-Description;
 bh=UJu84d/uYDwJtAXO0Z/HxZ4nGuGmkeYCWtQjzNjCzjo=; b=m87v4r8OWOJQbLsjat13QQFaDE
 zRRin+krs833z2FwZ0aCN1kybgCDNaurJkfx1iZEepHog3kvHXEOniYrSpqnAsBOwh6MfZCQrIHM3
 ptPD/PH/Am35609FeL4RRw2G9pRex2NdAnEytz3B9MdSTD05FhoA8CADjAhogKQozCccr8k05w3aZ
 6QpIgK5xZOwVaXKJ9qKoGEd9zg1W3vzqPyO0nZuvJ+/dEEp8oCf7eV5K+9MTFJ/mkIHNp8stJDV3E
 Yh+uxZ09Mls/lqlb4p4eLSW+Ef0IJSxARjBFqjMvX2kLFXhZ5zE5Nfy2xdGffHEACh0lDdMdwq8eU
 NDH1j4SA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrzMv-002In0-6M
 for barebox@lists.infradead.org; Fri, 20 May 2022 09:56:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nrzMt-0006G3-RX; Fri, 20 May 2022 11:56:23 +0200
Message-ID: <30d02935-d1c8-edb2-2117-3ac6f1e0f7d6@pengutronix.de>
Date: Fri, 20 May 2022 11:56:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20220520082428.32385-1-eagle.alexander923@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220520082428.32385-1-eagle.alexander923@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_105625_794542_900323A1 
X-CRM114-Status: GOOD (  22.67  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: clps711x: Switch to devicetree usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 20.05.22 10:24, Alexander Shiyan wrote:
> This is a complex patch that switches the ARM CLPS711X architecture
> to work with the device tree. Includes changes to board initialization
> and any architecture drivers used.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>

> diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
> index 096120e567..85d92c8a7f 100644
> --- a/arch/arm/boards/clep7212/Makefile
> +++ b/arch/arm/boards/clep7212/Makefile

> +static __init int clep7212_fixup(void)
> +{
> +	if (of_machine_is_compatible("cirrus,ep7209"))
> +		of_register_fixup(clep7212_dt_fixup, NULL);
> +
> +	return 0;
> +}
> +postcore_initcall(clep7212_fixup);

You can replace this with the new barebox_set_serial_number(), see:
https://git.pengutronix.de/cgit/barebox/commit/?h=next&id=f6756e9ce6f26dc22506e25bd5cf1a4f6a173636

> -void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
> +ENTRY_FUNCTION(start_ep7212_clep7212, r0, r1, r2)
>  {
> +	void *fdt;
> +
>  	arm_cpu_lowlevel_init();
>  
> -	clps711x_barebox_entry(CLPS711X_CPU_PLL_MULT, NULL);
> +	/* Stack in SRAM */
> +	arm_setup_stack(CS6_BASE - 16);

please use ENTRY_FUNCTION_WITHSTACK instead to be a bit more
future-proof. Also - 16 is not necessary, see
6b3dc4abd884 ("ARM: Cleanup stack offset cargo cult").

> diff --git a/arch/arm/mach-clps711x/common.c b/arch/arm/mach-clps711x/common.c
> new file mode 100644
> index 0000000000..d9f702a9b1
> --- /dev/null
> +++ b/arch/arm/mach-clps711x/common.c

> +static void clps711x_bus_patch(struct device_node *node,
> +			       u32 compare, u32 change)
> +{

Could you add a comment why this is necessary?

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

