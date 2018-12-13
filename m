Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLBG-0008Hx-F0
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id q1so644287pfi.5
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:13:00 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:40 -0800
Message-Id: <20181213071144.31691-55-andrew.smirnov@gmail.com>
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
Subject: [PATCH 54/58] PCI: dwc: Add accessors for write permission of DBI
 read-only registers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit e44abfed6fcb750d24f4438dc9d5a02eebb5fcac

  The read-only DBI registers can be written only when the "Write to RO
  Registers Using DBI" (DBI_RO_WR_EN) field of MISC_CONTROL_1_OFF is set.

  Add accessors to enable and disable write permission, and use them instead
  of accessing MISC_CONTROL_1_OFF directly.

  Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Joao Pinto <jpinto@synopsys.com>
  Acked-by: Roy Zang <tie-fei.zang@freescale.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.h | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 10f64b101..26b1ada94 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -62,6 +62,9 @@
 #define PCIE_ATU_FUNC(x)		(((x) & 0x7) << 16)
 #define PCIE_ATU_UPPER_TARGET		0x91C
 
+#define PCIE_MISC_CONTROL_1_OFF		0x8BC
+#define PCIE_DBI_RO_WR_EN		(0x1 << 0)
+
 /* PCIe Port Logic registers */
 #define PLR_OFFSET                     0x700
 #define PCIE_PHY_DEBUG_R1              (PLR_OFFSET + 0x2c)
@@ -152,4 +155,27 @@ static inline u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg)
 {
 	return  __dw_pcie_readl_dbi(pci, pci->dbi_base, reg, 0x4);
 }
+
+static inline void dw_pcie_dbi_ro_wr_en(struct dw_pcie *pci)
+{
+	u32 reg;
+	u32 val;
+
+	reg = PCIE_MISC_CONTROL_1_OFF;
+	val = dw_pcie_readl_dbi(pci, reg);
+	val |= PCIE_DBI_RO_WR_EN;
+	dw_pcie_writel_dbi(pci, reg, val);
+}
+
+static inline void dw_pcie_dbi_ro_wr_dis(struct dw_pcie *pci)
+{
+	u32 reg;
+	u32 val;
+
+	reg = PCIE_MISC_CONTROL_1_OFF;
+	val = dw_pcie_readl_dbi(pci, reg);
+	val &= ~PCIE_DBI_RO_WR_EN;
+	dw_pcie_writel_dbi(pci, reg, val);
+}
+
 #endif /* _PCIE_DESIGNWARE_H */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
