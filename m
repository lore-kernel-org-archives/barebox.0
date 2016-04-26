Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x229.google.com ([2607:f8b0:400e:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1auvh5-0001sk-Oo
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 05:37:56 +0000
Received: by mail-pf0-x229.google.com with SMTP id y69so2451476pfb.1
 for <barebox@lists.infradead.org>; Mon, 25 Apr 2016 22:37:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 25 Apr 2016 22:37:06 -0700
Message-Id: <1461649027-5046-9-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 8/9] PCI: imx6: Remove broken Gen2 workaround
To: barebox@lists.infradead.org
Cc: Fabio Estevam <fabio.estevam@freescale.com>, Andrey Smirnov <andrew.smirnov@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>

Remove the remnants of the workaround for erratum ERR005184 which was never
completely implemented.  The checks alone don't carry any value as we don't
act properly on the result.

A workaround should be added to the lane speed change in establish_link
later.

[Andrey Smirnov: port to Barebox codebase]

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index c564a60..ee1a0c5 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -504,7 +504,7 @@ static void imx6_pcie_host_init(struct pcie_port *pp)
 
 static int imx6_pcie_link_up(struct pcie_port *pp)
 {
-	u32 rc, debug_r0, rx_valid;
+	u32 rc;
 	int count = 5;
 
 	/*
@@ -538,21 +538,6 @@ static int imx6_pcie_link_up(struct pcie_port *pp)
 		 */
 		udelay(1000);
 	}
-	/*
-	 * From L0, initiate MAC entry to gen2 if EP/RC supports gen2.
-	 * Wait 2ms (LTSSM timeout is 24ms, PHY lock is ~5us in gen2).
-	 * If (MAC/LTSSM.state == Recovery.RcvrLock)
-	 * && (PHY/rx_valid==0) then pulse PHY/rx_reset. Transition
-	 * to gen2 is stuck
-	 */
-	pcie_phy_read(pp->dbi_base, PCIE_PHY_RX_ASIC_OUT, &rx_valid);
-	debug_r0 = readl(pp->dbi_base + PCIE_PHY_DEBUG_R0);
-
-	if (rx_valid & 0x01)
-		return 0;
-
-	if ((debug_r0 & 0x3f) != 0x0d)
-		return 0;
 
 	return 0;
 }
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
