Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5Lj-0003mJ-Kf
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:10:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:09:56 +0200
Message-Id: <1400674196-31951-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400674196-31951-1-git-send-email-s.hauer@pengutronix.de>
References: <1400674196-31951-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] mii-tool: Fix gigabit advertise / link partner ability
 mixup
To: barebox@lists.infradead.org

bmcr2 contains the gigabit advertise bits and lpa2 contains the gigabit
link partner ability bits, not the other way round.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/miitool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 341506c..64c2a93 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -209,7 +209,7 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 			printf("remote fault, ");
 		printf((bmsr & BMSR_LSTATUS) ? "link ok" : "no link");
 		printf("\n  capabilities:%s", media_list(bmsr >> 6, bmcr2, 0));
-		printf("\n  advertising: %s", media_list(advert, lpa2 >> 2, 0));
+		printf("\n  advertising: %s", media_list(advert, bmcr2, 0));
 
 #define LPA_ABILITY_MASK	(LPA_10HALF | LPA_10FULL \
 				| LPA_100HALF | LPA_100FULL \
@@ -217,7 +217,7 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 
 		if (lkpar & LPA_ABILITY_MASK)
 			printf("\n  link partner:%s",
-				media_list(lkpar, bmcr2, 0));
+				media_list(lkpar, lpa2 >> 2, 0));
 		printf("\n");
 	}
 
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
