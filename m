Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRdDs-0002DE-F6
 for barebox@lists.infradead.org; Thu, 03 Oct 2013 07:21:22 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 3602810550D2
 for <barebox@lists.infradead.org>; Thu,  3 Oct 2013 09:20:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  3 Oct 2013 09:21:53 +0200
Message-Id: <1380784920-30890-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20131003071723.GP32444@ns203013.ovh.net>
References: <20131003071723.GP32444@ns203013.ovh.net>
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
Subject: [PATCH 1/8] console: factorise function to get the first enabled
 console
To: barebox@lists.infradead.org

rename it to console_get_first_active

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/ppc/mach-mpc85xx/fdt.c |  4 +---
 commands/loadb.c            | 22 +---------------------
 commands/loadxy.c           | 24 ++----------------------
 common/console_common.c     | 21 +++++++++++++++++++++
 include/console.h           |  1 +
 5 files changed, 26 insertions(+), 46 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/fdt.c b/arch/ppc/mach-mpc85xx/fdt.c
index 4feae44..65de6f1 100644
--- a/arch/ppc/mach-mpc85xx/fdt.c
+++ b/arch/ppc/mach-mpc85xx/fdt.c
@@ -70,9 +70,7 @@ static int fdt_stdout_setup(struct device_node *blob)
 		goto error;
 	}
 
-	for_each_console(cdev)
-		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
-			break;
+	cdev = console_get_first_active();
 	if (cdev)
 		sprintf(sername, "serial%d", cdev->dev->id);
 	else
diff --git a/commands/loadb.c b/commands/loadb.c
index a2f3315..b527e00 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -591,26 +591,6 @@ err_quit:
 }
 
 /**
- * @brief returns current used console device
- *
- * @return console device which is registered with CONSOLE_STDIN and
- * CONSOLE_STDOUT
- */
-static struct console_device *get_current_console(void)
-{
-	struct console_device *cdev;
-	/*
-	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
-	 * same output console
-	 */
-	for_each_console(cdev) {
-		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
-			return cdev;
-	}
-	return NULL;
-}
-
-/**
  * @brief provide the loadb(Kermit) or loadY mode support
  *
  * @param cmdtp
@@ -650,7 +630,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 		}
 	}
 
-	cdev = get_current_console();
+	cdev = console_get_first_active();
 	if (NULL == cdev) {
 		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
 		return -ENODEV;
diff --git a/commands/loadxy.c b/commands/loadxy.c
index 52ecdca..7a91286 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -40,26 +40,6 @@
 
 #define DEF_FILE	"image.bin"
 
-/**
- * @brief returns current used console device
- *
- * @return console device which is registered with CONSOLE_STDIN and
- * CONSOLE_STDOUT
- */
-static struct console_device *get_current_console(void)
-{
-	struct console_device *cdev;
-	/*
-	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
-	 * same output console
-	 */
-	for_each_console(cdev) {
-		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
-			return cdev;
-	}
-	return NULL;
-}
-
 static int console_change_speed(struct console_device *cdev, int baudrate)
 {
 	int current_baudrate;
@@ -134,7 +114,7 @@ static int do_loady(int argc, char *argv[])
 	if (cname)
 		cdev = get_named_console(cname);
 	else
-		cdev = get_current_console();
+		cdev = console_get_first_active();
 	if (!cdev) {
 		printf("%s:No console device %s with STDIN and STDOUT\n",
 		       argv[0], cname ? cname : "default");
@@ -202,7 +182,7 @@ static int do_loadx(int argc, char *argv[])
 	if (cname)
 		cdev = get_named_console(cname);
 	else
-		cdev = get_current_console();
+		cdev = console_get_first_active();
 	if (!cdev) {
 		printf("%s:No console device %s with STDIN and STDOUT\n",
 		       argv[0], cname ? cname : "default");
diff --git a/common/console_common.c b/common/console_common.c
index a02b955..c3a3053 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -181,3 +181,24 @@ struct console_device *console_get_by_dev(struct device_d *dev)
 	return NULL;
 }
 EXPORT_SYMBOL(console_get_by_dev);
+
+/**
+ * @brief returns current used console device
+ *
+ * @return console device which is registered with CONSOLE_STDIN and
+ * CONSOLE_STDOUT
+ */
+struct console_device *console_get_first_active(void)
+{
+	struct console_device *cdev;
+	/*
+	 * Assumption to have BOTH CONSOLE_STDIN AND STDOUT in the
+	 * same output console
+	 */
+	for_each_console(cdev) {
+		if ((cdev->f_active & (CONSOLE_STDIN | CONSOLE_STDOUT)))
+			return cdev;
+	}
+	return NULL;
+}
+EXPORT_SYMBOL(console_get_first_active);
diff --git a/include/console.h b/include/console.h
index 0e29255..2bf791c 100644
--- a/include/console.h
+++ b/include/console.h
@@ -65,5 +65,6 @@ bool console_is_input_allow(void);
 void console_allow_input(bool val);
 
 extern int barebox_loglevel;
+struct console_device *console_get_first_active(void);
 
 #endif
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
