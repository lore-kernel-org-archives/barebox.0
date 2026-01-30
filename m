Delivery-date: Fri, 30 Jan 2026 14:29:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vloYl-006zrj-0D
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 14:29:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vloYj-00055r-KS
	for lore@pengutronix.de; Fri, 30 Jan 2026 14:29:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zWKAzcSN3ndY4AMnTZdqNM/tDuBept72aJPTwkxkmqo=; b=D+09vWoPQEPvNLsD6J71XOIXLE
	t946O4QoSRIJ+XngUdfkfsT1WxIxV61B2pcvcjXf0fICvdlYeO5ePSBEMU2ihqwp1fCkA2Mo0wQz7
	N2b8NQKpyHhup9QioZsz6UcEbc+VJQnxS3sN8JQj+JcJpKYkXxGp4CFaZ45Dq3XA3/+FnynWE9HIu
	CYArh5RtG6eM7Cfim95AxiCuIAzVOpMH1gG2zowh2OsmZXZjEFf0YiFAU+mdnEecEm1ahKeRx5nU5
	7QE4V0aP3ia3EBMn2gxZp/SRoh7fPIqLktE9yFEnja4/58ZBuSgmaDUPgg8VBLykKRGpeM07wpeMa
	885aASug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vloY6-00000001X4E-3920;
	Fri, 30 Jan 2026 13:28:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vloY3-00000001X3O-1suW
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 13:28:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vloY1-00050D-Ph; Fri, 30 Jan 2026 14:28:29 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vloY1-003Fv3-2D;
	Fri, 30 Jan 2026 14:28:29 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vloY0-006dQH-30;
	Fri, 30 Jan 2026 14:28:28 +0100
Date: Fri, 30 Jan 2026 14:28:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Renaud Barbier <renaud.barbier@ametek.com>
Cc: barebox@lists.infradead.org
Message-ID: <aXyx_DsH_IE2ebgt@pengutronix.de>
References: <20260127121217.3896902-1-renaud.barbier@ametek.com>
 <20260127121217.3896902-2-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127121217.3896902-2-renaud.barbier@ametek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_052831_652451_0EE87B91 
