Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdZsB-0004n8-KN
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 14:16:20 +0000
From: Robin van der Gracht <robin@protonic.nl>
Date: Fri, 13 Nov 2020 15:16:07 +0100
Message-Id: <20201113141607.1957779-1-robin@protonic.nl>
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
Subject: [PATCH] hab: habv4: Don't reset index when checking for more events
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>, Robin van der Gracht <robin@protonic.nl>

If index is reset and the event record pointer is NULL the size of the
indexed event will be written to 'len'.

Currently this results in always printing the buffer overflow error if
there is a HAB event. The index shouldn't be reset to get the size of the
'next' unhandled event. This can occur if there are more events of a single
type than the event buffer (data) can hold.

Telling the user to recompile with an incomplete additional size
suggestion seems useless so I changed it to something more generic.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 drivers/hab/habv4.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index e94f82754..3df1d8d3d 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -504,7 +504,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 {
 	uint8_t data[256];
 	uint32_t len;
-	uint32_t index = 0;
+	uint32_t cnt, index = 0;
 	enum hab_status status;
 	enum hab_config config = 0x0;
 	enum hab_state state = 0x0;
@@ -540,6 +540,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 		len = sizeof(data);
 		index++;
 	}
+	cnt = index;
 
 	len = sizeof(data);
 	index = 0;
@@ -551,12 +552,12 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 		len = sizeof(data);
 		index++;
 	}
+	cnt += index;
 
-	/* Check reason for stopping */
+	/* Check if there are more events */
 	len = sizeof(data);
-	index = 0;
-	if (rvt->report_event(HAB_STATUS_ANY, index, NULL, &len) == HAB_STATUS_SUCCESS)
-		pr_err("ERROR: Recompile with larger event data buffer (at least %d bytes)\n\n", len);
+	if (rvt->report_event(HAB_STATUS_ANY, cnt, NULL, &len) == HAB_STATUS_SUCCESS)
+		pr_err("WARNING: There are more (undisplayed) events\n");
 
 	return -EPERM;
 }
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
