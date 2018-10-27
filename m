Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSi-0000qp-M2
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:33:03 +0000
Received: by mail-pl1-x644.google.com with SMTP id o19-v6so1233954pll.12
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:13 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:52 -0700
Message-Id: <20181027013157.23135-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/11] commands: gpio: Use kstrtoint() instead of
 simple_strtoul()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use kstrtoint() instead of simple_strtoul() in order to properly
handle invalid arguments. Current code using simple_strtoul() results
in following:

barebox@ZII RDU2 Board:/ gpio_get_value foo
barebox@ZII RDU2 Board:/ echo $?
0

whereas with this patch we get:

barebox@ZII RDU2 Board:/ gpio_get_value foo
gpio_get_value: Invalid argument

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/gpio.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/commands/gpio.c b/commands/gpio.c
index 5a28493d1..3a2b8624f 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -20,16 +20,19 @@ static int get_gpio_and_value(int argc, char *argv[],
 			      int *gpio, int *value)
 {
 	const int count = value ? 3 : 2;
+	int ret;
 
 	if (argc < count)
 		return COMMAND_ERROR_USAGE;
 
-	*gpio = simple_strtoul(argv[1], NULL, 0);
+	ret = kstrtoint(argv[1], 0, gpio);
+	if (ret < 0)
+		return ret;
 
 	if (value)
-		*value = simple_strtoul(argv[2], NULL, 0);
+		ret = kstrtoint(argv[2], 0, value);
 
-	return 0;
+	return ret;
 }
 
 static int do_gpio_get_value(int argc, char *argv[])
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
