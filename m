Delivery-date: Wed, 17 Jan 2024 15:35:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ70b-003r3x-2u
	for lore@lore.pengutronix.de;
	Wed, 17 Jan 2024 15:35:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQ70c-0004rU-Ej
	for lore@pengutronix.de; Wed, 17 Jan 2024 15:35:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qpfe8HPgOzyXcq/hBYozKvWtbGkHlCj+nHLcBbpcRvQ=; b=0g7u7lkBmTjAmaDzdEba3h4Yf9
	36emMjxXsyz4pCvQaH413+aMxs3Gy4QpL6T0xnVZ+d13dQHKBouytM8h3yV3dXDcSxs0masJc9whM
	uHirQ1uOS9X1SxUnjv3EaJU9etl8fFnrxSzDuTRFQXBUu0suzJHuszPi7kM3l6bhjGUqeLQtIDxy4
	ROhhu1OGb9LIfCbMDd2Z9z1JtG+spi1kbXLNTPeqIVegAK/OhTiKmcvjPG9/N+VrVUer5dMyGNszz
	MZPbrZyyF6kVHJi4lhzwMZ666ISmBFKPV/awTHMkJqQe9F21yCJkNO40RL9swa/CR8i2gkBbNWphd
	84THZ36g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6zG-00HB1L-1V;
	Wed, 17 Jan 2024 14:33:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6zC-00HAwQ-1a
	for barebox@lists.infradead.org;
	Wed, 17 Jan 2024 14:33:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rQ6z8-0004lg-5Z; Wed, 17 Jan 2024 15:33:42 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rQ6z7-000ULl-PN; Wed, 17 Jan 2024 15:33:41 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rQ6z7-000PlB-Mw; Wed, 17 Jan 2024 15:33:41 +0100
Date: Wed, 17 Jan 2024 15:33:41 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240117143341.GI4700@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
 <20240116170738.209954-13-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240116170738.209954-13-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_063346_551830_6C324453 
X-CRM114-Status: GOOD (  23.38  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 12/18] ARM64: mmu: add dynamic optee memory mapping
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 16, 2024 at 06:07:32PM +0100, Marco Felsch wrote:
> Use the dynamic optee memory base address for the early mapping if
> possible and fallback to the static mapping if the query failed.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c      | 14 ++++++++++++--
>  arch/arm/mach-imx/esdctl.c |  4 ++++
>  common/Makefile            |  2 +-
>  3 files changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 84f45bc2c3c1..27fd15ea1233 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -20,6 +20,7 @@
>  #include <memory.h>
>  #include <asm/system_info.h>
>  #include <linux/pagemap.h>
> +#include <tee/optee.h>
>  
>  #include "mmu_64.h"
>  
> @@ -310,6 +311,7 @@ static void init_range(size_t total_level0_tables)
>  void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  {
>  	int el;
> +	u64 optee_membase;
>  	unsigned long ttb = arm_mem_ttb(membase + memsize);
>  
>  	pr_debug("enabling MMU, ttb @ 0x%08lx\n", ttb);
> @@ -326,8 +328,16 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
>  	 * Set 1:1 mapping of VA->PA. So to cover the full 1TB range we need 2 tables.
>  	 */
>  	init_range(2);
> -	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
> -	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
> +
> +	if (optee_get_membase(&optee_membase)) {
> +		/* Fallback and place OP-TEE at the memory end region */
> +		early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
> +		early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
> +	} else {
> +		early_remap_range(membase, memsize, MAP_CACHED);
> +		early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);
> +	}

You could replace the above with:

	early_remap_range(membase, memsize, MAP_CACHED);

	optee_membase = membase + memsize - OPTEE_SIZE;
	optee_get_membase(&optee_membase);
	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT);

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


