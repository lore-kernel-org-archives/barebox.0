Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKo-0003Zm-GS
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:57 +0000
Received: by mail-pg1-x542.google.com with SMTP id c25so4024263pgb.4
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:08 -0800
Message-Id: <20181217051925.17582-49-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 48/65] PCI: dwc: all: Split struct pcie_port into host-only
 and core structures
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 442ec4c04d1235f8c664a74004dae54a7a574d18

  Keep only the host-specific members in struct pcie_port and move the common
  members (i.e common to both host and endpoint) to struct dw_pcie.  This is
  in preparation for adding endpoint mode support to designware driver.

  While at that also fix checkpatch warnings.

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  CC: Jingoo Han <jingoohan1@gmail.com>
  CC: Richard Zhu <hongxing.zhu@nxp.com>
  CC: Lucas Stach <l.stach@pengutronix.de>
  CC: Murali Karicheri <m-karicheri2@ti.com>
  CC: Minghuan Lian <minghuan.Lian@freescale.com>
  CC: Mingkai Hu <mingkai.hu@freescale.com>
  CC: Roy Zang <tie-fei.zang@freescale.com>
  CC: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
  CC: Niklas Cassel <niklas.cassel@axis.com>
  CC: Jesper Nilsson <jesper.nilsson@axis.com>
  CC: Joao Pinto <Joao.Pinto@synopsys.com>
  CC: Zhou Wang <wangzhou1@hisilicon.com>
  CC: Gabriele Paoloni <gabriele.paoloni@huawei.com>
  CC: Stanimir Varbanov <svarbanov@mm-sol.com>
  CC: Pratyush Anand <pratyush.anand@gmail.com>

For convenience sake, commit c0464062bfea9cd2ef6643d93429eafe8f6c2a4a

  PCI: dwc: Fix crashes seen due to missing assignments

  Fix the following crash, seen in dwc/pci-imx6.

    Unable to handle kernel NULL pointer dereference at virtual address 00000070
    pgd = c0004000
    [00000070] *pgd=00000000
    Internal error: Oops: 805 [#1] SMP ARM
    Modules linked in:
    CPU: 0 PID: 1 Comm: swapper/0 Not tainted 4.10.0-09686-g9e31489 #1
    Hardware name: Freescale i.MX6 Quad/DualLite (Device Tree)
    task: cb850000 task.stack: cb84e000
    PC is at imx6_pcie_probe+0x2f4/0x414
    ...

  While at it, fix the same problem in various drivers instead of waiting for
  individual crash reports.

  The change in the imx6 driver was tested with qemu. The changes in other
  drivers are based on code inspection and have been compile tested only.

  Fixes: 442ec4c04d12 ("PCI: dwc: all: Split struct pcie_port into host-only and core structures")
  Signed-off-by: Guenter Roeck <linux@roeck-us.net>
  Signed-off-by: Vivek Gautam <vivek.gautam@codeaurora.org>  # designware-plat
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Kishon Vijay Abraham I <kishon@ti.com>

was squashed into this one as well.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c        | 105 +++++++++---------
 drivers/pci/pcie-designware.c | 197 ++++++++++++++++++----------------
 drivers/pci/pcie-designware.h |  57 ++++++----
 3 files changed, 196 insertions(+), 163 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 023e6f07f..67ef47db9 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -35,7 +35,7 @@
 
 #include "pcie-designware.h"
 
-#define to_imx6_pcie(x)	container_of(x, struct imx6_pcie, pp)
+#define to_imx6_pcie(x)	((x)->dev->priv)
 
 enum imx6_pcie_variants {
 	IMX6Q,
@@ -43,7 +43,7 @@ enum imx6_pcie_variants {
 };
 
 struct imx6_pcie {
-	struct pcie_port	pp; /* pp.dbi_base is DT 0th resource */
+	struct dw_pcie		*pci;
 	int			reset_gpio;
 	struct clk		*pcie_bus;
 	struct clk		*pcie_phy;
@@ -97,13 +97,13 @@ struct imx6_pcie {
 
 static int pcie_phy_poll_ack(struct imx6_pcie *imx6_pcie, int exp_val)
 {
-	struct pcie_port *pp = &imx6_pcie->pp;
+	struct dw_pcie *pci = imx6_pcie->pci;
 	u32 val;
 	u32 max_iterations = 10;
 	u32 wait_counter = 0;
 
 	do {
-		val = dw_pcie_readl_rc(pp, PCIE_PHY_STAT);
+		val = dw_pcie_readl_dbi(pci, PCIE_PHY_STAT);
 		val = (val >> PCIE_PHY_STAT_ACK_LOC) & 0x1;
 		wait_counter++;
 
@@ -118,21 +118,21 @@ static int pcie_phy_poll_ack(struct imx6_pcie *imx6_pcie, int exp_val)
 
 static int pcie_phy_wait_ack(struct imx6_pcie *imx6_pcie, int addr)
 {
-	struct pcie_port *pp = &imx6_pcie->pp;
+	struct dw_pcie *pci = imx6_pcie->pci;
 	u32 val;
 	int ret;
 
 	val = addr << PCIE_PHY_CTRL_DATA_LOC;
 
 	val |= (0x1 << PCIE_PHY_CTRL_CAP_ADR_LOC);
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, val);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, val);
 
 	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
 		return ret;
 
 	val = addr << PCIE_PHY_CTRL_DATA_LOC;
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, val);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, val);
 
 	return pcie_phy_poll_ack(imx6_pcie, 0);
 }
@@ -140,7 +140,7 @@ static int pcie_phy_wait_ack(struct imx6_pcie *imx6_pcie, int addr)
 /* Read from the 16-bit PCIe PHY control registers (not memory-mapped) */
 static int pcie_phy_read(struct imx6_pcie *imx6_pcie, int addr , int *data)
 {
-	struct pcie_port *pp = &imx6_pcie->pp;
+	struct dw_pcie *pci = imx6_pcie->pci;
 	u32 val, phy_ctl;
 	int ret;
 
@@ -150,24 +150,24 @@ static int pcie_phy_read(struct imx6_pcie *imx6_pcie, int addr , int *data)
 
 	/* assert Read signal */
 	phy_ctl = 0x1 << PCIE_PHY_CTRL_RD_LOC;
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, phy_ctl);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, phy_ctl);
 
 	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
 		return ret;
 
-	val = dw_pcie_readl_rc(pp, PCIE_PHY_STAT);
+	val = dw_pcie_readl_dbi(pci, PCIE_PHY_STAT);
 	*data = val & 0xffff;
 
 	/* deassert Read signal */
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, 0x00);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, 0x00);
 
 	return pcie_phy_poll_ack(imx6_pcie, 0);
 }
 
 static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 {
-	struct pcie_port *pp = &imx6_pcie->pp;
+	struct dw_pcie *pci = imx6_pcie->pci;
 	u32 var;
 	int ret;
 
@@ -178,11 +178,11 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 		return ret;
 
 	var = data << PCIE_PHY_CTRL_DATA_LOC;
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);
 
 	/* capture data */
 	var |= (0x1 << PCIE_PHY_CTRL_CAP_DAT_LOC);
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);
 
 	ret = pcie_phy_poll_ack(imx6_pcie, 1);
 	if (ret)
