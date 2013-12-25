Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vvj7V-0002Af-V6
 for barebox@lists.infradead.org; Wed, 25 Dec 2013 07:43:13 +0000
Received: by mail-lb0-f169.google.com with SMTP id u14so3275143lbd.28
 for <barebox@lists.infradead.org>; Tue, 24 Dec 2013 23:42:49 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 25 Dec 2013 11:50:02 +0400
Message-Id: <1387957805-1532-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/5] miitool: add initial GbE support
To: barebox@lists.infradead.org

The GbE support based on the patch for generic 'mii-tool', see
 http://ftp.debian.org/debian/pool/main/n/net-tools/net-tools_1.60-24.2.diff.gz

We need to note Jean-Christophe PLAGNIOL-VILLARD for his
initial GbE support patch:
 http://lists.infradead.org/pipermail/barebox/2013-February/012634.html

Generic 'mii-tool' GbE support patch has some disadvantages:
1. 1000baseT-HD is prefered to 1000baseT-FD;
2. show GbE-features for 10/100 only phys (e.g. Level One LXT971).
This patch fixes this disadvantages.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/miitool.c | 72 ++++++++++++++++++++++++++++++++++++++++++------------
 1 file changed, 56 insertions(+), 16 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 7666e8a..6e8ae80 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -54,25 +54,45 @@ static const struct {
 
 const struct {
 	char	*name;
-	u_short	value;
+	u_short	value[2];
 } media[] = {
 	/* The order through 100baseT4 matches bits in the BMSR */
-	{ "10baseT-HD",	ADVERTISE_10HALF },
-	{ "10baseT-FD",	ADVERTISE_10FULL },
-	{ "100baseTx-HD",	ADVERTISE_100HALF },
-	{ "100baseTx-FD",	ADVERTISE_100FULL },
-	{ "100baseT4",	LPA_100BASE4 },
-	{ "100baseTx",	ADVERTISE_100FULL | ADVERTISE_100HALF },
-	{ "10baseT",	ADVERTISE_10FULL | ADVERTISE_10HALF },
+	{ "10baseT-HD",	{ADVERTISE_10HALF} },
+	{ "10baseT-FD",	{ADVERTISE_10FULL} },
+	{ "100baseTx-HD",	{ADVERTISE_100HALF} },
+	{ "100baseTx-FD",	{ADVERTISE_100FULL} },
+	{ "100baseT4",	{LPA_100BASE4} },
+	{ "100baseTx",	{ADVERTISE_100FULL | ADVERTISE_100HALF} },
+	{ "10baseT",	{ADVERTISE_10FULL | ADVERTISE_10HALF} },
+	{ "1000baseT-HD",	{0, ADVERTISE_1000HALF} },
+	{ "1000baseT-FD",	{0, ADVERTISE_1000FULL} },
+	{ "1000baseT",	{0, ADVERTISE_1000HALF | ADVERTISE_1000FULL} },
 };
 #define NMEDIA (sizeof(media)/sizeof(media[0]))
 
-static char *media_list(int mask, int best)
+static const char *media_list(unsigned mask, unsigned mask2, int best)
 {
 	static char buf[100];
 	int i;
 
 	*buf = '\0';
+
+	if (mask & BMCR_SPEED1000) {
+		if (mask2 & ADVERTISE_1000FULL) {
+			strcat(buf, " ");
+			strcat(buf, "1000baseT-FD");
+			if (best)
+				goto out;
+		}
+
+		if (mask2 & ADVERTISE_1000HALF) {
+			strcat(buf, " ");
+			strcat(buf, "1000baseT-HD");
+			if (best)
+				goto out;
+		}
+	}
+
 	mask >>= 5;
 	for (i = 4; i >= 0; i--) {
 		if (mask & (1 << i)) {
@@ -83,6 +103,7 @@ static char *media_list(int mask, int best)
 		}
 	}
 
+out:
 	if (mask & (1 << 5))
 		strcat(buf, " flow-control");
 
@@ -94,7 +115,9 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 {
 	char buf[100];
 	int i, mii_val[32];
-	int bmcr, bmsr, advert, lkpar;
+	unsigned bmcr, bmsr, advert, lkpar, bmcr2 = 0, lpa2 = 0;
+	struct phy_driver *phydrv;
+	int is_phy_gbit;
 
 	/* Some bits in the BMSR are latched, but we can't rely on being
 	   the only reader, so only the current values are meaningful */
@@ -103,7 +126,7 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 	for (i = 0; i < 32; i++)
 		mii_val[i] = mii->read(mii, phydev->addr, i);
 
-	if (mii_val[MII_BMCR] == 0xffff) {
+	if (mii_val[MII_BMCR] == 0xffff || mii_val[MII_BMSR] == 0x0000) {
 		fprintf(stderr, "  No MII transceiver present!.\n");
 		return -1;
 	}
@@ -117,13 +140,23 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 	advert = mii_val[MII_ADVERTISE];
 	lkpar = mii_val[MII_LPA];
 
+	phydrv = to_phy_driver(phydev->dev.driver);
+	is_phy_gbit = phydrv->features &
+		(SUPPORTED_1000baseT_Half | SUPPORTED_1000baseT_Full);
+
+	if (is_phy_gbit) {
+		bmcr2 = mii_val[MII_CTRL1000];
+		lpa2 = mii_val[MII_STAT1000];
+	}
+
 	*buf = '\0';
 	if (bmcr & BMCR_ANENABLE) {
 		if (bmsr & BMSR_ANEGCOMPLETE) {
 			if (advert & lkpar) {
 				sprintf(buf, "%s%s, ", (lkpar & LPA_LPACK) ?
 					"negotiated" : "no autonegotiation,",
-					media_list(advert & lkpar, 1));
+					media_list(advert & lkpar,
+						bmcr2 & lpa2 >> 2, 1));
 			} else {
 				sprintf(buf, "autonegotiation failed, ");
 			}
@@ -131,8 +164,14 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 			sprintf(buf, "autonegotiation restarted, ");
 		}
 	} else {
+		int speed1000;
+
+		speed1000 = ((bmcr2
+				& (ADVERTISE_1000HALF
+				| ADVERTISE_1000FULL)) & lpa2 >> 2);
 		sprintf(buf, "%s Mbit, %s duplex, ",
-			(bmcr & BMCR_SPEED100) ? "100" : "10",
+			speed1000 ? "1000"
+			: (bmcr & BMCR_SPEED100) ? "100" : "10",
 			(bmcr & BMCR_FULLDPLX) ? "full" : "half");
 	}
 
@@ -189,15 +228,16 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 		if (bmsr & BMSR_RFAULT)
 			printf("remote fault, ");
 		printf((bmsr & BMSR_LSTATUS) ? "link ok" : "no link");
-		printf("\n  capabilities:%s", media_list(bmsr >> 6, 0));
-		printf("\n  advertising: %s", media_list(advert, 0));
+		printf("\n  capabilities:%s", media_list(bmsr >> 6, bmcr2, 0));
+		printf("\n  advertising: %s", media_list(advert, lpa2 >> 2, 0));
 
 #define LPA_ABILITY_MASK	(LPA_10HALF | LPA_10FULL \
 				| LPA_100HALF | LPA_100FULL \
 				| LPA_100BASE4 | LPA_PAUSE_CAP)
 
 		if (lkpar & LPA_ABILITY_MASK)
-			printf("\n  link partner:%s", media_list(lkpar, 0));
+			printf("\n  link partner:%s",
+				media_list(lkpar, bmcr2, 0));
 		printf("\n");
 	}
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
