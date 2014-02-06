Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBR1C-0002jr-4M
 for barebox@lists.infradead.org; Thu, 06 Feb 2014 15:37:35 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1WBR0o-0004Nv-R9
 for barebox@lists.infradead.org; Thu, 06 Feb 2014 16:37:10 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  6 Feb 2014 16:37:08 +0100
Message-Id: <1391701030-18395-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1391701030-18395-1-git-send-email-l.stach@pengutronix.de>
References: <1391701030-18395-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] spi: imx: correctly set GPIO chip selects on CSPI
To: barebox@lists.infradead.org

Do it the same way as on the new ECSPI.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/spi/imx_spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index e43712e118b3..80029ca66056 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -189,7 +189,7 @@ static void cspi_0_0_chipselect(struct spi_device *spi, int is_active)
 
 	if (!is_active) {
 		if (gpio >= 0)
-			gpio_set_value(gpio, !cs);
+			gpio_direction_output(gpio, !cs);
 		return;
 	}
 
@@ -277,7 +277,7 @@ static void cspi_0_7_chipselect(struct spi_device *spi, int is_active)
 
 	if (!is_active) {
 		if (gpio >= 0)
-			gpio_set_value(gpio, !cs);
+			gpio_direction_output(gpio, !cs);
 		return;
 	}
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
