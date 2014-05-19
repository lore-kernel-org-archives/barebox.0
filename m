Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x230.google.com ([2a00:1450:4013:c00::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WmUHy-00064n-R1
 for barebox@lists.infradead.org; Mon, 19 May 2014 20:36:03 +0000
Received: by mail-ee0-f48.google.com with SMTP id e49so3946952eek.21
 for <barebox@lists.infradead.org>; Mon, 19 May 2014 13:35:39 -0700 (PDT)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Mon, 19 May 2014 22:34:59 +0200
Message-Id: <1400531700-24248-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 1/2] net: arc_emac: remove delay from mdio polling loop
To: barebox@lists.infradead.org

Avoid unneeded delay when waiting for the completion of a mdio
operation and return as soon as possible.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 drivers/net/arc_emac.c |   19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/net/arc_emac.c b/drivers/net/arc_emac.c
index 3f6f814..23df3fd 100644
--- a/drivers/net/arc_emac.c
+++ b/drivers/net/arc_emac.c
@@ -17,6 +17,7 @@
  */
 
 #include <asm/mmu.h>
+#include <clock.h>
 #include <common.h>
 #include <net.h>
 #include <io.h>
@@ -342,26 +343,18 @@ static int arc_emac_set_ethaddr(struct eth_device *edev, unsigned char *mac)
 	return 0;
 }
 
-/* Number of seconds we wait for "MDIO complete" flag to appear */
-#define ARC_MDIO_COMPLETE_POLL_COUNT	1
-
 static int arc_mdio_complete_wait(struct arc_emac_priv *priv)
 {
-	unsigned int i;
-
-	for (i = 0; i < ARC_MDIO_COMPLETE_POLL_COUNT * 40; i++) {
-		unsigned int status = arc_reg_get(priv, R_STATUS);
-
-		status &= MDIO_MASK;
+	uint64_t start = get_time_ns();
 
-		if (status) {
+	while (!is_timeout(start, 1000 * MSECOND)) {
+		if (arc_reg_get(priv, R_STATUS) & MDIO_MASK) {
 			/* Reset "MDIO complete" flag */
-			arc_reg_set(priv, R_STATUS, status);
+			arc_reg_set(priv, R_STATUS, MDIO_MASK);
 			return 0;
 		}
-
-		mdelay(25);
 	}
+
 	return -ETIMEDOUT;
 }
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
