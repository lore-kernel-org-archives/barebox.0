Delivery-date: Mon, 27 Feb 2023 11:43:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWayl-003fBW-MW
	for lore@lore.pengutronix.de; Mon, 27 Feb 2023 11:43:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pWayl-0003jZ-GZ
	for lore@pengutronix.de; Mon, 27 Feb 2023 11:43:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yG9WKK0xd5IWsD0x9Cr1beJEP6tlcWulWdHU3sqUT7c=; b=HF4lV2MG+EDEiyDitNolhG/aod
	jl37G8UZ9EjuiSNxd3m4G1hPtNYCbMOQJkMbTgKEXvbzAYleQ8DUsVDpEvtovE3F0CfCWi0vmtKf7
	XKnOPeo0GZiIW2mJXV4asYbHsBVpxQ8XZ2JusKVlDHy/17E8tTRaV3CBIKhP4N4Lm4ibsrZbpByol
	nFP2/QReNTMOhkydn8TrqCTt0gGb64VGN6whSIw+2otfjxOXkUceV1m4jrxFEdSe+lpRZ8ECb51m5
	+g7TeCK3bVcNwWeorPknsRXS67H8fEXZDpCA7Y2BH4CjOrxqSfdHAKKF7Pr+y4Ph6OZbBXG1RlKyA
	hfc9Rxbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWaxE-009GTP-9P; Mon, 27 Feb 2023 10:42:00 +0000
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWawn-009GJz-SY
	for barebox@lists.infradead.org; Mon, 27 Feb 2023 10:41:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pWawX-0003QU-1b; Mon, 27 Feb 2023 11:41:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pWawW-0002SH-QN; Mon, 27 Feb 2023 11:41:16 +0100
Date: Mon, 27 Feb 2023 11:41:16 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de
Message-ID: <20230227104116.GL32097@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
 <20230221080524.607241-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230221080524.607241-10-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230227_024133_940785_0E01571C 
X-CRM114-Status: GOOD (  34.80  )
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
Subject: Re: [PATCH RFC 09/12] of: populate new device_d::dma_coherent
 attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 21, 2023 at 09:05:21AM +0100, Ahmad Fatoum wrote:
> So far, whether device DMA is coherent was a one-time global decision.
> This is insufficient, because some platforms:
> 
>  - are cache coherent, while the architecture isn't in general, e.g. ARM
>    with CONFIG_MMU=y assumes non-coherent DMA, but LS1046A is coherent
> 
>  - have a mix of devices that snoop caches and devices that don't
>    (StarFive JH7100).
> 
> To enable dev_dma_(map|unmap)_single to take the correct device-specific
> action with regards to cache maintenance, provide dev_is_dma_coherent()
> with semantics similar to what Linux provides.
> 
> This admittedly looks a bit ugly, but we will refrain from making
> dma_coherent defined independent of ifdef CONFIG_ARCH_HAS_NONCOHERENT_DMA:
> On platforms that are cache-coherent, we will want dev->dma_coherent to
> be true. Yet not all code allocating devices uses dev_alloc(), so adding
> a global toggle is a bit too much refactoring effort for now.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/devinfo.c    |  5 +++++
>  drivers/of/platform.c |  3 +++
>  include/driver.h      | 28 ++++++++++++++++++++++++++++
>  3 files changed, 36 insertions(+)
> 
> diff --git a/commands/devinfo.c b/commands/devinfo.c
> index 2487786c7101..be28d02028c3 100644
> --- a/commands/devinfo.c
> +++ b/commands/devinfo.c
> @@ -50,6 +50,7 @@ static int do_devinfo(int argc, char *argv[])
>  	struct param_d *param;
>  	int i;
>  	int first;
> +	int coherent;
>  	struct resource *res;
>  
>  	if (argc == 1) {
> @@ -82,6 +83,10 @@ static int do_devinfo(int argc, char *argv[])
>  		if (dev->bus)
>  			printf("Bus: %s\n", dev->bus->name);
>  
> +		coherent = dev_is_dma_coherent(dev);
> +		if (coherent >= 0)
> +			printf("DMA Coherent: %s\n", coherent ? "true" : "false");

'>=' doesn't seem to be quite right here.

> +
>  		if (dev->info)
>  			dev->info(dev);
>  
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index 0982873446a6..1bd5d41ba226 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -128,6 +128,9 @@ static void of_dma_configure(struct device *dev, struct device_node *np)
>  	}
>  
>  	dev->dma_offset = offset;
> +#ifdef CONFIG_OF_DMA_COHERENCY
> +	dev->dma_coherent = of_dma_is_coherent(np);
> +#endif
>  }
>  
>  /**
> diff --git a/include/driver.h b/include/driver.h
> index 7e25c060280b..f6301d954bb5 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -8,6 +8,7 @@
>  
>  #include <linux/list.h>
>  #include <linux/ioport.h>
> +#include <linux/bitops.h>
>  #include <of.h>
>  #include <filetype.h>
>  
> @@ -43,6 +44,13 @@ struct device {
>  	 * something like eth0 or nor0. */
>  	int id;
>  
> +	/*! This particular device is dma coherent, even if the
> +         * architecture supports non-coherent devices.
> +	 */
> +#ifdef CONFIG_OF_DMA_COHERENCY
> +	bool dma_coherent:1;
> +#endif

I think this patch could be easier when we add the dma_coherent field
unconditionally.

> +
>  	struct resource *resource;
>  	int num_resources;
>  
> @@ -652,6 +660,26 @@ static inline struct device_node *dev_of_node(struct device *dev)
>  	return IS_ENABLED(CONFIG_OFDEVICE) ? dev->of_node : NULL;
>  }
>  
> +#ifdef CONFIG_OF_DMA_COHERENCY
> +static inline int __dev_is_dma_coherent(struct device *dev)
> +{
> +	return dev->dma_coherent;
> +}
> +#else
> +static inline bool __dev_is_dma_coherent(struct device *dev)
> +{
> +	return IS_ENABLED(CONFIG_OF_DMA_DEFAULT_COHERENT);
> +}
> +#endif
> +
> +static inline int dev_is_dma_coherent(struct device *dev)
> +{
> +	if (!dev_of_node(dev))
> +		return -EINVAL;
> +
> +	return __dev_is_dma_coherent(dev);
> +}

This should return bool. Either a device is DMA coherent or not.

You seem to assume that a device is not cache coherent when you don't
know:

-       dma_sync_single_for_device(addr, size, dir);
+       if (dev_is_dma_coherent(dev) <= 0)
+               dma_sync_single_for_device(addr, size, dir);

This assumption seems to make sense as an unnecessary cache synchronisation
shouldn't hurt, right?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


