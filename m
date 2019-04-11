Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hEWOF-0006et-2l
 for barebox@lists.infradead.org; Thu, 11 Apr 2019 09:53:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Apr 2019 11:52:58 +0200
Message-Id: <20190411095258.27952-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] hab/caam: Fix compilation of caam driver when hab is disabled
To: Barebox List <barebox@lists.infradead.org>

The caam driver needs the variable habv4_need_rng_software_self_test,
but this is only declared when HABV4 is enabled. Instead of exporting
a variable rather provide a function to test if a software selftest
of the random number generator is needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/crypto/caam/ctrl.c | 3 +--
 drivers/hab/habv4.c        | 9 +++++++--
 include/hab.h              | 7 +++++--
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index 39910131b1..4fe3eea3e6 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -573,8 +573,7 @@ static int caam_probe(struct device_d *dev)
 	cha_vid_ls = rd_reg32(&ctrl->perfmon.cha_id_ls);
 
 	/* habv4_need_rng_software_self_test is determined by habv4_get_status() */
-	if (IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&
-	    habv4_need_rng_software_self_test) {
+	if (caam_need_rng_software_selftest()) {
 		u8 caam_era;
 		u8 rngvid;
 		u8 rngrev;
diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index ca95c01e7b..6d2aabff59 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -392,8 +392,13 @@ static void habv4_display_event(uint8_t *data, uint32_t len)
  * self-test in ROM code. In this case, an HAB event is generated, and a
  * software self-test should be run. This variable is set to @c true by
  * habv4_get_status() when this occurs. */
-bool habv4_need_rng_software_self_test = false;
-EXPORT_SYMBOL(habv4_need_rng_software_self_test);
+static bool habv4_need_rng_software_self_test;
+
+bool caam_need_rng_software_selftest(void)
+{
+	return IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&
+		habv4_need_rng_software_self_test)
+}
 
 #define RNG_FAIL_EVENT_SIZE 36
 static uint8_t habv4_known_rng_fail_events[][RNG_FAIL_EVENT_SIZE] = {
diff --git a/include/hab.h b/include/hab.h
index 30eace7685..a74b7dafce 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -20,11 +20,10 @@
 
 #include <errno.h>
 
-extern bool habv4_need_rng_software_self_test;
-
 #ifdef CONFIG_HABV4
 int imx28_hab_get_status(void);
 int imx6_hab_get_status(void);
+bool caam_need_rng_software_selftest(void);
 #else
 static inline int imx28_hab_get_status(void)
 {
@@ -34,6 +33,10 @@ static inline int imx6_hab_get_status(void)
 {
 	return -EPERM;
 }
+static inline bool caam_need_rng_software_selftest(void)
+{
+	return false;
+}
 #endif
 
 #ifdef CONFIG_HABV3
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
