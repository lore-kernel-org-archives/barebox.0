Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlvGG-0004m0-4L
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 02:53:49 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Aug 2010 04:48:25 +0200
Message-Id: <1282186110-32738-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100819024811.GG454@game.jcrosoft.org>
References: <20100819024811.GG454@game.jcrosoft.org>
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
Subject: [PATCH 1/6] dm9000: allow to specify that no srom is present
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/scb9328/scb9328.c |    1 +
 drivers/net/dm9000.c              |    6 ++++--
 include/dm9000.h                  |    1 +
 3 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index e781393..3c04996 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -55,6 +55,7 @@ static struct dm9000_platform_data dm9000_data = {
 	.iobase   = 0x16000000,
 	.iodata   = 0x16000004,
 	.buswidth = DM9000_WIDTH_16,
+	.srom     = 1;
 };
 
 static struct device_d dm9000_dev = {
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index 2062c66..5f61ddc 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -498,8 +498,10 @@ static int dm9000_probe(struct device_d *dev)
 	edev->send = dm9000_eth_send;
 	edev->recv = dm9000_eth_rx;
 	edev->halt = dm9000_eth_halt;
-	edev->get_ethaddr = dm9000_get_ethaddr;
-	edev->set_ethaddr = dm9000_set_ethaddr;
+	if (pdata->srom) {
+		edev->get_ethaddr = dm9000_get_ethaddr;
+		edev->set_ethaddr = dm9000_set_ethaddr;
+	}
 
 	/* RESET device */
 	dm9000_reset(priv);
diff --git a/include/dm9000.h b/include/dm9000.h
index 3cc5235..b4a04b1 100644
--- a/include/dm9000.h
+++ b/include/dm9000.h
@@ -10,6 +10,7 @@ struct dm9000_platform_data {
 	unsigned long iobase;
 	unsigned long iodata;
 	int buswidth;
+	int srom;
 };
 
 #endif /* __DM9000_H__ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
