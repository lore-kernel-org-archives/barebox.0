Delivery-date: Wed, 08 Feb 2023 09:38:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfyR-000Nly-24
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 09:38:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfyO-0000IT-98
	for lore@pengutronix.de; Wed, 08 Feb 2023 09:38:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0qeY9+X6x+mYZ4saSi0AdsGOP0EAJANE4FVkhoGe+X4=; b=Z4PYDQW5qFcKCjAiLrIal7MKU4
	vLeyVW09L6nc6tdi8h4H4TijjReVWtGD9GwTQYa34lev0xClaES9j/JaBbILtabtVkdEgak3wAwY9
	6E97eTeOCCc1/hg0UM1TR2o4mEoNrNnK8Q6tCD+05LvzCPEkUFe454S5+jL7FDtgzOU308sBY1lPZ
	Foqsr+6i0AxyJqtmEbeTwOqYSlxDFBaTpQhcw00jaTJisou1SUUCVHA9qIEbZKooyPhu4UNS5UL6k
	hbxxzSP48lJCv99aAF4fDN07Sj0c/B7RvmCXc/VDyLwkyJkbM62Ko9tn0Ej1k4sNlgnPVlwQ/FLmF
	uaUDq5hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfxB-00Eccm-1p; Wed, 08 Feb 2023 08:37:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfx6-00Ecbk-OJ
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 08:37:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPfx5-0000Al-Ah; Wed, 08 Feb 2023 09:37:15 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPfx5-0004I6-2h; Wed, 08 Feb 2023 09:37:15 +0100
Date: Wed, 8 Feb 2023 09:37:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Message-ID: <20230208083715.GM10447@pengutronix.de>
References: <20230208081307.3190117-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230208081307.3190117-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_003716_805689_633318AF 
X-CRM114-Status: GOOD (  20.70  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: [PATCH 1/2] net: rtl8139: remove dependence on MIPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 08, 2023 at 11:13:06AM +0300, Denis Orlov wrote:
> This driver seems to work fine on ARM64 Virtual Machine in QEMU.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/net/Kconfig   | 1 -
>  drivers/net/rtl8139.c | 2 --
>  2 files changed, 3 deletions(-)

Applied including the fixup!

Thanks,
 Sascha

> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 30de1f544c..86096c07e2 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -232,7 +232,6 @@ config DRIVER_NET_ORION
>  config DRIVER_NET_RTL8139
>  	bool "RealTek RTL-8139 PCI Ethernet driver"
>  	depends on PCI
> -	depends on MIPS
>  	select PHYLIB
>  	help
>  	  This is a driver for the Fast Ethernet PCI network cards based on
> diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
> index bea888f08d..617a60bfcb 100644
> --- a/drivers/net/rtl8139.c
> +++ b/drivers/net/rtl8139.c
> @@ -10,8 +10,6 @@
>  #include <linux/phy.h>
>  #include <linux/pci.h>
>  
> -#include <asm/dma-mapping.h>
> -
>  #define RTL8139_DEBUG
>  #undef RTL8139_DEBUG
>  
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


