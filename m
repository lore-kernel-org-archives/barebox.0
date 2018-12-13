Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAS-0005oY-8O
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:24 +0000
Received: by mail-pf1-x442.google.com with SMTP id h3so652906pfg.1
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:18 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:07 -0800
Message-Id: <20181213071144.31691-22-andrew.smirnov@gmail.com>
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
Subject: [PATCH 21/58] PCI: designware: Check LTSSM training bit before
 deciding link is up
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 01c076732e8288485c22ef50f20949455a783ca9

  The link may be up but still in link training.  In this case, we can't
  think the link is up and operating correctly.  Teach dw_pcie_link_up() to
  be aware of the PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING bit.

  Also rewrite PCIE_PHY_DEBUG_R1_LINK_UP definition so that it's consistent
  with other macros.

  Signed-off-by: Jisheng Zhang <jszhang@marvell.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Joao Pinto <jpinto@synopsys.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index b56c466fd..6de9fa7e3 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -83,7 +83,8 @@
 /* PCIe Port Logic registers */
 #define PLR_OFFSET                     0x700
 #define PCIE_PHY_DEBUG_R1              (PLR_OFFSET + 0x2c)
-#define PCIE_PHY_DEBUG_R1_LINK_UP      0x00000010
+#define PCIE_PHY_DEBUG_R1_LINK_UP      (0x1 << 4)
+#define PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING     (0x1 << 29)
 
 static unsigned long global_io_offset;
 
@@ -217,7 +218,8 @@ int dw_pcie_link_up(struct pcie_port *pp)
 		return pp->ops->link_up(pp);
 
 	val = readl(pp->dbi_base + PCIE_PHY_DEBUG_R1);
-	return val & PCIE_PHY_DEBUG_R1_LINK_UP;
+	return ((val & PCIE_PHY_DEBUG_R1_LINK_UP) &&
+		!(val & PCIE_PHY_DEBUG_R1_LINK_IN_TRAINING));
 }
 
 static inline struct pcie_port *host_to_pcie(struct pci_controller *host)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
