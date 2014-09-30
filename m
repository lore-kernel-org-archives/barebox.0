Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYxFj-0003sK-Vw
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 13:14:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 15:10:28 +0200
Message-Id: <1412082632-25290-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
References: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: am33xx update SPI NOR: Ask use before flashing
To: barebox@lists.infradead.org

Let the user confirm the update process before flashing the new
image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
index c979302..97dc54e 100644
--- a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
+++ b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
@@ -59,6 +59,10 @@ static int spi_nor_mlo_handler(struct bbu_handler *handler,
 		return -ENOSPC;
 	}
 
+	ret = bbu_confirm(data);
+	if (ret != 0)
+		return ret;
+
 	dstfd = open(data->devicefile, O_WRONLY);
 	if (dstfd < 0) {
 		printf("could not open %s: %s", data->devicefile, errno_str());
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