@@ -190,7 +190,7 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 
 	/* deassert cap data */
 	var = data << PCIE_PHY_CTRL_DATA_LOC;
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);
 
 	/* wait for ack de-assertion */
 	ret = pcie_phy_poll_ack(imx6_pcie, 0);
@@ -199,7 +199,7 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 
 	/* assert wr signal */
 	var = 0x1 << PCIE_PHY_CTRL_WR_LOC;
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);
 
 	/* wait for ack */
 	ret = pcie_phy_poll_ack(imx6_pcie, 1);
@@ -208,14 +208,14 @@ static int pcie_phy_write(struct imx6_pcie *imx6_pcie, int addr, int data)
 
 	/* deassert wr signal */
 	var = data << PCIE_PHY_CTRL_DATA_LOC;
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, var);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, var);
 
 	/* wait for ack de-assertion */
 	ret = pcie_phy_poll_ack(imx6_pcie, 0);
 	if (ret)
 		return ret;
 
-	dw_pcie_writel_rc(pp, PCIE_PHY_CTRL, 0x0);
+	dw_pcie_writel_dbi(pci, PCIE_PHY_CTRL, 0x0);
 
 	return 0;
 }
@@ -282,7 +282,7 @@ static int imx6_pcie_enable_ref_clk(struct imx6_pcie *imx6_pcie)
 
 static void imx6_pcie_deassert_core_reset(struct imx6_pcie *imx6_pcie)
 {
-	struct device_d *dev = imx6_pcie->pp.dev;
+	struct device_d *dev = imx6_pcie->pci->dev;
 	int ret;
 	u32 gpr1;
 
@@ -386,18 +386,18 @@ static void imx6_pcie_init_phy(struct imx6_pcie *imx6_pcie)
 
 static int imx6_pcie_wait_for_link(struct imx6_pcie *imx6_pcie)
 {
-	return dw_pcie_wait_for_link(&imx6_pcie->pp);
+	return dw_pcie_wait_for_link(imx6_pcie->pci);
 }
 
 static int imx6_pcie_wait_for_speed_change(struct imx6_pcie *imx6_pcie)
 {
-	struct pcie_port *pp = &imx6_pcie->pp;
-	struct device_d *dev = pp->dev;
+	struct dw_pcie *pci = imx6_pcie->pci;
+	struct device_d *dev = pci->dev;
 	uint32_t tmp;
 	uint64_t start = get_time_ns();
 
 	while (!is_timeout(start, SECOND)) {
-		tmp = dw_pcie_readl_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL);
+		tmp = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
 		/* Test if the speed change finished. */
 		if (!(tmp & PORT_LOGIC_SPEED_CHANGE))
 			return 0;
@@ -410,8 +410,8 @@ static int imx6_pcie_wait_for_speed_change(struct imx6_pcie *imx6_pcie)
 
 static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 {
-	struct pcie_port *pp = &imx6_pcie->pp;
-	struct device_d *dev = pp->dev;
+	struct dw_pcie *pci = imx6_pcie->pci;
+	struct device_d *dev = pci->dev;
 	uint32_t tmp;
 	int ret;
 	u32 gpr12;
@@ -421,10 +421,10 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 	 * started in Gen2 mode, there is a possibility the devices on the
 	 * bus will not be detected at all.  This happens with PCIe switches.
 	 */
-	tmp = dw_pcie_readl_rc(pp, PCIE_RC_LCR);
+	tmp = dw_pcie_readl_dbi(pci, PCIE_RC_LCR);
 	tmp &= ~PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK;
 	tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN1;
-	dw_pcie_writel_rc(pp, PCIE_RC_LCR, tmp);
+	dw_pcie_writel_dbi(pci, PCIE_RC_LCR, tmp);
 
 	/* Start LTSSM. */
 	gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
@@ -438,10 +438,10 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 
 	if (imx6_pcie->link_gen == 2) {
 		/* Allow Gen2 mode after the link is up. */
-		tmp = dw_pcie_readl_rc(pp, PCIE_RC_LCR);
+		tmp = dw_pcie_readl_dbi(pci, PCIE_RC_LCR);
 		tmp &= ~PCIE_RC_LCR_MAX_LINK_SPEEDS_MASK;
 		tmp |= PCIE_RC_LCR_MAX_LINK_SPEEDS_GEN2;
-		dw_pcie_writel_rc(pp, PCIE_RC_LCR, tmp);
+		dw_pcie_writel_dbi(pci, PCIE_RC_LCR, tmp);
 	} else {
 		dev_info(dev, "Link: Gen2 disabled\n");
 	}
@@ -450,9 +450,9 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 	 * Start Directed Speed Change so the best possible speed both link
 	 * partners support can be negotiated.
 	 */
-	tmp = dw_pcie_readl_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL);
+	tmp = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
 	tmp |= PORT_LOGIC_SPEED_CHANGE;
-	dw_pcie_writel_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, tmp);
+	dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, tmp);
 
 	ret = imx6_pcie_wait_for_speed_change(imx6_pcie);
 	if (ret) {
@@ -467,14 +467,14 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 		goto err_reset_phy;
 	}
 
