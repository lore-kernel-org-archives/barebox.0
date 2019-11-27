Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNO-0005pP-Sf
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:20:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:43 +0100
Message-Id: <20191127112051.9427-5-s.hauer@pengutronix.de>
In-Reply-To: <20191127112051.9427-1-s.hauer@pengutronix.de>
References: <20191127112051.9427-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/12] PCI: dwc: Make use of BIT() in constant definitions
To: Barebox List <barebox@lists.infradead.org>

Port of Linux commit 0e11faa48b07a063289d65363015a3d51ca4c337

    Avoid using explicit left shifts and convert various definitions to
    use BIT() instead. No functional change intended.

    Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
    [lorenzo.pieralisi@arm.com: fixed PORT_LOGIC_SPEED_CHANGE redefinition]
    Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
    Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Cc: Bjorn Helgaas <bhelgaas@google.com>
    Cc: Fabio Estevam <fabio.estevam@nxp.com>
    Cc: Chris Healy <cphealy@gmail.com>
    Cc: Lucas Stach <l.stach@pengutronix.de>
    Cc: Leonard Crestez <leonard.crestez@nxp.com>
    Cc: "A.s. Dong" <aisheng.dong@nxp.com>
    Cc: Richard Zhu <hongxing.zhu@nxp.com>
    Cc: linux-imx@nxp.com
    Cc: linux-arm-kernel@lists.infradead.org
    Cc: linux-kernel@vger.kernel.org
    Cc: linux-pci@vger.kernel.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci-imx6.c        |  1 -
 drivers/pci/pcie-designware.h | 12 ++++++------
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 85307bad3e..6cbae1e223 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -112,7 +112,6 @@ struct imx6_pcie {
 #define PCIE_PHY_STAT_ACK_LOC 16
 
 #define PCIE_LINK_WIDTH_SPEED_CONTROL	0x80C
-#define PORT_LOGIC_SPEED_CHANGE		(0x1 << 17)
 
 /* PHY registers (not memory-mapped) */
 #define PCIE_PHY_RX_ASIC_OUT 0x100D
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 1659d8f60b..30bdc0ed6e 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -27,7 +27,7 @@
 #define PORT_LINK_MODE_4_LANES		(0x7 << 16)
 
 #define PCIE_LINK_WIDTH_SPEED_CONTROL	0x80C
-#define PORT_LOGIC_SPEED_CHANGE		(0x1 << 17)
+#define PORT_LOGIC_SPEED_CHANGE		BIT(17)
 #define PORT_LOGIC_LINK_WIDTH_MASK	(0x1f << 8)
 #define PORT_LOGIC_LINK_WIDTH_1_LANES	(0x1 << 8)
 #define PORT_LOGIC_LINK_WIDTH_2_LANES	(0x2 << 8)
@@ -40,8 +40,8 @@
 #define PCIE_MSI_INTR0_STATUS		0x830
 
 #define PCIE_ATU_VIEWPORT		0x900
-#define PCIE_ATU_REGION_INBOUND		(0x1 << 31)
-#define PCIE_ATU_REGION_OUTBOUND	(0x0 << 31)
+#define PCIE_ATU_REGION_INBOUND		BIT(31)
+#define PCIE_ATU_REGION_OUTBOUND	0
 #define PCIE_ATU_REGION_INDEX2		(0x2 << 0)
 #define PCIE_ATU_REGION_INDEX1		(0x1 << 0)
 #define PCIE_ATU_REGION_INDEX0		(0x0 << 0)
@@ -51,8 +51,8 @@
 #define PCIE_ATU_TYPE_CFG0		(0x4 << 0)
 #define PCIE_ATU_TYPE_CFG1		(0x5 << 0)
 #define PCIE_ATU_CR2			0x908
-#define PCIE_ATU_ENABLE			(0x1 << 31)
-#define PCIE_ATU_BAR_MODE_ENABLE	(0x1 << 30)
+#define PCIE_ATU_ENABLE			BIT(31)
+#define PCIE_ATU_BAR_MODE_ENABLE	BIT(30)
 #define PCIE_ATU_LOWER_BASE		0x90C
 #define PCIE_ATU_UPPER_BASE		0x910
 #define PCIE_ATU_LIMIT			0x914
@@ -92,7 +92,7 @@
 #define PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING     (0x1 << 29)
 
 #define PCIE_MISC_CONTROL_1_OFF		0x8BC
-#define PCIE_DBI_RO_WR_EN		(0x1 << 0)
+#define PCIE_DBI_RO_WR_EN		BIT(0)
 
 /* PCIe Port Logic registers */
 #define PLR_OFFSET                     0x700
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
