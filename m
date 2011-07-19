Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjEBa-0005Bb-Dn
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 17:34:25 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id C7328FF9844
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 19:34:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 19:17:24 +0200
Message-Id: <1311095849-16071-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311095849-16071-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/8] dm9000: switch to dev_request_mem_region
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/mini2440/mini2440.c |    2 ++
 arch/arm/boards/scb9328/scb9328.c   |    2 ++
 drivers/net/dm9000.c                |    4 ++--
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 2bdc2ca..2d27b00 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -71,10 +71,12 @@ static struct resource dm9000_resources[] = {
 	[0] = {
 		.start	= CS4_BASE + 0x300,
 		.size	= 4,
+		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
 		.start	= CS4_BASE + 0x304,
 		.size	= 4,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index dc818ce..2fe8236 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -50,10 +50,12 @@ static struct resource dm9000_resources[] = {
 	[0] = {
 		.start	= 0x16000000,
 		.size	= 4,
+		.flags	= IORESOURCE_MEM,
 	},
 	[1] = {
 		.start	= 0x16000004,
 		.size	= 4,
+		.flags	= IORESOURCE_MEM,
 	},
 };
 
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index 708801d..b867d21 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -501,8 +501,8 @@ static int dm9000_probe(struct device_d *dev)
 
 	priv = edev->priv;
 	priv->buswidth = pdata->buswidth;
-	priv->iodata = (void __iomem *)dev->resource[1].start;
-	priv->iobase = (void __iomem *)dev->resource[0].start;
+	priv->iodata = dev_request_mem_region(dev, 1);
+	priv->iobase = dev_request_mem_region(dev, 0);
 	priv->srom = pdata->srom;
 
 	edev->init = dm9000_init_dev;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