-	tmp = dw_pcie_readl_rc(pp, PCIE_RC_LCSR);
+	tmp = dw_pcie_readl_dbi(pci, PCIE_RC_LCSR);
 	dev_info(dev, "Link up, Gen%i\n", (tmp >> 16) & 0xf);
 	return 0;
 
 err_reset_phy:
        dev_dbg(dev, "PHY DEBUG_R0=0x%08x DEBUG_R1=0x%08x\n",
-               dw_pcie_readl_rc(pp, PCIE_PHY_DEBUG_R0),
-               dw_pcie_readl_rc(pp, PCIE_PHY_DEBUG_R1));
+               dw_pcie_readl_dbi(pci, PCIE_PHY_DEBUG_R0),
+               dw_pcie_readl_dbi(pci, PCIE_PHY_DEBUG_R1));
        imx6_pcie_reset_phy(imx6_pcie);
 
        return ret;
@@ -482,7 +482,8 @@ err_reset_phy:
 
 static void imx6_pcie_host_init(struct pcie_port *pp)
 {
-	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pp);
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct imx6_pcie *imx6_pcie = to_imx6_pcie(pci);
 
 	imx6_pcie_assert_core_reset(imx6_pcie);
 	imx6_pcie_init_phy(imx6_pcie);
@@ -491,21 +492,25 @@ static void imx6_pcie_host_init(struct pcie_port *pp)
 	imx6_pcie_establish_link(imx6_pcie);
 }
 
-static int imx6_pcie_link_up(struct pcie_port *pp)
+static int imx6_pcie_link_up(struct dw_pcie *pci)
 {
-	return dw_pcie_readl_rc(pp, PCIE_PHY_DEBUG_R1) &
+	return dw_pcie_readl_dbi(pci, PCIE_PHY_DEBUG_R1) &
 		PCIE_PHY_DEBUG_R1_XMLH_LINK_UP;
 }
 
