Delivery-date: Fri, 24 Feb 2023 10:42:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVUax-000dpH-9z
	for lore@lore.pengutronix.de; Fri, 24 Feb 2023 10:42:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pVUav-0005jQ-Nk
	for lore@pengutronix.de; Fri, 24 Feb 2023 10:42:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HdPQUkoHgL2yHpQitsUWQ7brLccakKMvpwRllaNu9uo=; b=LqJxl22Cb7XWcfdOzBrGBXhnIg
	CgbKjBmV3mFQ8gQRJj25PEHgoZsDJoI5SYunnVEeFHDr0k7US0XwB1VOqAqPPkoRdOskwUc5bOofU
	wtwYXG+Aet7SrknMpC1A44NhyyzG62eU0u9T3owDJh/mTDSyvkrOzdfCCkNnzxYeVpRnfrLnX0dQ4
	arcciLxvXoWjPhTHxw+SIIYk9nsCXxXi5KksVOWNCN5dWnDUQSRP+b2crV34YILkeFAwuBeIcxAcw
	rq4cSHSAKKNYJAdzayEDQ4HNDe9gfjM2FQHWpYyMi4tcFW3f44ZyYyEhp9WbF9daR9uk6Y+DsC+GY
	Y8VpCUfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVUZL-001ihW-S8; Fri, 24 Feb 2023 09:40:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVUZF-001ifo-HQ
	for barebox@lists.infradead.org; Fri, 24 Feb 2023 09:40:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pVUZD-0005RM-N7; Fri, 24 Feb 2023 10:40:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pVUZC-0002Ci-KT; Fri, 24 Feb 2023 10:40:38 +0100
Date: Fri, 24 Feb 2023 10:40:38 +0100
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230224094038.GH32097@pengutronix.de>
References: <BL0PR07MB56659C1EDAD45F9F281AADDBECAB9@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB56659C1EDAD45F9F281AADDBECAB9@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230224_014041_596577_E946CC2F 
X-CRM114-Status: GOOD (  31.53  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Subject: [PATCH 1/2] ARM: add LS1021A to Layerscape machine
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 23, 2023 at 01:58:44PM +0000, Renaud Barbier wrote:
> This updates the Layerscape support in preparation for the
> introduction of the LS1021A-IOT:
> 
> - Makefile/Kconfig
> - LS1021A specific register maps and configurations
> - errata workarounds update
> 
> Many existing functions used for the ls1046a now use the
> common prefix layerscape for both machines. Consequently,
> the ls1046 board supports are updated.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>

[...]

> -static void erratum_a008997_ls1046a(void)
> +static void erratum_a008997_layerscape(void)
>  {
>  	u32 __iomem *scfg = (u32 __iomem *)LSCH2_SCFG_ADDR;
>  
>  	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB1);
> -	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB2);
> -	set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB3);
> +	if (IS_ENABLED(CONFIG_ARCH_LS1046)) {
> +		set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB2);
> +		set_usb_pcstxswingfull(scfg, SCFG_USB3PRM2CR_USB3);
> +	}
>  }

You are distinuishing the different SoCs using the preprocessor which
prevents us from ever building a barebox that runs on both SoCs.


> -void ls1046a_errata(void)
> +void layerscape_errata(void)
>  {
>  	erratum_a008850_early();
> -	erratum_a009008_ls1046a();
> -	erratum_a009798_ls1046a();
> -	erratum_a008997_ls1046a();
> -	erratum_a009007_ls1046a();
> +	erratum_a009008_layerscape();
> +	erratum_a009798_layerscape();
> +	erratum_a008997_layerscape();
> +	erratum_a009007_layerscape();
>  }

The pattern should rather be:

static void layerscape_errata(void)
{
	/* do common stuff */
}

void ls1046a_errata(void)
{
	layerscape_errata();

	/* do ls1046a specific stuff */
}

void ls1021a_errata(void)
{
	layerscape_errata();

	/* do ls1021a specific stuff */
}

The rationale is that this is called from board code and the board
already knows which SoC it runs with, so we can better call SoC specific
functions and do the common stuff from there.

This avoids ifdeffery and we can create a barebox that runs on different
layerscape SoCs (well at least we could if they had the same architecture)

> diff --git a/arch/arm/mach-layerscape/include/mach/layerscape.h b/arch/arm/mach-layerscape/include/mach/layerscape.h
> index 447417a266..d53d01cd5f 100644
> --- a/arch/arm/mach-layerscape/include/mach/layerscape.h
> +++ b/arch/arm/mach-layerscape/include/mach/layerscape.h
> @@ -3,10 +3,12 @@
>  #ifndef __MACH_LAYERSCAPE_H
>  #define __MACH_LAYERSCAPE_H
>  
> -#define LS1046A_DDR_SDRAM_BASE	0x80000000
> -#define LS1046A_DDR_FREQ	2100000000
> +enum bootsource layerscape_bootsource_get(void);
> +
> +#define LAYERSCAPE_DDR_SDRAM_BASE	0x80000000
>  
> -enum bootsource ls1046_bootsource_get(void);
> +#ifdef CONFIG_ARCH_LS1046
> +#define LS1046A_DDR_FREQ	2100000000

This define is properly prefixed with the SoC type, no need to ifdef it.

>  
>  #ifdef CONFIG_ARCH_LAYERSCAPE_PPA
>  int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size);
> @@ -17,5 +19,10 @@ static inline int ls1046a_ppa_init(resource_size_t ppa_start,
>  	return -ENOSYS;
>  }
>  #endif
> +#endif
> +
> +#ifdef CONFIG_ARCH_LS1021
> +#define LS1021A_DDR_FREQ	1600000000
> +#endif

ditto.

> +static int ls102xa_smmu_stream_id_init(void)
> +{
> +	ls102xa_config_smmu_stream_id(dev_stream_id, ARRAY_SIZE(dev_stream_id));
> +
> +	return 0;
> +}
> +mmu_initcall(ls102xa_smmu_stream_id_init);

This should be protected from running on the wrong SoC, with something
like

	if (!of_machine_is_compatible("fsl,ls1021a"))
		return 0;

> +static int restart_register_feature(void)
> +{
> +	restart_handler_register_fn("soc-reset", ls102xa_restart);
> +
> +	return 0;
> +}
> +coredevice_initcall(restart_register_feature);

ditto


> diff --git a/arch/arm/mach-layerscape/xload-qspi.c b/arch/arm/mach-layerscape/xload-qspi.c
> index 192aea64b4..af2834f35e 100644
> --- a/arch/arm/mach-layerscape/xload-qspi.c
> +++ b/arch/arm/mach-layerscape/xload-qspi.c
> @@ -13,11 +13,11 @@
>   */
>  #define BAREBOX_START	(128 * 1024)
>  
> -int ls1046a_qspi_start_image(unsigned long r0, unsigned long r1,
> +int layerscape_qspi_start_image(unsigned long r0, unsigned long r1,
>  					     unsigned long r2)
>  {
>  	void *qspi_reg_base = IOMEM(LSCH2_QSPI0_BASE_ADDR);
> -	void *membase = (void *)LS1046A_DDR_SDRAM_BASE;
> +	void *membase = (void *)LAYERSCAPE_DDR_SDRAM_BASE;
>  	void *qspi_mem_base = IOMEM(0x40000000);
>  	void (*barebox)(unsigned long, unsigned long, unsigned long) = membase;
>

As above: keep the name ls1046a_qspi_start_image(), add
ls1021a_qspi_start_image(), if appropriate factor out common stuff to a
layerscape_qspi_start_image(), for example by passing the base address
as argument if necessary.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


