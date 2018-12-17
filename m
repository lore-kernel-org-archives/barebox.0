Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKS-0002Sv-37
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id w73so5750153pfk.10
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:24 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:53 -0800
Message-Id: <20181217051925.17582-34-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 33/65] PCI: dwc: designware: Move register defines to
 designware header file
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commmit b90dc392212d1153a12eea15cbc6eae352a3c989

  No functional change. Move the register defines and other macros from
  pcie-designware.c to pcie-designware.h. This is in preparation to split the
  pcie-designware.c file into designware core file and host-specific file.

  While at that also fix a checkpatch warning.

  Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Reviewed-By: Joao Pinto <jpinto@synopsys.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c        |  1 -
 drivers/pci/pcie-designware.c | 72 --------------------------------
 drivers/pci/pcie-designware.h | 78 +++++++++++++++++++++++++++++++++++
 3 files changed, 78 insertions(+), 73 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 18965c7c3..c499f4c83 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -72,7 +72,6 @@ struct imx6_pcie {
 #define PCIE_PL_PFLR_LINK_STATE_MASK		(0x3f << 16)
 #define PCIE_PL_PFLR_FORCE_LINK			(1 << 15)
 #define PCIE_PHY_DEBUG_R0 (PL_OFFSET + 0x28)
-#define PCIE_PHY_DEBUG_R1 (PL_OFFSET + 0x2c)
 #define PCIE_PHY_DEBUG_R1_XMLH_LINK_IN_TRAINING	(1 << 29)
 #define PCIE_PHY_DEBUG_R1_XMLH_LINK_UP		(1 << 4)
 
diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index d42045088..2ddda3192 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -30,78 +30,6 @@
 
 #include "pcie-designware.h"
 
-/* Parameters for the waiting for link up routine */
-#define LINK_WAIT_MAX_RETRIES		10
-#define LINK_WAIT_USLEEP_MAX		100000
-
-/* Parameters for the waiting for iATU enabled routine */
-#define LINK_WAIT_MAX_IATU_RETRIES     5
-#define LINK_WAIT_IATU_MAX             10000
-
-/* Synopsis specific PCIE configuration registers */
-#define PCIE_PORT_LINK_CONTROL		0x710
-#define PORT_LINK_MODE_MASK		(0x3f << 16)
-#define PORT_LINK_MODE_1_LANES		(0x1 << 16)
-#define PORT_LINK_MODE_2_LANES		(0x3 << 16)
-#define PORT_LINK_MODE_4_LANES		(0x7 << 16)
-
-#define PCIE_LINK_WIDTH_SPEED_CONTROL	0x80C
-#define PORT_LOGIC_SPEED_CHANGE		(0x1 << 17)
-#define PORT_LOGIC_LINK_WIDTH_MASK	(0x1f << 8)
-#define PORT_LOGIC_LINK_WIDTH_1_LANES	(0x1 << 8)
-#define PORT_LOGIC_LINK_WIDTH_2_LANES	(0x2 << 8)
-#define PORT_LOGIC_LINK_WIDTH_4_LANES	(0x4 << 8)
-
-#define PCIE_MSI_ADDR_LO		0x820
-#define PCIE_MSI_ADDR_HI		0x824
-#define PCIE_MSI_INTR0_ENABLE		0x828
-#define PCIE_MSI_INTR0_MASK		0x82C
-#define PCIE_MSI_INTR0_STATUS		0x830
-
-#define PCIE_ATU_VIEWPORT		0x900
-#define PCIE_ATU_REGION_INBOUND		(0x1 << 31)
-#define PCIE_ATU_REGION_OUTBOUND	(0x0 << 31)
-#define PCIE_ATU_REGION_INDEX2		(0x2 << 0)
-#define PCIE_ATU_REGION_INDEX1		(0x1 << 0)
-#define PCIE_ATU_REGION_INDEX0		(0x0 << 0)
-#define PCIE_ATU_CR1			0x904
-#define PCIE_ATU_TYPE_MEM		(0x0 << 0)
-#define PCIE_ATU_TYPE_IO		(0x2 << 0)
-#define PCIE_ATU_TYPE_CFG0		(0x4 << 0)
-#define PCIE_ATU_TYPE_CFG1		(0x5 << 0)
-#define PCIE_ATU_CR2			0x908
-#define PCIE_ATU_ENABLE			(0x1 << 31)
-#define PCIE_ATU_BAR_MODE_ENABLE	(0x1 << 30)
-#define PCIE_ATU_LOWER_BASE		0x90C
-#define PCIE_ATU_UPPER_BASE		0x910
-#define PCIE_ATU_LIMIT			0x914
-#define PCIE_ATU_LOWER_TARGET		0x918
-#define PCIE_ATU_BUS(x)			(((x) & 0xff) << 24)
-#define PCIE_ATU_DEV(x)			(((x) & 0x1f) << 19)
-#define PCIE_ATU_FUNC(x)		(((x) & 0x7) << 16)
-#define PCIE_ATU_UPPER_TARGET		0x91C
-
-/*
- * iATU Unroll-specific register definitions
- * From 4.80 core version the address translation will be made by unroll
- */
-#define PCIE_ATU_UNR_REGION_CTRL1	0x00
-#define PCIE_ATU_UNR_REGION_CTRL2	0x04
-#define PCIE_ATU_UNR_LOWER_BASE	0x08
-#define PCIE_ATU_UNR_UPPER_BASE	0x0C
-#define PCIE_ATU_UNR_LIMIT		0x10
-#define PCIE_ATU_UNR_LOWER_TARGET	0x14
-#define PCIE_ATU_UNR_UPPER_TARGET	0x18
-
-/* Register address builder */
-#define PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(region)  ((0x3 << 20) | (region << 9))
-
-/* PCIe Port Logic registers */
-#define PLR_OFFSET                     0x700
-#define PCIE_PHY_DEBUG_R1              (PLR_OFFSET + 0x2c)
-#define PCIE_PHY_DEBUG_R1_LINK_UP      (0x1 << 4)
-#define PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING     (0x1 << 29)
-
 static unsigned long global_io_offset;
 
 int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val)
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index bded13292..3171adfe7 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -14,6 +14,84 @@
 #ifndef _PCIE_DESIGNWARE_H
 #define _PCIE_DESIGNWARE_H
 