-static struct pcie_host_ops imx6_pcie_host_ops = {
-	.link_up = imx6_pcie_link_up,
+static const struct dw_pcie_ops dw_pcie_ops = {
+       .link_up = imx6_pcie_link_up,
+};
+
+static struct dw_pcie_host_ops imx6_pcie_host_ops = {
 	.host_init = imx6_pcie_host_init,
 };
 
 static int __init imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
 				     struct device_d *dev)
 {
-	struct pcie_port *pp = &imx6_pcie->pp;
+	struct dw_pcie *pci = imx6_pcie->pci;
+	struct pcie_port *pp = &pci->pp;
 	int ret;
 
 	pp->root_bus_nr = -1;
@@ -523,23 +528,25 @@ static int __init imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
 static int __init imx6_pcie_probe(struct device_d *dev)
 {
 	struct resource *iores;
+	struct dw_pcie *pci;
 	struct imx6_pcie *imx6_pcie;
-	struct pcie_port *pp;
 	struct device_node *np = dev->device_node;
 	int ret;
 
 	imx6_pcie = xzalloc(sizeof(*imx6_pcie));
 
-	pp = &imx6_pcie->pp;
-	pp->dev = dev;
+	pci = xzalloc(sizeof(*pci));
+	pci->dev = dev;
+	pci->ops = &dw_pcie_ops;
 
+	imx6_pcie->pci = pci;
 	imx6_pcie->variant =
 		(enum imx6_pcie_variants)of_device_get_match_data(dev);
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	pp->dbi_base = IOMEM(iores->start);
+	pci->dbi_base = IOMEM(iores->start);
 
 	/* Fetch GPIOs */
 	imx6_pcie->reset_gpio = of_get_named_gpio(np, "reset-gpio", 0);
@@ -601,12 +608,12 @@ static int __init imx6_pcie_probe(struct device_d *dev)
        if (ret)
                imx6_pcie->link_gen = 1;
 
+       	dev->priv = imx6_pcie;
+
 	ret = imx6_add_pcie_port(imx6_pcie, dev);
 	if (ret < 0)
 		return ret;
 
-	dev->priv = imx6_pcie;
-
 	return 0;
 }
 
@@ -625,15 +632,15 @@ static void imx6_pcie_remove(struct device_d *dev)
 		 * disabling LTSSM, which is a prerequisite for core
 		 * configuration.
 		 */
-		struct pcie_port *pp = &imx6_pcie->pp;
+		struct dw_pcie *pci = imx6_pcie->pci;
 		u32 gpr12, val;
 
-		val = dw_pcie_readl_rc(pp, PCIE_PL_PFLR);
+		val = dw_pcie_readl_dbi(pci, PCIE_PL_PFLR);
 		val &= ~PCIE_PL_PFLR_LINK_STATE_MASK;
 		val |= PCIE_PL_PFLR_FORCE_LINK;
 
 		data_abort_mask();
-		dw_pcie_writel_rc(pp, PCIE_PL_PFLR, val);
+		dw_pcie_writel_dbi(pci, PCIE_PL_PFLR, val);
 		data_abort_unmask();
 
 		gpr12 = readl(imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 7e65b56b9..f44046245 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -70,35 +70,35 @@ int dw_pcie_write(void __iomem *addr, int size, u32 val)
 	return PCIBIOS_SUCCESSFUL;
 }
 
-u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg)
+u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg)
 {
-	if (pp->ops->readl_rc)
-		return pp->ops->readl_rc(pp, reg);
+	if (pci->ops->readl_dbi)
+		return pci->ops->readl_dbi(pci, reg);
 
-	return readl(pp->dbi_base + reg);
+	return readl(pci->dbi_base + reg);
 }
 
-void dw_pcie_writel_rc(struct pcie_port *pp, u32 reg, u32 val)
+void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val)
 {
-	if (pp->ops->writel_rc)
-		pp->ops->writel_rc(pp, reg, val);
+	if (pci->ops->writel_dbi)
+		pci->ops->writel_dbi(pci, reg, val);
 	else
-		writel(val, pp->dbi_base + reg);
+		writel(val, pci->dbi_base + reg);
 }
 
-static u32 dw_pcie_readl_unroll(struct pcie_port *pp, u32 index, u32 reg)
+static u32 dw_pcie_readl_unroll(struct dw_pcie *pci, u32 index, u32 reg)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
-	return dw_pcie_readl_rc(pp, offset + reg);
+	return dw_pcie_readl_dbi(pci, offset + reg);
 }
 
