Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSJc-0000sp-CZ
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:18:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 09:17:52 +0200
Message-Id: <1380266272-931-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380266272-931-1-git-send-email-s.hauer@pengutronix.de>
References: <1380266272-931-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] i2c: omap: remove unncessary printf
To: barebox@lists.infradead.org

A printf in the driver should be dev_* and contain useful information.
Both is not the case, remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-omap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index 2eb51334..52ffdbb 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -791,7 +791,7 @@ i2c_omap_probe(struct device_d *pdev)
 
 	i2c_omap->speed = speed;
 	i2c_omap->base = dev_request_mem_region(pdev, 0);
-	printf ("I2C probe\n");
+
 	omap_i2c_unidle(i2c_omap);
 
 	i2c_omap->rev = omap_i2c_read_reg(i2c_omap, OMAP_I2C_REV_REG) & 0xff;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
