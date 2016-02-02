Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcG6-0006ta-5x
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:48:17 +0100
Message-Id: <1454424497-7157-35-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 34/34] imx: hab: Make hab status functions SoC specific
To: Barebox List <barebox@lists.infradead.org>

The HABv4 functions need access a part of the ROM which is
located in the zero page. This must be done early, before the
MMU has been configured and the zero page has been set to faulting.
The HAB functions currently use cpu_is_imxxy(). At the stage where
HAB is called the i.MX CPU type variable is not yet initialized,
so this code only works when only one i.MX type is enabled and
cpu_is_imxxy() are compile time constants.

To fix HAB support when more than one i.MX type is enabled make the
HAB status function SoC specific so that we can drop the use of
cpu_is_imxxy().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/habv4.c | 46 +++++++++++++++++++---------------------------
 include/hab.h       |  9 +++++++--
 2 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 8521b88..a44a94b 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -99,29 +99,6 @@ struct habv4_rvt {
 	void (*failsafe)(void);
 } __packed;
 
-static const struct habv4_rvt *__rvt;
-
-static inline const struct habv4_rvt *habv4_get_rvt(void)
-{
-	if (__rvt)
-		return __rvt;
-
-	if (cpu_is_mx28())
-		__rvt = (void *)HABV4_RVT_IMX28;
-	else if (cpu_is_mx6())
-		__rvt = (void *)HABV4_RVT_IMX6;
-
-	if (__rvt->header.tag != HAB_TAG_RVT) {
-		pr_err("ERROR - RVT not found!\n");
-		return NULL;
-	}
-
-	pr_info("Found RVT v%d.%d\n", __rvt->header.par >> 4,
-		__rvt->header.par & 0xf);
-
-	return __rvt;
-}
-
 static const char *habv4_get_status_str(enum hab_status status)
 {
 	switch (status) {
@@ -197,9 +174,8 @@ static void habv4_display_event(uint8_t *data, uint32_t len)
 	printf("\n\n");
 }
 
-int habv4_get_status(void)
+static int habv4_get_status(const struct habv4_rvt *rvt)
 {
-	const struct habv4_rvt *rvt = habv4_get_rvt();
 	uint8_t data[256];
 	uint32_t len = sizeof(data);
 	uint32_t index = 0;
@@ -207,8 +183,10 @@ int habv4_get_status(void)
 	enum hab_config config = 0x0;
 	enum hab_state state = 0x0;
 
-	if (!rvt)
-		return -ENODEV;
+	if (rvt->header.tag != HAB_TAG_RVT) {
+		pr_err("ERROR - RVT not found!\n");
+		return -EINVAL;
+	}
 
 	status = rvt->report_status(&config, &state);
 	pr_info("Status: %s (0x%02x)\n", habv4_get_status_str(status), status);
@@ -235,3 +213,17 @@ int habv4_get_status(void)
 
 	return -EPERM;
 }
+
+int imx6_hab_get_status(void)
+{
+	const struct habv4_rvt *rvt = (void *)HABV4_RVT_IMX6;
+
+	return habv4_get_status(rvt);
+}
+
+int imx28_hab_get_status(void)
+{
+	const struct habv4_rvt *rvt = (void *)HABV4_RVT_IMX28;
+
+	return habv4_get_status(rvt);
+}
\ No newline at end of file
diff --git a/include/hab.h b/include/hab.h
index 411e995..818d7ca 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -19,9 +19,14 @@
 #define __HABV4_H
 
 #ifdef CONFIG_HABV4
-int habv4_get_status(void);
+int imx28_hab_get_status(void);
+int imx6_hab_get_status(void);
 #else
-static inline int habv4_get_status(void)
+static inline int imx28_hab_get_status(void)
+{
+	return -EPERM;
+}
+static inline int imx6_hab_get_status(void)
 {
 	return -EPERM;
 }
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
