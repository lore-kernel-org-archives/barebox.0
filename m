Delivery-date: Thu, 03 Mar 2022 10:56:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiCR-00GOCq-Q5
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 10:56:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiCQ-0007cR-0I
	for lore@pengutronix.de; Thu, 03 Mar 2022 10:56:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGA+dQVUk2me8w1EhK5OhC/Uyguz5yc+gIgELba9XM8=; b=Hc5seO9RBOUhpu
	u9EkQH4/FCsC2HMniAw1wP7bchwhhrEiPPYMpqC0ciYV1bsxAR+3RdBiPxMwTp2W4ilygIl/FCZ2U
	D+q9wGSZdrUJTSowJcZw9zyXhz5lQaoh0SV5CcEbx2PC/Tpn4wSlMkQF/qrLkPrVAiAxraNI8mtU6
	OlGbqUveGpfCb/wH0Eq+NlKDfKhcTyO64lpuTewzoR9l0ti3t0R+UAgho6r4doKzsjn2xzF/AR3t5
	gxeKf8OuJYd8vtESt9R6sTYnlvvIV4VxE+ZT2OFwK5p3oKE1+VzdBlvlNkVZ/rna4PfSELy2F5bsx
	xn76ioCry6mAvXl/g94A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPiB7-005xwH-Eh; Thu, 03 Mar 2022 09:55:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPiB2-005xvW-UX
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 09:55:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiB1-0007Dl-Jb; Thu, 03 Mar 2022 10:55:15 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiB0-00014x-W4; Thu, 03 Mar 2022 10:55:14 +0100
Date: Thu, 3 Mar 2022 10:55:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220303095514.GY19585@pengutronix.de>
References: <20220301091423.19871-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220301091423.19871-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:53:48 up 82 days, 18:39, 83 users,  load average: 0.10, 0.19, 0.22
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_015517_006028_FD253356 
X-CRM114-Status: GOOD (  23.67  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] usb: host: ehci: add GENERIC_PHY dependency to Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Denis,

On Tue, Mar 01, 2022 at 12:14:22PM +0300, Denis Orlov wrote:
> With GENERIC_PHY disabled, EHCI driver initialization fails in
> ehci_probe() as calling phy_optional_get() returns "Function not
> implemented" value. So it seems reasonable to make USB_EHCI explicitly
> depend on GENERIC_PHY.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/usb/host/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
> index d38b4dcac4..cc71b76902 100644
> --- a/drivers/usb/host/Kconfig
> +++ b/drivers/usb/host/Kconfig
> @@ -2,6 +2,7 @@
>  config USB_EHCI
>  	bool "EHCI driver"
>  	depends on HAS_DMA
> +	depends on GENERIC_PHY

This effectively disables the EHCI in a bunch of defconfigs. I finally
decided for the other approach and made phy_optional_get() return NULL
when GENERIC_PHY is disabled. This should solve this problem.

Applied the other patch in the series.

Sascha

>  
>  config USB_EHCI_OMAP
>  	depends on ARCH_OMAP3
> -- 
> 2.20.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

