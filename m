Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKC-0001Bw-UT
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:26 +0000
Received: by mail-pf1-x441.google.com with SMTP id z9so5768836pfi.2
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:06 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:40 -0800
Message-Id: <20181217051925.17582-21-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 20/65] PCI: designware: Wait for iATU enable
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit d8bbeb39fbf3ff06b6adae9d336f44bee4e3f3ec

  Add a loop with timeout to make sure the iATU is really enabled before
  subsequent config and I/O accesses.

  [bhelgaas: split to separate patch, use dev_err() instead of dev_dbg()]
  Signed-off-by: Joao Pinto <jpinto@synopsys.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 450885f07..b56c466fd 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -34,6 +34,10 @@
 #define LINK_WAIT_MAX_RETRIES		10
 #define LINK_WAIT_USLEEP_MAX		100000
 
+/* Parameters for the waiting for iATU enabled routine */
+#define LINK_WAIT_MAX_IATU_RETRIES     5
+#define LINK_WAIT_IATU_MAX             10000
+
 /* Synopsis specific PCIE configuration registers */
 #define PCIE_PORT_LINK_CONTROL		0x710
 #define PORT_LINK_MODE_MASK		(0x3f << 16)
@@ -160,7 +164,7 @@ static int dw_pcie_wr_own_conf(struct pcie_port *pp, int where, int size,
 static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
                int type, u64 cpu_addr, u64 pci_addr, u32 size)
 {
-	u32 val;
+	u32 retries, val;
 
 	dw_pcie_writel_rc(pp, PCIE_ATU_REGION_OUTBOUND | index,
 			  PCIE_ATU_VIEWPORT);
@@ -177,7 +181,14 @@ static void dw_pcie_prog_outbound_atu(struct pcie_port *pp, int index,
 	 * Make sure ATU enable takes effect before any subsequent config
 	 * and I/O accesses.
 	 */
-	dw_pcie_readl_rc(pp, PCIE_ATU_CR2);
+	for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
+		val = dw_pcie_readl_rc(pp, PCIE_ATU_CR2);
+		if (val == PCIE_ATU_ENABLE)
+			return;
+
+		udelay(LINK_WAIT_IATU_MAX);
+	}
+	dev_err(pp->dev, "iATU is not being enabled\n");
 }
 
 int dw_pcie_wait_for_link(struct pcie_port *pp)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
