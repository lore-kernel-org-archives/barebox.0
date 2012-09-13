Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og107.obsmtp.com ([64.18.0.184])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCDQN-0000OW-MC
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 17:42:00 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Sep 2012 18:41:50 +0100
Message-Id: <1347558111-1633-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1347558111-1633-1-git-send-email-renaud.barbier@ge.com>
References: <1347558111-1633-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] gianfar: region request returns NULL on already mapped
 region
To: barebox@lists.infradead.org

When requesting a memory region and that region has already been
requested within an instance of the driver or another instance, a NULL
pointer is obtained from the function dev_request_mem_region.
For a eTSEC port we have three sets of registers:
- MAC registers
- External phy access registers
- TBI registers.

Depending on the eTSEC port number and eTSEC version (v1/v2), the overlap
may happen between registers of a port or between registers of two ports
or more.
For instance, in eTSEC v1 all ports use the external phy registers from
eTSEC1 and for each port the MAC registers = TBI registers.
This patch works around the memory overlapping.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 drivers/net/gianfar.c |   30 +++++++++++++++++++++++++++++-
 1 files changed, 29 insertions(+), 1 deletions(-)

diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 19544de..917f843 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -28,6 +28,8 @@
 #define RX_BUF_CNT 	PKTBUFSRX
 #define BUF_ALIGN	8
 
+static void __iomem *phyregs;
+
 /*
  * Initialize required registers to appropriate values, zeroing
  * those we don't care about (unless zero is bad, in which case,
@@ -488,9 +490,35 @@ static int gfar_probe(struct device_d *dev)
 
 	edev = &priv->edev;
 
+	/*
+	 * Memory region requests may return NULL because depending on
+	 * the Ethernet port, it may have been already mapped.
+	 * TSECv1:
+	 *  port 1: region 0 = 1 = 2
+	 *  port 2,3: region 0 = 2, region 1 = port 1 region 1
+	 *
+	 * TSECv2:
+	 *  port 1: 1 = 2
+	 *  port 2,3: no overlap, region 1 = port 1 region 1
+	 */
 	priv->regs = dev_request_mem_region(dev, 0);
-	priv->phyregs = dev_request_mem_region(dev, 1);
+	if (priv->regs == NULL)
+		priv->regs = phyregs;
+
+	if (phyregs == NULL) {
+		phyregs = dev_request_mem_region(dev, 1);
+		if (phyregs == NULL)
+			phyregs = priv->regs;
+	}
+	priv->phyregs = phyregs;
+
 	priv->phyregs_sgmii = dev_request_mem_region(dev, 2);
+	if (priv->phyregs_sgmii == NULL)
+#ifdef CONFIG_TSECV2
+		priv->phyregs_sgmii = priv->phyregs;
+#else
+		priv->phyregs_sgmii = priv->regs;
+#endif
 
 	priv->phyaddr = gfar_info->phyaddr;
 	priv->tbicr = gfar_info->tbicr;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
