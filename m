Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlL4-0003Bt-1q
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:37 +0000
Received: by mail-pg1-x544.google.com with SMTP id v28so5519601pgk.10
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:21 -0800
Message-Id: <20181217051925.17582-62-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 61/65] PCI: dwc: Add accessors for write permission of DBI
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
index 933c2b533..0f1659319 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -83,6 +83,9 @@
 #define PCIE_PHY_DEBUG_R1_LINK_UP      (0x1 << 4)
 #define PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING     (0x1 << 29)
 
+#define PCIE_MISC_CONTROL_1_OFF		0x8BC
+#define PCIE_DBI_RO_WR_EN		(0x1 << 0)
+
 /* PCIe Port Logic registers */
 #define PLR_OFFSET                     0x700
 #define PCIE_PHY_DEBUG_R1              (PLR_OFFSET + 0x2c)
@@ -174,4 +177,27 @@ static inline u32 dw_pcie_readl_dbi(struct dw_pcie *pci, u32 reg)
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
