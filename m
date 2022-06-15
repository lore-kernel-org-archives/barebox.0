Delivery-date: Wed, 15 Jun 2022 08:30:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1MXg-002nZh-5D
	for lore@lore.pengutronix.de; Wed, 15 Jun 2022 08:30:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1MXg-0000R8-0A
	for lore@pengutronix.de; Wed, 15 Jun 2022 08:30:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RtYY9VvNFV1IpCl/Ll0YV+EigJ+ensJi6ogG6cu8uBg=; b=CyQllQmIpwims2jsTctn4vOd12
	sbZR5kWCndlvtMAYI9qfc9VF8SpdRSZ9BlBqkyYdP6IieBTCN6vNoFgxuUNYR68swu3Er3asch+rx
	DBbSGJ5inKj9MaX2EulrEmFU1XV4qVK7IVqSLAtVJBpkBq/nzWoioYl+7tVdOFnR6UEeZJSX35Ynn
	595nZjMn13rw75EtgrE6LDWUBH/raQM8nfGGD8Yf8r1KGXNkBOtAYRoBkEqdCkRBi3hk3MLbK9GW/
	0G6xSgDREdktvHbNb2BWZAe0ssz93iJ4n4n6kMT0TN+cXI0+hwXfAZT8fV1pSOde1YF8QC/EW4tlQ
	YFXTBeYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1MWC-00CrU7-4e; Wed, 15 Jun 2022 06:28:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1MW6-00CrTc-KQ
	for barebox@lists.infradead.org; Wed, 15 Jun 2022 06:28:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o1MW4-0000DZ-Ik; Wed, 15 Jun 2022 08:28:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o1MW4-0007q7-9s; Wed, 15 Jun 2022 08:28:36 +0200
Date: Wed, 15 Jun 2022 08:28:36 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220615062836.GV1615@pengutronix.de>
References: <20220609111810.2454588-1-a.fatoum@pengutronix.de>
 <20220609111810.2454588-3-a.fatoum@pengutronix.de>
 <20220615050849.GS2387@pengutronix.de>
 <01713bd8-4bca-3049-a1c4-0bcfc5f58e94@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <01713bd8-4bca-3049-a1c4-0bcfc5f58e94@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_232838_707247_4EC44C35 
X-CRM114-Status: GOOD (  34.70  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 3/3] of: request reserved memory regions so other code
 can't
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jun 15, 2022 at 08:06:29AM +0200, Ahmad Fatoum wrote:
> On 15.06.22 07:08, Sascha Hauer wrote:
> > On Thu, Jun 09, 2022 at 01:18:10PM +0200, Ahmad Fatoum wrote:
> >> Add a new of_reserved_mem_walk that can be used to request
> >> reserved memory regions. This avoids e.g. bootm trying to
> >> place the kernel into a reserved region.
> >>
> >> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >> v1 -> v2:
> >>   - don't use of_reserve_entry accounting and instead
> >>     directly request memory (Sascha)
> >> ---
> >>  common/memory.c           | 21 ++++++++++--
> >>  drivers/of/Makefile       |  1 +
> >>  drivers/of/reserved-mem.c | 71 +++++++++++++++++++++++++++++++++++++++
> >>  include/of.h              |  9 +++++
> >>  4 files changed, 99 insertions(+), 3 deletions(-)
> >>  create mode 100644 drivers/of/reserved-mem.c
> >>
> >> diff --git a/common/memory.c b/common/memory.c
> >> index 95995bb6e310..fd782c7f24f6 100644
> >> --- a/common/memory.c
> >> +++ b/common/memory.c
> >> @@ -3,6 +3,8 @@
> >>   * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
> >>   */
> >>  
> >> +#define pr_fmt(fmt) "memory: " fmt
> >> +
> >>  #include <common.h>
> >>  #include <memory.h>
> >>  #include <of.h>
> >> @@ -12,6 +14,7 @@
> >>  #include <asm-generic/memory_layout.h>
> >>  #include <asm/sections.h>
> >>  #include <malloc.h>
> >> +#include <of.h>
> >>  
> >>  /*
> >>   * Begin and End of memory area for malloc(), and current "brk"
> >> @@ -53,9 +56,20 @@ void mem_malloc_init(void *start, void *end)
> >>  	mem_malloc_initialized = 1;
> >>  }
> >>  
> >> -#if !defined __SANDBOX__
> >> +static int request_reservation(const struct resource *res)
> >> +{
> >> +	if (!(res->flags & IORESOURCE_EXCLUSIVE))
> >> +		return 0;
> >> +
> >> +	pr_debug("region %s %pa-%pa\n", res->name, &res->start, &res->end);
> >> +
> >> +	request_sdram_region(res->name, res->start, resource_size(res));
> >> +	return 0;
> >> +}
> >> +
> >>  static int mem_malloc_resource(void)
> >>  {
> >> +#if !defined __SANDBOX__
> >>  	/*
> >>  	 * Normally it's a bug when one of these fails,
> >>  	 * but we have some setups where some of these
> >> @@ -77,13 +91,14 @@ static int mem_malloc_resource(void)
> >>  			(unsigned long)&__bss_start,
> >>  			(unsigned long)&__bss_stop -
> >>  			(unsigned long)&__bss_start);
> >> +#endif
> >>  #ifdef STACK_BASE
> >>  	request_sdram_region("stack", STACK_BASE, STACK_SIZE);
> >>  #endif
> >> -	return 0;
> >> +
> >> +	return of_reserved_mem_walk(request_reservation);
> >>  }
> >>  coredevice_initcall(mem_malloc_resource);
> >> -#endif
> >>  
> >>  static void *sbrk_no_zero(ptrdiff_t increment)
> >>  {
> >> diff --git a/drivers/of/Makefile b/drivers/of/Makefile
> >> index ca8da71cb4f0..99b610cba85e 100644
> >> --- a/drivers/of/Makefile
> >> +++ b/drivers/of/Makefile
> >> @@ -5,6 +5,7 @@ obj-$(CONFIG_OF_GPIO) += of_gpio.o
> >>  obj-$(CONFIG_OF_PCI) += of_pci.o
> >>  obj-y += partition.o
> >>  obj-y += of_net.o
> >> +obj-$(CONFIG_OFDEVICE) += reserved-mem.o
> > 
> > Compilation of this file depends on CONFIG_OFDEVICE, but the static
> > inline wrapper or not decision depends on CONFIG_OFTREE. This breaks a
> > number of defconfigs.
> > I took the easiest way out for now and changed to obj-y above to fix
> > this.
> 
> I am surprised that works. With !CONFIG_OFTREE, <of.h> included in
> reserved-mem.c would provide a static inline helper that should
> clash with of_reserved_mem_walk defined with external linkage
> in that file. Can you change this into obj-$(CONFIG_OFTREE)?

I should have mentioned it's obj-$(CONFIG_OFTREE) implicitly because the
directory is obj-$(CONFIG_OFTREE).

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


