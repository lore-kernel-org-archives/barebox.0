Delivery-date: Wed, 03 Jan 2024 16:17:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL2zk-0028PG-2A
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 16:17:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL2zj-0002uf-Dz
	for lore@pengutronix.de; Wed, 03 Jan 2024 16:17:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vK0PUfRX50KdbRPa2f/OQcuVP6Ynq7VdLy1dlIXLMRQ=; b=2sme4dSPG44UweCOGesPDUExQJ
	766bduS0Ts1FFLpXRIPeg4tf8A8h2lxX7jea05p0jcLfMgZ3kQt/WYDPgsZ2FchaA2viHbrzdpglG
	RUqcD5bqTnrIM8PTp4Odr01Hju1Jl8xO+bUXgzD1bKp5N3nbEpw4su7491aD7KC6JE/uXlhr4wCnb
	cqI8jOpqv8dgz6XmoRHAqM+EXcabbgqrVgro4a3iiZUf2OhGcWg32G2U/B8d4vYK4QyY0Eb3XQI4t
	O+aefnmp+f6lsIcVsMHdN8b0BJMjX8IatnoZvXd02Yz0nkgGyCix8eyhuPEQgqBnX1LVlqMv08yCU
	p4Mx9w1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL2yX-00BE41-2n;
	Wed, 03 Jan 2024 15:16:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL2yT-00BE3T-2v
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 15:16:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL2yP-0002Zt-Hq; Wed, 03 Jan 2024 16:16:01 +0100
Message-ID: <cdaa0ef5-87a5-4964-a911-2de3ece6279d@pengutronix.de>
Date: Wed, 3 Jan 2024 16:16:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240103145103.3589208-1-s.hauer@pengutronix.de>
 <20240103145103.3589208-2-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240103145103.3589208-2-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_071605_948893_AD0738C4 
X-CRM114-Status: GOOD (  30.60  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] net: Add fsl_enetc network driver support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,


On 03.01.24 15:51, Sascha Hauer wrote:
> +static int enetc_ls1028a_write_hwaddr(struct eth_device *edev, const unsigned char *mac)
> +{
> +	struct enetc_priv *priv = edev->priv;
> +	struct pci_dev *pdev = to_pci_dev(priv->dev);
> +	const int devfn_to_pf[] = {0, 1, 2, -1, -1, -1, 3};
> +	int devfn = PCI_FUNC(pdev->devfn);
> +	u32 lower, upper;
> +	int pf;
> +
> +	if (devfn >= ARRAY_SIZE(devfn_to_pf))
> +		return 0;
> +
> +	pf = devfn_to_pf[devfn];
> +	if (pf < 0)
> +		return 0;
> +
> +	lower = *(const u16 *)(mac + 4);
> +	upper = *(const u32 *)mac;

Please use get_unaligned accessors or similar to avoid alignment
issues.

> +
> +	out_le32(LS1028A_IERB_PSIPMAR0(pf, 0), upper);
> +	out_le32(LS1028A_IERB_PSIPMAR1(pf, 0), lower);
> +
> +	return 0;
> +}
> +
> +static int enetc_write_hwaddr(struct eth_device *edev, const unsigned char *mac)
> +{
> +	struct enetc_priv *priv = edev->priv;
> +
> +	u16 lower = *(const u16 *)(mac + 4);
> +	u32 upper = *(const u32 *)mac;

Same.

> +	/* prepare Tx BD */
> +	memset(&priv->enetc_txbd[pi], 0x0, sizeof(struct enetc_tx_bd));
> +	priv->enetc_txbd[pi].addr = cpu_to_le64(dma);
> +	priv->enetc_txbd[pi].buf_len = cpu_to_le16(length);
> +	priv->enetc_txbd[pi].frm_len = cpu_to_le16(length);
> +	priv->enetc_txbd[pi].flags = cpu_to_le16(ENETC_TXBD_FLAGS_F);
> +
> +	dmb();

I am not fond of adding these memory barriers. I was under the impression that
the way we map memory means that accesses are already serialized and a compiler
barrier (or volatile accesses) would suffice here?

> +
> +	/* send frame: increment producer index */
> +	pi = (pi + 1) % txr->bd_count;
> +	txr->next_prod_idx = pi;
> +	enetc_write_reg(txr->prod_idx, pi);
> +
> +	start = get_time_ns();
> +
> +	while (1) {
> +		if (is_timeout(start, 100 * USECOND)) {
> +			ret = -ETIMEDOUT;
> +			break;
> +		}
> +
> +		if (pi == (enetc_read_reg(txr->cons_idx) & ENETC_BDR_IDX_MASK)) {
> +			ret = 0;
> +			break;
> +		}
> +	}
> +
> +	dma_unmap_single(priv->dev, dma, length, DMA_TO_DEVICE);
> +
> +	return ret;
> +}
> +
> +/*
> + * Receive frame:
> + * - wait for the next BD to get ready bit set
> + * - clean up the descriptor
> + * - move on and indicate to HW that the cleaned BD is available for Rx
> + */
> +static int enetc_recv(struct eth_device *edev)
> +{
> +	struct enetc_priv *priv = edev->priv;
> +	struct bd_ring *rxr = &priv->rx_bdr;
> +	int pi = rxr->next_prod_idx;
> +	int ci = rxr->next_cons_idx;
> +	u32 status;
> +	void *pkg;
> +	int len;
> +
> +	status = le32_to_cpu(priv->enetc_rxbd[pi].r.lstatus);
> +
> +	/* check if current BD is ready to be consumed */
> +	if (!ENETC_RXBD_STATUS_R(status))
> +		return 0;
> +
> +	dmb();
> +
> +	len = le16_to_cpu(priv->enetc_rxbd[pi].r.buf_len);
> +
> +	dev_dbg(&edev->dev, "RxBD[%d]: len=%d err=%d pkt=0x%p\n", pi, len,
> +		  ENETC_RXBD_STATUS_ERRORS(status), pkg);
> +
> +	dma_sync_single_for_cpu(priv->dev, priv->rx_pkg_phys[pi], PKTSIZE, DMA_FROM_DEVICE);
> +	net_receive(edev, priv->rx_pkg[pi], len);
> +	dma_sync_single_for_device(priv->dev, priv->rx_pkg_phys[pi], PKTSIZE, DMA_FROM_DEVICE);
> +
> +	/* BD clean up and advance to next in ring */
> +	memset(&priv->enetc_rxbd[pi], 0, sizeof(union enetc_rx_bd));
> +	priv->enetc_rxbd[pi].w.addr = priv->rx_pkg_phys[pi];
> +	rxr->next_prod_idx = (pi + 1) % rxr->bd_count;
> +	ci = (ci + 1) % rxr->bd_count;
> +	rxr->next_cons_idx = ci;
> +	dmb();
> +	/* free up the slot in the ring for HW */
> +	enetc_write_reg(rxr->cons_idx, ci);
> +
> +	return 0;
> +}
> +
> +static int enetc_probe(struct pci_dev *pdev, const struct pci_device_id *id)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct enetc_priv *priv;
> +	struct eth_device *edev;
> +	int ret;
> +
> +	pci_enable_device(pdev);
> +	pci_set_master(pdev);
> +
> +	priv = xzalloc(sizeof(*priv));
> +	priv->dev = dev;
> +
> +	priv->enetc_txbd = dma_alloc_coherent(sizeof(struct enetc_tx_bd) * ENETC_BD_CNT, NULL);
> +	priv->enetc_rxbd = dma_alloc_coherent(sizeof(union enetc_rx_bd) * ENETC_BD_CNT, NULL);

