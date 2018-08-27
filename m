Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuJE5-000773-1q
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 15:14:58 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 27 Aug 2018 17:14:26 +0200
Message-Id: <20180827151428.3032-4-mkl@pengutronix.de>
In-Reply-To: <20180827151428.3032-1-mkl@pengutronix.de>
References: <20180827151428.3032-1-mkl@pengutronix.de>
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
Subject: [PATCH 3/5] i.MX habv4: habv4_get_status(): display warning events,
 too
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

The current code only retrieves the HAB errors from the ROM. If there are HAB
warnings during startup, the code throws this wrong error message.

> HABv4: ERROR: Recompile with larger event data buffer (at least 36 bytes)

The correct solution is to retrieve the warnings from the ROM, too.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/hab/habv4.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 4d2d377d084a..74b5af2229c3 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -179,7 +179,7 @@ static void habv4_display_event(uint8_t *data, uint32_t len)
 static int habv4_get_status(const struct habv4_rvt *rvt)
 {
 	uint8_t data[256];
-	uint32_t len = sizeof(data);
+	uint32_t len;
 	uint32_t index = 0;
 	enum hab_status status;
 	enum hab_config config = 0x0;
@@ -200,8 +200,19 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 		return 0;
 	}
 
+	len = sizeof(data);
+	while (rvt->report_event(HAB_STATUS_WARNING, index, data, &len) == HAB_STATUS_SUCCESS) {
+		pr_err("-------- HAB warning Event %d --------\n", index);
+		pr_err("event data:\n");
+
+		habv4_display_event(data, len);
+		len = sizeof(data);
+		index++;
+	}
+
+	len = sizeof(data);
 	while (rvt->report_event(HAB_STATUS_FAILURE, index, data, &len) == HAB_STATUS_SUCCESS) {
-		pr_err("-------- HAB Event %d --------\n", index);
+		pr_err("-------- HAB failure Event %d --------\n", index);
 		pr_err("event data:\n");
 
 		habv4_display_event(data, len);
@@ -210,6 +221,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 	}
 
 	/* Check reason for stopping */
+	len = sizeof(data);
 	if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) == HAB_STATUS_SUCCESS)
 		pr_err("ERROR: Recompile with larger event data buffer (at least %d bytes)\n\n", len);
 
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
