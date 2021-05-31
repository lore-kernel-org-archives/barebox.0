Delivery-date: Mon, 31 May 2021 08:59:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbtj-0002la-GX
	for lore@lore.pengutronix.de; Mon, 31 May 2021 08:59:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lnbti-0000rI-En
	for lore@pengutronix.de; Mon, 31 May 2021 08:59:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=egcA1P3bNP3xNkYpWMSmwxBL0+d7tH9mUTZkB7TPfDc=; b=uZoQ2SUN19zYZ/
	qgPqNQ46W+KsAK+I+zZmeL2kvsoKl0XsWyu27q/9TibmrUHU/8uNyUzXfesSCus/q14Yq5SvrSSRc
	DoxXAFOW5xuseLeLfZFGvo+rvgK7LBO0/dxEpSlHHAAkVWTj7388C06mxdBaBXBjhI8/vJ+mpYvJ7
	zoxCQx9NgEtAoEXfLDPkkhfNWe7npNYfSpDZzPI45Tz1trA3H4likBqkGKUHUBNaeBfejwOTSNHar
	xnVc15vdVaY2KxMSNG5A9sP/MLo/tdsJJXftsOYH/7L8y/GoAMRkAHru6fqibwOCbZYbJ4G/75EUY
	cwNuD3i4xCMqBBizhYaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnbsZ-00B2QC-PD; Mon, 31 May 2021 06:58:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnbsR-00B2NV-65
 for barebox@lists.infradead.org; Mon, 31 May 2021 06:58:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbsP-0000kA-V2; Mon, 31 May 2021 08:58:17 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lnbsP-0004rX-MS; Mon, 31 May 2021 08:58:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 08:58:15 +0200
Message-Id: <20210531065815.18641-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210530_235819_266541_156BE268 
X-CRM114-Status: GOOD (  18.02  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] net: macb: add SiFive support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Ethernet controller on the SiFive SoCs needs some special TX clock
setup. Port the relevant Linux v5.12 bits to enable it.

As the macb driver is used for some old at91 boards that aren't yet
ported to the common clock framework, that new setup code has to be
in an #ifdef.

Tested on qemu-system-riscv64 -M sifive_u with dhcp.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2: add common clock code into #ifdef
---
 drivers/net/macb.c | 120 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 14a0b45322bf..19ae64d7a5a2 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -52,6 +52,17 @@
 #define TX_RING_BYTES		(sizeof(struct macb_dma_desc) * TX_RING_SIZE)
 #define GEM_Q1_DESC_BYTES	(sizeof(struct macb_dma_desc) * GEM_Q1_DESCS)
 
+/* This structure is only used for MACB on SiFive FU540 devices */
+struct sifive_fu540_macb_mgmt {
+	void __iomem *reg;
+	unsigned long rate;
+	struct clk clk;
+};
+
+struct macb_config {
+	int (*txclk_init)(struct device_d *dev, struct clk **tx_clk);
+};
+
 struct macb_device {
 	void			__iomem *regs;
 
@@ -666,12 +677,108 @@ static void macb_init_rx_buffer_size(struct macb_device *bp, size_t size)
 		   size, bp->rx_buffer_size);
 }
 
+#ifdef CONFIG_COMMON_CLK
+static struct sifive_fu540_macb_mgmt *mgmt;
+
+static unsigned long fu540_macb_tx_recalc_rate(struct clk *clk,
+					       unsigned long parent_rate)
+{
+	return mgmt->rate;
+}
+
+static long fu540_macb_tx_round_rate(struct clk *clk, unsigned long rate,
+				     unsigned long *parent_rate)
+{
+	if (WARN_ON(rate < 2500000))
+		return 2500000;
+	else if (rate == 2500000)
+		return 2500000;
+	else if (WARN_ON(rate < 13750000))
+		return 2500000;
+	else if (WARN_ON(rate < 25000000))
+		return 25000000;
+	else if (rate == 25000000)
+		return 25000000;
+	else if (WARN_ON(rate < 75000000))
+		return 25000000;
+	else if (WARN_ON(rate < 125000000))
+		return 125000000;
+	else if (rate == 125000000)
+		return 125000000;
+
+	WARN_ON(rate > 125000000);
+
+	return 125000000;
+}
+
+static int fu540_macb_tx_set_rate(struct clk *clk, unsigned long rate,
+				  unsigned long parent_rate)
+{
+	rate = fu540_macb_tx_round_rate(clk, rate, &parent_rate);
+	if (rate != 125000000)
+		iowrite32(1, mgmt->reg);
+	else
+		iowrite32(0, mgmt->reg);
+	mgmt->rate = rate;
+
+	return 0;
+}
+
+static const struct clk_ops fu540_c000_ops = {
+	.recalc_rate = fu540_macb_tx_recalc_rate,
+	.round_rate = fu540_macb_tx_round_rate,
+	.set_rate = fu540_macb_tx_set_rate,
+};
+
+static int fu540_c000_txclk_init(struct device_d *dev, struct clk **tx_clk)
+{
+	struct clk *clk;
+	struct resource *res;
+	int err = 0;
+
+	mgmt = xzalloc(sizeof(*mgmt));
+
+	res = dev_request_mem_resource(dev, 1);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	mgmt->reg = IOMEM(res->start);
+
+	clk = &mgmt->clk;
+
+	clk->name = "sifive-gemgxl-mgmt";
+	clk->ops = &fu540_c000_ops;
+
+	err = clk_register(&mgmt->clk);
+	if (err)
+		return err;
+
+	*tx_clk = &mgmt->clk;
+
+	err = clk_enable(*tx_clk);
+	if (err) {
+		dev_err(dev, "failed to enable tx_clk (%u)\n", err);
+		*tx_clk = NULL;
+		return err;
+	}
+
+	dev_info(dev, "Registered clk switch '%s'\n", clk->name);
+	return 0;
+}
+#else
+static int fu540_c000_txclk_init(struct device_d *dev, struct clk **tx_clk)
+{
+	return -ENOSYS;
+}
+#endif
+
 static int macb_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct eth_device *edev;
 	struct macb_device *macb;
 	const char *pclk_name, *hclk_name;
+	const struct macb_config *config = NULL;
 	u32 ncfgr;
 
 	macb = xzalloc(sizeof(*macb));
@@ -725,6 +832,8 @@ static int macb_probe(struct device_d *dev)
 		macb->phy_addr = -1;
 		pclk_name = "pclk";
 		hclk_name = "hclk";
+
+		config = device_get_match_data(dev);
 	} else {
 		dev_err(dev, "macb: no platform_data\n");
 		return -ENODEV;
@@ -767,6 +876,12 @@ static int macb_probe(struct device_d *dev)
 	if (!IS_ERR(macb->rxclk))
 		clk_enable(macb->rxclk);
 
+	if (config) {
+		int ret = config->txclk_init(dev, &macb->txclk);
+		if (ret)
+			return ret;
+	}
+
 	macb->is_gem = read_is_gem(macb);
 
 	if (macb_is_gem(macb))
@@ -808,12 +923,17 @@ static void macb_remove(struct device_d *dev)
 	macb_halt(&macb->netdev);
 }
 
+static const struct macb_config fu540_c000_config = {
+	.txclk_init = fu540_c000_txclk_init,
+};
+
 static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,at91sam9260-macb",},
 	{ .compatible = "atmel,sama5d2-gem",},
 	{ .compatible = "atmel,sama5d3-gem",},
 	{ .compatible = "cdns,zynq-gem",},
 	{ .compatible = "cdns,zynqmp-gem",},
+	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
 	{ /* sentinel */ }
 };
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

