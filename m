Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbkQh-0002ul-Oo
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 06:08:56 +0000
Date: Wed, 8 Oct 2014 08:08:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141008060829.GU4992@pengutronix.de>
References: <CANvTkNYwuCuGQMY40VC=dJxzW8rhBjDA_HE_Mb8AuV9iep7sYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANvTkNYwuCuGQMY40VC=dJxzW8rhBjDA_HE_Mb8AuV9iep7sYw@mail.gmail.com>
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
Subject: Re: most xxx_defconfig stop linking when console support set to
 CONSOLE_NONE
To: Kevin Du Huanpeng <u74147@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Kevin,

On Wed, Oct 08, 2014 at 01:42:36PM +0800, Kevin Du Huanpeng wrote:
> 
> I am confusing with CONSOLE_NONE, what is it mean?
> 1. the board don't have a console?
>         is the board still can have a serial port, but not accepts input?
> 2. where should the debug messages go?
>         the serial port is not a console but
>         when CONSOLE_NONE defined, printf just a nothing but return a 0,
>         but the pr_print() declared but not defined.

CONSOLE_NONE is for boards which a) Don't have anything usable for
console or b) have a console but you want to build a quiet,
non-interactive barebox. The idea is to drop all the strings from the
binary to make it smaller.It seems noone ever used CONSOLE_NONE, so it
bitrotted. The following patch fixes this.

Sascha

----------------------------8<---------------------------

From fbb191fd416de27148bc977c320e07c95b4ca36c Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 8 Oct 2014 08:05:44 +0200
Subject: [PATCH] console: Fix CONSOLE_NONE support

Without console support we need a static inline version of
pr_print and dev_printf, otherwise we get link errors.

Reported-by: Kevin Du Huanpeng <u74147@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/printk.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/printk.h b/include/printk.h
index fb63586..22c6c73 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -21,11 +21,23 @@
 
 /* debugging and troubleshooting/diagnostic helpers. */
 
+#ifndef CONFIG_CONSOLE_NONE
 int pr_print(int level, const char *format, ...)
 	__attribute__ ((format(__printf__, 2, 3)));
 
 int dev_printf(int level, const struct device_d *dev, const char *format, ...)
 	__attribute__ ((format(__printf__, 3, 4)));
+#else
+static inline int pr_print(int level, const char *format, ...)
+{
+	return 0;
+}
+
+static inline int dev_printf(int level, const struct device_d *dev, const char *format, ...)
+{
+	return 0;
+}
+#endif
 
 #define __dev_printf(level, dev, format, args...) \
 	({	\
-- 
2.1.0


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
