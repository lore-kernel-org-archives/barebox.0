Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAO-0005ff-PC
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:22 +0000
Received: by mail-pf1-x444.google.com with SMTP id c123so654543pfb.0
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:11 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:01 -0800
Message-Id: <20181213071144.31691-16-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/58] PCI: designware: Add default link up check if
 sub-driver doesn't override
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit dac29e6c5460d05774e3e8c4fdf4d6e7bd481fab

  Add a default DesignWare "link_up" test for use when a sub-driver doesn't
  supply its own pcie_host_ops.link_up() method.

  [bhelgaas: changelog, split into its own patch]
  Signed-off-by: Joao Pinto <jpinto@synopsys.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index ab6f1d289..d1c2635d6 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -72,6 +72,11 @@
 #define PCIE_ATU_FUNC(x)		(((x) & 0x7) << 16)
 #define PCIE_ATU_UPPER_TARGET		0x91C
 
+/* PCIe Port Logic registers */
+#define PLR_OFFSET                     0x700
+#define PCIE_PHY_DEBUG_R1              (PLR_OFFSET + 0x2c)
+#define PCIE_PHY_DEBUG_R1_LINK_UP      0x00000010
+
 static unsigned long global_io_offset;
 
 int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val)
@@ -191,10 +196,13 @@ int dw_pcie_wait_for_link(struct pcie_port *pp)
 
 int dw_pcie_link_up(struct pcie_port *pp)
 {
+	u32 val;
+
 	if (pp->ops->link_up)
 		return pp->ops->link_up(pp);
 
-	return 0;
+	val = readl(pp->dbi_base + PCIE_PHY_DEBUG_R1);
+	return val & PCIE_PHY_DEBUG_R1_LINK_UP;
 }
 
 static inline struct pcie_port *host_to_pcie(struct pci_controller *host)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
