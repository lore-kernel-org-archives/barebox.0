Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vvj7a-0002Ai-EV
 for barebox@lists.infradead.org; Wed, 25 Dec 2013 07:43:16 +0000
Received: by mail-la0-f46.google.com with SMTP id eh20so3152815lab.19
 for <barebox@lists.infradead.org>; Tue, 24 Dec 2013 23:42:51 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 25 Dec 2013 11:50:03 +0400
Message-Id: <1387957805-1532-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
References: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/5] miitool: drop internal table of known MII,
 use phy drivers instead
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/miitool.c | 30 +++++-------------------------
 1 file changed, 5 insertions(+), 25 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 6e8ae80..63feca8 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -41,17 +41,6 @@
 #include <linux/phy.h>
 #include <linux/err.h>
 
-
-/* Table of known MII's */
-static const struct {
-	u_short	id1, id2;
-	u_short	mask1, mask2;
-	char	*name;
-} mii_id[] = {
-	{ 0x0013, 0x78e0, 0xffff, 0xfff0, "Level One LXT971A" },
-};
-#define NMII (sizeof(mii_id)/sizeof(mii_id[0]))
-
 const struct {
 	char	*name;
 	u_short	value[2];
@@ -189,20 +178,11 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 	}
 
 	if (verbose) {
-		printf("  product info: ");
-		for (i = 0; i < NMII; i++)
-			if ((mii_id[i].id1 == (mii_val[2] & mii_id[i].mask1)) &&
-				(mii_id[i].id2 ==
-					(mii_val[3] & mii_id[i].mask2)))
-				break;
-
-		if (i < NMII)
-			printf("%s rev %d\n", mii_id[i].name, mii_val[3]&0x0f);
-		else
-			printf("vendor %02x:%02x:%02x, model %d rev %d\n",
-				mii_val[2] >> 10, (mii_val[2] >> 2) & 0xff,
-				((mii_val[2] << 6)|(mii_val[3] >> 10)) & 0xff,
-				(mii_val[3] >> 4) & 0x3f, mii_val[3] & 0x0f);
+		printf("  product info: %s ", phydrv->drv.name);
+		printf("(vendor %02x:%02x:%02x, model %d rev %d)\n",
+			mii_val[2] >> 10, (mii_val[2] >> 2) & 0xff,
+			((mii_val[2] << 6) | (mii_val[3] >> 10)) & 0xff,
+			(mii_val[3] >> 4) & 0x3f, mii_val[3] & 0x0f);
 
 		printf("  basic mode:   ");
 		if (bmcr & BMCR_RESET)
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
