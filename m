Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibisu-0003Xk-QA
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 10:24:54 +0000
Received: from ginster.hi.pengutronix.de
 ([2001:67c:670:100:2e4d:54ff:fe67:bfa5] helo=ginster)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1ibiss-0006vf-27
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 11:24:50 +0100
Received: from jbe by ginster with local (Exim 4.92)
 (envelope-from <jbe@pengutronix.de>) id 1ibisr-00068N-PZ
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 11:24:49 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon,  2 Dec 2019 11:24:49 +0100
Message-Id: <20191202102449.23535-2-jbe@pengutronix.de>
In-Reply-To: <20191202102449.23535-1-jbe@pengutronix.de>
References: <20191202102449.23535-1-jbe@pengutronix.de>
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
Subject: [PATCH 2/2] HABv4: fix ROM code API usage
To: barebox@lists.infradead.org

Even if the provided buffer is too small, the call returns with an
HAB_STATUS_SUCCESS status, but the buffer doesn't contain any data in this
case. Instead the required buffer length is reported back.
This change re-organizes the event reporting by first calling the ROM code
for the event's size and then providing the required buffer. Handling for
both classes of reports (errors and warnings) is the same, so use one
function for requesting the event data.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/hab/habv4.c | 54 +++++++++++++++++++++++++++++++++------------
 1 file changed, 40 insertions(+), 14 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index f1f45648f5..6e4736e927 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -503,11 +503,37 @@ static bool is_known_rng_fail_event(const uint8_t *data, size_t len)
 	return false;
 }
 
+static int habv4_get_event(uint8_t **buf, uint32_t *len, const struct habv4_rvt *rvt,
+			   enum hab_status class, uint32_t idx)
+{
+	uint8_t *data;
+	enum hab_status stat;
+
+	*len = 0;
+	/* call for the event and its size */
+	stat = rvt->report_event(class, idx, NULL, len);
+	if (stat != HAB_STATUS_SUCCESS)
+		return -ENODATA; /* regular use case to detect the last available event */
+
+	data = xmalloc(*len);
+	/* now get the data */
+	stat = rvt->report_event(class, idx, data, len);
+	if (stat != HAB_STATUS_SUCCESS) {
+		pr_err("HAB API misbehaviour detected\n");
+		free(data);
+		return -EINVAL;
+	}
+
+	*buf = data;
+	return 0;
+}
+
 static int habv4_get_status(const struct habv4_rvt *rvt)
 {
-	uint8_t data[256];
+	uint8_t *data;
 	uint32_t len;
-	uint32_t index = 0;
+	uint32_t index;
+	int rc;
 	enum hab_status status;
 	enum hab_config config = 0x0;
 	enum hab_state state = 0x0;
@@ -527,32 +553,32 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 		return 0;
 	}
 
-	len = sizeof(data);
-	while (rvt->report_event(HAB_STATUS_WARNING, index, data, &len) == HAB_STATUS_SUCCESS) {
+	for (index = 0; ; index++) {
+		rc = habv4_get_event(&data, &len, rvt, HAB_STATUS_WARNING, index);
+		if (rc != 0)
+			break;
 
 		/* suppress RNG self-test fail events if they can be handled in software */
 		if (IS_ENABLED(CONFIG_CRYPTO_DEV_FSL_CAAM_RNG_SELF_TEST) &&
 		    is_known_rng_fail_event(data, len)) {
 			pr_debug("RNG self-test failure detected, will run software self-test\n");
 		} else {
-			pr_err("-------- HAB warning Event %d --------\n", index);
+			pr_err("-------- HAB warning Event %u --------\n", index);
 			pr_err("event data:\n");
 			habv4_display_event(data, len);
 		}
-
-		len = sizeof(data);
-		index++;
+		free(data);
 	}
 
-	len = sizeof(data);
-	index = 0;
-	while (rvt->report_event(HAB_STATUS_FAILURE, index, data, &len) == HAB_STATUS_SUCCESS) {
-		pr_err("-------- HAB failure Event %d --------\n", index);
+	for (index = 0; ; index++) {
+		rc = habv4_get_event(&data, &len, rvt, HAB_STATUS_FAILURE, index);
+		if (rc != 0)
+			break;
+		pr_err("-------- HAB failure Event %u --------\n", index);
 		pr_err("event data:\n");
 
 		habv4_display_event(data, len);
-		len = sizeof(data);
-		index++;
+		free(data);
 	}
 
 	return -EPERM;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
