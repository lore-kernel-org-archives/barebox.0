Delivery-date: Tue, 09 Jan 2024 11:27:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN9KQ-00AAQ1-1n
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 11:27:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN9KP-0003ht-8O
	for lore@pengutronix.de; Tue, 09 Jan 2024 11:27:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iu4kWZSW5NHwm1CFUtE1p269hOzRkh7hqDed2YfHKBY=; b=MdujT/gu3KiY7qLPfQFabqKGws
	bibhGdgjcr1J2g9a/A4rBpk9SySsVFXs/CwhuiFwzLWC7sqg1neSNHucaA+Z6HOU/ew5zTnMmTq3u
	kN4pwqsXojs1f14Us4qeTI8mapr0Vy5Ck5lOeAc2FdQ/CRLPIOenybZJTmadohRl+1j2tr2xs785U
	5amfTItn7Wp2rsaSUjHlrbcu5UjaGGXcgf1530JGoTbRpRsTgO8eciTYkmmM4/H/YOmM6Hd6kazr8
	MzPY3WLgH2i5fd9L5V7xVGvSIIJsCpRCQ/xFq3avS2RtHhsNd9vnw+65WEdJZlZHO0pvGxsxO5Twg
	z3y4q7IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN9Ix-007cjl-13;
	Tue, 09 Jan 2024 10:25:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN9It-007ciy-2Y
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 10:25:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rN9Iq-0003PP-7T; Tue, 09 Jan 2024 11:25:48 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rN9Ip-001S9I-RJ; Tue, 09 Jan 2024 11:25:47 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rN9Ip-00B1iS-Oj; Tue, 09 Jan 2024 11:25:47 +0100
Date: Tue, 9 Jan 2024 11:25:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240109102547.GH1318922@pengutronix.de>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
 <20240109091603.235589-3-s.hauer@pengutronix.de>
 <fda8f1cf-b774-47bb-871d-36913bca9515@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fda8f1cf-b774-47bb-871d-36913bca9515@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_022551_844240_AC1AC88B 
X-CRM114-Status: GOOD (  26.92  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 02/10] ARM: Layerscape: LS1028a: reserve DDR region for
 TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 09, 2024 at 10:37:15AM +0100, Ahmad Fatoum wrote:
> On 09.01.24 10:15, Sascha Hauer wrote:
> > On LS1028a the TF-A is placed in DDR, so we have to reserve the region
> > in order to keep Linux away from it.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-layerscape/soc.c       | 2 ++
> >  drivers/mci/imx-esdhc-pbl.c          | 3 ++-
> >  include/mach/layerscape/layerscape.h | 8 ++++++++
> >  3 files changed, 12 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
> > index 4d4ef05d4b..5f9d0d5171 100644
> > --- a/arch/arm/mach-layerscape/soc.c
> > +++ b/arch/arm/mach-layerscape/soc.c
> > @@ -91,6 +91,8 @@ static int ls1028a_init(void)
> >  
> >  	layerscape_register_pbl_image_handler();
> >  
> > +	reserve_sdram_region("tfa", LS1028A_TFA_RESERVED_START, LS1028A_TFA_RESERVED_SIZE);
> 
> Does this mean that the TF-A region is mapped executable (and therefore prefetchable)
> from early MMU setup time until this line has finished executing?

No, it doesn't. The TFA is placed at the end of lowmem and
barebox_arm_entry() is called with the real memory size
minus the space occupied by the TFA.

Nevertheless this patch needs a fixup. reserve_sdram_region() is called
before the full DDR is registered, so there's nothing to reserve from at
this point. I'll have to create a mmu_initcall() from it.

Sascha


> 
> > +
> >  	return 0;
> >  }
> >  
> > diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
> > index 2c74d101e4..2d071eaca8 100644
> > --- a/drivers/mci/imx-esdhc-pbl.c
> > +++ b/drivers/mci/imx-esdhc-pbl.c
> > @@ -21,6 +21,7 @@
> >  #endif
> >  #ifdef CONFIG_ARCH_LAYERSCAPE
> >  #include <mach/layerscape/xload.h>
> > +#include <mach/layerscape/layerscape.h>
> >  #endif
> >  #include "sdhci.h"
> >  #include "imx-esdhc.h"
> > @@ -387,7 +388,7 @@ static int ls1028a_esdhc_start_image(void __iomem *base, struct dram_regions_inf
> >  		.socdata = &data,
> >  	};
> >  	void *sdram = (void *)0x80000000;
> > -	void (*bl31)(void) = (void *)0xfbe00000;
> > +	void (*bl31)(void) = (void *)LS1028A_TFA_RESERVED_START;
> >  	size_t bl31_size;
> >  	void *bl31_image;
> >  	struct bl2_to_bl31_params_mem_v2 *params;
> > diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
> > index a048b7ef9e..6f420dd4f4 100644
> > --- a/include/mach/layerscape/layerscape.h
> > +++ b/include/mach/layerscape/layerscape.h
> > @@ -3,6 +3,8 @@
> >  #ifndef __MACH_LAYERSCAPE_H
> >  #define __MACH_LAYERSCAPE_H
> >  
> > +#include <linux/sizes.h>
> > +
> >  #define LS1046A_DDR_SDRAM_BASE		0x80000000
> >  #define LS1046A_DDR_FREQ		2100000000
> >  
> > @@ -16,6 +18,12 @@
> >  #define LS1028A_SP_SHARED_DRAM_SIZE	SZ_2M
> >  #define LS1028A_TZC400_BASE		0x01100000
> >  
> > +#define LS1028A_TFA_SIZE		SZ_64M
> > +#define LS1028A_TFA_SHRD		SZ_2M
> > +#define LS1028A_TFA_RESERVED_SIZE	(LS1028A_TFA_SIZE + LS1028A_TFA_SHRD)
> > +#define LS1028A_TFA_RESERVED_START	(0x100000000 - LS1028A_TFA_RESERVED_SIZE)
> > +#define LS1028A_TFA_START		(0x100000000 - LS1028A_TFA_SIZE)
> > +
> >  enum bootsource ls1046a_bootsource_get(void);
> >  enum bootsource ls1021a_bootsource_get(void);
> >  
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


