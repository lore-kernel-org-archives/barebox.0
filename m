Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkpL0-0006IX-Sx
 for barebox@lists.infradead.org; Thu, 15 May 2014 06:40:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 08:39:50 +0200
Message-Id: <1400135990-5391-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400135990-5391-1-git-send-email-s.hauer@pengutronix.de>
References: <1400135990-5391-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] mtd: m25p80: update Micron IDs
To: barebox@lists.infradead.org

Update Micron IDs from Linux-3.15-rc5

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/devices/m25p80.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/devices/m25p80.c b/drivers/mtd/devices/m25p80.c
index 50e0454..bc07307 100644
--- a/drivers/mtd/devices/m25p80.c
+++ b/drivers/mtd/devices/m25p80.c
@@ -659,8 +659,11 @@ static const struct platform_device_id m25p_ids[] = {
 	{ "mx25l25655e", INFO(0xc22619, 0, 64 * 1024, 512, 0) },
 
 	/* Micron */
-	{ "n25q128",  INFO(0x20ba18, 0, 64 * 1024, 256, 0) },
-	{ "n25q256a", INFO(0x20ba19, 0, 64 * 1024, 512, SECT_4K) },
+	{ "n25q064",     INFO(0x20ba17, 0, 64 * 1024,  128, 0) },
+	{ "n25q128a11",  INFO(0x20bb18, 0, 64 * 1024,  256, 0) },
+	{ "n25q128a13",  INFO(0x20ba18, 0, 64 * 1024,  256, 0) },
+	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K) },
+	{ "n25q512a",    INFO(0x20bb20, 0, 64 * 1024, 1024, SECT_4K) },
 
 	/* Spansion -- single (large) sector size only, at least
 	 * for the chips listed here (without boot sectors).
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