Can you store the DMA address and use that instead of assuming 1:1 mapping?

> +
> +	if (!priv->enetc_txbd || !priv->enetc_rxbd) {
> +		/* free should be able to handle NULL, just free all pointers */
> +		free(priv->enetc_txbd);
> +		free(priv->enetc_rxbd);

dma_alloc_coherent should be freed with dma_free_coherent.

> +
> +		return -ENOMEM;
> +	}
> +
> +	/* initialize register */
> +	priv->regs_base = pci_iomap(pdev, 0);
> +	if (!priv->regs_base) {
> +		dev_err(dev, "failed to map BAR0\n");
> +		return -EINVAL;
> +	}
> +
> +	edev = &priv->edev;
> +	dev->priv = priv;
> +	edev->priv = priv;
> +	edev->open = enetc_start;
> +	edev->send = enetc_send;
> +	edev->recv = enetc_recv;
> +	edev->halt = enetc_stop;
> +	edev->get_ethaddr = enetc_get_hwaddr;
> +
> +	if (of_machine_is_compatible("fsl,ls1028a"))
> +		edev->set_ethaddr = enetc_ls1028a_write_hwaddr;
> +	else
> +		edev->set_ethaddr = enetc_write_hwaddr;
> +
> +	edev->parent = dev;
> +
> +	priv->port_regs = priv->regs_base + ENETC_PORT_REGS_OFF;
> +
> +	enetc_start_pcs(&priv->edev);
> +
> +	ret = eth_register(edev);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

You could directly return eth_register(edev) here.

> +static struct pci_driver enetc_eth_driver = {
> +        .name = "fsl_enetc",
> +        .id_table = enetc_pci_tbl,
> +        .probe = enetc_probe,

Don't we need a remove function here to quiesce the device's DMA?

> +};
> +device_pci_driver(enetc_eth_driver);
> diff --git a/drivers/net/fsl_enetc.h b/drivers/net/fsl_enetc.h
> new file mode 100644
> index 0000000000..d79b0a337c
> --- /dev/null
> +++ b/drivers/net/fsl_enetc.h
> @@ -0,0 +1,249 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * ENETC ethernet controller driver
> + * Copyright 2017-2021 NXP
> + */
> +
> +#ifndef _ENETC_H
> +#define _ENETC_H
> +
> +#include <linux/bitops.h>

Nitpick: <linux/bits.h> has narrower scope and should suffice.

> +struct enetc_mdio_priv {
> +	void *regs_base;

__iomem

> +	struct mii_bus bus;
> +};

> +static void enetc_mdio_wait_bsy(struct enetc_mdio_priv *priv)
> +{
> +	int to = 10000;
> +
> +	while ((enetc_read(priv, ENETC_MDIO_CFG) & ENETC_EMDIO_CFG_BSY) &&
> +	       --to)
> +		cpu_relax();
> +	if (!to)
> +		printf("T");

This will run in pollers and should not print to stdout.


Cheers,
Ahmad

> +};
> +device_pci_driver(enetc_mdio_driver);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