+/* Parameters for the waiting for link up routine */
+#define LINK_WAIT_MAX_RETRIES		10
+#define LINK_WAIT_USLEEP_MAX		100000
+
+/* Parameters for the waiting for iATU enabled routine */
+#define LINK_WAIT_MAX_IATU_RETRIES     5
+#define LINK_WAIT_IATU_MAX             10000
+
+/* Synopsis specific PCIE configuration registers */
+#define PCIE_PORT_LINK_CONTROL		0x710
+#define PORT_LINK_MODE_MASK		(0x3f << 16)
+#define PORT_LINK_MODE_1_LANES		(0x1 << 16)
+#define PORT_LINK_MODE_2_LANES		(0x3 << 16)
+#define PORT_LINK_MODE_4_LANES		(0x7 << 16)
+
+#define PCIE_LINK_WIDTH_SPEED_CONTROL	0x80C
+#define PORT_LOGIC_SPEED_CHANGE		(0x1 << 17)
+#define PORT_LOGIC_LINK_WIDTH_MASK	(0x1f << 8)
+#define PORT_LOGIC_LINK_WIDTH_1_LANES	(0x1 << 8)
+#define PORT_LOGIC_LINK_WIDTH_2_LANES	(0x2 << 8)
+#define PORT_LOGIC_LINK_WIDTH_4_LANES	(0x4 << 8)
+
+#define PCIE_MSI_ADDR_LO		0x820
+#define PCIE_MSI_ADDR_HI		0x824
+#define PCIE_MSI_INTR0_ENABLE		0x828
+#define PCIE_MSI_INTR0_MASK		0x82C
+#define PCIE_MSI_INTR0_STATUS		0x830
+
+#define PCIE_ATU_VIEWPORT		0x900
+#define PCIE_ATU_REGION_INBOUND		(0x1 << 31)
+#define PCIE_ATU_REGION_OUTBOUND	(0x0 << 31)
+#define PCIE_ATU_REGION_INDEX2		(0x2 << 0)
+#define PCIE_ATU_REGION_INDEX1		(0x1 << 0)
+#define PCIE_ATU_REGION_INDEX0		(0x0 << 0)
+#define PCIE_ATU_CR1			0x904
+#define PCIE_ATU_TYPE_MEM		(0x0 << 0)
+#define PCIE_ATU_TYPE_IO		(0x2 << 0)
+#define PCIE_ATU_TYPE_CFG0		(0x4 << 0)
+#define PCIE_ATU_TYPE_CFG1		(0x5 << 0)
+#define PCIE_ATU_CR2			0x908
+#define PCIE_ATU_ENABLE			(0x1 << 31)
+#define PCIE_ATU_BAR_MODE_ENABLE	(0x1 << 30)
+#define PCIE_ATU_LOWER_BASE		0x90C
+#define PCIE_ATU_UPPER_BASE		0x910
+#define PCIE_ATU_LIMIT			0x914
+#define PCIE_ATU_LOWER_TARGET		0x918
+#define PCIE_ATU_BUS(x)			(((x) & 0xff) << 24)
+#define PCIE_ATU_DEV(x)			(((x) & 0x1f) << 19)
+#define PCIE_ATU_FUNC(x)		(((x) & 0x7) << 16)
+#define PCIE_ATU_UPPER_TARGET		0x91C
+
+/*
+ * iATU Unroll-specific register definitions
+ * From 4.80 core version the address translation will be made by unroll
+ */
+#define PCIE_ATU_UNR_REGION_CTRL1	0x00
+#define PCIE_ATU_UNR_REGION_CTRL2	0x04
+#define PCIE_ATU_UNR_LOWER_BASE	0x08
+#define PCIE_ATU_UNR_UPPER_BASE	0x0C
+#define PCIE_ATU_UNR_LIMIT		0x10
+#define PCIE_ATU_UNR_LOWER_TARGET	0x14
+#define PCIE_ATU_UNR_UPPER_TARGET	0x18
+
+/* Register address builder */
+#define PCIE_GET_ATU_OUTB_UNR_REG_OFFSET(region)  ((0x3 << 20) | (region << 9))
+
+/* PCIe Port Logic registers */
+#define PLR_OFFSET                     0x700
+#define PCIE_PHY_DEBUG_R1              (PLR_OFFSET + 0x2c)
+#define PCIE_PHY_DEBUG_R1_LINK_UP      (0x1 << 4)
+#define PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING     (0x1 << 29)
+
+/* PCIe Port Logic registers */
+#define PLR_OFFSET                     0x700
+#define PCIE_PHY_DEBUG_R1              (PLR_OFFSET + 0x2c)
+#define PCIE_PHY_DEBUG_R1_LINK_UP      (0x1 << 4)
+#define PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING     (0x1 << 29)
+
 struct pcie_port {
 	struct device_d		*dev;
 	u8			root_bus_nr;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
