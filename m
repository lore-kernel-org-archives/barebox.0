Delivery-date: Wed, 05 Apr 2023 08:50:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjwyX-00Aab9-S9
	for lore@lore.pengutronix.de; Wed, 05 Apr 2023 08:50:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjwyX-0000P2-Cq
	for lore@pengutronix.de; Wed, 05 Apr 2023 08:50:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CsA/eFRJJA8Tei6uUbL9ZvKvZAvWKL6FWioSOj/ATCA=; b=0GDSStrjfoHozlleXXXEY+N/Je
	ZwVVJ8mZonlRAo1kBSOuP3MhWIsQIi4Dx5KVya2tApDw73bwkfDourAz3ylWdvF1cgkOjhbFsNHFO
	5J5UoFdqIofp22aeAP5ONVWu+S8qLYjbrsEHYn5oXGMQ7K9y9Fe88AoHxKVLde1hD7AwxmyL8Pmvb
	2OHHk/fmZf7dFV2fXqZZZwuYQY5gbS1nYQlT8nDiIBPMFWh6SmhNNckfZCI00g7v/ShmyNBlUrPIS
	mUoXSa8T8A2kDrOeoXCOWL1L28LOw4e9JeA3BWKZQrU7q+EpLPgAh40mtbKoKaONki6g3GDAWE20k
	BF+jpRHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjwww-003Y5X-15;
	Wed, 05 Apr 2023 06:48:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjwwt-003Y4A-0l
	for barebox@lists.infradead.org;
	Wed, 05 Apr 2023 06:48:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjwwn-00007p-JE; Wed, 05 Apr 2023 08:48:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjwwn-0006NB-4I; Wed, 05 Apr 2023 08:48:45 +0200
Date: Wed, 5 Apr 2023 08:48:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230405064845.GJ15436@pengutronix.de>
References: <20230328074037.1202993-1-s.hauer@pengutronix.de>
 <20230328074037.1202993-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230328074037.1202993-5-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_234851_269535_B3AC4EA2 
X-CRM114-Status: GOOD (  24.53  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/6] ARM: Rockchip: rk3568: use rk3568_barebox_entry()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 28, 2023 at 09:40:35AM +0200, Sascha Hauer wrote:
> There is a rk3568 specific entry function for barebox now, switch
> the existing boards over to use it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/pine64-quartz64/lowlevel.c    | 30 +++--------------
>  arch/arm/boards/radxa-rock3/lowlevel.c        | 31 +++---------------
>  .../rockchip-rk3568-bpi-r2pro/lowlevel.c      | 31 +++---------------
>  .../arm/boards/rockchip-rk3568-evb/lowlevel.c | 32 +++----------------
>  4 files changed, 17 insertions(+), 107 deletions(-)
> 
> diff --git a/arch/arm/boards/pine64-quartz64/lowlevel.c b/arch/arm/boards/pine64-quartz64/lowlevel.c
> index 1e63c0e698..975f8aa51c 100644
> --- a/arch/arm/boards/pine64-quartz64/lowlevel.c
> +++ b/arch/arm/boards/pine64-quartz64/lowlevel.c
> @@ -1,41 +1,19 @@
>  // SPDX-License-Identifier: GPL-2.0-only
> +
>  #include <common.h>
> -#include <linux/sizes.h>
> -#include <asm/barebox-arm-head.h>
>  #include <asm/barebox-arm.h>
>  #include <mach/rockchip/hardware.h>
>  #include <mach/rockchip/atf.h>
>  #include <debug_ll.h>
> -#include <mach/rockchip/rockchip.h>
>  
>  extern char __dtb_rk3566_quartz64_a_start[];
>  
> -static noinline void start_quartz64(void)
> -{
> -	void *fdt = __dtb_rk3566_quartz64_a_start;
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
> -	/*
> -	 * Image execution starts at 0x0, but this is used for ATF and
> -	 * OP-TEE later, so move away from here.
> -	 */
> -	if (current_el() == 3)
> -		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> -	else
> -		relocate_to_current_adr();
> +	putc_ll('>');
>  
> +	relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);

This doesn't work when barebox is started from another barebox, because
it places the new barebox at an address near
RK3568_BAREBOX_LOAD_ADDRESS. Calling relocate_to_adr_full() will
partly overwrite the image. I'll revert this change to what has been
done before:

	if (current_el() == 3)
		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
	else
		relocate_to_current_adr();

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