-static void dw_pcie_writel_unroll(struct pcie_port *pp, u32 index,
+static void dw_pcie_writel_unroll(struct dw_pcie *pci, u32 index,
 				  u32 reg, u32 val)
 {
 	u32 offset = PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(index);
 
-	dw_pcie_writel_rc(pp, offset + reg, val);
+	dw_pcie_writel_dbi(pci, offset + reg, val);
 }
 
 #include <abort.h>
@@ -106,56 +106,63 @@ static void dw_pcie_writel_unroll(struct pcie_port *pp, u32 index,
 static int dw_pcie_rd_own_conf(struct pcie_port *pp, int where, int size,
 			       u32 *val)
 {
+	struct dw_pcie *pci;
+
 	if (pp->ops->rd_own_conf)
 		return pp->ops->rd_own_conf(pp, where, size, val);
 
-	return dw_pcie_read(pp->dbi_base + where, size, val);
+	pci = to_dw_pcie_from_pp(pp);
+	return dw_pcie_read(pci->dbi_base + where, size, val);
 }
 
 static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
 			       u32 val)
 {
+	struct dw_pcie *pci;
+
 	if (pp->ops->wr_own_conf)
 		return pp->ops->wr_own_conf(pp, where, size, val);
 
-	return dw_pcie_write(pp->dbi_base + where, size, val);
+	pci = to_dw_pcie_from_pp(pp);
+	return dw_pcie_write(pci->dbi_base + where, size, val);
 }
 
-static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
-               int type, u64 cpu_addr, u64 pci_addr, u32 size)
+static void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
+				      int type, u64 cpu_addr, u64 pci_addr,
+				      u32 size)
 {
 	u32 retries, val;
 
-	if (pp->iatu_unroll_enabled) {
-		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_LOWER_BASE,
-			lower_32_bits(cpu_addr));
-		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_UPPER_BASE,
-			upper_32_bits(cpu_addr));
-		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_LIMIT,
-			lower_32_bits(cpu_addr + size - 1));
-		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_LOWER_TARGET,
-			lower_32_bits(pci_addr));
-		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_UPPER_TARGET,
-			upper_32_bits(pci_addr));
-		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_REGION_CTRL1,
-			type);
-		dw_pcie_writel_unroll(pp, index, PCIE_ATU_UNR_REGION_CTRL2,
-			PCIE_ATU_ENABLE);
+	if (pci->iatu_unroll_enabled) {
+		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_LOWER_BASE,
+				      lower_32_bits(cpu_addr));
+		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_UPPER_BASE,
+				      upper_32_bits(cpu_addr));
+		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_LIMIT,
+				      lower_32_bits(cpu_addr + size - 1));
+		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_LOWER_TARGET,
+				      lower_32_bits(pci_addr));
+		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_UPPER_TARGET,
+				      upper_32_bits(pci_addr));
+		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL1,
+				      type);
+		dw_pcie_writel_unroll(pci, index, PCIE_ATU_UNR_REGION_CTRL2,
+				      PCIE_ATU_ENABLE);
 	} else {
-		dw_pcie_writel_rc(pp, PCIE_ATU_VIEWPORT,
-				  PCIE_ATU_REGION_OUTBOUND | index);
-		dw_pcie_writel_rc(pp, PCIE_ATU_LOWER_BASE,
-				  lower_32_bits(cpu_addr));
-		dw_pcie_writel_rc(pp, PCIE_ATU_UPPER_BASE,
-				  upper_32_bits(cpu_addr));
-		dw_pcie_writel_rc(pp, PCIE_ATU_LIMIT,
-				  lower_32_bits(cpu_addr + size - 1));
-		dw_pcie_writel_rc(pp, PCIE_ATU_LOWER_TARGET,
-				  lower_32_bits(pci_addr));
-		dw_pcie_writel_rc(pp, PCIE_ATU_UPPER_TARGET,
-				  upper_32_bits(pci_addr));
-		dw_pcie_writel_rc(pp, PCIE_ATU_CR1, type);
-		dw_pcie_writel_rc(pp, PCIE_ATU_CR2, PCIE_ATU_ENABLE);
+		dw_pcie_writel_dbi(pci, PCIE_ATU_VIEWPORT,
+				   PCIE_ATU_REGION_OUTBOUND | index);
+		dw_pcie_writel_dbi(pci, PCIE_ATU_LOWER_BASE,
+				   lower_32_bits(cpu_addr));
+		dw_pcie_writel_dbi(pci, PCIE_ATU_UPPER_BASE,
+				   upper_32_bits(cpu_addr));
+		dw_pcie_writel_dbi(pci, PCIE_ATU_LIMIT,
+				   lower_32_bits(cpu_addr + size - 1));
+		dw_pcie_writel_dbi(pci, PCIE_ATU_LOWER_TARGET,
+				   lower_32_bits(pci_addr));
+		dw_pcie_writel_dbi(pci, PCIE_ATU_UPPER_TARGET,
+				   upper_32_bits(pci_addr));
+		dw_pcie_writel_dbi(pci, PCIE_ATU_CR1, type);
+		dw_pcie_writel_dbi(pci, PCIE_ATU_CR2, PCIE_ATU_ENABLE);
 	}
 
 	/*
@@ -163,46 +170,46 @@ static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
 	 * and I/O accesses.
 	 */
 	for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
