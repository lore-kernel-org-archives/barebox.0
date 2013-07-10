Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uwt4S-0001lb-3E
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 12:00:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 13:59:52 +0200
Message-Id: <1373457601-7225-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
References: <1373457601-7225-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/11] dma: apbh: introduce private struct
To: barebox@lists.infradead.org

Currently the apbh driver uses a hardcoded base (MXS_APBH_BASE).
As a first step to clean this up add a private data struct
which is initialized during startup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/apbh_dma.c | 66 +++++++++++++++++++++++++++++---------------------
 1 file changed, 38 insertions(+), 28 deletions(-)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index c8b20fb..2354364 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -50,6 +50,12 @@
 static struct mxs_dma_chan mxs_dma_channels[MXS_MAX_DMA_CHANNELS];
 static bool apbh_is_old;
 
+struct apbh_dma {
+	void __iomem *regs;
+};
+
+static struct apbh_dma *apbh_dma;
+
 /*
  * Test is the DMA channel is valid channel
  */
@@ -91,7 +97,7 @@ static unsigned int mxs_dma_cmd_address(struct mxs_dma_desc *desc)
  */
 static int mxs_dma_read_semaphore(int channel)
 {
-	void __iomem *apbh_regs = (void *)MXS_APBH_BASE;
+	struct apbh_dma *apbh = apbh_dma;
 	uint32_t tmp;
 	int ret;
 
@@ -99,7 +105,7 @@ static int mxs_dma_read_semaphore(int channel)
 	if (ret)
 		return ret;
 
-	tmp = readl(apbh_regs + HW_APBHX_CHn_SEMA(channel));
+	tmp = readl(apbh->regs + HW_APBHX_CHn_SEMA(channel));
 
 	tmp &= BM_APBHX_CHn_SEMA_PHORE;
 	tmp >>= BP_APBHX_CHn_SEMA_PHORE;
@@ -118,7 +124,7 @@ static int mxs_dma_read_semaphore(int channel)
  */
 static int mxs_dma_enable(int channel)
 {
-	void __iomem *apbh_regs = (void *)MXS_APBH_BASE;
+	struct apbh_dma *apbh = apbh_dma;
 	unsigned int sem;
 	struct mxs_dma_chan *pchan;
 	struct mxs_dma_desc *pdesc;
@@ -151,21 +157,21 @@ static int mxs_dma_enable(int channel)
 			pdesc = list_entry(pdesc->node.next,
 					   struct mxs_dma_desc, node);
 			writel(mxs_dma_cmd_address(pdesc),
-				apbh_regs + HW_APBHX_CHn_NXTCMDAR(channel));
+				apbh->regs + HW_APBHX_CHn_NXTCMDAR(channel));
 		}
 		writel(pchan->pending_num,
-			apbh_regs + HW_APBHX_CHn_SEMA(channel));
+			apbh->regs + HW_APBHX_CHn_SEMA(channel));
 		pchan->active_num += pchan->pending_num;
 		pchan->pending_num = 0;
 	} else {
 		pchan->active_num += pchan->pending_num;
 		pchan->pending_num = 0;
 		writel(mxs_dma_cmd_address(pdesc),
-			apbh_regs + HW_APBHX_CHn_NXTCMDAR(channel));
+			apbh->regs + HW_APBHX_CHn_NXTCMDAR(channel));
 		writel(pchan->active_num,
-			apbh_regs + HW_APBHX_CHn_SEMA(channel));
+			apbh->regs + HW_APBHX_CHn_SEMA(channel));
 		channel_bit = channel + (apbh_is_old ? BP_APBH_CTRL0_CLKGATE_CHANNEL : 0);
-		writel(1 << channel_bit, apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_CLR);
+		writel(1 << channel_bit, apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_CLR);
 	}
 
 	pchan->flags |= MXS_DMA_FLAGS_BUSY;
