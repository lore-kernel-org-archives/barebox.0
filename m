Delivery-date: Wed, 21 Sep 2022 11:25:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oavzF-00BClK-A5
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 11:25:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oavzC-0000kI-Ra
	for lore@pengutronix.de; Wed, 21 Sep 2022 11:25:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cxP/xnTQLE6zSm1xcZ1WVOCuoa6/daq0DVBUg7OuX/s=; b=Mru2cV9thE4Jr4R0TCsCE1tDD9
	2+g2PiWPlsasixaYu7V2RgA3W1KyUeocSE2u7IILRJPbBZqrZVUPcfAKPC7wIevi5JSW+6TrP8W3q
	V+Nqs5Dxsl3hKz/8eWSye5F/JVV/CmxJAJhHeF/cJdFvTyiKxnl5CRps6cUJqhH4S2XDTWiwSFIa0
	uKjQ1Sf++1/B0bwBcy2Abr4soG0gEj38SQo6GHAj0XXnjH40udScFDOXRD90Ng538gXTXQDoqSiL2
	UEQFukyqPpNM9aaicyPLusRREfBS67Ln7a7QQa/syzDYMwizkow3QKwGJq9ihAo/G1GEQVW66zMKa
	yiNsddgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavxf-00AMpD-0Q; Wed, 21 Sep 2022 09:24:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oavrC-00AJiA-Us
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 09:17:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oavrB-0007kk-Kr; Wed, 21 Sep 2022 11:17:25 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oavrA-0003pz-SG; Wed, 21 Sep 2022 11:17:24 +0200
Date: Wed, 21 Sep 2022 11:17:24 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220921091724.GB986@pengutronix.de>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
 <20220919113948.991245-7-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220919113948.991245-7-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_021727_026888_A22B3D27 
X-CRM114-Status: GOOD (  25.91  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 6/7] arm: rockchip: rk3568: refactor common
 rk3568_start method
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 19, 2022 at 01:39:47PM +0200, Michael Riesch wrote:
> After the removal of the IO domain configuration code, the low-level
> initialization is the same for all RK356x boards. Add a common
> method rk3568_start to remove this code duplication.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm/boards/pine64-quartz64/lowlevel.c    | 30 +----------------
>  arch/arm/boards/radxa-rock3/lowlevel.c        | 27 ---------------
>  .../arm/boards/rockchip-rk3568-evb/lowlevel.c | 33 +------------------
>  .../arm/mach-rockchip/include/mach/rockchip.h |  1 +
>  arch/arm/mach-rockchip/rk3568.c               | 24 ++++++++++++++
>  5 files changed, 27 insertions(+), 88 deletions(-)
> 
> diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
> index b295885522..e1beb3e624 100644
> --- a/arch/arm/boards/pine64-quartz64/lowlevel.c
> +++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
> @@ -1,39 +1,11 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  #include <common.h>
> -#include <linux/sizes.h>
> -#include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
> -#include <mach/hardware.h>
> -#include <mach/atf.h>
> -#include <debug_ll.h>
>  #include <mach/rockchip.h>
>  
>  extern char __dtb_rk3566_quartz64_a_start[];
>  
> -static noinline void start_quartz64(void *fdt)
> -{
> -	/*
> -	 * Image execution starts at 0x0, but this is used for ATF and
> -	 * OP-TEE later, so move away from here.
> -	 */
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> -
> -	setup_c();
> -
> -	if (current_el() == 3) {
> -		rk3568_lowlevel_init();
> -		rk3568_atf_load_bl31(fdt);
> -		/* not reached */
> -	}
> -
> -	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM,
> -			  fdt);
> -}
> -
>  ENTRY_FUNCTION(start_quartz64a, r0, r1, r2)
>  {
> -	start_quartz64(__dtb_rk3566_quartz64_a_start);
> +	rk3568_start(__dtb_rk3566_quartz64_a_start);
>  }

Here __dtb_rk3566_quartz64_a_start is accessed before setup_c() has been
called. That is not allowed, see the patch I just sent.

BTW this patch breaks compilation, which is only fixed in 7/7:

/ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c:14:22: error: conflicting types for 'rk3568_start'
   14 | static noinline void rk3568_start(void)
      |                      ^~~~~~~~~~~~
In file included from /ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c:10:
/ptx/work/WORK_EIHEI/sha/projects/barebox/barebox/arch/arm/mach-rockchip/include/mach/rockchip.h:37:6: note: previous declaration of 'rk3568_start' was here
   37 | void rk3568_start(void *fdt);
      |      ^~~~~~~~~~~~


Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


