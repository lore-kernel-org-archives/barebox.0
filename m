Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XUVsZ-0001go-SF
 for barebox@lists.infradead.org; Thu, 18 Sep 2014 07:11:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Sep 2014 09:11:13 +0200
Message-Id: <1411024275-31766-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
References: <1411024275-31766-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] net: phy: Use xzalloc for small allocations
To: barebox@lists.infradead.org

No need to call kzalloc for small allocations, xzalloc will do without
the need for an additional check.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/phy/phy.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 7604e1d..7813c49 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -86,9 +86,7 @@ int phy_register_fixup(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
 {
 	struct phy_fixup *fixup;
 
-	fixup = kzalloc(sizeof(struct phy_fixup), GFP_KERNEL);
-	if (!fixup)
-		return -ENOMEM;
+	fixup = xzalloc(sizeof(struct phy_fixup));
 
 	strlcpy(fixup->bus_id, bus_id, sizeof(fixup->bus_id));
 	fixup->phy_uid = phy_uid;
@@ -157,10 +155,7 @@ static struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int p
 
 	/* We allocate the device, and initialize the
 	 * default values */
-	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
-
-	if (NULL == dev)
-		return (struct phy_device*) PTR_ERR((void*)-ENOMEM);
+	dev = xzalloc(sizeof(*dev));
 
 	dev->speed = 0;
 	dev->duplex = -1;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
