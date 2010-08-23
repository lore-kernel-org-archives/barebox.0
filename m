Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OnNnR-0004Le-TG
	for barebox@lists.infradead.org; Mon, 23 Aug 2010 03:34:06 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Aug 2010 05:33:52 +0200
Message-Id: <1282534435-20881-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100823033059.GS8693@game.jcrosoft.org>
References: <20100823033059.GS8693@game.jcrosoft.org>
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
Subject: [PATCH 2/5] dm9000: allow to specify that no srom is present
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/scb9328/scb9328.c |    1 +
 drivers/net/dm9000.c              |    3 ++-
 include/dm9000.h                  |    1 +
 3 files changed, 4 insertions(+), 1 deletions(-)

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
index 2062c66..ab06735 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -498,8 +498,9 @@ static int dm9000_probe(struct device_d *dev)
 	edev->send = dm9000_eth_send;
 	edev->recv = dm9000_eth_rx;
 	edev->halt = dm9000_eth_halt;
-	edev->get_ethaddr = dm9000_get_ethaddr;
 	edev->set_ethaddr = dm9000_set_ethaddr;
+	if (pdata->srom)
+		edev->get_ethaddr = dm9000_get_ethaddr;
 
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