-		if (pp->iatu_unroll_enabled)
-			val = dw_pcie_readl_unroll(pp, index,
+		if (pci->iatu_unroll_enabled)
+			val = dw_pcie_readl_unroll(pci, index,
 						   PCIE_ATU_UNR_REGION_CTRL2);
 		else
-			val = dw_pcie_readl_rc(pp, PCIE_ATU_CR2);
+			val = dw_pcie_readl_dbi(pci, PCIE_ATU_CR2);
 
 		if (val == PCIE_ATU_ENABLE)
 			return;
 
 		udelay(LINK_WAIT_IATU_MAX);
 	}
-	dev_err(pp->dev, "iATU is not being enabled\n");
+	dev_err(pci->dev, "iATU is not being enabled\n");
 }
 
-int dw_pcie_wait_for_link(struct pcie_port *pp)
+int dw_pcie_wait_for_link(struct dw_pcie *pci)
 {
 	int retries;
 
 	/* Check if the link is up or not */
 	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
-		if (dw_pcie_link_up(pp)) {
-			dev_info(pp->dev, "Link up\n");
+		if (dw_pcie_link_up(pci)) {
+			dev_info(pci->dev, "Link up\n");
 			return 0;
 		}
 		udelay(LINK_WAIT_USLEEP_MAX);
 	}
 
-	dev_err(pp->dev, "Phy link never came up\n");
+	dev_err(pci->dev, "Phy link never came up\n");
 
 	return -ETIMEDOUT;
 }
 
-int dw_pcie_link_up(struct pcie_port *pp)
+int dw_pcie_link_up(struct dw_pcie *pci)
 {
 	u32 val;
 
-	if (pp->ops->link_up)
-		return pp->ops->link_up(pp);
+	if (pci->ops->link_up)
+		return pci->ops->link_up(pci);
 
-	val = readl(pp->dbi_base + PCIE_PHY_DEBUG_R1);
+	val = readl(pci->dbi_base + PCIE_PHY_DEBUG_R1);
 	return ((val & PCIE_PHY_DEBUG_R1_LINK_UP) &&
 		!(val & PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING));
 }
@@ -221,11 +228,11 @@ static void dw_pcie_set_local_bus_nr(struct pci_controller *host, int busno)
 
 static struct pci_ops dw_pcie_ops;
 
-static u8 dw_pcie_iatu_unroll_enabled(struct pcie_port *pp)
+static u8 dw_pcie_iatu_unroll_enabled(struct dw_pcie *pci)
 {
 	u32 val;
 
-	val = dw_pcie_readl_rc(pp, PCIE_ATU_VIEWPORT);
+	val = dw_pcie_readl_dbi(pci, PCIE_ATU_VIEWPORT);
 	if (val == 0xffffffff)
 		return 1;
 
@@ -235,7 +242,8 @@ static u8 dw_pcie_iatu_unroll_enabled(struct pcie_port *pp)
 
 int __init dw_pcie_host_init(struct pcie_port *pp)
 {
-	struct device_d *dev = pp->dev;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+	struct device_d *dev = pci->dev;
 	struct device_node *np = dev->device_node;
 	struct of_pci_range range;
 	struct of_pci_range_parser parser;
@@ -313,8 +321,8 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 		}
 	}
 
-	if (!pp->dbi_base)
-		pp->dbi_base = (void __force *)pp->cfg.start;
+	if (!pci->dbi_base)
+		pci->dbi_base = (void __force *)pp->cfg.start;
 
 	pp->mem_base = pp->mem.start;
 
@@ -324,13 +332,13 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (!pp->va_cfg1_base)
 		pp->va_cfg1_base = (void __force *)(u32)pp->cfg1_base;
 
-	ret = of_property_read_u32(np, "num-lanes", &pp->lanes);
+	ret = of_property_read_u32(np, "num-lanes", &pci->lanes);
 	if (ret)
-		pp->lanes = 0;
+		pci->lanes = 0;
 
-	ret = of_property_read_u32(np, "num-viewport", &pp->num_viewport);
+	ret = of_property_read_u32(np, "num-viewport", &pci->num_viewport);
 	if (ret)
-		pp->num_viewport = 2;
+		pci->num_viewport = 2;
 
 	if (pp->ops->host_init)
 		pp->ops->host_init(pp);
@@ -353,6 +361,7 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	u32 address, busdev, cfg_size;
 	u64 cpu_addr;
 	void __iomem *va_cfg_base;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 
 	if (pp->ops->rd_other_conf)
 		return pp->ops->rd_other_conf(pp, bus, devfn,
@@ -374,12 +383,12 @@ static int dw_pcie_rd_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		va_cfg_base = pp->va_cfg1_base;
 	}
 
-	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+	dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
 				  type, cpu_addr,
 				  busdev, cfg_size);
 	ret = dw_pcie_read(va_cfg_base + where, size, val);
-	if (pp->num_viewport <= 2)
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+	if (pci->num_viewport <= 2)
+		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
 					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
 					  pp->io_bus_addr, pp->io_size);
 