X-CRM114-Status: GOOD (  36.48  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] net: gianfar: add device tree support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 27, 2026 at 12:12:16PM +0000, Renaud Barbier wrote:
> Like the PPC platforms, the NXP LS1021A Ethernet controller is managed
> by the gianfar driver. Since the LS1021A configuration uses a device tree,
> add probing through the device tree to the gianfar driver while preserving
> the tree-less PPC support.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
> ---
>  arch/powerpc/include/asm/dma.h |  35 ++++-
>  drivers/net/Kconfig            |   2 +-
>  drivers/net/gianfar.c          | 261 +++++++++++++++++++++++++++++----
>  drivers/net/gianfar.h          |  36 +++++
>  4 files changed, 300 insertions(+), 34 deletions(-)
> 
> diff --git a/arch/powerpc/include/asm/dma.h b/arch/powerpc/include/asm/dma.h
> index 27d269f491..dcd9e3d748 100644
> --- a/arch/powerpc/include/asm/dma.h
> +++ b/arch/powerpc/include/asm/dma.h
> @@ -8,6 +8,39 @@
>  #ifndef __ASM_DMA_H
>  #define __ASM_DMA_H
>  
> -/* empty */
> +#include <io.h>
> +
> +#define arch_sync_dma_for_cpu arch_sync_dma_for_cpu
> +static inline void arch_sync_dma_for_cpu(void *vaddr, size_t size,
> +					 enum dma_data_direction dir)
> +{
> +}
> +
> +#define arch_sync_dma_for_device arch_sync_dma_for_device
> +static inline void arch_sync_dma_for_device(void *vaddr, size_t size,
> +					    enum dma_data_direction dir)
> +{
> +}
> +
> +static inline void dma_sync_single_for_cpu(struct device *dev, dma_addr_t address,
> +					   size_t size, enum dma_data_direction dir)
> +{
> +}
> +
> +static inline void dma_sync_single_for_device(struct device *dev, dma_addr_t address,
> +					      size_t size, enum dma_data_direction dir)
> +{
> +}
> +
> +static inline dma_addr_t dma_map_single(struct device *dev, void *ptr,
> +					size_t size, enum dma_data_direction dir)
> +{
> +	return virt_to_phys(ptr);
> +}
> +
> +static inline void dma_unmap_single(struct device *dev, dma_addr_t dma_addr,
> +				    size_t size, enum dma_data_direction dir)
> +{
> +}
>  
>  #endif /* __ASM_DMA_H */
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 068906078c..bd18416d3d 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -237,7 +237,7 @@ config DRIVER_NET_FSL_FMAN
>  
>  config DRIVER_NET_GIANFAR
>  	bool "Gianfar Ethernet"
> -	depends on ARCH_MPC85XX
> +	depends on ARCH_MPC85XX || ARCH_LS1021
>  	select PHYLIB
>  
>  config DRIVER_NET_KS8851_MLL
> diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
> index 18b3c8849c..7a947a21da 100644
> --- a/drivers/net/gianfar.c
> +++ b/drivers/net/gianfar.c
> @@ -8,14 +8,18 @@
>   * based on work by Andy Fleming
>   */
>  
> +#ifdef CONFIG_PPC
>  #include <asm/config.h>
> +#endif
>  #include <common.h>
>  #include <malloc.h>
>  #include <net.h>
> +#include <dma.h>
>  #include <init.h>
>  #include <driver.h>
>  #include <command.h>
>  #include <errno.h>
> +#include <of_address.h>
>  #include <asm/io.h>
>  #include <linux/phy.h>
>  #include <linux/err.h>
> @@ -77,11 +81,11 @@ static void gfar_adjust_link(struct eth_device *edev)
>  	u32 ecntrl, maccfg2;
>  
>  	priv->link = edev->phydev->link;
> -	priv->duplexity =edev->phydev->duplex;
> +	priv->duplexity = edev->phydev->duplex;
>  
>  	if (edev->phydev->speed == SPEED_1000)
>  		priv->speed = 1000;
> -	if (edev->phydev->speed == SPEED_100)
> +	else if (edev->phydev->speed == SPEED_100)
>  		priv->speed = 100;
>  	else
>  		priv->speed = 10;
> @@ -121,11 +125,11 @@ static void gfar_adjust_link(struct eth_device *edev)
>  		out_be32(regs + GFAR_ECNTRL_OFFSET, ecntrl);
>  		out_be32(regs + GFAR_MACCFG2_OFFSET, maccfg2);
>  
> -		dev_info(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
> +		dev_dbg(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
>  		       (priv->duplexity) ? "full" : "half");
>  
>  	} else {
> -		dev_info(&edev->dev, "No link.\n");
> +		dev_dbg(&edev->dev, "No link.\n");

Could you factor out the good and harmless changes out to a separate
patch? It makes it a bit more obvious what's needed to add Layerscape
support.

>  	}
>  }
>  
> @@ -173,28 +177,45 @@ static int gfar_init(struct eth_device *edev)
>  	return  0;
>  }
>  
> +static int gfar_receive_packets_setup(struct gfar_private *priv, int ix)
> +{
> +	dma_addr_t dma;
> +
> +	dma = dma_map_single(priv->dev, priv->rx_buffer[ix], PKTSIZE,
> +			DMA_FROM_DEVICE);
> +	if (dma_mapping_error(priv->dev, dma)) {
> +		return -EFAULT;
> +	}
> +
> +	out_be32(&priv->rxbd[ix].bufPtr, dma);
> +
> +	return 0;
> +}
> +
>  static int gfar_open(struct eth_device *edev)
>  {
> -	int ix;
>  	struct gfar_private *priv = edev->priv;
>  	struct gfar_phy *phy = priv->gfar_mdio;
>  	void __iomem *regs = priv->regs;
> -	int ret;
> +	int ix, ret;
>  
> -	ret = phy_device_connect(edev, &phy->miibus, priv->phyaddr,
> -				 gfar_adjust_link, 0, PHY_INTERFACE_MODE_NA);
> +	ret = phy_device_connect(edev, (phy?&phy->miibus:NULL), priv->phyaddr,
> +				 gfar_adjust_link, 0, priv->interface);

Spaces around operators please.

> +	priv->tbiaddr = tbiaddr;
> +	out_be32(priv->regs + GFAR_TBIPA_OFFSET, priv->tbiaddr);
> +
> +	size = ((TX_BUF_CNT * sizeof(struct txbd8)) +
> +		(RX_BUF_CNT * sizeof(struct rxbd8)));
> +	base = dma_alloc_coherent(DMA_DEVICE_BROKEN, size, DMA_ADDRESS_BROKEN);
> +	priv->txbd = (struct txbd8 __iomem *)base;
> +	priv->rxbd = (struct rxbd8 __iomem *)(base + (TX_BUF_CNT * sizeof(struct txbd8)));
> +	dma_set_mask(dev, DMA_BIT_MASK(32));
> +
> +	edev->priv = priv;
> +	edev->init = gfar_init;
> +	edev->open = gfar_open;
> +	edev->halt = gfar_halt;
> +	edev->send = gfar_send;
> +	edev->recv = gfar_recv;
> +	edev->get_ethaddr = gfar_get_ethaddr;
> +	edev->set_ethaddr = gfar_set_ethaddr;
> +	edev->parent = dev;
> +
> +	setbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
> +	udelay(2);
> +	clrbits_be32(priv->regs + GFAR_MACCFG1_OFFSET, GFAR_MACCFG1_SOFT_RESET);
> +
> +	gfar_init_phy(edev);
> +
> +	return eth_register(edev);

This duplicates quite some code from the PPC gfar_probe(). Could you
refactor to share the common parts?

> +}
> +#else
>  /*
> + * PPC only as there is no device tree support.
>   * Initialize device structure. Returns success if
>   * initialization succeeded.
>   */
> @@ -469,8 +631,10 @@ static int gfar_probe(struct device *dev)
>  	priv = xzalloc(sizeof(struct gfar_private));
>  
>  	ret = net_alloc_packets(priv->rx_buffer, ARRAY_SIZE(priv->rx_buffer));
> -	if (ret)
> +	if (ret) {
> +		free(priv);
>  		return ret;
> +	}
>  
>  	edev = &priv->edev;
>  
> @@ -527,21 +691,49 @@ static int gfar_probe(struct device *dev)
>  
>  	return eth_register(edev);
>  }
> +#endif
> +
> +static struct tsec_data etsec2_data = {
> +	.mdio_regs_off = 0x520,
> +};
> +
> +static struct tsec_data gianfar_data = {
> +	.mdio_regs_off = 0x0,
> +};
> +
> +static const struct of_device_id gfar_ids[] = {
> +	{ .compatible = "fsl,etsec2", .data = &etsec2_data },
> +	{ .compatible = "gianfar", .data = &gianfar_data },
> +	{ /* sentinel */ }
> +};
>  
>  static struct driver gfar_eth_driver = {
>  	.name  = "gfar",
> +	.of_compatible = DRV_OF_COMPAT(gfar_ids),
>  	.probe = gfar_probe,
>  };
>  device_platform_driver(gfar_eth_driver);
>  
> +/* MII bus */
> +static struct fsl_pq_mdio_data mdio_gianfar_data = {
> +	.mdio_regs_off = 0x0,
> +};
> +
> +static __maybe_unused const struct of_device_id gfar_mdio_ids[] = {
> +	{ .compatible = "fsl,etsec2-mdio", .data = &mdio_gianfar_data },
> +	{ /* sentinel */ }
> +};
> +
>  static int gfar_phy_probe(struct device *dev)
>  {
>  	struct gfar_phy *phy;
> +	struct fsl_pq_mdio_data *data;
>  	int ret;
>  
> +	data = (struct fsl_pq_mdio_data *)device_get_match_data(dev);
>  	phy = xzalloc(sizeof(*phy));
>  	phy->dev = dev;
> -	phy->regs = dev_get_mem_region(dev, 0);
> +	phy->regs = dev_get_mem_region(dev, 0) + data->mdio_regs_off;
>  	if (IS_ERR(phy->regs))
>  		return PTR_ERR(phy->regs);
>  
> @@ -561,10 +753,14 @@ static int gfar_phy_probe(struct device *dev)
>  
>  static struct driver gfar_phy_driver = {
>  	.name  = "gfar-mdio",
> +#ifdef CONFIG_OFDEVICE
> +	.of_compatible = DRV_OF_COMPAT(gfar_mdio_ids),
> +#endif

No need to #ifdef this. DRV_OF_COMPAT expands to NULL when
CONFIG_OFDEVICE is disabled.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


