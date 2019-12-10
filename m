Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iej4q-0001fn-ML
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 17:13:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so4097032wmj.5
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 09:13:36 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue, 10 Dec 2019 18:13:04 +0100
Message-Id: <20191210171305.24276-4-h.feurstein@gmail.com>
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
Subject: [PATCH 4/4] led: parse panic-indicator from device-tree
To: barebox@lists.infradead.org
Cc: Hubert Feurstein <h.feurstein@gmail.com>

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 Documentation/devicetree/bindings/leds/common.rst |  3 +++
 drivers/led/core.c                                | 11 ++++++++---
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Documentation/devicetree/bindings/leds/common.rst
index 5a592d67d..911a55f4f 100644
--- a/Documentation/devicetree/bindings/leds/common.rst
+++ b/Documentation/devicetree/bindings/leds/common.rst
@@ -12,3 +12,6 @@ Common leds properties
 
 * ``label``: The label for this LED. If omitted, the label is taken
   from the node name (excluding the unit address).
+
+* ``panic-indicator`` - This property specifies that the LED should be used as a
+ panic indicator.
diff --git a/drivers/led/core.c b/drivers/led/core.c
index 4bf19abcc..e727148a2 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -286,11 +286,16 @@ enum led_trigger trigger_by_name(const char *name)
 
 void led_of_parse_trigger(struct led *led, struct device_node *np)
 {
-	enum led_trigger trg;
+	enum led_trigger trg = LED_TRIGGER_MAX;
 	const char *trigger;
 
-	trigger = of_get_property(np, "linux,default-trigger", NULL);
-	trg = trigger_by_name(trigger);
+	if (of_property_read_bool(np, "panic-indicator"))
+		trg = LED_TRIGGER_PANIC;
+
+	if (trg == LED_TRIGGER_MAX) {
+		trigger = of_get_property(np, "linux,default-trigger", NULL);
+		trg = trigger_by_name(trigger);
+	}
 
 	if (trg == LED_TRIGGER_MAX) {
 		trigger = of_get_property(np, "barebox,default-trigger", NULL);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
