Delivery-date: Tue, 19 Apr 2022 09:46:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiYn-007b7c-9l
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 09:46:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiYj-0007qX-Bc
	for lore@pengutronix.de; Tue, 19 Apr 2022 09:46:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MoP6Ag34UMqnWrHj8xaH790i+r2h6EB6Ee5h9ANdrOk=; b=w3UH/iCM7PhlVJUjL9KSouK/Sb
	sT3KjChI1TDuxHTQL2k88KP6rJ1c7eviHziroHO9rcvZBtXpCxn7U2gZRguvI0RwBnOHksQKa0b6j
	eSP3BYiRmc1y6820LE9oUDdicjE4agy/romW4phmmyEz9DdcLxqLQeU0L50w8RpDpd2Y23e7oECh8
	1FnUOHOntQ3+mLS/z1pdHCOZL9uJ968u9VzZlXyXzuVvZ3/Xs10Me8yZ97mIBRK9jlbeHchqTOe0B
	aaCxmZwhxSjZ59KGjXwOufIkg8V2qagJEGceqciHIc4CjEzObELMVyjy0ke45lVw+4RXEHdD3CMSK
	EzQ/Hqnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngiXF-0026gj-04; Tue, 19 Apr 2022 07:44:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngiGb-001yuo-IY
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 07:27:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ngiGa-0004kI-2K; Tue, 19 Apr 2022 09:27:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ngiGZ-0007PB-PL; Tue, 19 Apr 2022 09:27:15 +0200
Date: Tue, 19 Apr 2022 09:27:15 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220419072715.GN4012@pengutronix.de>
References: <20220414100442.1497017-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220414100442.1497017-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:27:06 up 19 days, 19:56, 72 users,  load average: 0.17, 0.17, 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_002717_651181_74C128ED 
X-CRM114-Status: GOOD (  29.08  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1] net: phy: add TI DP83TD510E T1L PHY support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 14, 2022 at 12:04:42PM +0200, Oleksij Rempel wrote:
> Add basic driver for TI DP83TD510E T1L PHY
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/phy/Kconfig     |  6 +++++
>  drivers/net/phy/Makefile    |  1 +
>  drivers/net/phy/dp83td510.c | 45 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 52 insertions(+)
>  create mode 100644 drivers/net/phy/dp83td510.c

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index 9f74335443..cd20e1de27 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -29,6 +29,12 @@ config DP83867_PHY
>  	help
>  	  Currently supports the DP83867 PHY.
>  
> +config DP83TD510_PHY
> +	tristate "Texas Instruments DP83TD510 Ethernet 10Base-T1L PHY"
> +	help
> +	  Support for the DP83TD510 Ethernet 10Base-T1L PHY. This PHY supports
> +	  a 10M single pair Ethernet connection for up to 1000 meter cable.
> +
>  config LXT_PHY
>  	bool "Driver for the Intel LXT PHYs"
>  	help
> diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
> index 54b83e06dd..83f46f11d3 100644
> --- a/drivers/net/phy/Makefile
> +++ b/drivers/net/phy/Makefile
> @@ -17,4 +17,5 @@ obj-$(CONFIG_MDIO_GPIO)		+= mdio-gpio.o
>  obj-$(CONFIG_MDIO_BUS_MUX)	+= mdio-mux.o
>  obj-$(CONFIG_MDIO_BUS_MUX_GPIO)	+= mdio-mux-gpio.o
>  obj-$(CONFIG_DP83867_PHY)	+= dp83867.o
> +obj-$(CONFIG_DP83TD510_PHY)	+= dp83td510.o
>  
> diff --git a/drivers/net/phy/dp83td510.c b/drivers/net/phy/dp83td510.c
> new file mode 100644
> index 0000000000..44c551e795
> --- /dev/null
> +++ b/drivers/net/phy/dp83td510.c
> @@ -0,0 +1,45 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <common.h>
> +#include <linux/phy.h>
> +
> +#define DP83TD510E_PHY_ID		0x20000181
> +
> +#define DP83TD510E_PHY_STS		0x10
> +#define DP83TD510E_LINK_STATUS		BIT(0)
> +
> +static int dp83td510_read_status(struct phy_device *phydev)
> +{
> +	u16 phy_sts;
> +
> +	phy_sts = phy_read(phydev, DP83TD510E_PHY_STS);
> +
> +	phydev->link = !!(phy_sts & DP83TD510E_LINK_STATUS);
> +	if (phydev->link) {
> +		phydev->duplex = DUPLEX_FULL;
> +		phydev->speed = SPEED_10;
> +	} else {
> +		phydev->speed = SPEED_UNKNOWN;
> +		phydev->duplex = DUPLEX_UNKNOWN;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dp83td510_config_init(struct phy_device *phydev)
> +{
> +	phydev->supported = SUPPORTED_10baseT_Full | SUPPORTED_Autoneg;
> +	phydev->advertising = SUPPORTED_10baseT_Full | SUPPORTED_Autoneg;
> +
> +	return 0;
> +}
> +
> +static struct phy_driver dp83td510_driver[] = {
> +	{
> +		PHY_ID_MATCH_MODEL(DP83TD510E_PHY_ID),
> +		.drv.name	= "TI DP83TD510E",
> +		.read_status	= dp83td510_read_status,
> +		.config_init	= dp83td510_config_init,
> +	}
> +};
> +device_phy_drivers(dp83td510_driver);
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

