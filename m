Delivery-date: Mon, 14 Aug 2023 08:21:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQwy-003R9I-5p
	for lore@lore.pengutronix.de; Mon, 14 Aug 2023 08:21:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qVQww-0004b3-7W
	for lore@pengutronix.de; Mon, 14 Aug 2023 08:21:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dhjjr+xkO8qJ2ln/BG/EgZmuq4QfCfQ+Ly8sDbTtEd0=; b=tMSSGoO7gHsPa/EpdXDnhPTz8r
	cijsoB+IaX0qBo9DgKzzUOV2zhNMkxQSGtk9L0K9eNEdsYBoqAv/rTf/4bqozAdO788Vuxaxp5pf3
	59feCIYoqv95MnZzPgqtHnX2+FukYfyaEH302jJeMWk0UB+ZvuKLkgKOlze//X3h1DGgNZaQ3qv7j
	p29Ch6RhYhDVKHSp6QITa9ho630PCS4BpGkC9Fu84I2sLL3HHcQjx+zgj8XbQ8nfHBqw2wOeO8FJP
	w/fcJlCJIDHsjC1j03JYhRs/S9hYHJmOiuz1lpydZ45hlnuM1yf9xKFYEgKXwHDacifxEIJEqqPJq
	6JpcX0rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQve-00GGZH-19;
	Mon, 14 Aug 2023 06:19:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVQvb-00GGYo-0h
	for barebox@lists.infradead.org;
	Mon, 14 Aug 2023 06:19:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVQvZ-0004J0-Q1; Mon, 14 Aug 2023 08:19:45 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qVQvZ-0004CN-Iy; Mon, 14 Aug 2023 08:19:45 +0200
Date: Mon, 14 Aug 2023 08:19:45 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230814061945.GB26314@pengutronix.de>
References: <20230811102657.271931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230811102657.271931-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_231947_251671_6C79C100 
X-CRM114-Status: GOOD (  20.41  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 01/11] ARM: boards: make use of MDIO_MMD register
 defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 11, 2023 at 12:26:47PM +0200, Marco Felsch wrote:
> Make use of the register definition instead of having magic numbers. No
> functional change.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v2:
> - added afa's rb

Applied, thanks

Sascha

> 
>  arch/arm/boards/datamodul-edm-qmx6/board.c   | 7 ++++---
>  arch/arm/boards/embest-marsboard/board.c     | 7 ++++---
>  arch/arm/boards/terasic-de0-nano-soc/board.c | 7 ++++---
>  arch/arm/boards/terasic-de10-nano/board.c    | 7 ++++---
>  arch/arm/boards/tqma6x/board.c               | 7 ++++---
>  5 files changed, 20 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
> index 9adb3ee0f898..366b64d35aca 100644
> --- a/arch/arm/boards/datamodul-edm-qmx6/board.c
> +++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
> @@ -11,6 +11,7 @@
>  #include <gpio.h>
>  #include <of.h>
>  
> +#include <linux/mdio.h>
>  #include <linux/micrel_phy.h>
>  #include <mfd/stmpe-i2c.h>
>  
> @@ -48,9 +49,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	phy_write_mmd_indirect(dev, 4, 2, 0);
> -	phy_write_mmd_indirect(dev, 5, 2, 0);
> -	phy_write_mmd_indirect(dev, 8, 2, 0x03ff);
> +	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x03ff);
>  
>  	return 0;
>  }
> diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
> index 7835a9265a3d..7274595e2a76 100644
> --- a/arch/arm/boards/embest-marsboard/board.c
> +++ b/arch/arm/boards/embest-marsboard/board.c
> @@ -9,6 +9,7 @@
>  #include <init.h>
>  #include <envfs.h>
>  #include <mach/imx/bbu.h>
> +#include <linux/mdio.h>
>  #include <linux/phy.h>
>  #include <deep-probe.h>
>  
> @@ -19,13 +20,13 @@ static int ar8035_phy_fixup(struct phy_device *dev)
>  	/* Ar803x phy SmartEEE feature cause link status generates glitch,
>  	 * which cause ethernet link down/up issue, so disable SmartEEE
>  	 */
> -	val = phy_read_mmd_indirect(dev, 0x805d, 0x3);
> +	val = phy_read_mmd_indirect(dev, 0x805d, MDIO_MMD_PCS);
>  	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
>  
> -	val = phy_read_mmd_indirect(dev, 0x4003, 0x3);
> +	val = phy_read_mmd_indirect(dev, 0x4003, MDIO_MMD_PCS);
>  	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
>  
> -	val = phy_read_mmd_indirect(dev, 0x4007, 0x3);
> +	val = phy_read_mmd_indirect(dev, 0x4007, MDIO_MMD_PCS);
>  	val &= 0xffe3;
>  	val |= 0x18;
>  	phy_write(dev, MII_MMD_DATA, val);
> diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
> index 19f74b784c12..832160c595fa 100644
> --- a/arch/arm/boards/terasic-de0-nano-soc/board.c
> +++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
> @@ -5,6 +5,7 @@
>  #include <driver.h>
>  #include <init.h>
>  #include <asm/armlinux.h>
> +#include <linux/mdio.h>
>  #include <linux/micrel_phy.h>
>  #include <linux/phy.h>
>  #include <linux/sizes.h>
> @@ -18,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	phy_write_mmd_indirect(dev, 4, 2, 0);
> -	phy_write_mmd_indirect(dev, 5, 2, 0);
> -	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
> +	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
>  	return 0;
>  }
>  
> diff --git a/arch/arm/boards/terasic-de10-nano/board.c b/arch/arm/boards/terasic-de10-nano/board.c
> index 580c8980129f..e47d9ac841d1 100644
> --- a/arch/arm/boards/terasic-de10-nano/board.c
> +++ b/arch/arm/boards/terasic-de10-nano/board.c
> @@ -5,6 +5,7 @@
>  #include <driver.h>
>  #include <init.h>
>  #include <asm/armlinux.h>
> +#include <linux/mdio.h>
>  #include <linux/micrel_phy.h>
>  #include <linux/phy.h>
>  #include <linux/sizes.h>
> @@ -18,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	phy_write_mmd_indirect(dev, 4, 2, 0);
> -	phy_write_mmd_indirect(dev, 5, 2, 0);
> -	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
> +	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
>  	return 0;
>  }
>  
> diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
> index 4bb7223a6e7a..8a91ad652a98 100644
> --- a/arch/arm/boards/tqma6x/board.c
> +++ b/arch/arm/boards/tqma6x/board.c
> @@ -11,6 +11,7 @@
>  #include <gpio.h>
>  #include <of.h>
>  
> +#include <linux/mdio.h>
>  #include <linux/micrel_phy.h>
>  #include <mfd/stmpe-i2c.h>
>  
> @@ -46,9 +47,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
>  	 * min rx data delay, max rx/tx clock delay,
>  	 * min rx/tx control delay
>  	 */
> -	phy_write_mmd_indirect(dev, 4, 2, 0);
> -	phy_write_mmd_indirect(dev, 5, 2, 0);
> -	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
> +	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
> +	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
>  
>  	return 0;
>  }
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


