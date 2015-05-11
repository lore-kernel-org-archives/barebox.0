Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yruni-0004iL-6J
 for barebox@lists.infradead.org; Mon, 11 May 2015 20:59:47 +0000
Received: by layy10 with SMTP id y10so102337642lay.0
 for <barebox@lists.infradead.org>; Mon, 11 May 2015 13:59:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2015 00:00:51 +0300
Message-Id: <1431378053-18914-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
References: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 3/5] net: dm9k: fix reset routine
To: barebox@lists.infradead.org

Based on Linux's commit:

    commit 09ee9f87d02e779e4fc3f5c29212c733d6d6e349
    Author: Michael Abbott <michael.abbott@diamond.ac.uk>
    Date:   Wed Oct 16 11:41:33 2013 +0300

        dm9000: Implement full reset of DM9000 network device

        A Davicom application note for the DM9000 network device recommends
        performing software reset twice to correctly initialise the device.
        Without this reset some devices fail to initialise correctly on
        system startup.

N.B. DM9000B on MIPS Creator CI20 board needs additional workaround
(see the 'Make all GPIO pins outputs' and 'Power internal PHY' lines).

This workaround was taken from this U-boot's commit:

    commit fbcb7ece0ea1e364180f1cf963e0fa0ce7f6560d
    Author: Remy Bohmer <linux@bohmer.net>
    Date:   Tue Jun 3 15:26:24 2008 +0200

        DM9000: Improve eth_reset() routine

        According to the application notes of the DM9000 v1.22 chapter 5.2 bullet 2, the
        reset procedure must be done twice to properly reset the DM9000 by means of software.
        This errata is not needed anymore for the DM9000A, but it does not bother it.

        This change has been tested with DM9000A, DM9000E, DM9000EP.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/dm9k.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 4251a91..c3c2a80 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -48,6 +48,7 @@
 # define NCR_FCOL	(1 << 4)
 # define NCR_FDX	(1 << 3)
 # define NCR_LBK	(3 << 1)
+# define NCR_MAC_LBK	(1 << 1)
 # define NCR_RST	(1 << 0)
 
 #define DM9K_NSR	0x01
@@ -472,8 +473,28 @@ static void dm9k_reset(struct dm9k *priv)
 	struct device_d *dev = priv->miibus.parent;
 
 	dev_dbg(dev, "%s\n", __func__);
-	dm9k_iow(priv, DM9K_NCR, NCR_RST);
-	udelay(1000);		/* delay 1ms */
+
+	/* Reset DM9000, see DM9000 Application Notes V1.22 Jun 11, 2004 page 29
+	 * The essential point is that we have to do a double reset, and the
+	 * instruction is to set LBK into MAC internal loopback mode.
+	 */
+
+	/* Make all GPIO pins outputs */
+	dm9k_iow(priv, DM9K_GPCR, 0x0F);
+	/* Power internal PHY by writing 0 to GPIO0 pin */
+	dm9k_iow(priv, DM9K_GPR, 0);
+
+	dm9k_iow(priv, DM9K_NCR, NCR_RST | NCR_MAC_LBK);
+	udelay(100); /* Application note says at least 20 us */
+	if (dm9k_ior(priv, DM9K_NCR) & NCR_RST)
+		dev_err(dev, "dm9000 did not respond to first reset\n");
+
+	dm9k_iow(priv, DM9K_NCR, 0);
+	dm9k_iow(priv, DM9K_NCR, NCR_RST | NCR_MAC_LBK);
+	udelay(100);
+
+	if (dm9k_ior(priv, DM9K_NCR) & NCR_RST)
+		dev_err(dev, "dm9000 did not respond to second reset\n");
 }
 
 static int dm9k_eth_open(struct eth_device *edev)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
