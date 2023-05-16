Delivery-date: Tue, 16 May 2023 10:24:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pypyp-002iyy-Va
	for lore@lore.pengutronix.de; Tue, 16 May 2023 10:24:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pypyn-0006Um-8J
	for lore@pengutronix.de; Tue, 16 May 2023 10:24:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p8XOB2j5Ly3OO8sL9Z2s7Mj9FRpnPe5DArwdQVf9Wng=; b=g7vCD/dZ8llmD9tVtGcqAJiS1m
	S30mywGh2BHJwvOiH7SyGSV5a5/pXXOH+e29ppsZw8bmGMG4OX8xzdI25mGxavd5qAvss/EbSGXnp
	bu8hRhebxGjFpohnJIEMKUTW/okGr26Wu2JMkdfw8YopUBTZtYGzeE3ZEPqTEa9ipWCoSFtfeQZ4H
	MgHD1ROsozUnKEM5wQhxugVXFZJliSf5RpNvV5qrDAGQ8L8jDyyX8AWWDw2A3xTOxOLBR2Rjv1LdK
	dWnRKHNUrCkn2/8o55MHFc132/PVmF8N0btMWkm5DVAUOxNDKPE+dG2oqLPT0hft9lKTiXoToy8Sg
	e9Aa9yMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pypxe-004puZ-2x;
	Tue, 16 May 2023 08:23:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pypxc-004ptV-13
	for barebox@lists.infradead.org;
	Tue, 16 May 2023 08:23:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pypxb-0006Ly-3P; Tue, 16 May 2023 10:23:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pypxa-0006Dk-Bl; Tue, 16 May 2023 10:23:06 +0200
Date: Tue, 16 May 2023 10:23:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230516082306.GQ29365@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-11-s.hauer@pengutronix.de>
 <acf69b00-9c79-1c84-d076-a940b9a1f03a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <acf69b00-9c79-1c84-d076-a940b9a1f03a@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_012308_362199_F3888D8D 
X-CRM114-Status: GOOD (  31.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/27] ARM: i.MX: Drop HAB workaround
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 12, 2023 at 08:09:06PM +0200, Ahmad Fatoum wrote:
> On 12.05.23 13:09, Sascha Hauer wrote:
> > The i.MX HAB code on i.MX6 has to jump into ROM which happens to start
> > at 0x0. To make that possible we used to map the ROM cached and jumped
> > to it before the MMU is initialized. Instead, remap the ROM as needed
> > in the HAB code so that we can safely jump into ROM with MMU enabled.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/mmu-early_32.c | 7 -------
> >  drivers/hab/habv4.c         | 9 ++++++++-
> >  2 files changed, 8 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/mmu-early_32.c b/arch/arm/cpu/mmu-early_32.c
> > index 07c5917e6a..94bde44c9b 100644
> > --- a/arch/arm/cpu/mmu-early_32.c
> > +++ b/arch/arm/cpu/mmu-early_32.c
> > @@ -58,12 +58,5 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
> >  	/* maps main memory as cachable */
> >  	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
> >  
> > -	/*
> > -	 * With HAB enabled we call into the ROM code later in imx6_hab_get_status().
> > -	 * Map the ROM cached which has the effect that the XN bit is not set.
> > -	 */
> > -	if (IS_ENABLED(CONFIG_HABV4) && IS_ENABLED(CONFIG_ARCH_IMX6))
> > -		map_region(0x0, SZ_1M, PMD_SECT_DEF_CACHED);
> > -
> >  	__mmu_cache_on();
> >  }
> > diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> > index 252e38f655..d2494db114 100644
> > --- a/drivers/hab/habv4.c
> > +++ b/drivers/hab/habv4.c
> > @@ -11,6 +11,9 @@
> >  #include <hab.h>
> >  #include <init.h>
> >  #include <types.h>
> > +#include <mmu.h>
> > +#include <zero_page.h>
> > +#include <linux/sizes.h>
> >  #include <linux/arm-smccc.h>
> >  #include <asm/cache.h>
> >  
> > @@ -613,12 +616,16 @@ static int init_imx6_hab_get_status(void)
> >  		/* can happen in multi-image builds and is not an error */
> >  		return 0;
> >  
> > +	arch_remap_range(0x0, SZ_1M, MAP_CACHED);
> 
> This affects SZ_1M bytes.
> 
> > +
> >  	/*
> >  	 * Nobody will check the return value if there were HAB errors, but the
> >  	 * initcall will fail spectaculously with a strange error message.
> >  	 */
> >  	imx6_hab_get_status();
> >  
> > +	zero_page_faulting();
> 
> This affects only 4K. The rest of the 1M can now be speculated into :/

Ok, I'll add a

	arch_remap_range((void *)PAGE_SIZE, SZ_1M - PAGE_SIZE, MAP_UNCACHED);

to remap the remaining space as uncached.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


