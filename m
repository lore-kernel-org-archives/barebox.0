Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAL-0005YX-Mn
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id 101so612166pld.6
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:03 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:55 -0800
Message-Id: <20181213071144.31691-10-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/58] PCI: designware: Ensure ATU is enabled before IO/conf
 space accesses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 17209dfb35a228e597a387bfc83b68093b247f78

  Read back the ATU CR2 register to ensure ATU programming is effective
  before any subsequent I/O or config space accesses.

  Without this, PCI device enumeration is unreliable.

  [bhelgaas: changelog, comment]
  Signed-off-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 977548f01..f52b67f4f 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -161,6 +161,8 @@ static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
 static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
                int type, u64 cpu_addr, u64 pci_addr, u32 size)
 {
+	u32 val;
+
 	dw_pcie_writel_rc(pp, PCIE_ATU_REGION_OUTBOUND | index,
 			  PCIE_ATU_VIEWPORT);
 	dw_pcie_writel_rc(pp, lower_32_bits(cpu_addr), PCIE_ATU_LOWER_BASE);
@@ -171,6 +173,12 @@ static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
 	dw_pcie_writel_rc(pp, upper_32_bits(pci_addr), PCIE_ATU_UPPER_TARGET);
 	dw_pcie_writel_rc(pp, type, PCIE_ATU_CR1);
 	dw_pcie_writel_rc(pp, PCIE_ATU_ENABLE, PCIE_ATU_CR2);
+
+	/*
+	 * Make sure ATU enable takes effect before any subsequent config
+	 * and I/O accesses.
+	 */
+	dw_pcie_readl_rc(pp, PCIE_ATU_CR2, &val);
 }
 
 int dw_pcie_link_up(struct pcie_port *pp)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
