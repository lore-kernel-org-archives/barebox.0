Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieygb-0008Lj-FL
 for barebox@lists.infradead.org; Wed, 11 Dec 2019 09:53:38 +0000
Received: by mail-wm1-x344.google.com with SMTP id d5so4715974wmb.4
 for <barebox@lists.infradead.org>; Wed, 11 Dec 2019 01:53:36 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Wed, 11 Dec 2019 10:53:32 +0100
Message-Id: <20191211095332.16883-1-h.feurstein@gmail.com>
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
Subject: [PATCH] commands: miitool: handle powerdown-flag
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <h.feurstein@gmail.com>

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 commands/miitool.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 4ea6fda34..a87d567ac 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -140,7 +140,10 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 	}
 
 	*buf = '\0';
-	if (bmcr & BMCR_ANENABLE) {
+
+	if (bmcr & BMCR_PDOWN) {
+		sprintf(buf, "powerdown, ");
+	} else if (bmcr & BMCR_ANENABLE) {
 		if (bmsr & BMSR_ANEGCOMPLETE) {
 			if (advert & lkpar) {
 				sprintf(buf, "%s%s, ", (lkpar & LPA_LPACK) ?
@@ -192,6 +195,8 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 			printf("loopback, ");
 		if (bmcr & BMCR_ISOLATE)
 			printf("isolate, ");
+		if (bmcr & BMCR_PDOWN)
+			printf("powerdown, ");
 		if (bmcr & BMCR_CTST)
 			printf("collision test, ");
 		if (bmcr & BMCR_ANENABLE) {
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
