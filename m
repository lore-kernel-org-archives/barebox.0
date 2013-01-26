Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TytLj-0007AI-0P
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 00:10:24 +0000
Received: from mail414.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 66341FFA5A8
 for <barebox@lists.infradead.org>; Sat, 26 Jan 2013 01:20:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 26 Jan 2013 01:08:54 +0100
Message-Id: <1359158934-9369-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] Animeo IP: use gpiolib ip to detect the hw version
To: barebox@lists.infradead.org

if err assume
SubCo
SDN

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/init.c |   50 +++++++++++++++++++++++++++++---------
 1 file changed, 39 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index e5e8694..9063567 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -29,28 +29,56 @@
 static bool animeo_ip_is_buco;
 static bool animeo_ip_is_io;
 
+static int animeo_ip_get_pio_revision(int gpio, char *name)
+{
+	int ret;
+
+	ret = gpio_request(gpio, name);
+	if (ret) {
+		pr_err("animeo_ip: can not request gpio %d as %s (%d)\n",
+			gpio, name, ret);
+		return ret;
+	}
+
+	ret = gpio_direction_input(gpio);
+
+	if (ret) {
+		pr_err("animeo_ip: can configure gpio %d (%s) as input (%d)\n",
+			gpio, name, ret);
+		return ret;
+	}
+
+	return gpio_get_value(gpio);
+}
+
 static void animeo_ip_detect_version(void)
 {
 	struct device_d *dev = NULL;
 	char *model, *version;
+	int val;
 
-	at91_set_gpio_input(AT91_PIN_PC20, 0);
-	at91_set_gpio_input(AT91_PIN_PC21, 0);
-
-	animeo_ip_is_buco = !!gpio_get_value(AT91_PIN_PC20);
-	animeo_ip_is_io = !!gpio_get_value(AT91_PIN_PC21);
+	animeo_ip_is_io = false;
+	animeo_ip_is_buco = false;
+	model = "SubCo";
+	version = "SDN";
 
 	dev = add_generic_device_res("animeo_ip", DEVICE_ID_SINGLE, NULL, 0, NULL);
 
-	if (animeo_ip_is_buco)
-		model = "BuCo";
-	else
+	val = animeo_ip_get_pio_revision(AT91_PIN_PC20, "is_buco");
+	if (val < 0) {
+		pr_warn("Can not detect model use %s by default\n", model);
+	} else if (val) {
+		animeo_ip_is_buco = true;
 		model = "SubCo";
+	}
 
-	if (animeo_ip_is_io)
+	val = animeo_ip_get_pio_revision(AT91_PIN_PC21, "is_io");
+	if (val < 0) {
+		pr_warn("Can not detect version use %s by default\n", model);
+	} else if (val) {
+		animeo_ip_is_io = true;
 		version = "IO";
-	else
-		version = "SDN";
+	}
 
 	dev_add_param_fixed(dev, "model", model);
 	dev_add_param_fixed(dev, "version", version);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
