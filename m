Delivery-date: Mon, 07 Jun 2021 12:52:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCrW-00068f-JV
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 12:52:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqCrQ-0002D1-Go
	for lore@pengutronix.de; Mon, 07 Jun 2021 12:52:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ceH2C+Y4vpymNGtaXxcQ87bTJpMCQ0qcJY9yD4ofSKA=; b=NTxNfpJhLJzBwA
	/fYxiU77pvVH+CR7CXLSUKm5/W9Kx3Cj1pGlq2C36joSi2jCsCVO2hU+bPt1dMYZzUuuE3ugEcRdB
	ToNoGG7McMHvQ/tLHIZK0jW0qejW0aFPrUqIxOW4qxoYhHpJZZWKgt5dGsXriC2Sy3/EcKd+WAd21
	G+TCBdUs4blNsPtwBYPq/cG120m8C4DR5UtZhTYqYXzQSyU/gPl6hnxBX3UxlN7LPJcXXq9/t7SC4
	vA1Fthc3cFC0fdajEs58asjl5owlbEoZFoImkI9WI3O7RW2KnK/Xk5GYlRuCsPfoCe5mELCFw32vJ
	XmF2ahT9CmkVY3omZjAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqCpe-0033ye-9w; Mon, 07 Jun 2021 10:50:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqCjx-00322L-F8
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 10:44:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0000do-Um; Mon, 07 Jun 2021 12:44:14 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lqCju-0008M4-2x; Mon, 07 Jun 2021 12:44:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  7 Jun 2021 12:44:10 +0200
Message-Id: <20210607104411.23071-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607104411.23071-1-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_034417_936587_F6A5BF0A 
X-CRM114-Status: GOOD (  18.06  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/12] mci: sdhci: Get rid of many register ops
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Most SDHCI drivers use standard readl/writel to access registers.
Implement these in the common register accessor functions so that
drivers only to overwrite them when they want to do something different.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/arasan-sdhci.c       | 51 +-------------------------------
 drivers/mci/atmel-sdhci-common.c | 38 +-----------------------
 drivers/mci/dove-sdhci.c         | 51 +-------------------------------
 drivers/mci/imx-esdhc-common.c   | 21 +++++++------
 drivers/mci/imx-esdhc-pbl.c      | 20 ++++++-------
 drivers/mci/imx-esdhc.c          |  2 +-
 drivers/mci/imx-esdhc.h          |  1 -
 drivers/mci/sdhci.h              | 32 ++++++++++++++++----
 8 files changed, 50 insertions(+), 166 deletions(-)

diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
index 8a5e85109c..c19e1022c5 100644
--- a/drivers/mci/arasan-sdhci.c
+++ b/drivers/mci/arasan-sdhci.c
@@ -33,7 +33,6 @@
 struct arasan_sdhci_host {
 	struct mci_host		mci;
 	struct sdhci		sdhci;
-	void __iomem		*ioaddr;
 	unsigned int		quirks; /* Arasan deviations from spec */
 /* Controller does not have CD wired and will not function normally without */
 #define SDHCI_ARASAN_QUIRK_FORCE_CDTEST		BIT(0)
@@ -53,48 +52,6 @@ struct arasan_sdhci_host *sdhci_to_arasan(struct sdhci *sdhci)
 	return container_of(sdhci, struct arasan_sdhci_host, sdhci);
 }
 
