Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSh-0000q9-9L
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:57 +0000
Received: by mail-pl1-x643.google.com with SMTP id d23-v6so1237544pls.11
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:12 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:51 -0700
Message-Id: <20181027013157.23135-6-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/11] commands: gpio: Move argument parsing into a shared
 function
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/gpio.c | 48 +++++++++++++++++++++++++++++-------------------
 1 file changed, 29 insertions(+), 19 deletions(-)

diff --git a/commands/gpio.c b/commands/gpio.c
index 08ecc152d..5a28493d1 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -16,14 +16,29 @@
 #include <errno.h>
 #include <gpio.h>
 
-static int do_gpio_get_value(int argc, char *argv[])
+static int get_gpio_and_value(int argc, char *argv[],
+			      int *gpio, int *value)
 {
-	int gpio, value;
+	const int count = value ? 3 : 2;
 
-	if (argc < 2)
+	if (argc < count)
 		return COMMAND_ERROR_USAGE;
 
-	gpio = simple_strtoul(argv[1], NULL, 0);
+	*gpio = simple_strtoul(argv[1], NULL, 0);
+
+	if (value)
+		*value = simple_strtoul(argv[2], NULL, 0);
+
+	return 0;
+}
+
+static int do_gpio_get_value(int argc, char *argv[])
+{
+	int gpio, value, ret;
+
+	ret = get_gpio_and_value(argc, argv, &gpio, NULL);
+	if (ret)
+		return ret;
 
 	value = gpio_get_value(gpio);
 	if (value < 0)
@@ -41,13 +56,11 @@ BAREBOX_CMD_END
 
 static int do_gpio_set_value(int argc, char *argv[])
 {
-	int gpio, value;
-
-	if (argc < 3)
-		return COMMAND_ERROR_USAGE;
+	int gpio, value, ret;
 
-	gpio = simple_strtoul(argv[1], NULL, 0);
-	value = simple_strtoul(argv[2], NULL, 0);
+	ret = get_gpio_and_value(argc, argv, &gpio, &value);
+	if (ret)
+		return ret;
 
 	gpio_set_value(gpio, value);
 
@@ -65,10 +78,9 @@ static int do_gpio_direction_input(int argc, char *argv[])
 {
 	int gpio, ret;
 
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
-
-	gpio = simple_strtoul(argv[1], NULL, 0);
+	ret = get_gpio_and_value(argc, argv, &gpio, NULL);
+	if (ret)
+		return ret;
 
 	ret = gpio_direction_input(gpio);
 	if (ret)
@@ -88,11 +100,9 @@ static int do_gpio_direction_output(int argc, char *argv[])
 {
 	int gpio, value, ret;
 
-	if (argc < 3)
-		return COMMAND_ERROR_USAGE;
-
-	gpio = simple_strtoul(argv[1], NULL, 0);
-	value = simple_strtoul(argv[2], NULL, 0);
+	ret = get_gpio_and_value(argc, argv, &gpio, &value);
+	if (ret)
+		return ret;
 
 	ret = gpio_direction_output(gpio, value);
 	if (ret)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
