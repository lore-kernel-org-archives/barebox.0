Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gP0yT-0002MH-RG
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 08:01:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Nov 2018 09:01:21 +0100
Message-Id: <20181120080121.18824-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] scripts: imx-image: Fix typos in comments
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index fa93e47917..9c173cd23b 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -797,12 +797,12 @@ int main(int argc, char *argv[])
 	}
 
 	/*
-	 * Add HEADER_LEN to the image size for the blank aera + IVT + DCD.
+	 * Add HEADER_LEN to the image size for the blank area + IVT + DCD.
 	 * Align up to a 4k boundary, because:
 	 * - at least i.MX5 NAND boot only reads full NAND pages and misses the
 	 *   last partial NAND page.
 	 * - i.MX6 SPI NOR boot corrupts the last few bytes of an image loaded
-	 *   in ver funy ways when the image size is not 4 byte aligned
+	 *   in very funny ways when the image size is not 4 byte aligned
 	 */
 	data.load_size = roundup(data.image_size + header_len, 0x1000);
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
