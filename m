Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OrAVL-00082O-G8
	for barebox@lists.infradead.org; Thu, 02 Sep 2010 14:11:04 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  2 Sep 2010 16:10:20 +0200
Message-Id: <1283436624-29567-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100902141001.GA28968@game.jcrosoft.org>
References: <20100902141001.GA28968@game.jcrosoft.org>
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
Subject: [PATCH 5/9] vsprintf: add %w and %w support to print unit
To: barebox@lists.infradead.org

Show a '%w' or %W thing.
This will show a frequency or byte at format xxx[.xxx] [ kMG]
the precision can not excess the base kMG of the current unit
otherwise it will be automatically reduce
if no precision is specified and there is rest we will use a default
precision of 3 as 66.667 M
base will be typically 1000 for Hz or B and 1024 for iB

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/kernel.h |   20 +++++++++++++
 lib/vsprintf.c         |   73 ++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 93 insertions(+), 0 deletions(-)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index e9e2f07..b605946 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -5,6 +5,26 @@
 #include <linux/barebox-wrapper.h>
 
 /*
+ * This looks more complex than it should be. But we need to
+ * get the type for the ~ right in round_down (it needs to be
+ * as wide as the result!), and we want to evaluate the macro
+ * arguments just once each.
+ */
+#define __round_mask(x, y) ((__typeof__(x))((y)-1))
+#define round_up(x, y) ((((x)-1) | __round_mask(x, y))+1)
+#define round_down(x, y) ((x) & ~__round_mask(x, y))
+
+#define FIELD_SIZEOF(t, f) (sizeof(((t*)0)->f))
+#define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
+#define roundup(x, y) ((((x) + ((y) - 1)) / (y)) * (y))
+#define DIV_ROUND_CLOSEST(x, divisor)(			\
+{							\
+	typeof(divisor) __divisor = divisor;		\
+	(((x) + ((__divisor) / 2)) / (__divisor));	\
+}							\
+)
+
+/*
  * min()/max()/clamp() macros that also do
  * strict type-checking.. See the
  * "unnecessary" pointer comparison.
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 6066845..add8bd5 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -254,6 +254,71 @@ static char *symbol_string(char *buf, char *end, void *ptr, int field_width, int
 }
 
 /*
+ * Show a '%w' or %W thing.  This will show a frequency or byte
+ * at format xxx[.xxx] [ kMG]
+ * the precision can not excess the base kMG of the current unit
+ * otherwise it will be automatically reduce
+ * if no precision is specified and there is rest we will use a default
+ * precision of 3 as 66.667 M
+ * base will be typically 1000 for Hz or B and 1024 for iB
+ */
+static char *unit_string(char *buf, char *end, long val, int base, int field_width, int precision, int flags)
+{
+	long rest = 0;
+	long integer;
+	long pr = 3;
+	long pr_mul = 1;
+	long unit = 1;
+	char format[] = " kMG";
+	int pow, i;
+
+	for (pow = 0; pow < strlen(format) - 1; pow++) {
+		if (val < unit * base)
+			break;
+		unit *= base;
+	}
+
+	integer = val / unit;
+
+	if (precision != -1) {
+		if (precision > pow * 3)
+			precision = pow * 3;
+		pr = precision;
+	}
+
+	for (i = 0; i < pr; i++) {
+		pr_mul *= 10;
+	}
+
+	if (val % unit) {
+		rest = DIV_ROUND_CLOSEST(pr_mul * (val - (integer * unit)), unit);
+
+		if (rest >= pr_mul) {
+			rest -= pr_mul;
+			integer++;
+		}
+	}
+
+	buf = number(buf, end, integer, 10, field_width, -1, 0);
+
+	if (rest != 0 || precision != -1) {
+		if (buf < end)
+			*buf = '.';
+		buf++;
+		buf = number(buf, end, rest, 10, -1, pr, 0);
+	}
+
+	if (buf < end)
+		*buf = ' ';
+	buf++;
+	if (buf < end && pow != 0)
+		*buf = format[pow];
+	buf++;
+
+	return buf;
+}
+
+/*
  * Show a '%p' thing.  A kernel extension is that the '%p' is followed
  * by an extra set of alphanumeric characters that are extended format
  * specifiers.
@@ -421,6 +486,14 @@ int vsnprintf(char *buf, size_t size, const char *fmt, va_list args)
 				str = string(str, end, va_arg(args, char *), field_width, precision, flags);
 				continue;
 
+			case 'W':
+				str = unit_string(str, end, va_arg(args, long), 1024, field_width, precision, flags);
+				continue;
+
+			case 'w':
+				str = unit_string(str, end, va_arg(args, long), 1000, field_width, precision, flags);
+				continue;
+
 			case 'p':
 				str = pointer(fmt+1, str, end,
 						va_arg(args, void *),
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
