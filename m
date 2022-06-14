Delivery-date: Tue, 14 Jun 2022 11:08:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12Xg-0024F1-P6
	for lore@lore.pengutronix.de; Tue, 14 Jun 2022 11:08:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o12Xf-0003oW-TK
	for lore@pengutronix.de; Tue, 14 Jun 2022 11:08:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TKXLf2lv75QfFIbNECXwmYEY/AIVJVqy03/5riPb3K4=; b=rAPZmdgpJBpC8miRifVEzNfxEP
	b9MbqXdO3i4MJlkxt/ZYKUfuh9As6OXuW+SC9gf+uCGMjn19IiE48sM5bKAhMuYBqJszpVIVfdZO9
	Ya4NxdfN4fN90Q6jXkbxXU7JvMbQtkimsGuR/RkHv2kO4oEXG1aI+69JR8Vufqnz6wpOb48pqwT+j
	z170dFp3QvwdcXX1GrU88OHMncBQorNfstvnBRYIM0BQ+o6qJnjZmTwVM2e5LNqoTn3cZ1883MHth
	AlUTz5dtI13/ltyEZaL1qgeGGLkRb9WBtvMVEqaKH3hxA+LOEW4nqyi5gqq932Fr7fzyoQfqEdmB4
	J+KL2c3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12Vz-008Xzm-Qr; Tue, 14 Jun 2022 09:07:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o12Er-008OlD-IK
	for barebox@lists.infradead.org; Tue, 14 Jun 2022 08:49:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o12Em-0000HQ-OT; Tue, 14 Jun 2022 10:49:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o12Em-00051g-FC; Tue, 14 Jun 2022 10:49:24 +0200
Date: Tue, 14 Jun 2022 10:49:24 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220614084924.GR2387@pengutronix.de>
References: <20220609055922.667016-1-a.fatoum@pengutronix.de>
 <20220609055922.667016-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609055922.667016-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:47:57 up 75 days, 21:17, 75 users,  load average: 0.08, 0.09,
 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_014929_639693_07D63358 
X-CRM114-Status: GOOD (  25.57  )
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
Subject: Re: [PATCH v2 02/21] dma: add dma_sync nop stubs for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 07:59:03AM +0200, Ahmad Fatoum wrote:
> We can implement dma_sync functions as compiler barriers when we are
> certain that the buffers are in coherent/uncached memory, e.g. because
> MMU is only enabled in barebox_arm_entry which hasn't run yet.
> 
> This will come in handy when doing mailbox communication in PBL on the
> Raspberry Pi.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/dma.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/include/dma.h b/include/dma.h
> index 90f9254ea80f..aeaba7d9316d 100644
> --- a/include/dma.h
> +++ b/include/dma.h
> @@ -8,6 +8,7 @@
>  
>  #include <malloc.h>
>  #include <xfuncs.h>
> +#include <pbl.h>
>  #include <linux/kernel.h>
>  
>  #include <dma-dir.h>
> @@ -56,12 +57,30 @@ static inline int dma_mapping_error(struct device_d *dev, dma_addr_t dma_addr)
>  		(dev->dma_mask && dma_addr > dev->dma_mask);
>  }
>  
> +#ifndef __PBL__
>  /* streaming DMA - implement the below calls to support HAS_DMA */
>  void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
>  			     enum dma_data_direction dir);
>  
>  void dma_sync_single_for_device(dma_addr_t address, size_t size,
>  				enum dma_data_direction dir);
> +#else
> +/*
> + * assumes buffers are in coherent/uncached memory, e.g. because
> + * MMU is only enabled in barebox_arm_entry which hasn't run yet.
> + */
> +static inline void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
> +			     enum dma_data_direction dir)
> +{
> +	barrier_data((void *)address);
> +}
> +
> +static inline void dma_sync_single_for_device(dma_addr_t address, size_t size,
> +				enum dma_data_direction dir)
> +{
> +	barrier_data((void *)address);
> +}
> +#endif

This breaks compilation of socfpga-arria10_defconfig. We have these
stubs in arch/arm/include/asm/dma.h as well inside a #ifndef CONFIG_MMU.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

