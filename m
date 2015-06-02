Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YzrU4-0006SL-VB
 for barebox@lists.infradead.org; Tue, 02 Jun 2015 19:04:21 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Jun 2015 21:03:51 +0200
Message-Id: <1433271831-16279-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 2/2] i2c: omap: fix i2c bus number output
To: barebox@lists.infradead.org

When probing from devicetree, the output for several i2c host
controllers prints out a bus number of -1:

i2c-omap 44e0b000.i2c: bus -1 rev0.11 at 400 kHz
i2c-omap 4802a000.i2c: bus -1 rev0.11 at 400 kHz
i2c-omap 4819c000.i2c: bus -1 rev0.11 at 400 kHz

The call to i2c_add_numbered_adapter() in probe finds out the next free
bus number, so we move the output to a location where the number is
already determined.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 drivers/i2c/busses/i2c-omap.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 4308963..330db98 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -1091,9 +1091,6 @@ i2c_omap_probe(struct device_d *pdev)
 	/* reset ASAP, clearing any IRQs */
 	omap_i2c_init(i2c_omap);
 
-	dev_info(pdev, "bus %d rev%d.%d at %d kHz\n",
-		 pdev->id, major, minor, i2c_omap->speed);
-
 	omap_i2c_idle(i2c_omap);
 
 	i2c_omap->adapter.master_xfer = omap_i2c_xfer,
@@ -1108,6 +1105,9 @@ i2c_omap_probe(struct device_d *pdev)
 		goto err_unuse_clocks;
 	}
 
+	dev_info(pdev, "bus %d rev%d.%d at %d kHz\n",
+		 i2c_omap->adapter.nr, major, minor, i2c_omap->speed);
+
 	return 0;
 
 err_unuse_clocks:
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
