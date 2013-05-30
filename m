Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og117.obsmtp.com ([64.18.0.149])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui4aD-0002UO-TF
 for barebox@lists.infradead.org; Thu, 30 May 2013 15:16:06 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 30 May 2013 16:15:35 +0100
Message-Id: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] gianfar: prevent resource conflict
To: barebox@lists.infradead.org

On eTSEC Ethernet devices, there are three memory regions to map.
These regions map registers to control the TSEC interfaces, PHY
access and TBI interface.

Depending on the port number and TSEC version, some of these resources
may be shared within an instance of the driver or between instances
of the driver.

Since dev_request_mem_region returns NULL to avoid resource conflicts if
a region is already mapped the TSEC driver fails to initialise when
these regions are shared. This patch works around this and makes
all three memory regions available to each instance.

Below is a description of TSEC Ethernet port mapping for port 1 to 3.
These ports are present in CPUs susch as the mpc8544 and P2020.

Each port has three set of registers:
* region 0 maps the TSEC registers.
* region 1 maps the PHY access registers always through port 1.
* region 2 maps the TBI interface registers.

The tables below shows how registers are mapped.
For instance, for TSEC version 1:
- port 2/register set 1 i.e p2/reg1 is the same region as
  port 1/register set 1 i.e p1/reg1. That is they share port 1
  register set 1 as the same region.
  As well is p3/reg1, p1/reg0 and p1/reg2 uses p1/reg1.

- port 2/register set 0 i.e p2/reg0 is not the same region as
  port 3/register set 0 i.e p3/reg0.
  That is p2/r0 and p3/r0 are two different regions.
  However, port 2/register 2 is the same as port 2/register 0.

TSEC version 1:
ports/registers  reg0    reg1    reg2
p1               p1/r1   p1/r1   p1/r1
p2               p2/r0   p1/r1   p2/r0
p3               p3/r0   p1/r1   p3/r0

TSEC version2:
ports/registers  reg0    reg1    reg2
p1               p1/r0   p1/r1   p1/r1
p2               p2/r0   p1/r1   p2/r2
p3               p3/r0   p1/r1   p3/r2

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 drivers/net/gianfar.c |   19 ++++++++++++++++++-
 1 files changed, 18 insertions(+), 1 deletions(-)

diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 96055bd..79113a8 100644
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
@@ -481,8 +483,23 @@ static int gfar_probe(struct device_d *dev)
 	edev = &priv->edev;
 
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
+	if (priv->phyregs_sgmii == NULL) {
+		if (IS_ENABLED(CONFIG_TSECV2))
+			priv->phyregs_sgmii = priv->phyregs;
+		else
+			priv->phyregs_sgmii = priv->regs;
+	}
 
 	priv->phyaddr = gfar_info->phyaddr;
 	priv->tbicr = gfar_info->tbicr;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
