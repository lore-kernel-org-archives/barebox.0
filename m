Delivery-date: Tue, 02 May 2023 14:08:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptonk-002G6a-OI
	for lore@lore.pengutronix.de; Tue, 02 May 2023 14:08:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptoni-0001jU-DZ
	for lore@pengutronix.de; Tue, 02 May 2023 14:08:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rrjkulyMBjubTio7i96YuwHQl4XKI++9S28JQzyGiOk=; b=srV6Fky75QM29Itonsk2kBvkeJ
	JJHg/iXOp3vP1LX15JpQ0mmHLTwT3N3pa1g9J3+UKNvBF13TCIIsBzFU/C5ZN95wnegUdFT+Sp/K4
	tY+D/mJZ45WtZJMlHez1QAmv2aodzKwrf0T7+lfbU2Ix4jU0G0tiJsGVVwoJqqnsX++pJ0Dr7gDxZ
	Opvj9iRnVFb9T6OxGPVRD/1PrzEcUoN4YY5MVHt/jZ/iU6ooUWMfICEwbhmaeS3WTwQrIBz/1iZwx
	QHRNAq3cmEe8SWUHtpbEvy8wxYoBgA30sgUmID9YwBH4FV6VFnpsIoF2/pD3xZe6lU89eP6Z3q+mO
	W7C2YbpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptomg-001KDr-2T;
	Tue, 02 May 2023 12:07:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptome-001KCh-0y
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 12:07:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptomY-0001eT-Mu; Tue, 02 May 2023 14:06:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptomY-0007lY-6A; Tue, 02 May 2023 14:06:58 +0200
Date: Tue, 2 May 2023 14:06:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230502120658.GJ29365@pengutronix.de>
References: <20230417125158.882170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230417125158.882170-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_050704_363866_37005AB6 
X-CRM114-Status: GOOD (  23.09  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] lib: genalloc: drop reliance on mmio-sram driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Apr 17, 2023 at 02:51:58PM +0200, Ahmad Fatoum wrote:
> The barebox mmio-sram driver just makes SRAMs available as /dev/sramX
> devices. The genalloc stub depended on it without selecting CONFIG_SRAM.
> 
> Instead of making this dependency explicit, just call of_address_to_resource
> and have no dependency on CONFIG_SRAM at all.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  lib/genalloc.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/genalloc.c b/lib/genalloc.c
> index 906e2dd5f14b..2e9815c36b78 100644
> --- a/lib/genalloc.c
> +++ b/lib/genalloc.c
> @@ -12,6 +12,7 @@
>  #include <linux/genalloc.h>
>  #include <linux/export.h>
>  #include <of.h>
> +#include <of_address.h>
>  #include <driver.h>
>  #include <linux/string.h>
>  
> @@ -98,8 +99,9 @@ EXPORT_SYMBOL(gen_pool_dma_zalloc);
>  struct gen_pool *of_gen_pool_get(struct device_node *np,
>  	const char *propname, int index)
>  {
> -	struct device *dev;
>  	struct device_node *np_pool;
> +	struct gen_pool gen_pool;
> +	int ret;
>  
>  	np_pool = of_parse_phandle(np, propname, index);
>  	if (!np_pool)
> @@ -108,11 +110,11 @@ struct gen_pool *of_gen_pool_get(struct device_node *np,
>  	if (!of_device_is_compatible(np_pool, "mmio-sram"))
>  		return NULL;
>  
> -	dev = of_find_device_by_node(np_pool);
> -	if (!dev)
> +	ret = of_address_to_resource(np_pool, 0, &gen_pool.res);
> +	if (ret)
>  		return NULL;
>  
> -	return container_of(&dev->resource[0], struct gen_pool, res);
> +	return memdup(&gen_pool, sizeof(gen_pool));
>  }
>  EXPORT_SYMBOL_GPL(of_gen_pool_get);
>  #endif /* CONFIG_OF */
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


