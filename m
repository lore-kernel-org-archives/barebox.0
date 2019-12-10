Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iej4q-0001ff-Q5
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 17:13:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id a15so20961837wrf.9
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 09:13:35 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 10 Dec 2019 18:13:03 +0100
Message-Id: <20191210171305.24276-3-h.feurstein@gmail.com>
In-Reply-To: <20191210171305.24276-1-h.feurstein@gmail.com>
References: <20191210171305.24276-1-h.feurstein@gmail.com>
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
Subject: [PATCH 3/4] led: check for 'barebox, default-trigger' when 'linux,
 default-trigger' is not found
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <h.feurstein@gmail.com>

When the linux,default-trigger is not found by barebox, then also check if
there might be a barebox,default-trigger.

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/led/core.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index fec7324e7..4bf19abcc 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -274,6 +274,9 @@ enum led_trigger trigger_by_name(const char *name)
 {
 	int i;
 
+	if (!name)
+		return LED_TRIGGER_MAX;
+
 	for (i = 0; i < LED_TRIGGER_MAX; i++)
 		if (!strcmp(name, trigger_names[i]))
 			return i;
@@ -287,13 +290,13 @@ void led_of_parse_trigger(struct led *led, struct device_node *np)
 	const char *trigger;
 
 	trigger = of_get_property(np, "linux,default-trigger", NULL);
-	if (!trigger)
-		trigger = of_get_property(np, "barebox,default-trigger", NULL);
+	trg = trigger_by_name(trigger);
 
-	if (!trigger)
-		return;
+	if (trg == LED_TRIGGER_MAX) {
+		trigger = of_get_property(np, "barebox,default-trigger", NULL);
+		trg = trigger_by_name(trigger);
+	}
 
-	trg = trigger_by_name(trigger);
 	if (trg != LED_TRIGGER_MAX) {
 		/* disable LED before installing trigger */
 		led_set(led, 0);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
