Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvH-0005vU-DJ
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:40 +0000
Received: by mail-pj1-x1044.google.com with SMTP id nu11so1458782pjb.1
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:39 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:03 -0700
Message-Id: <20200331184722.22707-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/23] ARM: zii-common: Check for I2C errors in
 do_rdu2_switch_reset()
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---
 arch/arm/boards/zii-common/switch-cmd.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/zii-common/switch-cmd.c b/arch/arm/boards/zii-common/switch-cmd.c
index 2b9c34bfa..5e39d8fc6 100644
--- a/arch/arm/boards/zii-common/switch-cmd.c
+++ b/arch/arm/boards/zii-common/switch-cmd.c
@@ -19,6 +19,7 @@
 static int do_rdu2_switch_reset(void)
 {
 	struct i2c_client client;
+	int ret;
 	u8 reg;
 
 	client.adapter = i2c_get_adapter(1);
@@ -29,12 +30,25 @@ static int do_rdu2_switch_reset(void)
 	client.addr = 0x38;
 	reg = 0x78;
 	/* set switch reset time to 100ms */
-	i2c_write_reg(&client, 0x0a, &reg, 1);
+
+	ret = i2c_write_reg(&client, 0x0a, &reg, 1);
+	if (ret < 0) {
+		pr_err("Failed to set switch reset time\n");
+		return ret;
+	}
 	/* reset the switch */
 	reg = 0x01;
-	i2c_write_reg(&client, 0x0d, &reg, 1);
+	ret = i2c_write_reg(&client, 0x0d, &reg, 1);
+	if (ret < 0) {
+		pr_err("Failed to reset the switch\n");
+		return ret;
+	}
 	/* issue dummy command to work around firmware bug */
-	i2c_read_reg(&client, 0x01, &reg, 1);
+	ret = i2c_read_reg(&client, 0x01, &reg, 1);
+	if (ret < 0) {
+		pr_err("Failed to issue a dummy command\n");
+		return ret;
+	}
 
 	return 0;
 }
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
