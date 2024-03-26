Delivery-date: Tue, 26 Mar 2024 11:33:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp47y-0054L1-1o
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:33:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp47x-0001SX-3d
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:33:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y6W/jJSo9K6uAQasTDFJQsGhcEdrv6rAlD2qBh2u6uQ=; b=CQklFzPTcX2+Wpi//0TX6Vt73b
	bYYuORcU2c83gIVr6JoBk6scE7jSJV5qWLcDAiTAvQP++tHk34l1I6tIvhkY61ncqTcC7P6iyXkg/
	ex+t5OSfnuMorE33RZzITgu0ZrRJE4gUuB2GehSOtZwOeFKHaf7kjgLJdUaFPEDxS0+vwWQDML2iJ
	MSUwMGsCqF0fIvC6UXC473fBJFDReX/dHPQyj/1FJXB0PkGLLzqSMwO8M03YG/blXLchLRabgAy0q
	zRyZewsQD22CKxKOE3LAma6GQJc9GDdS/5YLyEom0epbUxv6QVWhSHj49aAEoo94TLdBOg54PEiqa
	cNv5nl1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp47K-000000044eC-3Upq;
	Tue, 26 Mar 2024 10:33:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp47I-000000044dK-2Ymf
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:33:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rp47F-0001CE-Vo; Tue, 26 Mar 2024 11:33:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rp47F-008b49-JK; Tue, 26 Mar 2024 11:33:13 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rp47F-0002pH-1f;
	Tue, 26 Mar 2024 11:33:13 +0100
Date: Tue, 26 Mar 2024 11:33:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZgKkaT6jNha92DHu@pengutronix.de>
References: <20240322142424.981863-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240322142424.981863-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_033316_693958_AA71A908 
X-CRM114-Status: GOOD (  28.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] dma: correctly honour dma-noncoherent device tree
 property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 22, 2024 at 03:24:24PM +0100, Ahmad Fatoum wrote:
> Most barebox platforms are either completely cache-coherent with respect to
> DMA or completely non-coherent. To avoid having to walk the device tree for
> non-existent dma-coherent and dma-noncohrent properties, barebox thus
> only does this when CONFIG_OF_DMA_COHERENCY is selected.
> 
> CONFIG_OF_DMA_COHERENCY is to be selected by platforms that have mixed
> coherency for DMA masters. Forgetting to select this option can be
> annoying to debug, which is why devinfo will inform the user of default
> DMA coherency assignments:
> 
>   DMA Coherent: false (default)
> 
> In order to allow devinfo to differentiate implicit default and explicit
> device tree DMA coherency configuration, the struct device::dma_coherent
> member is not of boolean type, but Instead an enumeration that besides
> coherent and non-coherent also encodes a DEV_DMA_COHERENCE_DEFAULT state.
> 
> In practice though, a boolean was saved in this dma_coherent member,
> leading to any dma-noncoherent property being ignored and the default
> coherency setting being taken for the node.
> 
> By fixing the type confusion, we restore working Ethernet on the
> StarFive JH7100, which is the only SoC we currently support that
> requires /soc/dma-noncohrent to be set for proper operation of its DMA
> masters.
> 
> Fixes: fbdea8fd54fe ("of: populate new device_d::dma_coherent attribute")
> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/platform.c | 34 +++++++++++++++++++++++-----------
>  1 file changed, 23 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index ec1482b27797..e2c252b1ffee 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -90,6 +90,21 @@ static struct device_node *of_get_next_dma_parent(const struct device_node *np)
>  	return args.np;
>  }
>  
> +static enum dev_dma_coherence of_dma_get_coherence(struct device_node *node)
> +{
> +	if (IS_ENABLED(CONFIG_OF_DMA_COHERENCY)) {
> +		while (node) {
> +			if (of_property_read_bool(node, "dma-coherent"))
> +				return DEV_DMA_COHERENT;
> +			if (of_property_read_bool(node, "dma-noncoherent"))
> +				return DEV_DMA_NON_COHERENT;
> +			node = of_get_next_dma_parent(node);
> +		}
> +	}
> +
> +	return DEV_DMA_COHERENCE_DEFAULT;
> +}
> +
>  /**
>   * of_dma_is_coherent - Check if device is coherent
>   * @np:	device node
> @@ -101,17 +116,14 @@ static struct device_node *of_get_next_dma_parent(const struct device_node *np)
>   */
>  bool of_dma_is_coherent(struct device_node *node)
>  {
> -	if (IS_ENABLED(CONFIG_OF_DMA_COHERENCY)) {
> -		while (node) {
> -			if (of_property_read_bool(node, "dma-coherent"))
> -				return true;
> -			if (of_property_read_bool(node, "dma-noncoherent"))
> -				return false;
> -			node = of_get_next_dma_parent(node);
> -		}
> +	switch (of_dma_get_coherence(node)) {
> +	case DEV_DMA_COHERENT:
> +		return true;
> +	case DEV_DMA_NON_COHERENT:
> +		return false;
> +	case DEV_DMA_COHERENCE_DEFAULT:
> +		return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
>  	}
> -
> -	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
>  }

This brings us:

drivers/of/platform.c: In function 'of_dma_is_coherent':
drivers/of/platform.c:127:1: warning: control reaches end of non-void function [-Wreturn-type]

what shall we return in the default case? also
IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT)?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


