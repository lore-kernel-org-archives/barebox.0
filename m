Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEjes-0003Mj-GW
 for barebox@lists.infradead.org; Thu, 20 Sep 2012 16:31:23 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 20 Sep 2012 17:31:05 +0100
Message-Id: <1348158669-14034-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
References: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/5] phylib: bus reset function
To: barebox@lists.infradead.org

Added an entry point for a bus reset function.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 drivers/net/phy/phy.c |    3 +++
 include/miidev.h      |    1 +
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 5406ea3..d9f5409 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -129,6 +129,9 @@ int phy_device_connect(struct eth_device *edev, struct mii_device *bus, int addr
 	unsigned int i;
 	int ret = -EINVAL;
 
+	if (bus->reset)
+		bus->reset(bus);
+
 	if (!edev->phydev) {
 		if (addr >= 0) {
 			dev = get_phy_device(bus, addr);
diff --git a/include/miidev.h b/include/miidev.h
index dc344ca..6e4ae92 100644
--- a/include/miidev.h
+++ b/include/miidev.h
@@ -36,6 +36,7 @@ struct mii_device {
 
 	int	(*read) (struct mii_device *dev, int addr, int reg);
 	int	(*write) (struct mii_device *dev, int addr, int reg, int value);
+	int	(*reset) (struct mii_device *dev);
 };
 
 int mii_register(struct mii_device *dev);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
