Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAS-0005eU-7z
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id y126so644712pfb.4
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:10 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:00 -0800
Message-Id: <20181213071144.31691-15-andrew.smirnov@gmail.com>
In-Reply-To: <20181213071144.31691-1-andrew.smirnov@gmail.com>
References: <20181213071144.31691-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/58] PCI: designware: Add generic dw_pcie_wait_for_link()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of Linux commit 886bc5ceb5cc3ad4b219502d72b277e3c3255a32

  Several DesignWare-based drivers (dra7xx, exynos, imx6, keystone, qcom, and
  spear13xx) had similar loops waiting for the link to come up.

  Add a generic dw_pcie_wait_for_link() for use by all these drivers so the
  waiting is done consistently, e.g., always using usleep_range() rather than
  mdelay() and using similar timeouts and retry counts.

  Note that this changes the Keystone link training/wait for link strategy,
  so we initiate link training, then wait longer for the link to come up
  before re-initiating link training.

  [bhelgaas: changelog, split into its own patch, update pci-keystone.c, pcie-qcom.c]
  Signed-off-by: Joao Pinto <jpinto@synopsys.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

NOTE: For some reason, all of the changes to imx6_pcie_wait_for_link()
made in 4d107d3b5a686b5834e533a00b73bf7b1cf59df7 are actually not
present 886bc5ceb5cc3ad4b219502d72b277e3c3255a32. So there isn't
really a kernel commit corresponding to removal of the large comment
block or check for !(reg & PCIE_PHY_DEBUG_R1_XMLH_LINK_IN_TRAINING)

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c        | 30 +-----------------------------
 drivers/pci/pcie-designware.c | 18 ++++++++++++++++++
 drivers/pci/pcie-designware.h |  6 ++++++
 3 files changed, 25 insertions(+), 29 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 53d767824..18965c7c3 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -397,35 +397,7 @@ static void imx6_pcie_init_phy(struct pcie_port *pp)
 
 static int imx6_pcie_wait_for_link(struct pcie_port *pp)
 {
-	uint64_t start = get_time_ns();
-
-	/*
-	 * Test if the PHY reports that the link is up and also that the LTSSM
-	 * training finished. There are three possible states of the link when
-	 * this code is called:
-	 * 1) The link is DOWN (unlikely)
-	 *    The link didn't come up yet for some reason. This usually means
-	 *    we have a real problem somewhere, if it happens with a peripheral
-	 *    connected. This state calls for inspection of the DEBUG registers.
-	 * 2) The link is UP, but still in LTSSM training
-	 *    Wait for the training to finish, which should take a very short
-	 *    time. If the training does not finish, we have a problem and we
-	 *    need to inspect the DEBUG registers. If the training does finish,
-	 *    the link is up and operating correctly.
-	 * 3) The link is UP and no longer in LTSSM training
-	 *    The link is up and operating correctly.
-	 */
-	while (1) {
-		u32 reg = readl(pp->dbi_base + PCIE_PHY_DEBUG_R1);
-		if ((reg & PCIE_PHY_DEBUG_R1_XMLH_LINK_UP) &&
-		    !(reg & PCIE_PHY_DEBUG_R1_XMLH_LINK_IN_TRAINING))
-			return 0;
-
-		if (!is_timeout(start, SECOND))
-			continue;
-
-		return -EINVAL;
-	}
+	return dw_pcie_wait_for_link(pp);
 }
 
 static int imx6_pcie_wait_for_speed_change(struct pcie_port *pp)
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 34dba5898..ab6f1d289 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -171,6 +171,24 @@ static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
 	dw_pcie_readl_rc(pp, PCIE_ATU_CR2, &val);
 }
 
+int dw_pcie_wait_for_link(struct pcie_port *pp)
+{
+	int retries;
+
+	/* Check if the link is up or not */
+	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
+		if (dw_pcie_link_up(pp)) {
+			dev_info(pp->dev, "Link up\n");
+			return 0;
+		}
+		udelay(LINK_WAIT_USLEEP_MAX);
+	}
+
+	dev_err(pp->dev, "Phy link never came up\n");
+
+	return -ETIMEDOUT;
+}
+
 int dw_pcie_link_up(struct pcie_port *pp)
 {
 	if (pp->ops->link_up)
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index b8b85c575..051511a26 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -14,6 +14,10 @@
 #ifndef _PCIE_DESIGNWARE_H
 #define _PCIE_DESIGNWARE_H
 
+/* Parameters for the waiting for link up routine */
+#define LINK_WAIT_MAX_RETRIES		10
+#define LINK_WAIT_USLEEP_MAX		100000
+
 struct pcie_port {
 	struct device_d		*dev;
 	u8			root_bus_nr;
@@ -66,4 +70,6 @@ int dw_pcie_link_up(struct pcie_port *pp);
 void dw_pcie_setup_rc(struct pcie_port *pp);
 int dw_pcie_host_init(struct pcie_port *pp);
 
+int dw_pcie_wait_for_link(struct pcie_port *pp);
+
 #endif /* _PCIE_DESIGNWARE_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
