Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cH4UD-00018x-F3
 for barebox@lists.infradead.org; Wed, 14 Dec 2016 08:00:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 900FDA0041F
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2016 09:00:54 +0100 (CET)
From: Jan Remmet <j.remmet@phytec.de>
Date: Wed, 14 Dec 2016 09:00:04 +0100
Message-Id: <1481702404-8748-2-git-send-email-j.remmet@phytec.de>
In-Reply-To: <1481702404-8748-1-git-send-email-j.remmet@phytec.de>
References: <1481702404-8748-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH] i.MX habv4: add RVT address for i.MX6UL
To: barebox@lists.infradead.org

The RVT table contains the pointers to the HAB API functions and is
located at 0x00000100.

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
---
 drivers/hab/habv4.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 91dbb7a..ae43bdf 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -27,6 +27,7 @@
 #define HABV4_RVT_IMX28 0xffff8af8
 #define HABV4_RVT_IMX6_OLD 0x00000094
 #define HABV4_RVT_IMX6_NEW 0x00000098
+#define HABV4_RVT_IMX6UL   0x00000100
 
 enum hab_tag {
 	HAB_TAG_IVT = 0xd1,		/* Image Vector Table */
@@ -227,6 +228,10 @@ int imx6_hab_get_status(void)
 	if (rvt->header.tag == HAB_TAG_RVT)
 		return habv4_get_status(rvt);
 
+	rvt = (void *)HABV4_RVT_IMX6UL;
+	if (rvt->header.tag == HAB_TAG_RVT)
+		return habv4_get_status(rvt);
+
 	pr_err("ERROR - RVT not found!\n");
 
 	return -EINVAL;
@@ -237,4 +242,4 @@ int imx28_hab_get_status(void)
 	const struct habv4_rvt *rvt = (void *)HABV4_RVT_IMX28;
 
 	return habv4_get_status(rvt);
-}
\ No newline at end of file
+}
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