@@ -189,7 +195,7 @@ static int mxs_dma_enable(int channel)
 static int mxs_dma_disable(int channel)
 {
 	struct mxs_dma_chan *pchan;
-	void __iomem *apbh_regs = (void *)MXS_APBH_BASE;
+	struct apbh_dma *apbh = apbh_dma;
 	int channel_bit, ret;
 
 	ret = mxs_dma_validate_chan(channel);
@@ -202,7 +208,7 @@ static int mxs_dma_disable(int channel)
 		return -EINVAL;
 
 	channel_bit = channel + (apbh_is_old ? BP_APBH_CTRL0_CLKGATE_CHANNEL : 0);
-	writel(1 << channel_bit, apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
+	writel(1 << channel_bit, apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 
 	pchan->flags &= ~MXS_DMA_FLAGS_BUSY;
 	pchan->active_num = 0;
@@ -217,7 +223,7 @@ static int mxs_dma_disable(int channel)
  */
 static int mxs_dma_reset(int channel)
 {
-	void __iomem *apbh_regs = (void *)MXS_APBH_BASE;
+	struct apbh_dma *apbh = apbh_dma;
 	int ret;
 
 	ret = mxs_dma_validate_chan(channel);
@@ -226,10 +232,10 @@ static int mxs_dma_reset(int channel)
 
 	if (apbh_is_old)
 		writel(1 << (channel + BP_APBH_CTRL0_RESET_CHANNEL),
-			apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
+			apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 	else
 		writel(1 << (channel + BP_APBHX_CHANNEL_CTRL_RESET_CHANNEL),
-			apbh_regs + HW_APBHX_CHANNEL_CTRL + STMP_OFFSET_REG_SET);
+			apbh->regs + HW_APBHX_CHANNEL_CTRL + STMP_OFFSET_REG_SET);
 
 	return 0;
 }
@@ -241,7 +247,7 @@ static int mxs_dma_reset(int channel)
  */
 static int mxs_dma_enable_irq(int channel, int enable)
 {
-	void __iomem *apbh_regs = (void *)MXS_APBH_BASE;
+	struct apbh_dma *apbh = apbh_dma;
 	int ret;
 
 	ret = mxs_dma_validate_chan(channel);
@@ -250,10 +256,10 @@ static int mxs_dma_enable_irq(int channel, int enable)
 
 	if (enable)
 		writel(1 << (channel + BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN),
-			apbh_regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_SET);
+			apbh->regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_SET);
 	else
 		writel(1 << (channel + BP_APBHX_CTRL1_CH_CMDCMPLT_IRQ_EN),
-			apbh_regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_CLR);
+			apbh->regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_CLR);
 
 	return 0;
 }
@@ -266,15 +272,15 @@ static int mxs_dma_enable_irq(int channel, int enable)
  */
 static int mxs_dma_ack_irq(int channel)
 {
-	void __iomem *apbh_regs = (void *)MXS_APBH_BASE;
+	struct apbh_dma *apbh = apbh_dma;
 	int ret;
 
 	ret = mxs_dma_validate_chan(channel);
 	if (ret)
 		return ret;
 
-	writel(1 << channel, apbh_regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_CLR);
-	writel(1 << channel, apbh_regs + HW_APBHX_CTRL2 + STMP_OFFSET_REG_CLR);
+	writel(1 << channel, apbh->regs + HW_APBHX_CTRL1 + STMP_OFFSET_REG_CLR);
+	writel(1 << channel, apbh->regs + HW_APBHX_CTRL2 + STMP_OFFSET_REG_CLR);
 
 	return 0;
 }
@@ -496,7 +502,7 @@ static int mxs_dma_finish(int channel, struct list_head *head)
  */
 static int mxs_dma_wait_complete(uint32_t timeout, unsigned int chan)
 {
-	void __iomem *apbh_regs = (void *)MXS_APBH_BASE;
+	struct apbh_dma *apbh = apbh_dma;
 	int ret;
 
 	ret = mxs_dma_validate_chan(chan);
@@ -504,7 +510,7 @@ static int mxs_dma_wait_complete(uint32_t timeout, unsigned int chan)
 		return ret;
 
 	while (--timeout) {
-		if (readl(apbh_regs + HW_APBHX_CTRL1) & (1 << chan))
+		if (readl(apbh->regs + HW_APBHX_CTRL1) & (1 << chan))
 			break;
 		udelay(1);
 	}
@@ -550,29 +556,33 @@ int mxs_dma_go(int chan)
  */
 int mxs_dma_init(void)
 {
-	void __iomem *apbh_regs = (void *)MXS_APBH_BASE;
+	struct apbh_dma *apbh;
 	struct mxs_dma_chan *pchan;
 	int ret, channel;
-	u32 val, reg;
+	u32 val;
+	void __iomem *reg;
+
+	apbh = xzalloc(sizeof(*apbh));
+	apbh->regs = (void __iomem *)MXS_APBH_BASE;
 
-	ret = stmp_reset_block(apbh_regs, 0);
+	ret = stmp_reset_block(apbh->regs, 0);
 	if (ret)
 		return ret;
 
 	/* HACK: Get CPUID and determine APBH version */
 	val = readl(0x8001c310) >> 16;
 	if (val == 0x2800)
-		reg = MXS_APBH_BASE + 0x0800;
+		reg = apbh->regs + 0x0800;
 	else
-		reg = MXS_APBH_BASE + 0x03f0;
+		reg = apbh->regs + 0x03f0;
 
 	apbh_is_old = (readl((void *)reg) >> 24) < 3;
 
 	writel(BM_APBH_CTRL0_APB_BURST8_EN,
-		apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
+		apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 
 	writel(BM_APBH_CTRL0_APB_BURST_EN,
-		apbh_regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
+		apbh->regs + HW_APBHX_CTRL0 + STMP_OFFSET_REG_SET);
 
 	for (channel = 0; channel < MXS_MAX_DMA_CHANNELS; channel++) {
 		pchan = mxs_dma_channels + channel;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
