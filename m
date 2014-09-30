Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYxFj-0003ta-Vy
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 13:14:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 15:10:31 +0200
Message-Id: <1412082632-25290-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: am335x: NAND MLO update: always let the user confirm
 updating
To: barebox@lists.infradead.org

Before actually doing something the user should always confirm the
update. Move the question out of the if() block.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_bbu_nand.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_bbu_nand.c b/arch/arm/mach-omap/am33xx_bbu_nand.c
index ed55fd1..ee767d3 100644
--- a/arch/arm/mach-omap/am33xx_bbu_nand.c
+++ b/arch/arm/mach-omap/am33xx_bbu_nand.c
@@ -80,12 +80,12 @@ static int nand_xloadslots_update_handler(struct bbu_handler *handler,
 
 	nh = container_of(handler, struct nand_bbu_handler, bbu_handler);
 
+	ret = bbu_confirm(data);
+	if (ret != 0)
+		return ret;
+
 	/* check if the devicefile has been overwritten */
 	if (strcmp(data->devicefile, nh->devicefile[0]) != 0) {
-		ret = bbu_confirm(data);
-		if (ret != 0)
-			return ret;
-
 		ret = write_image(data->devicefile, image, size);
 		if (ret != 0)
 			return ret;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
