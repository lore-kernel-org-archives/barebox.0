Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuJE8-0002o1-Nn
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 15:14:50 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 27 Aug 2018 17:14:25 +0200
Message-Id: <20180827151428.3032-3-mkl@pengutronix.de>
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
Subject: [PATCH 2/5] i.MX habv4: convert habv4_get_status() and
 habv4_display_event() from printf to pr_err()
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

This way the events will be printed into the dmesg buffer,

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/hab/habv4.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 9ccec7847d9f..4d2d377d084a 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -163,17 +163,17 @@ static void habv4_display_event(uint8_t *data, uint32_t len)
 
 	if (data && len) {
 		for (i = 0; i < len; i++) {
-			if (i == 0)
-				printf(" %02x", data[i]);
-			else if ((i % 8) == 0)
-				printf("\n %02x", data[i]);
+			if ((i % 8) == 0)
+				pr_err(" %02x", data[i]);
 			else if ((i % 4) == 0)
-				printf("  %02x", data[i]);
+				pr_cont("  %02x", data[i]);
+			else if ((i % 8) == 7)
+				pr_cont(" %02x\n", data[i]);
 			else
-				printf(" %02x", data[i]);
+				pr_cont(" %02x", data[i]);
 		}
+		pr_cont("\n");
 	}
-	printf("\n\n");
 }
 
 static int habv4_get_status(const struct habv4_rvt *rvt)
@@ -201,8 +201,8 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 	}
 
 	while (rvt->report_event(HAB_STATUS_FAILURE, index, data, &len) == HAB_STATUS_SUCCESS) {
-		printf("-------- HAB Event %d --------\n"
-		       "event data:\n", index);
+		pr_err("-------- HAB Event %d --------\n", index);
+		pr_err("event data:\n");
 
 		habv4_display_event(data, len);
 		len = sizeof(data);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
