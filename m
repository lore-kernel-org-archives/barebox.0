Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnP-00088j-8L
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:53 +0100
Message-Id: <20200217124623.14520-13-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/42] HAB: i.MX8M: rename imx8_* functions to imx8m_*
To: Barebox List <barebox@lists.infradead.org>

The big i.MX8 does HAB through the SCU which will be different. To avoid
confusion rename the functions to imx8m_*

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/habv4.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index e3c1de1a4d..f0a087d1a8 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -213,7 +213,7 @@ static enum hab_status hab_sip_report_status(enum hab_config *config,
 	return (enum hab_status)res.a0;
 }
 
-static enum hab_status imx8_read_sram_events(enum hab_status status,
+static enum hab_status imx8m_read_sram_events(enum hab_status status,
 					     uint32_t index, void *event,
 					     uint32_t *bytes)
 {
@@ -262,7 +262,7 @@ static enum hab_status imx8_read_sram_events(enum hab_status status,
 
 struct habv4_rvt hab_smc_ops = {
 	.header = { .tag = 0xdd },
-	.report_event = imx8_read_sram_events,
+	.report_event = imx8m_read_sram_events,
 	.report_status = hab_sip_report_status,
 };
 
@@ -585,12 +585,12 @@ int imx6_hab_get_status(void)
 	return -EINVAL;
 }
 
-static int imx8_hab_get_status(void)
+static int imx8m_hab_get_status(void)
 {
 	return habv4_get_status(&hab_smc_ops);
 }
 
-static int init_imx8_hab_get_status(void)
+static int init_imx8m_hab_get_status(void)
 {
 	if (!cpu_is_mx8mq())
 		/* can happen in multi-image builds and is not an error */
@@ -600,7 +600,7 @@ static int init_imx8_hab_get_status(void)
 	 * Nobody will check the return value if there were HAB errors, but the
 	 * initcall will fail spectaculously with a strange error message.
 	 */
-	imx8_hab_get_status();
+	imx8m_hab_get_status();
 
 	return 0;
 }
@@ -610,7 +610,7 @@ static int init_imx8_hab_get_status(void)
  *
  *
  */
-postmmu_initcall(init_imx8_hab_get_status);
+postmmu_initcall(init_imx8m_hab_get_status);
 
 static int init_imx6_hab_get_status(void)
 {
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
