Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eoljj-00034s-6v
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 07:56:39 +0000
Date: Thu, 22 Feb 2018 08:56:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180222075602.xvfvar5kwsfih43x@pengutronix.de>
References: <20180221082638.30664-1-eugen.wiens@jumo.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180221082638.30664-1-eugen.wiens@jumo.net>
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
Subject: Re: [PATCH] console: added colored print out of log levels
To: Eugen Wiens <eugen.wiens@jumo.net>
Cc: barebox@lists.infradead.org

Hi Eugen,

On Wed, Feb 21, 2018 at 09:26:38AM +0100, Eugen Wiens wrote:
> When the system is booting the warnings and errors are not be quickly
> discovered. With this improvement the errors are colored red, the
> warnings yellow and the notices blue.

I polished the patch a bit to match the barebox coding style. However,
there is still one detail I do not like. Some pr_err() messages have
pr_err("ERROR: bla\n"). With colored console we now get:
"ERROR: ERROR: bla". Now we could say we remove all "ERROR:" strings
from the callers, but then we would have no "ERROR:" at all when
colored console is disabled. The obvious solution would be to always
add "ERROR:" to the messages, be it colored or not.
I applied it for now, but I think this is not the final solution.

Sascha

--------------------------------8<-----------------------------------

From a019f725ab48536a4bb93ec2dea319d9fc5206c5 Mon Sep 17 00:00:00 2001
From: Eugen Wiens <eugen.wiens@jumo.net>
Date: Wed, 21 Feb 2018 09:26:38 +0100
Subject: [PATCH] console: added colored print out of log levels

When the system is booting the warnings and errors are not be quickly discovered. With this improvement the errors are colored red, the warnings yellow and the notices blue.

Signed-off-by: Eugen Wiens <eugen.wiens@jumo.net>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_common.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/common/console_common.c b/common/console_common.c
index 0202345a62..00e020bd35 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -33,6 +33,15 @@
 
 #ifndef CONFIG_CONSOLE_NONE
 
+static const char *colored_log_level[] = {
+	[MSG_EMERG] = "\033[31mEMERG:\033[0m ",		/* red */
+	[MSG_ALERT] = "\033[31mALERT:\033[0m ",		/* red */
+	[MSG_CRIT] = "\033[31mCRITICAL:\033[0m ",	/* red */
+	[MSG_ERR] = "\033[31mERROR:\033[0m ",		/* red */
+	[MSG_WARNING] = "\033[33mWARNING:\033[0m ",	/* yellow */
+	[MSG_NOTICE] = "\033[34mNOTICE:\033[0m ",	/* blue */
+};
+
 int barebox_loglevel = CONFIG_DEFAULT_LOGLEVEL;
 
 LIST_HEAD(barebox_logbuf);
@@ -102,6 +111,18 @@ nolog:
 	puts(str);
 }
 
+static void print_colored_log_level(const int level)
+{
+	if (!console_allow_color())
+		return;
+	if (level >= ARRAY_SIZE(colored_log_level))
+		return;
+	if (!colored_log_level[level])
+		return;
+
+	pr_puts(level, colored_log_level[level]);
+}
+
 int pr_print(int level, const char *fmt, ...)
 {
 	va_list args;
@@ -111,6 +132,8 @@ int pr_print(int level, const char *fmt, ...)
 	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
 		return 0;
 
+	print_colored_log_level(level);
+
 	va_start(args, fmt);
 	i = vsprintf(printbuffer, fmt, args);
 	va_end(args);
@@ -129,6 +152,8 @@ int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 	if (!IS_ENABLED(CONFIG_LOGBUF) && level > barebox_loglevel)
 		return 0;
 
+	print_colored_log_level(level);
+
 	if (dev->driver && dev->driver->name)
 		ret += sprintf(printbuffer, "%s ", dev->driver->name);
 
-- 
2.16.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
