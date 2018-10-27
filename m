Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSf-0000sj-7H
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:39 +0000
Received: by mail-pg1-x542.google.com with SMTP id i4-v6so1286650pgq.9
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:54 -0700
Message-Id: <20181027013157.23135-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/11] commands: gpio: Allow GPIOs to be specified by label
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/gpio.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/commands/gpio.c b/commands/gpio.c
index 3a2b8624f..951ad2c28 100644
--- a/commands/gpio.c
+++ b/commands/gpio.c
@@ -20,14 +20,17 @@ static int get_gpio_and_value(int argc, char *argv[],
 			      int *gpio, int *value)
 {
 	const int count = value ? 3 : 2;
-	int ret;
+	int ret = 0;
 
 	if (argc < count)
 		return COMMAND_ERROR_USAGE;
 
-	ret = kstrtoint(argv[1], 0, gpio);
-	if (ret < 0)
-		return ret;
+	*gpio = gpio_find_by_label(argv[1]);
+	if (*gpio < 0) {
+		ret = kstrtoint(argv[1], 0, gpio);
+		if (ret < 0)
+			return ret;
+	}
 
 	if (value)
 		ret = kstrtoint(argv[2], 0, value);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
