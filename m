Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffvm-0006ZI-RR
 for barebox@lists.infradead.org; Tue, 25 Jun 2019 07:31:56 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 25 Jun 2019 09:31:46 +0200
Message-Id: <20190625073146.26639-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20190625073146.26639-1-r.czerwinski@pengutronix.de>
References: <20190625073146.26639-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/2] i.MX: HABv4: Reset index variable after error type
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

The index variable is used for each error type, it should be reset to 0
before retrieving the next error status, otherwise error messages are
skipped if the preceding error type incremented index.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/hab/habv4.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 2e3e349b0b..6a60be6853 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -469,6 +469,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 	}
 
 	len = sizeof(data);
+	index = 0;
 	while (rvt->report_event(HAB_STATUS_FAILURE, index, data, &len) == HAB_STATUS_SUCCESS) {
 		pr_err("-------- HAB failure Event %d --------\n", index);
 		pr_err("event data:\n");
@@ -480,6 +481,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 
 	/* Check reason for stopping */
 	len = sizeof(data);
+	index = 0;
 	if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) == HAB_STATUS_SUCCESS)
 		pr_err("ERROR: Recompile with larger event data buffer (at least %d bytes)\n\n", len);
 
-- 
2.22.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
