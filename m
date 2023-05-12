Delivery-date: Fri, 12 May 2023 13:16:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQlA-00F2m1-Rm
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:16:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQl8-0006dE-Pi
	for lore@pengutronix.de; Fri, 12 May 2023 13:16:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=phbhgZ+K+b4OOVntr/2wy+ZGyxq8VtpJVEX8lPQuLGM=; b=pppec6im0LRUZSN48MeqAxc0mI
	Bz3kDBDH6mxkJapgyQGlhFqbPR0Fo1IlnOmsnqZ/CO811spy2oeT09+UqzD2VT4W9b3ibDaMSJKIV
	N8xDx6kFVVAGsvPtv2THB5W5IplYJ3sntXqoF5Vx7O+90WMDElvChYw+pw1NNI/8/rwKGu8r7A235
	3y1/PBzbT4Od5aJd2LAPJwocNPAkdK9cZ7wtzcNVzRoYkms+UI+f6JqdkBMR/KeMW9AmRnma8e2Ub
	zQMX2eNc2kY6bOTLolu3R9sZlIKysuC8ffO1MKIyCMCPB1gB3LHCnAvoVzcF9Zj4Udh6MGdZyWLZt
	AbNAvgyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQk4-00Bmf2-0g;
	Fri, 12 May 2023 11:15:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQk2-00Bmep-2i
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:15:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=phbhgZ+K+b4OOVntr/2wy+ZGyxq8VtpJVEX8lPQuLGM=; b=alk3bCuD4jCpoeyx3bDcLWpnT+
	PpMX5Udz8ASO6V4UhwjsIFT5jccaEoEJ32aUc8FRqszOJ8LAoPqo9qykeYCY+1HaXcunnHKvG2qTZ
	HRMo0osq5w5dy1r3tytJW45pNDTsXfWjQptuqOQPDad/nd0zOFNWwqrU6n0Z5NxSPUPw11wThOfB+
	GNTw2873DX0V/3k9PYhjdLXRwMtC0x7wo2pWTV5uJRK5Xu2QqhHbFpBeDWp6w07z54k+aoR8T/Y0Z
	g51IPl2X0I7Vc192fWqUn10CMp/qZ4jiCSwOAB3eHM4amuMtsJRUPDgbXXUoVlWVoVgB/JBuFM0pw
	lBWJ04hw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQjy-0098DL-0m
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:15:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQjx-0006FB-HW; Fri, 12 May 2023 13:15:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQjw-00032E-K7; Fri, 12 May 2023 13:15:12 +0200
Date: Fri, 12 May 2023 13:15:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230512111512.GM29365@pengutronix.de>
References: <20230511124743.2878952-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230511124743.2878952-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121514_415484_62815407 
X-CRM114-Status: GOOD (  24.92  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] video: bochs: fix IOMEM usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 11, 2023 at 03:47:43PM +0300, Denis Orlov wrote:
> For the PCI version of the driver, we end up calling IOMEM() twice on
> both the fb_map and mmio pointers. This happens because we first use
> pci_iomap() on PCI resources in the bochs_pci_probe() and then
> explicitly call IOMEM() in the bochs_hw_probe(). However, judging from
> the parameters of the latter function having __iomem attributes, we
> should not be remapping them. So, remove those IOMEM calls and instead
> do explicit remapping in bochs_isa_detect(), which was missing it.
> 
> Also fix bochs_hw_probe() declaration missing one __iomem.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/video/bochs/bochs_hw.c  | 4 ++--
>  drivers/video/bochs/bochs_hw.h  | 2 +-
>  drivers/video/bochs/bochs_isa.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/bochs/bochs_hw.c b/drivers/video/bochs/bochs_hw.c
> index f31020acd4..48de5ea0bd 100644
> --- a/drivers/video/bochs/bochs_hw.c
> +++ b/drivers/video/bochs/bochs_hw.c
> @@ -158,8 +158,8 @@ int bochs_hw_probe(struct device *dev, void __iomem *fb_map,
>  
>  	bochs = xzalloc(sizeof(*bochs));
>  
> -	bochs->fb_map	= IOMEM(fb_map);
> -	bochs->mmio	= IOMEM(mmio);
> +	bochs->fb_map	= fb_map;
> +	bochs->mmio	= mmio;
>  
>  	ret = bochs_hw_read_version(bochs);
>  	if (ret < 0) {
> diff --git a/drivers/video/bochs/bochs_hw.h b/drivers/video/bochs/bochs_hw.h
> index e01ef13d47..c721113656 100644
> --- a/drivers/video/bochs/bochs_hw.h
> +++ b/drivers/video/bochs/bochs_hw.h
> @@ -10,6 +10,6 @@
>  
>  struct device;
>  
> -int bochs_hw_probe(struct device *dev, void *fb_map, void __iomem *mmio);
> +int bochs_hw_probe(struct device *dev, void __iomem *fb_map, void __iomem *mmio);
>  
>  #endif
> diff --git a/drivers/video/bochs/bochs_isa.c b/drivers/video/bochs/bochs_isa.c
> index 3cedb5c345..50fdecd9c8 100644
> --- a/drivers/video/bochs/bochs_isa.c
> +++ b/drivers/video/bochs/bochs_isa.c
> @@ -26,6 +26,6 @@ static int bochs_isa_detect(void)
>  	if (ret)
>  		return ret;
>  
> -	return bochs_hw_probe(dev, (void *)0xe0000000, NULL);
> +	return bochs_hw_probe(dev, IOMEM(0xe0000000), NULL);
>  }
>  device_initcall(bochs_isa_detect);
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


