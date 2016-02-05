Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aRhjQ-0002K4-28
 for barebox@lists.infradead.org; Fri, 05 Feb 2016 14:51:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Feb 2016 15:51:09 +0100
Message-Id: <1454683869-30350-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX habv4: Fix RVT address for newer SoCs
To: Barebox List <barebox@lists.infradead.org>

Newer i.MX SoCs have the RVT at 0x98, not at 0x94 any more.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/habv4.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index a44a94b..91dbb7a 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -25,7 +25,8 @@
 #include <mach/generic.h>
 
 #define HABV4_RVT_IMX28 0xffff8af8
-#define HABV4_RVT_IMX6 0x00000094
+#define HABV4_RVT_IMX6_OLD 0x00000094
+#define HABV4_RVT_IMX6_NEW 0x00000098
 
 enum hab_tag {
 	HAB_TAG_IVT = 0xd1,		/* Image Vector Table */
@@ -216,9 +217,19 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 
 int imx6_hab_get_status(void)
 {
-	const struct habv4_rvt *rvt = (void *)HABV4_RVT_IMX6;
+	const struct habv4_rvt *rvt;
 
-	return habv4_get_status(rvt);
+	rvt = (void *)HABV4_RVT_IMX6_OLD;
+	if (rvt->header.tag == HAB_TAG_RVT)
+		return habv4_get_status(rvt);
+
+	rvt = (void *)HABV4_RVT_IMX6_NEW;
+	if (rvt->header.tag == HAB_TAG_RVT)
+		return habv4_get_status(rvt);
+
+	pr_err("ERROR - RVT not found!\n");
+
+	return -EINVAL;
 }
 
 int imx28_hab_get_status(void)
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
