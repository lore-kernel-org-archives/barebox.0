Delivery-date: Thu, 07 Apr 2022 16:29:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncT8I-00AXBx-5e
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 16:29:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncT8F-0005Tp-Hi
	for lore@pengutronix.de; Thu, 07 Apr 2022 16:29:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sLBzVlu2dtFfIGzsYUSfByYXolcccsLCkDdKqGfsDNM=; b=HHEKRR5inrikejg0H5GbImVSkh
	UXkmPIQgdA5Qg2t2aCutaw7G95acO5gLTqJyzCvqE3hzDUU2HcfEbkB5Fpq6RijAmdCF7zsxZIxPj
	uSfHkYA8sLRKrP3jQ8kFeRMJPzJ3Pcvrwk3rTMDTvMHjrSQLvKA/OqL0/ukFBMTUUYYASnKfE0HRI
	HZMxRi2CUlycXzI/CJmfAn9/1aGWmPLnK84am9ibQjID2xRy3EAJ0JPn7JIivNg/i7flNPwULy2/k
	A7zt7ezGh7PFakvKI2GjVAbf1JM1YkEXAJVAGxHvopOHm9DUh8iGV4JS+MxX/eUicIE6PkSZRZZYU
	8RUVnYzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncT6t-00CMUP-OB; Thu, 07 Apr 2022 14:27:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncT6o-00CMT9-0G
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 14:27:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncT6m-0005KH-J1; Thu, 07 Apr 2022 16:27:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncT6m-0000XH-AG; Thu, 07 Apr 2022 16:27:36 +0200
Date: Thu, 7 Apr 2022 16:27:36 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20220407142736.GL4012@pengutronix.de>
References: <20220407091604.956577-1-o.rempel@pengutronix.de>
 <20220407091604.956577-12-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407091604.956577-12-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:08:31 up 8 days, 2:38, 73 users, load average: 0.29, 0.32, 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_072738_091319_A13BD010 
X-CRM114-Status: GOOD (  30.89  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 11/12] net: dsa: add KSZ9477 switch SPI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 07, 2022 at 11:16:03AM +0200, Oleksij Rempel wrote:
> Add support for Microchip KSZ9477 switch.
> 
> With this driver we will be able to use KSZ9477 switch as port
> multiplexer.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/Kconfig                 |    8 +
>  drivers/net/Makefile                |    1 +
>  drivers/net/ksz9477.c               |  570 +++++++++
>  include/platform_data/ksz9477_reg.h | 1665 +++++++++++++++++++++++++++
>  4 files changed, 2244 insertions(+)
>  create mode 100644 drivers/net/ksz9477.c
>  create mode 100644 include/platform_data/ksz9477_reg.h
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 038eeb19a8..50c87c8ff8 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -193,6 +193,14 @@ config DRIVER_NET_KS8851_MLL
>  	  This option enables support for the Micrel KS8851 MLL
>  	  ethernet chip.
>  
> +config DRIVER_NET_KSZ9477
> +	bool "KSZ9477 switch driver"
> +	depends on SPI
> +	select DSA
> +	help
> +	  This option enables support for the Microchip KSZ9477
> +	  switch chip.
> +
>  config DRIVER_NET_MACB
>  	bool "macb Ethernet driver"
>  	depends on HAS_MACB || COMPILE_TEST
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 1c979047d9..fa3d4583a0 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -26,6 +26,7 @@ obj-$(CONFIG_DRIVER_NET_FEC_IMX)	+= fec_imx.o
>  obj-$(CONFIG_DRIVER_NET_FSL_FMAN)	+= fsl-fman.o
>  obj-$(CONFIG_DRIVER_NET_GIANFAR)	+= gianfar.o
>  obj-$(CONFIG_DRIVER_NET_KS8851_MLL)	+= ks8851_mll.o
> +obj-$(CONFIG_DRIVER_NET_KSZ9477)	+= ksz9477.o
>  obj-$(CONFIG_DRIVER_NET_MACB)		+= macb.o
>  obj-$(CONFIG_DRIVER_NET_MICREL)		+= ksz8864rmn.o
>  obj-$(CONFIG_DRIVER_NET_MPC5200)	+= fec_mpc5200.o
> diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
> new file mode 100644
> index 0000000000..76eb672f21
> --- /dev/null
> +++ b/drivers/net/ksz9477.c
> @@ -0,0 +1,570 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +
> +#include <common.h>
> +#include <complete.h>
> +#include <dsa.h>
> +#include <gpiod.h>
> +#include <net.h>
> +#include <platform_data/ksz9477_reg.h>
> +#include <spi/spi.h>
> +
> +/* SPI frame opcodes */
> +#define KS_SPIOP_RD			3
> +#define KS_SPIOP_WR			2
> +
> +#define SPI_ADDR_SHIFT			24
> +#define SPI_ADDR_MASK			(BIT(SPI_ADDR_SHIFT) - 1)
> +#define SPI_TURNAROUND_SHIFT		5
> +
> +#define GBIT_SUPPORT			BIT(0)
> +#define NEW_XMII			BIT(1)
> +#define IS_9893				BIT(2)
> +#define KSZ9477_PHY_ERRATA		BIT(3)
> +
> +struct ksz_switch {
> +	struct spi_device *spi;
> +	struct dsa_switch ds;
> +	struct device_d *dev;
> +	int phy_port_cnt;
> +	u32 chip_id;
> +	u8 features;
> +};
> +
> +static int ksz9477_spi_read_reg(struct spi_device *spi, u32 reg, u8 *val,
> +				unsigned int len)
> +{
> +	u32 txbuf;
> +	u32 rxbuf;
> +	int ret;
> +
> +	txbuf = reg & SPI_ADDR_MASK;
> +	txbuf |= KS_SPIOP_RD << SPI_ADDR_SHIFT;
> +	txbuf <<= SPI_TURNAROUND_SHIFT;
> +	txbuf = cpu_to_be32(txbuf);
> +
> +	ret = spi_write_then_read(spi, &txbuf, 4, val, len);
> +	memcpy(&rxbuf, val, len);

rxbuf is set but unused.

> +
> +	return ret;
> +}
> +
> +static int ksz9477_spi_write_reg(struct spi_device *spi, u32 reg, u8 *val,
> +				 unsigned int len)
> +{
> +	u8 _txbuf[sizeof(u32) * 2] = {0};
> +	u32 *txbuf = (u32 *)&_txbuf[0];

Why an extra u32 pointer to an u8 buf? You could just use a

	u32 txbuf[2];

> +
> +	memcpy(&_txbuf[4], val, len);

For readability I would initialize txbuf in order, i.e. put the memcpy
after init of txbuf[0].


> +static int ksz_port_enable(struct dsa_port *dp, int port,
> +			   struct phy_device *phy)
> +{
> +	struct device_d *dev = dp->ds->dev;
> +	struct ksz_switch *priv = dev_get_priv(dev);
> +	u8 data8;
> +	int ret;
> +
> +	/* setup this port */
> +	ret = ksz_port_setup(priv, port, phy->interface);
> +	if (ret) {
> +		dev_err(dev, "port setup failed: %d\n", ret);
> +		return ret;
> +	}
> +
> +	/* enable port forwarding for this port */
> +	ksz_pread8(priv, port, REG_PORT_LUE_MSTP_STATE, &data8);
> +	data8 &= ~(PORT_TX_ENABLE | PORT_RX_ENABLE | PORT_LEARN_DISABLE);
> +	data8 |= (PORT_TX_ENABLE | PORT_RX_ENABLE);

No need to clear PORT_TX_ENABLE and PORT_RX_ENABLE before setting them
again.

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

