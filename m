Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg01L-0005M1-Eu
 for barebox@lists.infradead.org; Wed, 26 Jun 2019 04:59:01 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 26 Jun 2019 06:58:42 +0200
Message-Id: <b204fd526de2fa87a692fda32e42cf7bc0413964.1561525118.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
References: <cover.a507585555be94a0fb8946fdfd851a30ab8b296f.1561525118.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH 01/13] hab: implement interface for i.MX8MQ
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The HAB interface for i.MX8MQ only implements the retrieval of status
and events. The SoC status is retrieved using the TF-A SIP API found in
the downstream imx TF-A. After calling into the TF-A the passed data
structures need to be invalidated, since otherwise the cached zero value
is used.
Currently the TF-A report event call only supports FAILURE events.
Testing the TF-A with other event types resulted in a freeze in the
bootrom code, which was not investigated further.
We instead walk the memory containing the events and retrieve the events
ourselves. They are exposed using the same API.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/hab/hab.c   |   2 +-
 drivers/hab/habv4.c | 112 +++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 113 insertions(+), 1 deletion(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 03bb65e..a346e01 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -217,7 +217,7 @@ static struct imx_hab_ops *imx_get_hab_ops(void)
 
 	if (IS_ENABLED(CONFIG_HABV3) && (cpu_is_mx25() || cpu_is_mx35()))
 		tmp = &imx_hab_ops_iim;
-	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx6())
+	else if (IS_ENABLED(CONFIG_HABV4) && (cpu_is_mx6() || cpu_is_mx8mq()))
 		tmp = &imx_hab_ops_ocotp;
 	else
 		return NULL;
diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 496fbe3..36e249a 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -22,8 +22,11 @@
 #include <hab.h>
 #include <init.h>
 #include <types.h>
+#include <linux/arm-smccc.h>
+#include <asm/cache.h>
 
 #include <mach/generic.h>
+#include <mach/imx8mq.h>
 
 #define HABV4_RVT_IMX28 0xffff8af8
 #define HABV4_RVT_IMX6_OLD 0x00000094
@@ -177,6 +180,85 @@ struct habv4_rvt {
 	void (*failsafe)(void);
 } __packed;
 
+#define FSL_SIP_HAB             0xC2000007
+#define FSL_SIP_HAB_AUTHENTICATE        0x00
+#define FSL_SIP_HAB_ENTRY               0x01
+#define FSL_SIP_HAB_EXIT                0x02
+#define FSL_SIP_HAB_REPORT_EVENT        0x03
+#define FSL_SIP_HAB_REPORT_STATUS       0x04
+#define FSL_SIP_HAB_FAILSAFE            0x05
+#define FSL_SIP_HAB_CHECK_TARGET        0x06
+
+static enum hab_status hab_sip_report_status(enum hab_config *config,
+					     enum hab_state *state)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(FSL_SIP_HAB, FSL_SIP_HAB_REPORT_STATUS,
+		      (unsigned long) config,
+		      (unsigned long) state, 0, 0, 0, 0, &res);
+	if (state)
+		v8_inv_dcache_range((unsigned long) state,
+				    (unsigned long)state + sizeof(*config));
+	if (config)
+		v8_inv_dcache_range((unsigned long) config,
+				    (unsigned long)config + sizeof(*state));
+	return (enum hab_status)res.a0;
+}
+
+static enum hab_status imx8_read_sram_events(enum hab_status status,
+					     uint32_t index, void *event,
+					     uint32_t *bytes)
+{
+	struct hab_event_record *events[10];
+	int num_events = 0;
+	char *sram = (char *)0x9061c0;
+	int i = 0;
+	int internal_index = 0;
+	char *end = 0;
+	struct hab_event_record *search;
+
+	/*
+	 * AN12263 HABv4 Guidelines and Recommendations
+	 * recommends the address and size, however errors are usually contained
+	 * within the first bytes. Scan only the first few bytes to rule out
+	 * lots of false positives.
+	 */
+	end = sram +  0x1a0;
+
+	while (sram < end) {
+		if (*sram == 0xdb) {
+			search = (void *)sram;
+			sram = sram + be16_to_cpu(search->hdr.len);
+			events[num_events] = search;
+			num_events++;
+		} else {
+			sram++;
+		}
+	}
+	while (i < num_events) {
+		if (events[i]->status == status) {
+			if (internal_index == index) {
+				*bytes = sizeof(struct hab_event_record) +
+					be16_to_cpu(events[i]->hdr.len);
+				if (event)
+					memcpy(event, events[i], *bytes);
+				return HAB_STATUS_SUCCESS;
+			} else {
+				internal_index++;
+			}
+		}
+		i++;
+	}
+	return HAB_STATUS_FAILURE;
+}
+
+struct habv4_rvt hab_smc_ops = {
+	.header = { .tag = 0xdd },
+	.report_event = imx8_read_sram_events,
+	.report_status = hab_sip_report_status,
+};
+
 static const char *habv4_get_status_str(enum hab_status status)
 {
 	switch (status) {
@@ -507,6 +589,36 @@ int imx6_hab_get_status(void)
 	return -EINVAL;
 }
 
+static int imx8_hab_get_status(void)
+{
+	return habv4_get_status(&hab_smc_ops);
+}
+
+static int init_imx8_hab_get_status(void)
+{
+	int ret = 0;
+
+	if (cpu_is_mx8mq())
+		ret = imx8_hab_get_status();
+	else
+		return 0;
+
+	/*
+	 * Nobody will check the return value if there were HAB errors, but the
+	 * initcall will fail spectaculously with a strange error message.
+	 */
+	if (ret == -EPERM)
+		return 0;
+	return ret;
+}
+
+/*
+ *
+ *
+ *
+ */
+postmmu_initcall(init_imx8_hab_get_status);
+
 static int init_imx6_hab_get_status(void)
 {
 	int ret = 0;
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