@@ -393,6 +402,7 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 	u32 busdev, cfg_size;
 	u64 cpu_addr;
 	void __iomem *va_cfg_base;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 
 	if (pp->ops->wr_other_conf)
 		return pp->ops->wr_other_conf(pp, bus, devfn,
@@ -413,12 +423,12 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 		va_cfg_base = pp->va_cfg1_base;
 	}
 
-	dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+	dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
 				  type, cpu_addr,
 				  busdev, cfg_size);
 	ret = dw_pcie_write(va_cfg_base + where, size, val);
-	if (pp->num_viewport <= 2)
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX1,
+	if (pci->num_viewport <= 2)
+		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX1,
 					  PCIE_ATU_TYPE_IO, pp->io_mod_base,
 					  pp->io_bus_addr, pp->io_size);
 
@@ -428,9 +438,11 @@ static int dw_pcie_wr_other_conf(struct pcie_port *pp, struct pci_bus *bus,
 static int dw_pcie_valid_device(struct pcie_port *pp, struct pci_bus *bus,
 				int dev)
 {
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
+
 	/* If there is no link, then there is no device */
 	if (bus->number != pp->root_bus_nr) {
-		if (!dw_pcie_link_up(pp))
+		if (!dw_pcie_link_up(pci))
 			return 0;
 	}
 
@@ -510,11 +522,12 @@ static struct pci_ops dw_pcie_ops = {
 void dw_pcie_setup_rc(struct pcie_port *pp)
 {
 	u32 val;
+	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 
 	/* set the number of lanes */
-	val = dw_pcie_readl_rc(pp, PCIE_PORT_LINK_CONTROL);
+	val = dw_pcie_readl_dbi(pci, PCIE_PORT_LINK_CONTROL);
 	val &= ~PORT_LINK_MODE_MASK;
-	switch (pp->lanes) {
+	switch (pci->lanes) {
 	case 1:
 		val |= PORT_LINK_MODE_1_LANES;
 		break;
@@ -525,15 +538,15 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 		val |= PORT_LINK_MODE_4_LANES;
 		break;
        default:
-               dev_err(pp->dev, "num-lanes %u: invalid value\n", pp->lanes);
+               dev_err(pci->dev, "num-lanes %u: invalid value\n", pci->lanes);
                return;
 	}
-	dw_pcie_writel_rc(pp, PCIE_PORT_LINK_CONTROL, val);
+	dw_pcie_writel_dbi(pci, PCIE_PORT_LINK_CONTROL, val);
 
 	/* set link width speed control register */
-	val = dw_pcie_readl_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL);
+	val = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);
 	val &= ~PORT_LOGIC_LINK_WIDTH_MASK;
-	switch (pp->lanes) {
+	switch (pci->lanes) {
 	case 1:
 		val |= PORT_LOGIC_LINK_WIDTH_1_LANES;
 		break;
@@ -544,24 +557,24 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 		val |= PORT_LOGIC_LINK_WIDTH_4_LANES;
 		break;
 	}
-	dw_pcie_writel_rc(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
+	dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, val);
 
 	/* setup RC BARs */
-	dw_pcie_writel_rc(pp, PCI_BASE_ADDRESS_0, 0x00000004);
-	dw_pcie_writel_rc(pp, PCI_BASE_ADDRESS_1, 0x00000000);
+	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 0x00000004);
+	dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_1, 0x00000000);
 
 	/* setup bus numbers */
-	val = dw_pcie_readl_rc(pp, PCI_PRIMARY_BUS);
+	val = dw_pcie_readl_dbi(pci, PCI_PRIMARY_BUS);
 	val &= 0xff000000;
 	val |= 0x00010100;
-	dw_pcie_writel_rc(pp, PCI_PRIMARY_BUS, val);
+	dw_pcie_writel_dbi(pci, PCI_PRIMARY_BUS, val);
 
 	/* setup command register */
-	val = dw_pcie_readl_rc(pp, PCI_COMMAND);
+	val = dw_pcie_readl_dbi(pci, PCI_COMMAND);
 	val &= 0xffff0000;
 	val |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
 		PCI_COMMAND_MASTER | PCI_COMMAND_SERR;
-	dw_pcie_writel_rc(pp, PCI_COMMAND, val);
+	dw_pcie_writel_dbi(pci, PCI_COMMAND, val);
 
        /*
         * If the platform provides ->rd_other_conf, it means the platform
@@ -570,15 +583,15 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
         */
 	if (!pp->ops->rd_other_conf) {
 		/* get iATU unroll support */
-		pp->iatu_unroll_enabled = dw_pcie_iatu_unroll_enabled(pp);
-		dev_dbg(pp->dev, "iATU unroll: %s\n",
-			pp->iatu_unroll_enabled ? "enabled" : "disabled");
+		pci->iatu_unroll_enabled = dw_pcie_iatu_unroll_enabled(pci);
+		dev_dbg(pci->dev, "iATU unroll: %s\n",
+			pci->iatu_unroll_enabled ? "enabled" : "disabled");
 
-		dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX0,
+		dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX0,
 					  PCIE_ATU_TYPE_MEM, pp->mem_mod_base,
 					  pp->mem_bus_addr, pp->mem_size);
-		if (pp->num_viewport > 2)
-			dw_pcie_prog_outbound_atu(pp, PCIE_ATU_REGION_INDEX2,
+		if (pci->num_viewport > 2)
+			dw_pcie_prog_outbound_atu(pci, PCIE_ATU_REGION_INDEX2,
 						  PCIE_ATU_TYPE_IO, pp->io_base,
 						  pp->io_bus_addr, pp->io_size);
 	}
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index fb9d2fdb6..b1b8e0554 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -92,10 +92,22 @@
 #define PCIE_PHY_DEBUG_R1_LINK_UP      (0x1 << 4)
 #define PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING     (0x1 << 29)
 
+struct pcie_port;
+struct dw_pcie;
+
+struct dw_pcie_host_ops {
+	int (*rd_own_conf)(struct pcie_port *pp, int where, int size, u32 *val);
+	int (*wr_own_conf)(struct pcie_port *pp, int where, int size, u32 val);
+	int (*rd_other_conf)(struct pcie_port *pp, struct pci_bus *bus,
+			     unsigned int devfn, int where, int size, u32 *val);
+	int (*wr_other_conf)(struct pcie_port *pp, struct pci_bus *bus,
+			     unsigned int devfn, int where, int size, u32 val);
+	void (*host_init)(struct pcie_port *pp);
+	void (*scan_bus)(struct pcie_port *pp);
+};
+
 struct pcie_port {
-	struct device_d		*dev;
 	u8			root_bus_nr;
-	void __iomem		*dbi_base;
 	u64			cfg0_base;
 	u64			cfg0_mod_base;
 	void __iomem		*va_cfg0_base;
@@ -117,35 +129,36 @@ struct pcie_port {
 	struct resource		mem;
 	struct resource		busn;
 	int			irq;
-	u32			lanes;
-	u32			num_viewport;
-	struct pcie_host_ops	*ops;
+	struct dw_pcie_host_ops	*ops;
 	struct pci_controller	pci;
-	u8                      iatu_unroll_enabled;
 };
 
-struct pcie_host_ops {
-	u32 (*readl_rc)(struct pcie_port *pp, u32 reg);
-	void (*writel_rc)(struct pcie_port *pp, u32 reg, u32 val);
-	int (*rd_own_conf)(struct pcie_port *pp, int where, int size, u32 *val);
-	int (*wr_own_conf)(struct pcie_port *pp, int where, int size, u32 val);
-	int (*rd_other_conf)(struct pcie_port *pp, struct pci_bus *bus,
-			unsigned int devfn, int where, int size, u32 *val);
-	int (*wr_other_conf)(struct pcie_port *pp, struct pci_bus *bus,
-			unsigned int devfn, int where, int size, u32 val);
-	int (*link_up)(struct pcie_port *pp);
-	void (*host_init)(struct pcie_port *pp);
-	void (*scan_bus)(struct pcie_port *pp);
+struct dw_pcie_ops {
+	u32     (*readl_dbi)(struct dw_pcie *pcie, u32 reg);
+	void    (*writel_dbi)(struct dw_pcie *pcie, u32 reg, u32 val);
+	int     (*link_up)(struct dw_pcie *pcie);
 };
 
-u32 dw_pcie_readl_rc(struct pcie_port *pp, u32 reg);
-void dw_pcie_writel_rc(struct pcie_port *pp, u32 reg, u32 val);
+struct dw_pcie {
+	struct device_d         *dev;
+	void __iomem            *dbi_base;
+	u32                     lanes;
+	u32                     num_viewport;
+	u8                      iatu_unroll_enabled;
+	struct pcie_port        pp;
+	const struct dw_pcie_ops *ops;
+};
+
+#define to_dw_pcie_from_pp(port) container_of((port), struct dw_pcie, pp)
+
 int dw_pcie_read(void __iomem *addr, int size, u32 *val);
 int dw_pcie_write(void __iomem *addr, int size, u32 val);
-int dw_pcie_link_up(struct pcie_port *pp);
 void dw_pcie_setup_rc(struct pcie_port *pp);
 int dw_pcie_host_init(struct pcie_port *pp);
 
-int dw_pcie_wait_for_link(struct pcie_port *pp);
+u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg);
+void dw_pcie_writel_dbi(struct dw_pcie *pci, u32 reg, u32 val);
+int dw_pcie_link_up(struct dw_pcie *pci);
+int dw_pcie_wait_for_link(struct dw_pcie *pci);
 
 #endif /* _PCIE_DESIGNWARE_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
