Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvJ-0005yZ-TD
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:44 +0000
Received: by mail-pj1-x1044.google.com with SMTP id fh8so1453086pjb.5
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:05 -0700
Message-Id: <20200331184722.22707-7-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/23] ARM: zii-common: Find switch watchdog via DT
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use of_find_i2c_device_by_node() in swith reset code in order to be
able to support other devices that have this MCU on a different I2C
busses.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-common/switch-cmd.c | 25 ++++++++++++++++---------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/zii-common/switch-cmd.c b/arch/arm/boards/zii-common/switch-cmd.c
index 5e39d8fc6..02802ff86 100644
--- a/arch/arm/boards/zii-common/switch-cmd.c
+++ b/arch/arm/boards/zii-common/switch-cmd.c
@@ -18,33 +18,40 @@
 
 static int do_rdu2_switch_reset(void)
 {
-	struct i2c_client client;
+	struct device_node *np;
+	struct i2c_client *client;
 	int ret;
 	u8 reg;
 
-	client.adapter = i2c_get_adapter(1);
-	if (!client.adapter)
+	np = of_find_compatible_node(NULL, NULL, "zii,rave-wdt");
+	if (!np) {
+		pr_err("No switch watchdog node found\n");
 		return -ENODEV;
+	}
+
+	client = of_find_i2c_device_by_node(np);
+	if (!client) {
+		pr_err("No switch watchdog I2C device found\n");
+		return -ENODEV;
+	}
 
-	/* address of the switch watchdog microcontroller */
-	client.addr = 0x38;
 	reg = 0x78;
-	/* set switch reset time to 100ms */
 
-	ret = i2c_write_reg(&client, 0x0a, &reg, 1);
+	/* set switch reset time to 100ms */
+	ret = i2c_write_reg(client, 0x0a, &reg, 1);
 	if (ret < 0) {
 		pr_err("Failed to set switch reset time\n");
 		return ret;
 	}
 	/* reset the switch */
 	reg = 0x01;
-	ret = i2c_write_reg(&client, 0x0d, &reg, 1);
+	ret = i2c_write_reg(client, 0x0d, &reg, 1);
 	if (ret < 0) {
 		pr_err("Failed to reset the switch\n");
 		return ret;
 	}
 	/* issue dummy command to work around firmware bug */
-	ret = i2c_read_reg(&client, 0x01, &reg, 1);
+	ret = i2c_read_reg(client, 0x01, &reg, 1);
 	if (ret < 0) {
 		pr_err("Failed to issue a dummy command\n");
 		return ret;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
