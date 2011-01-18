Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PfD2x-0003b2-DO
	for barebox@lists.infradead.org; Tue, 18 Jan 2011 15:00:41 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Tue, 18 Jan 2011 16:59:12 +0200
Message-Id: <c9830d9e4cbed1971591193bc2fb4eda5e545410.1295362711.git.baruch@tkos.co.il>
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
Subject: [PATCH] miidev: allow read/write of all registers
To: barebox@lists.infradead.org

Ethernet PHY devices have 32 registers, each 16 bits wide. Thus, the size of
the phy device should be 64 bytes.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/net/miidev.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/miidev.c b/drivers/net/miidev.c
index 343eb40..b4c6948 100644
--- a/drivers/net/miidev.c
+++ b/drivers/net/miidev.c
@@ -183,7 +183,7 @@ static int miidev_probe(struct device_d *dev)
 	struct mii_device *mdev = dev->priv;
 
 	mdev->cdev.name = asprintf("phy%d", dev->id);
-	mdev->cdev.size = 32;
+	mdev->cdev.size = 64;
 	mdev->cdev.ops = &miidev_ops;
 	mdev->cdev.priv = mdev;
 	mdev->cdev.dev = dev;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
