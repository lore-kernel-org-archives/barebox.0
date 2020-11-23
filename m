Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khEqu-0008RU-GK
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 16:38:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Nov 2020 17:38:05 +0100
Message-Id: <20201123163805.11164-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX: HABv4: Improve HAB event printing
To: Barebox List <barebox@lists.infradead.org>
Cc: Robin van der Gracht <robin@protonic.nl>

Instead of using a fixed sized buffer for the report_event function,
let's call it two times, once with a NULL pointer to get the size of the
event and a second time with a buffer of that size.
Also, instead of separating the events into warning and error type,
iterate over all events in one single loop. This helps to get the events
in the order they occured which probably helps the reader to make more
sense of them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/habv4.c | 55 +++++++++++++++++++++++++--------------------
 1 file changed, 31 insertions(+), 24 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index e94f827549..c2acb81369 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -500,11 +500,34 @@ static bool is_known_rng_fail_event(const uint8_t *data, size_t len)
 	return false;
 }
 
+static uint8_t *hab_get_event(const struct habv4_rvt *rvt, int index, int *len)
+{
+	enum hab_status err;
+	uint8_t *buf;
+
+	err = rvt->report_event(HAB_STATUS_ANY, index, NULL, len);
+	if (err != HAB_STATUS_SUCCESS)
+		return NULL;
+
+	buf = malloc(*len);
+	if (!buf)
+		return NULL;
+
+	err = rvt->report_event(HAB_STATUS_ANY, index, buf, len);
+	if (err != HAB_STATUS_SUCCESS) {
+		pr_err("Unexpected HAB return code\n");
+		free(buf);
+		return NULL;
+	}
+
+	return buf;
+}
+
 static int habv4_get_status(const struct habv4_rvt *rvt)
 {
-	uint8_t data[256];
+	uint8_t *data;
 	uint32_t len;
-	uint32_t index = 0;
+	int i;
 	enum hab_status status;
 	enum hab_config config = 0x0;
 	enum hab_state state = 0x0;
@@ -524,40 +547,24 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 		return 0;
 	}
 
-	len = sizeof(data);
-	while (rvt->report_event(HAB_STATUS_WARNING, index, data, &len) == HAB_STATUS_SUCCESS) {
+	for (i = 0;; i++) {
+		data = hab_get_event(rvt, i, &len);
+		if (!data)
+			break;
 
 		/* suppress RNG self-test fail events if they can be handled in software */
 		if (IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&
 		    is_known_rng_fail_event(data, len)) {
 			pr_debug("RNG self-test failure detected, will run software self-test\n");
 		} else {
-			pr_err("-------- HAB warning Event %d --------\n", index);
+			pr_err("-------- HAB Event %d --------\n", i);
 			pr_err("event data:\n");
 			habv4_display_event(data, len);
 		}
 
-		len = sizeof(data);
-		index++;
+		free(data);
 	}
 
-	len = sizeof(data);
-	index = 0;
-	while (rvt->report_event(HAB_STATUS_FAILURE, index, data, &len) == HAB_STATUS_SUCCESS) {
-		pr_err("-------- HAB failure Event %d --------\n", index);
-		pr_err("event data:\n");
-
-		habv4_display_event(data, len);
-		len = sizeof(data);
-		index++;
-	}
-
-	/* Check reason for stopping */
-	len = sizeof(data);
-	index = 0;
-	if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) == HAB_STATUS_SUCCESS)
-		pr_err("ERROR: Recompile with larger event data buffer (at least %d bytes)\n\n", len);
-
 	return -EPERM;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
