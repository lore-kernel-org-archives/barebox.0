Delivery-date: Tue, 27 Apr 2021 22:24:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGR-0006Y9-K2
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:24:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGQ-00067J-AQ
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:24:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UD0e2fbS2As3csP3fYVL07sPsk0FvfrD2gmaJsHc05g=; b=Wx81xINPzPklSYWeTf3qIT/Mm
	dr81mbsyyPdDLtEa1GoHpnJ6RzVkKXoeb7ZTJaSOmIQoQKh/zLgNAqh8YDaF34o/9mKVB5KMgwGjy
	lTPdgXze9pV0zbNwjroatim6Z5NtPHgygC56o6zqFkqrHUkydqS9cRta0Gze90bONXbCvi3v2Q9uu
	UkBaEp6a87B/CEtRY+Yj2HSJpgSkJWahyfSQXIuSsM8SwyVj+f7SpJA1B2umHuK+ntPjMd5Y17Twc
	etXgtBeh6mtiEsLCZobp8GRNWm3uBWdUjyoBRid8XWgg93OlXadQ3mwV8TZ5hdh3g9JSIcP2AETnP
	SlhLFxSOQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUF4-002BrQ-Ig; Tue, 27 Apr 2021 20:23:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEv-002BqU-Rm
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Lx8GAJxxjv8NSOtZUqzQ+csao5Rzimu7raBbW3Vhm10=; b=WaAt00tqxHhYc18UU+lB2J2c77
 eAWLjJXDMOJvmKnHFu+WNHDwLshSAT2F1SIgzRrYPmbC8JKxOY+QzVxvyendePQO1Ucn6GYPcStWp
 nTdOLmYAp4vuY6PPWn/PNyUXrDrYIVvJYcsFfDJWeB9hsf+4PyLZ+VRE0w8ieQ9d8XFc5bLTIHrMc
 tsYSmmJocyjNiBcZGnWDWEn3f8oKxxIkwLHtuj3ZH2fv1x83ehtak4V2jgOtfZBNu8yn97RunGXk7
 MGr8bnHZ2rldPyQNC4Uq7Jskr06ziRQQxOxmSt7vtuQmqkCLwPZumEnr1tOTeoZOMAL/dyG99+rfR
 RCdvGFEA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEt-00GyHm-98
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005Xe-Pf; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016r-47; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:08 +0200
Message-Id: <20210427202309.32077-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132323_351755_668DCC34 
X-CRM114-Status: GOOD (  16.90  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/12] net: macb: add SiFive support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Ethernet controller on the SiFive SoCs needs some special TX clock
setup. Port the relevant Linux v5.12 bits to enable it.

Tested on qemu-system-riscv64 -M sifive_u with dhcp.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/macb.c | 113 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 14a0b45322bf..9c4fdbd5bc4f 100644
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
 
@@ -666,12 +677,101 @@ static void macb_init_rx_buffer_size(struct macb_device *bp, size_t size)
 		   size, bp->rx_buffer_size);
 }
 
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
@@ -725,6 +825,8 @@ static int macb_probe(struct device_d *dev)
 		macb->phy_addr = -1;
 		pclk_name = "pclk";
 		hclk_name = "hclk";
+
+		config = device_get_match_data(dev);
 	} else {
 		dev_err(dev, "macb: no platform_data\n");
 		return -ENODEV;
@@ -767,6 +869,12 @@ static int macb_probe(struct device_d *dev)
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
@@ -808,12 +916,17 @@ static void macb_remove(struct device_d *dev)
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

