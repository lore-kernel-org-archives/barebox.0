Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22e.google.com ([2607:f8b0:400e:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvh3-0001sN-DK
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:53 +0000
Received: by mail-pf0-x22e.google.com with SMTP id 206so2475902pfu.0
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:32 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:37:03 -0700
Message-Id: <1461649027-5046-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
References: <1461649027-5046-1-git-send-email-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/9] PCI: imx6: Simplify a trivial if-return sequence
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Bjorn Helgaas <bhelgaas@google.com>

From: Fabio Estevam <fabio.estevam@freescale.com>

Simplify a trivial if-return sequence by combining it with a preceding
function call.

The semantic patch that makes this change is available in
scripts/coccinelle/misc/simple_return.cocci.

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
CC: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/pci/pci-imx6.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 30bc4fe..2ccf80a 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -129,11 +129,7 @@ static int pcie_phy_wait_ack(void __iomem *dbi_base, int addr)
 	val = addr << PCIE_PHY_CTRL_DATA_LOC;
 	writel(val, dbi_base + PCIE_PHY_CTRL);
 
-	ret = pcie_phy_poll_ack(dbi_base, 0);
-	if (ret)
-		return ret;
-
-	return 0;
+	return pcie_phy_poll_ack(dbi_base, 0);
 }
 
 /* Read from the 16-bit PCIe PHY control registers (not memory-mapped) */
@@ -160,11 +156,7 @@ static int pcie_phy_read(void __iomem *dbi_base, int addr , int *data)
 	/* deassert Read signal */
 	writel(0x00, dbi_base + PCIE_PHY_CTRL);
 
-	ret = pcie_phy_poll_ack(dbi_base, 0);
-	if (ret)
-		return ret;
-
-	return 0;
+	return pcie_phy_poll_ack(dbi_base, 0);
 }
 
 static int pcie_phy_write(void __iomem *dbi_base, int addr, int data)
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
