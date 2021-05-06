Delivery-date: Thu, 06 May 2021 12:12:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leazG-0001dw-2u
	for lore@lore.pengutronix.de; Thu, 06 May 2021 12:12:06 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leazE-00067Z-KH
	for lore@pengutronix.de; Thu, 06 May 2021 12:12:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jj0uF9y0/HkPCjwAXRE4NEDKbCy4nZET+Np/ssLys4M=; b=Bs4FSbyJ1cTM6nN5+KSLM6WQA
	CtUHO0iap7A9EfJ5BOhpt772dduZng7vlatj8DnhfqX9ccKH54kgK9fa+Sdvz1AmuD01GqHPMn0EJ
	/jxQpW83qCMOnctk4rw7RQ4f1PuOs5xu4qJr4BdMQFY1BZ18eTNT1dEGnt1asEJAXNs07RjTrafJ4
	OER/1EkSfKhBanTdFFF7Zz1X/Em91lsXV5yeO8R7U7jp+e/Ooj18qCDUEFs0L6S+BIVRguihMvQsb
	qIPrtNmZFieTlWIIUpTakgwweDiJrQ5yukFq4ihQZZs4JoedSZnkbx+E+hGXFrAtZCDAZaNCnIRFV
	M9H2k4AOA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leay3-003vHf-N6; Thu, 06 May 2021 10:10:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaxy-003vH5-P2
 for barebox@desiato.infradead.org; Thu, 06 May 2021 10:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZBvbDJ9iTFoX0mvaqmzJFnFLevHanBX3gFtwuHj4hZM=; b=Z4Xb+KLU2Sv41YpYulf+G0oN13
 9nYg1B0TIOm9cg2Sz51R5qV8x9kFAI5gxScS/3ByO3wgRAIQ/3jFR+jtHTpJ2lqhlJ4P+6Pv2IIws
 9Bo2IoHt/mEmYFC1FXgSflu2+OBShM6kHoc5yydwHZV1aWOBFql3A8/DFPxjhhFUWQlPUA63BoSQs
 uvpwZEHys+j2txBfzBQkQaWyAskFbOyKAoF41n7qIx/l8FArm8oS31VWETWcyO3vRxRWua8z3BWrx
 ND0Hk56Mayn+uOz2KCZ4pV5Ghex1ZjtHug2Z2Vafr5J+UsV9q+nyoWqejTm67OwZhVNta+p6jErEo
 Lbs3JEfA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaxu-005wJL-KT
 for barebox@lists.infradead.org; Thu, 06 May 2021 10:10:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1leaxq-0005lM-VJ; Thu, 06 May 2021 12:10:38 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1leaxq-000642-91; Thu, 06 May 2021 12:10:38 +0200
