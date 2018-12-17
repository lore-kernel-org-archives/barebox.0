Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKT-0002h1-Co
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:14 +0000
Received: by mail-pg1-x543.google.com with SMTP id s198so5537403pgs.2
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:33 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:00 -0800
Message-Id: <20181217051925.17582-41-andrew.smirnov@gmail.com>
In-Reply-To: <20181217051925.17582-1-andrew.smirnov@gmail.com>
References: <20181217051925.17582-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 40/65] PCI: imx6: Use generic DesignWare accessors
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 2a6a85d5368e55e506abd7ca79f08131028bb0bc

  The dw_pcie_readl_rc() and dw_pcie_writel_rc() interfaces already add in
  pp->dbi_base, so use those instead of doing it ourselves in the imx6
  driver.  No functional change intended.

  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 96 +++++++++++++-----------------------------
 1 file changed, 30 insertions(+), 66 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 4692dab5b..f3e9ea31b 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -96,13 +96,13 @@ struct imx6_pcie {
 
 static int pcie_phy_poll_ack(struct imx6_pcie *imx6_pcie, int exp_val)
 {
-	void __iomem *dbi_base = imx6_pcie->pp.dbi_base;
+	struct pcie_port *pp = &imx6_pcie->pp;
 	u32 val;
 	u32 max_iterations = 10;
 	u32 wait_counter = 0;
 
 	do {
-		val = readl(dbi_base + PCIE_PHY_STAT);
+		val = dw_pcie_readl_rc(pp, PCIE_PHY_STAT);
 		val = (val >> PCIE_PHY_STAT_ACK_LOC) & 0x1;
 		wait_counter++;
 
@@ -117,22 +117,21 @@ static int pcie_phy_poll_ack(struct imx6_pcie *imx6_pcie, int exp_val)
 
 static int pcie_phy_wait_ack(struct imx6_pcie *imx6_pcie, int addr)
 {
-	void __iomem *dbi_base = imx6_pcie->pp.dbi_base;
+	struct pcie_port *pp = &imx6_pcie->pp;
 	u32 val;
 	int ret;
 
 	val = addr << PCIE_PHY_CTRL_DATA_LOC;
-	writel(val, dbi_base + PCIE_PHY_CTRL);
 
 	val |= (0x1 << PCIE_PHY_CTRL_CAP_ADR_LOC);
-	writel(val, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, val);
 
 	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
 		return ret;
 
 	val = addr << PCIE_PHY_CTRL_DATA_LOC;
-	writel(val, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, val);
 
 	return pcie_phy_poll_ack(imx6_pcie, 0);
 }
@@ -140,7 +139,7 @@ static int pcie_phy_wait_ack(struct imx6_pcie *imx6_pcie, int addr)
 /* Read from the 16-bit PCIe PHY control registers (not memory-mapped) */
 static int pcie_phy_read(struct imx6_pcie *imx6_pcie, int addr , int *data)
 {
-	void __iomem *dbi_base = imx6_pcie->pp.dbi_base;
+	struct pcie_port *pp = &imx6_pcie->pp;
 	u32 val, phy_ctl;
 	int ret;
 
@@ -150,24 +149,24 @@ static int pcie_phy_read(struct imx6_pcie *imx6_pcie, int addr , int *data)
 
 	/* assert Read signal */
 	phy_ctl = 0x1 << PCIE_PHY_CTRL_RD_LOC;
-	writel(phy_ctl, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, phy_ctl);
 
 	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
 		return ret;
 
-	val = readl(dbi_base + PCIE_PHY_STAT);
+	val = dw_pcie_readl_rc(pp, PCIE_PHY_STAT);
 	*data = val & 0xffff;
 
 	/* deassert Read signal */
-	writel(0x00, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, 0x00);
 
 	return pcie_phy_poll_ack(imx6_pcie, 0);
 }
 
 static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 {
-	void __iomem *dbi_base = imx6_pcie->pp.dbi_base;
+	struct pcie_port *pp = &imx6_pcie->pp;
 	u32 var;
 	int ret;
 
@@ -178,11 +177,11 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 		return ret;
 
 	var = data << PCIE_PHY_CTRL_DATA_LOC;
-	writel(var, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
 
 	/* capture data */
 	var |= (0x1 << PCIE_PHY_CTRL_CAP_DAT_LOC);
-	writel(var, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
 
 	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
@@ -190,7 +189,7 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 
 	/* deassert cap data */
 	var = data << PCIE_PHY_CTRL_DATA_LOC;
-	writel(var, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
 
 	/* wait for ack de-assertion */
 	ret = pcie_phy_poll_ack(imx6_pcie, 0);
@@ -199,7 +198,7 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 
 	/* assert wr signal */
 	var = 0x1 << PCIE_PHY_CTRL_WR_LOC;
-	writel(var, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
 
 	/* wait for ack */
 	ret = pcie_phy_poll_ack(imx6_pcie, 1);
@@ -208,14 +207,14 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 
 	/* deassert wr signal */
 	var = data << PCIE_PHY_CTRL_DATA_LOC;
-	writel(var, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
 
 	/* wait for ack de-assertion */
 	ret = pcie_phy_poll_ack(imx6_pcie, 0);
 	if (ret)
 		return ret;
 
-	writel(0x0, dbi_base + PCIE_PHY_CTRL);
+	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, 0x0);
 
 	return 0;
 }
@@ -265,12 +264,12 @@ static int imx6_pcie_assert_core_reset(struct imx6_pcie *imx6_pcie)
 
 		if ((gpr1 & IMX6Q_GPR1_PCIE_REF_CLK_EN) &&
 		    (gpr12 & IMX6Q_GPR12_PCIE_CTL_2)) {
-			val = readl(pp->dbi_base + PCIE_PL_PFLR);
+			val = dw_pcie_readl_rc(pp, PCIE_PL_PFLR);
 			val &= ~PCIE_PL_PFLR_LINK_STATE_MASK;
 			val |= PCIE_PL_PFLR_FORCE_LINK;
 
 			data_abort_mask();
-			writel(val, pp->dbi_base + PCIE_PL_PFLR);
+			dw_pcie_writel_rc(pp, PCIE_PL_PFLR, val);
 			data_abort_unmask();
 
 			gpr12 &= ~IMX6Q_GPR12_PCIE_CTL_2;
@@ -408,7 +407,7 @@ static int imx6_pcie_wait_for_speed_change(struct imx6_pcie *imx6_pcie)
 	uint64_t start = get_time_ns();
 
 	while (!is_timeout(start, SECOND)) {
-		tmp = readl(pp->dbi_base + PCIE_LINK_WIDTH_SPEED_CONTROL);
+		tmp = dw_pcie_readl_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL);
 		/* Test if the speed change finished. */
 		if (!(tmp & PORT_LOGIC_SPEED_CHANGE))
 			return 0;
@@ -432,10 +431,10 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 	 * started in Gen2 mode, there is a possibility the devices on the
 	 * bus will not be detected at all.  This happens with PCIe switches.
 	 */
-	tmp = readl(pp->dbi_base + PCIE_RC_LCR);
+	tmp = dw_pcie_readl_rc(pp, PCIE_RC_LCR);
 	tmp &= ~PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK;
 	tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN1;
-	writel(tmp, pp->dbi_base + PCIE_RC_LCR);
+	dw_pcie_writel_rc(pp, PCIE_RC_LCR, tmp);
 
 	/* Start LTSSM. */
 	gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
@@ -449,18 +448,18 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 	}
 
 	/* Allow Gen2 mode after the link is up. */
-	tmp = readl(pp->dbi_base + PCIE_RC_LCR);
+	tmp = dw_pcie_readl_rc(pp, PCIE_RC_LCR);
 	tmp &= ~PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK;
 	tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2;
-	writel(tmp, pp->dbi_base + PCIE_RC_LCR);
+	dw_pcie_writel_rc(pp, PCIE_RC_LCR, tmp);
 
 	/*
 	 * Start Directed Speed Change so the best possible speed both link
 	 * partners support can be negotiated.
 	 */
-	tmp = readl(pp->dbi_base + PCIE_LINK_WIDTH_SPEED_CONTROL);
+	tmp = dw_pcie_readl_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL);
 	tmp |= PORT_LOGIC_SPEED_CHANGE;
-	writel(tmp, pp->dbi_base + PCIE_LINK_WIDTH_SPEED_CONTROL);
+	dw_pcie_writel_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, tmp);
 
 	ret = imx6_pcie_wait_for_speed_change(imx6_pcie);
 	if (ret) {
@@ -475,15 +474,15 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 		goto err_reset_phy;
 	}
 
-	tmp = readl(pp->dbi_base + PCIE_RC_LCSR);
+	tmp = dw_pcie_readl_rc(pp, PCIE_RC_LCSR);
 	dev_dbg(dev, "Link up, Gen=%i\n", (tmp >> 16) & 0xf);
 
 	return 0;
 
 err_reset_phy:
        dev_dbg(dev, "PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\n",
-               readl(pp->dbi_base + PCIE_PHY_DEBUG_R0),
-               readl(pp->dbi_base + PCIE_PHY_DEBUG_R1));
+               dw_pcie_readl_rc(pp, PCIE_PHY_DEBUG_R0),
+               dw_pcie_readl_rc(pp, PCIE_PHY_DEBUG_R1));
        imx6_pcie_reset_phy(imx6_pcie);
 
        return ret;
@@ -502,43 +501,8 @@ static void imx6_pcie_host_init(struct pcie_port *pp)
 
 static int imx6_pcie_link_up(struct pcie_port *pp)
 {
-	struct device_d *dev = pp->dev;
-	u32 rc;
-	int count = 5;
-
-	/*
-	 * Test if the PHY reports that the link is up and also that the LTSSM
-	 * training finished. There are three possible states of the link when
-	 * this code is called:
-	 * 1) The link is DOWN (unlikely)
-	 *     The link didn't come up yet for some reason. This usually means
-	 *     we have a real problem somewhere. Reset the PHY and exit. This
-	 *     state calls for inspection of the DEBUG registers.
-	 * 2) The link is UP, but still in LTSSM training
-	 *     Wait for the training to finish, which should take a very short
-	 *     time. If the training does not finish, we have a problem and we
-	 *     need to inspect the DEBUG registers. If the training does finish,
-	 *     the link is up and operating correctly.
-	 * 3) The link is UP and no longer in LTSSM training
-	 *     The link is up and operating correctly.
-	 */
-	while (1) {
-		rc = readl(pp->dbi_base + PCIE_PHY_DEBUG_R1);
-		if (!(rc & PCIE_PHY_DEBUG_R1_XMLH_LINK_UP))
-			break;
-		if (!(rc & PCIE_PHY_DEBUG_R1_XMLH_LINK_IN_TRAINING))
-			return 1;
-		if (!count--)
-			break;
-		dev_dbg(dev, "Link is up, but still in training\n");
-		/*
-		 * Wait a little bit, then re-check if the link finished
-		 * the training.
-		 */
-		udelay(1000);
-	}
-
-	return 0;
+	return dw_pcie_readl_rc(pp, PCIE_PHY_DEBUG_R1) &
+		PCIE_PHY_DEBUG_R1_XMLH_LINK_UP;
 }
 
 static struct pcie_host_ops imx6_pcie_host_ops = {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
