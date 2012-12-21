Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tm2di-0005hg-JB
 for barebox@lists.infradead.org; Fri, 21 Dec 2012 13:27:51 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id A9994FF98B7
 for <barebox@lists.infradead.org>; Fri, 21 Dec 2012 14:40:10 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 21 Dec 2012 14:26:09 +0100
Message-Id: <1356096369-14523-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1356096369-14523-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121221132530.GB3406@game.jcrosoft.org>
 <1356096369-14523-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] gpiolib: add command to dump the current gpio status
To: barebox@lists.infradead.org

This will allow to known which gpio is requested by what

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/gpio/gpio.c |   37 +++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/gpio/gpio.c b/drivers/gpio/gpio.c
index ed9f923..d37f5a0 100644
--- a/drivers/gpio/gpio.c
+++ b/drivers/gpio/gpio.c
@@ -1,4 +1,6 @@
 #include <common.h>
+#include <command.h>
+#include <complete.h>
 #include <gpio.h>
 #include <errno.h>
 #include <malloc.h>
@@ -198,3 +200,38 @@ int gpio_get_num(struct device_d *dev, int gpio)
 
 	return -ENODEV;
 }
+
+#ifdef CONFIG_CMD_GPIO
+static int do_gpiolib(int argc, char *argv[])
+{
+	int i;
+
+	printf("gpiolib: gpio lists\n");
+	printf("%*crequested  label\n", 11, ' ');
+
+	for (i = 0; i < ARCH_NR_GPIOS; i++) {
+		struct gpio_info *gi = &gpio_desc[i];
+
+		if (!gi->chip)
+			continue;
+
+		printf("gpio %*d: %*s  %s\n", 4,
+			i, 9, gi->requested ? "true" : "false",
+			gi->label ? gi->label : "");
+	}
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(gpiolib)
+BAREBOX_CMD_HELP_USAGE("gpiolib\n")
+BAREBOX_CMD_HELP_SHORT("dump current registered gpio\n");
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(gpiolib)
+	.cmd		= do_gpiolib,
+	.usage		= "dump current registered gpio",
+	BAREBOX_CMD_HELP(cmd_gpiolib_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
+#endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