Date: Thu, 6 May 2021 12:10:38 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Marek Czerski <m.czerski@ap-tech.pl>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210506101038.hq4rqkbl6w7wljqb@pengutronix.de>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-7-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210505100900.88141-7-antonynpavlov@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_031043_056897_C5FE666B 
X-CRM114-Status: GOOD (  37.70  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 6/9] net: add LiteEth driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 05, 2021 at 01:08:57PM +0300, Antony Pavlov wrote:
> LiteEth provides a small footprint and configurable Ethernet core.
> 
> LiteEth is part of LiteX libraries whose aims are to lower entry level of
> complex FPGA cores by providing simple, elegant and efficient implementations
> of components used in today's SoC such as Ethernet, SATA, PCIe, SDRAM Controller...
> 
> Using Migen to describe the HDL allows the core to be highly and easily configurable.
> 
> LiteEth can be used as LiteX library or can be integrated with your standard
> design flow by generating the verilog rtl that you will use as a standard core.
> 
> See https://github.com/enjoy-digital/liteeth for details.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Marek Czerski <m.czerski@ap-tech.pl>
> ---
>  drivers/net/Kconfig   |   8 +
>  drivers/net/Makefile  |   1 +
>  drivers/net/liteeth.c | 376 ++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 385 insertions(+)
> 
> Cc: Marek Czerski <m.czerski@ap-tech.pl>
> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 0d55ea7a3b..4818f52603 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -271,6 +271,14 @@ config TSE_USE_DEDICATED_DESC_MEM
>  	  reserved with a malloc but directly mapped to the memory
>  	  address (defined in config.h)
>  
> +config DRIVER_NET_LITEETH
> +	bool "LiteX ethernet driver"
> +	select PHYLIB
> +	select MDIO_BITBANG
> +	help
> +	  This option enables support for the LiteX LiteEth
> +	  ethernet IP core.
> +
>  source "drivers/net/phy/Kconfig"
>  source "drivers/net/usb/Kconfig"
>  
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 656d45a868..bb751943f6 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -36,3 +36,4 @@ obj-$(CONFIG_DRIVER_NET_TAP)		+= tap.o
>  obj-$(CONFIG_DRIVER_NET_TSE)		+= altera_tse.o
>  obj-$(CONFIG_DRIVER_NET_EFI_SNP)	+= efi-snp.o
>  obj-$(CONFIG_DRIVER_NET_AG71XX)		+= ag71xx.o
> +obj-$(CONFIG_DRIVER_NET_LITEETH)	+= liteeth.o
> diff --git a/drivers/net/liteeth.c b/drivers/net/liteeth.c
> new file mode 100644
> index 0000000000..137cb854c5
> --- /dev/null
> +++ b/drivers/net/liteeth.c
> @@ -0,0 +1,376 @@
> +/*

Could you please add an SPDX-License-Identifier header [1] here? (Maybe
also for other newly introduced files in this series, haven't checked.)

[1]: https://www.kernel.org/doc/html/latest/process/license-rules.html

 - Roland

> + * LiteX Liteeth Ethernet
> + *
> + * Copyright 2017 Joel Stanley <joel@jms.id.au>
> + *
> + * Ported to barebox from linux kernel
> + *   Copyright (C) 2019-2021 Antony Pavlov <antonynpavlov@gmail.com>
> + *   Copyright (C) 2021 Marek Czerski <m.czerski@ap-tech.pl>
> + *
> + */
> +
> +#include <common.h>
> +#include <io.h>
> +#include <linux/iopoll.h>
> +#include <malloc.h>
> +#include <net.h>
> +#include <init.h>
> +#include <of_net.h>
> +#include <linux/phy.h>
> +#include <linux/mdio-bitbang.h>
> +
> +#define DRV_NAME	"liteeth"
> +
> +#define LITEETH_WRITER_SLOT		0x00
> +#define LITEETH_WRITER_LENGTH		0x04
> +#define LITEETH_WRITER_ERRORS		0x08
> +#define LITEETH_WRITER_EV_STATUS	0x0c
> +#define LITEETH_WRITER_EV_PENDING	0x10
> +#define LITEETH_WRITER_EV_ENABLE	0x14
> +#define LITEETH_READER_START		0x18
> +#define LITEETH_READER_READY		0x1c
> +#define LITEETH_READER_LEVEL		0x20
> +#define LITEETH_READER_SLOT		0x24
> +#define LITEETH_READER_LENGTH		0x28
> +#define LITEETH_READER_EV_STATUS	0x2c
> +#define LITEETH_READER_EV_PENDING	0x30
> +#define LITEETH_READER_EV_ENABLE	0x34
> +#define LITEETH_PREAMBLE_CRC		0x38
> +#define LITEETH_PREAMBLE_ERRORS		0x3c
> +#define LITEETH_CRC_ERRORS		0x40
> +
> +#define LITEETH_PHY_CRG_RESET		0x00
> +#define LITEETH_MDIO_W			0x04
> +#define  MDIO_W_CLK			BIT(0)
> +#define  MDIO_W_OE			BIT(1)
> +#define  MDIO_W_DO			BIT(2)
> +
> +#define LITEETH_MDIO_R			0x08
> +#define  MDIO_R_DI			BIT(0)
> +
> +#define LITEETH_BUFFER_SIZE		0x800
> +#define MAX_PKT_SIZE			LITEETH_BUFFER_SIZE
> +
> +struct liteeth {
> +	struct device_d *dev;
> +	struct eth_device edev;
> +	void __iomem *base;
> +	void __iomem *mdio_base;
> +	struct mii_bus *mii_bus;
> +	struct mdiobb_ctrl mdiobb;
> +
> +	/* Link management */
> +	int cur_duplex;
> +	int cur_speed;
> +
> +	/* Tx */
> +	int tx_slot;
> +	int num_tx_slots;
> +	void __iomem *tx_base;
> +
> +	/* Rx */
> +	int rx_slot;
> +	int num_rx_slots;
> +	void __iomem *rx_base;
> +};
> +
> +static inline void litex_write8(void __iomem *addr, u8 val)
> +{
> +	writeb(val, addr);
> +}
> +
> +static inline void litex_write16(void __iomem *addr, u16 val)
> +{
> +	writew(val, addr);
> +}
> +
> +static inline u8 litex_read8(void __iomem *addr)
> +{
> +	return readb(addr);
> +}
> +
> +static inline u32 litex_read32(void __iomem *addr)
> +{
> +	return readl(addr);
> +}
> +
> +static void liteeth_mdio_w_modify(struct liteeth *priv, u8 clear, u8 set)
> +{
> +	void __iomem *mdio_w = priv->mdio_base + LITEETH_MDIO_W;
> +
> +	litex_write8(mdio_w, (litex_read8(mdio_w) & ~clear) | set);
> +}
> +
> +static void liteeth_mdio_ctrl(struct mdiobb_ctrl *ctrl, u8 mask, int set)
> +{
> +	struct liteeth *priv = container_of(ctrl, struct liteeth, mdiobb);
> +
> +	liteeth_mdio_w_modify(priv, mask, set ? mask : 0);
> +}
> +
> +/* MDC pin control */
> +static void liteeth_set_mdc(struct mdiobb_ctrl *ctrl, int level)
> +{
> +	liteeth_mdio_ctrl(ctrl, MDIO_W_CLK, level);
> +}
> +
> +/* Data I/O pin control */
> +static void liteeth_set_mdio_dir(struct mdiobb_ctrl *ctrl, int output)
> +{
> +	liteeth_mdio_ctrl(ctrl, MDIO_W_OE, output);
> +}
> +
> +/* Set data bit */
> +static void liteeth_set_mdio_data(struct mdiobb_ctrl *ctrl, int value)
> +{
> +	liteeth_mdio_ctrl(ctrl, MDIO_W_DO, value);
> +}
> +
> +/* Get data bit */
> +static int liteeth_get_mdio_data(struct mdiobb_ctrl *ctrl)
> +{
> +	struct liteeth *priv = container_of(ctrl, struct liteeth, mdiobb);
> +
> +	return (litex_read8(priv->mdio_base + LITEETH_MDIO_R) & MDIO_R_DI) != 0;
> +}
> +
> +/* MDIO bus control struct */
> +static struct mdiobb_ops bb_ops = {
> +	.set_mdc = liteeth_set_mdc,
> +	.set_mdio_dir = liteeth_set_mdio_dir,
> +	.set_mdio_data = liteeth_set_mdio_data,
> +	.get_mdio_data = liteeth_get_mdio_data,
> +};
> +
> +static int liteeth_init_dev(struct eth_device *edev)
> +{
> +	return 0;
> +}
> +
> +static int liteeth_eth_open(struct eth_device *edev)
> +{
> +	struct liteeth *priv = edev->priv;
> +	int ret;
> +
> +	/* Disable events */
> +	litex_write8(priv->base + LITEETH_WRITER_EV_ENABLE, 0);
> +	litex_write8(priv->base + LITEETH_READER_EV_ENABLE, 0);
> +
> +	/* Clear pending events? */
> +	litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, 1);
> +	litex_write8(priv->base + LITEETH_READER_EV_PENDING, 1);
> +
> +	ret = phy_device_connect(edev, priv->mii_bus, -1, NULL, 0, -1);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int liteeth_eth_send(struct eth_device *edev, void *packet,
> +				int packet_length)
> +{
> +	struct liteeth *priv = edev->priv;
> +	void *txbuffer;
> +	int ret;
> +	u8 val;
> +	u8 reg;
> +
> +	reg = litex_read8(priv->base + LITEETH_READER_EV_PENDING);
> +	if (reg) {
> +		litex_write8(priv->base + LITEETH_READER_EV_PENDING, reg);
> +	}
> +
> +	/* Reject oversize packets */
> +	if (unlikely(packet_length > MAX_PKT_SIZE)) {
> +		dev_err(priv->dev, "tx packet too big\n");
> +		goto drop;
> +	}
> +
> +	txbuffer = priv->tx_base + priv->tx_slot * LITEETH_BUFFER_SIZE;
> +	memcpy(txbuffer, packet, packet_length);
> +	litex_write8(priv->base + LITEETH_READER_SLOT, priv->tx_slot);
> +	litex_write16(priv->base + LITEETH_READER_LENGTH, packet_length);
> +
> +	ret = readb_poll_timeout(priv->base + LITEETH_READER_READY,
> +			val, val, 1000);
> +	if (ret == -ETIMEDOUT) {
> +		dev_err(priv->dev, "LITEETH_READER_READY timed out\n");
> +		goto drop;
> +	}
> +
> +	litex_write8(priv->base + LITEETH_READER_START, 1);
> +
> +	priv->tx_slot = (priv->tx_slot + 1) % priv->num_tx_slots;
> +
> +drop:
> +	return 0;
> +}
> +
> +static int liteeth_eth_rx(struct eth_device *edev)
> +{
> +	struct liteeth *priv = edev->priv;
> +	u8 rx_slot;
> +	int len = 0;
> +	u8 reg;
> +
> +	reg = litex_read8(priv->base + LITEETH_WRITER_EV_PENDING);
> +	if (!reg) {
> +		goto done;
> +	}
> +
> +	len = litex_read32(priv->base + LITEETH_WRITER_LENGTH);
> +	if (len == 0 || len > 2048) {
> +		len = 0;
> +		dev_err(priv->dev, "%s: invalid len %d\n", __func__, len);
> +		litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, reg);
> +		goto done;
> +	}
> +
> +	rx_slot = litex_read8(priv->base + LITEETH_WRITER_SLOT);
> +
> +	memcpy(NetRxPackets[0], priv->rx_base + rx_slot * LITEETH_BUFFER_SIZE, len);
> +
> +	net_receive(edev, NetRxPackets[0], len);
> +
> +	litex_write8(priv->base + LITEETH_WRITER_EV_PENDING, reg);
> +
> +done:
> +	return len;
> +}
> +
> +static void liteeth_eth_halt(struct eth_device *edev)
> +{
> +	struct liteeth *priv = edev->priv;
> +
> +	litex_write8(priv->base + LITEETH_WRITER_EV_ENABLE, 0);
> +	litex_write8(priv->base + LITEETH_READER_EV_ENABLE, 0);
> +}
> +
> +static void liteeth_reset_hw(struct liteeth *priv)
> +{
> +	/* Reset, twice */
> +	litex_write8(priv->base + LITEETH_PHY_CRG_RESET, 0);
> +	udelay(10);
> +	litex_write8(priv->base + LITEETH_PHY_CRG_RESET, 1);
> +	udelay(10);
> +	litex_write8(priv->base + LITEETH_PHY_CRG_RESET, 0);
> +	udelay(10);
> +}
> +
> +static int liteeth_get_ethaddr(struct eth_device *edev, unsigned char *m)
> +{
> +	return 0;
> +}
> +
> +static int liteeth_set_ethaddr(struct eth_device *edev,
> +					const unsigned char *mac_addr)
> +{
> +	return 0;
> +}
> +
> +static int liteeth_probe(struct device_d *dev)
> +{
> +	struct device_node *np = dev->device_node;
> +	struct eth_device *edev;
> +	void __iomem *buf_base;
> +	struct liteeth *priv;
> +	int err;
> +
> +	priv = xzalloc(sizeof(struct liteeth));
> +	edev = &priv->edev;
> +	edev->priv = priv;
> +	priv->dev = dev;
> +
> +	priv->base = dev_request_mem_region(dev, 0);
> +	if (IS_ERR(priv->base)) {
> +		err = PTR_ERR(priv->base);
> +		goto err;
> +	}
> +
> +	priv->mdio_base = dev_request_mem_region(dev, 1);
> +	if (IS_ERR(priv->mdio_base)) {
> +		err = PTR_ERR(priv->mdio_base);
> +		goto err;
> +	}
> +
> +	buf_base = dev_request_mem_region(dev, 2);
> +	if (IS_ERR(buf_base)) {
> +		err = PTR_ERR(buf_base);
> +		goto err;
> +	}
> +
> +	err = of_property_read_u32(np, "rx-fifo-depth",
> +			&priv->num_rx_slots);
> +	if (err) {
> +		dev_err(dev, "unable to get rx-fifo-depth\n");
> +		goto err;
> +	}
> +
> +	err = of_property_read_u32(np, "tx-fifo-depth",
> +			&priv->num_tx_slots);
> +	if (err) {
> +		dev_err(dev, "unable to get tx-fifo-depth\n");
> +		goto err;
> +	}
> +
> +	/* Rx slots */
> +	priv->rx_base = buf_base;
> +	priv->rx_slot = 0;
> +
> +	/* Tx slots come after Rx slots */
> +	priv->tx_base = buf_base + priv->num_rx_slots * LITEETH_BUFFER_SIZE;
> +	priv->tx_slot = 0;
> +
> +	edev->init = liteeth_init_dev;
> +	edev->open = liteeth_eth_open;
> +	edev->send = liteeth_eth_send;
> +	edev->recv = liteeth_eth_rx;
> +	edev->get_ethaddr = liteeth_get_ethaddr;
> +	edev->set_ethaddr = liteeth_set_ethaddr;
> +	edev->halt = liteeth_eth_halt;
> +	edev->parent = dev;
> +
> +	priv->mdiobb.ops = &bb_ops;
> +
> +	priv->mii_bus = alloc_mdio_bitbang(&priv->mdiobb);
> +	priv->mii_bus->parent = dev;
> +
> +	liteeth_reset_hw(priv);
> +
> +	err = eth_register(edev);
> +	if (err) {
> +		dev_err(dev, "failed to register edev\n");
> +		goto err;
> +	}
> +
> +	err = mdiobus_register(priv->mii_bus);
> +	if (err) {
> +		dev_err(dev, "failed to register mii_bus\n");
> +		goto err;
> +	}
> +
> +	dev_info(dev, DRV_NAME " driver registered\n");
> +
> +	return 0;
> +
> +err:
> +	return err;
> +}
> +
> +static const struct of_device_id liteeth_dt_ids[] = {
> +	{
> +		.compatible = "litex,liteeth"
> +	}, {
> +	}
> +};
> +
> +static struct driver_d liteeth_driver = {
> +	.name = DRV_NAME,
> +	.probe = liteeth_probe,
> +	.of_compatible = DRV_OF_COMPAT(liteeth_dt_ids),
> +};
> +device_platform_driver(liteeth_driver);
> +
> +MODULE_AUTHOR("Joel Stanley <joel@jms.id.au>");
> +MODULE_LICENSE("GPL");
> -- 
> 2.31.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