-static void arasan_sdhci_writel(struct sdhci *sdhci, int reg, u32 val)
-{
-	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
-
-	writel(val, p->ioaddr + reg);
-}
-
-static void arasan_sdhci_writew(struct sdhci *sdhci, int reg, u16 val)
-{
-	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
-
-	writew(val, p->ioaddr + reg);
-}
-
-static void arasan_sdhci_writeb(struct sdhci *sdhci, int reg, u8 val)
-{
-	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
-
-	writeb(val, p->ioaddr + reg);
-}
-
-static u32 arasan_sdhci_readl(struct sdhci *sdhci, int reg)
-{
-	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
-
-	return readl(p->ioaddr + reg);
-}
-
-static u16 arasan_sdhci_readw(struct sdhci *sdhci, int reg)
-{
-	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
-
-	return readw(p->ioaddr + reg);
-}
-
-static u8 arasan_sdhci_readb(struct sdhci *sdhci, int reg)
-{
-	struct arasan_sdhci_host *p = sdhci_to_arasan(sdhci);
-
-	return readb(p->ioaddr + reg);
-}
-
 static int arasan_sdhci_card_present(struct mci_host *mci)
 {
 	struct arasan_sdhci_host *host = to_arasan_sdhci_host(mci);
@@ -283,7 +240,6 @@ static int arasan_sdhci_probe(struct device_d *dev)
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	arasan_sdhci->ioaddr = IOMEM(iores->start);
 
 	clk_ahb = clk_get(dev, "clk_ahb");
 	if (IS_ERR(clk_ahb)) {
@@ -315,12 +271,7 @@ static int arasan_sdhci_probe(struct device_d *dev)
 	if (of_property_read_bool(np, "no-1-8-v"))
 		arasan_sdhci->quirks |= SDHCI_ARASAN_QUIRK_NO_1_8_V;
 
-	arasan_sdhci->sdhci.read32 = arasan_sdhci_readl;
-	arasan_sdhci->sdhci.read16 = arasan_sdhci_readw;
-	arasan_sdhci->sdhci.read8 = arasan_sdhci_readb;
-	arasan_sdhci->sdhci.write32 = arasan_sdhci_writel;
-	arasan_sdhci->sdhci.write16 = arasan_sdhci_writew;
-	arasan_sdhci->sdhci.write8 = arasan_sdhci_writeb;
+	arasan_sdhci->sdhci.base = IOMEM(iores->start);
 	arasan_sdhci->sdhci.mci = mci;
 	mci->send_cmd = arasan_sdhci_send_cmd;
 	mci->set_ios = arasan_sdhci_set_ios;
diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-common.c
index 5a734d0d47..be8b6b38c3 100644
--- a/drivers/mci/atmel-sdhci-common.c
+++ b/drivers/mci/atmel-sdhci-common.c
@@ -377,43 +377,7 @@ int at91_sdhci_init(struct at91_sdhci *host, u32 maxclk,
 	return 0;
 }
 
-static u32 at91_sdhci_read32(struct sdhci *sdhci, int reg)
-{
-	return readl(to_priv(sdhci)->base + reg);
-}
-
-static void at91_sdhci_write32(struct sdhci *sdhci, int reg, u32 value)
-{
-	writel(value, to_priv(sdhci)->base + reg);
-}
-
-static u16 at91_sdhci_read16(struct sdhci *sdhci, int reg)
-{
-	return readw(to_priv(sdhci)->base + reg);
-}
-
-static void at91_sdhci_write16(struct sdhci *sdhci, int reg, u16 value)
-{
-	writew(value, to_priv(sdhci)->base + reg);
-}
-
-static u8 at91_sdhci_read8(struct sdhci *sdhci, int reg)
-{
-	return readb(to_priv(sdhci)->base + reg);
-}
-
-static void at91_sdhci_write8(struct sdhci *sdhci, int reg, u8 value)
-{
-	writeb(value, to_priv(sdhci)->base + reg);
-}
-
 void at91_sdhci_mmio_init(struct at91_sdhci *host, void __iomem *base)
 {
-	host->base = base;
-	host->sdhci.read8 = at91_sdhci_read8;
-	host->sdhci.read16 = at91_sdhci_read16;
-	host->sdhci.read32 = at91_sdhci_read32;
-	host->sdhci.write8 = at91_sdhci_write8;
-	host->sdhci.write16 = at91_sdhci_write16;
-	host->sdhci.write32 = at91_sdhci_write32;
+	host->sdhci.base = base;
 }
diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
index f4f8dabba1..e6ac769bde 100644
--- a/drivers/mci/dove-sdhci.c
+++ b/drivers/mci/dove-sdhci.c
@@ -20,55 +20,12 @@
 
 struct dove_sdhci {
 	struct mci_host mci;
-	void __iomem *base;
 	struct sdhci sdhci;
 };
 
 #define priv_from_mci_host(h)	\
 	container_of(h, struct dove_sdhci, mci);
 
-static void dove_sdhci_writel(struct sdhci *sdhci, int reg, u32 val)
-{
-	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
-
-	writel(val, p->base + reg);
-}
-
-static void dove_sdhci_writew(struct sdhci *sdhci, int reg, u16 val)
-{
-	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
-
-	writew(val, p->base + reg);
-}
-
-static void dove_sdhci_writeb(struct sdhci *sdhci, int reg, u8 val)
-{
-	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
-
-	writeb(val, p->base + reg);
-}
-
-static u32 dove_sdhci_readl(struct sdhci *sdhci, int reg)
-{
-	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
-
-	return readl(p->base + reg);
-}
-
-static u16 dove_sdhci_readw(struct sdhci *sdhci, int reg)
-{
-	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
-
-	return readw(p->base + reg);
-}
-
-static u8 dove_sdhci_readb(struct sdhci *sdhci, int reg)
-{
-	struct dove_sdhci *p = container_of(sdhci, struct dove_sdhci, sdhci);
-
-	return readb(p->base + reg);
-}
-
 static int dove_sdhci_wait_for_done(struct dove_sdhci *host, u16 mask)
 {
 	u16 status;
@@ -320,7 +277,7 @@ static int dove_sdhci_probe(struct device_d *dev)
 	int ret;
 
 	host = xzalloc(sizeof(*host));
-	host->base = dev_request_mem_region(dev, 0);
+	host->sdhci.base = dev_request_mem_region(dev, 0);
 	host->mci.max_req_size = 0x8000;
 	host->mci.hw_dev = dev;
 	host->mci.send_cmd = dove_sdhci_mci_send_cmd;
@@ -328,12 +285,6 @@ static int dove_sdhci_probe(struct device_d *dev)
 	host->mci.init = dove_sdhci_mci_init;
 	host->mci.f_max = 50000000;
 	host->mci.f_min = host->mci.f_max / 256;
-	host->sdhci.read32 = dove_sdhci_readl;
-	host->sdhci.read16 = dove_sdhci_readw;
-	host->sdhci.read8 = dove_sdhci_readb;
-	host->sdhci.write32 = dove_sdhci_writel;
-	host->sdhci.write16 = dove_sdhci_writew;
-	host->sdhci.write8 = dove_sdhci_writeb;
 
 	dove_sdhci_set_mci_caps(host);
 
diff --git a/drivers/mci/imx-esdhc-common.c b/drivers/mci/imx-esdhc-common.c
index c9d589468f..7980278801 100644
--- a/drivers/mci/imx-esdhc-common.c
+++ b/drivers/mci/imx-esdhc-common.c
@@ -16,42 +16,41 @@ struct fsl_esdhc_dma_transfer {
 	enum dma_data_direction dir;
 };
 
-static u32 esdhc_op_read32_le(struct sdhci *sdhci, int reg)
+static u32 esdhc_op_read32_be(struct sdhci *sdhci, int reg)
 {
 	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
 
-	return readl(host->regs + reg);
+	return in_be32(host->sdhci.base + reg);
 }
 
-static u32 esdhc_op_read32_be(struct sdhci *sdhci, int reg)
+static void esdhc_op_write32_be(struct sdhci *sdhci, int reg, u32 val)
 {
 	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
 
-	return in_be32(host->regs + reg);
+	out_be32(host->sdhci.base + reg, val);
 }
 
-static void esdhc_op_write32_le(struct sdhci *sdhci, int reg, u32 val)
+static u16 esdhc_op_read16_be(struct sdhci *sdhci, int reg)
 {
 	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
 
-	writel(val, host->regs + reg);
+	return in_be16(host->sdhci.base + reg);
 }
 
-static void esdhc_op_write32_be(struct sdhci *sdhci, int reg, u32 val)
+static void esdhc_op_write16_be(struct sdhci *sdhci, int reg, u16 val)
 {
 	struct fsl_esdhc_host *host = sdhci_to_esdhc(sdhci);
 
-	out_be32(host->regs + reg, val);
+	out_be16(host->sdhci.base + reg, val);
 }
 
 void esdhc_populate_sdhci(struct fsl_esdhc_host *host)
 {
 	if (host->socdata->flags & ESDHC_FLAG_BIGENDIAN) {
+		host->sdhci.read16 = esdhc_op_read16_be;
+		host->sdhci.write16 = esdhc_op_write16_be;
 		host->sdhci.read32 = esdhc_op_read32_be;
 		host->sdhci.write32 = esdhc_op_write32_be;
-	} else {
-		host->sdhci.read32 = esdhc_op_read32_le;
-		host->sdhci.write32 = esdhc_op_write32_le;
 	}
 }
 
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index c3a8b377e2..cf469eff44 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -200,14 +200,14 @@ static int imx8m_esdhc_init(struct fsl_esdhc_host *host,
 {
 	switch (instance) {
 	case 0:
-		host->regs = IOMEM(MX8M_USDHC1_BASE_ADDR);
+		host->sdhci.base = IOMEM(MX8M_USDHC1_BASE_ADDR);
 		break;
 	case 1:
-		host->regs = IOMEM(MX8M_USDHC2_BASE_ADDR);
+		host->sdhci.base = IOMEM(MX8M_USDHC2_BASE_ADDR);
 		break;
 	case 2:
 		/* Only exists on i.MX8MM, not on i.MX8MQ */
-		host->regs = IOMEM(MX8MM_USDHC3_BASE_ADDR);
+		host->sdhci.base = IOMEM(MX8MM_USDHC3_BASE_ADDR);
 		break;
 	default:
 		return -EINVAL;
@@ -237,16 +237,16 @@ int imx6_esdhc_start_image(int instance)
 
 	switch (instance) {
 	case 0:
-		host.regs = IOMEM(MX6_USDHC1_BASE_ADDR);
+		host.sdhci.base = IOMEM(MX6_USDHC1_BASE_ADDR);
 		break;
 	case 1:
-		host.regs = IOMEM(MX6_USDHC2_BASE_ADDR);
+		host.sdhci.base = IOMEM(MX6_USDHC2_BASE_ADDR);
 		break;
 	case 2:
-		host.regs = IOMEM(MX6_USDHC3_BASE_ADDR);
+		host.sdhci.base = IOMEM(MX6_USDHC3_BASE_ADDR);
 		break;
 	case 3:
-		host.regs = IOMEM(MX6_USDHC4_BASE_ADDR);
+		host.sdhci.base = IOMEM(MX6_USDHC4_BASE_ADDR);
 		break;
 	default:
 		return -EINVAL;
@@ -276,13 +276,13 @@ int imx7_esdhc_start_image(int instance)
 
 	switch (instance) {
 	case 0:
-		host.regs = IOMEM(MX7_USDHC1_BASE_ADDR);
+		host.sdhci.base = IOMEM(MX7_USDHC1_BASE_ADDR);
 		break;
 	case 1:
-		host.regs = IOMEM(MX7_USDHC2_BASE_ADDR);
+		host.sdhci.base = IOMEM(MX7_USDHC2_BASE_ADDR);
 		break;
 	case 2:
-		host.regs = IOMEM(MX7_USDHC3_BASE_ADDR);
+		host.sdhci.base = IOMEM(MX7_USDHC3_BASE_ADDR);
 		break;
 	default:
 		return -EINVAL;
diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 12e98ce26a..5a664ce4c3 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -264,7 +264,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 		ret = PTR_ERR(iores);
 		goto err_clk_disable;
 	}
-	host->regs = IOMEM(iores->start);
+	host->sdhci.base = IOMEM(iores->start);
 
 	esdhc_populate_sdhci(host);
 
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index 0de1e72e7b..f1685eac06 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -101,7 +101,6 @@ struct fsl_esdhc_host {
 	struct mci_host		mci;
 	struct clk		*clk;
 	struct device_d		*dev;
-	void __iomem		*regs;
 	const struct esdhc_soc_data *socdata;
 	struct sdhci	sdhci;
 };
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 2605ecb535..e07f4a3fb2 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -183,6 +183,8 @@ struct sdhci {
 	void (*write16)(struct sdhci *host, int reg, u16 val);
 	void (*write8)(struct sdhci *host, int reg, u8 val);
 
+	void __iomem *base;
+
 	int max_clk; /* Max possible freq (Hz) */
 	int clk_mul; /* Clock Muliplier value */
 
@@ -204,32 +206,50 @@ struct sdhci {
 
 static inline u32 sdhci_read32(struct sdhci *host, int reg)
 {
-	return host->read32(host, reg);
+	if (host->read32)
+		return host->read32(host, reg);
+	else
+		return readl(host->base + reg);
 }
 
 static inline u32 sdhci_read16(struct sdhci *host, int reg)
 {
-	return host->read16(host, reg);
+	if (host->read16)
+		return host->read16(host, reg);
+	else
+		return readw(host->base + reg);
 }
 
 static inline u32 sdhci_read8(struct sdhci *host, int reg)
 {
-	return host->read8(host, reg);
+	if (host->read8)
+		return host->read8(host, reg);
+	else
+		return readb(host->base + reg);
 }
 
 static inline void sdhci_write32(struct sdhci *host, int reg, u32 val)
 {
-	host->write32(host, reg, val);
+	if (host->write32)
+		host->write32(host, reg, val);
+	else
+		writel(val, host->base + reg);
 }
 
 static inline void sdhci_write16(struct sdhci *host, int reg, u32 val)
 {
-	host->write16(host, reg, val);
+	if (host->write16)
+		host->write16(host, reg, val);
+	else
+		writew(val, host->base + reg);
 }
 
 static inline void sdhci_write8(struct sdhci *host, int reg, u32 val)
 {
-	host->write8(host, reg, val);
+	if (host->write8)
+		host->write8(host, reg, val);
+	else
+		writeb(val, host->base + reg);
 }
 
 void sdhci_read_response(struct sdhci *host, struct mci_cmd *cmd);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

