Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g7LHe-0005zA-VC
 for barebox@lists.infradead.org; Tue, 02 Oct 2018 14:04:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2018 16:04:01 +0200
Message-Id: <20181002140403.3735-13-s.hauer@pengutronix.de>
In-Reply-To: <20181002140403.3735-1-s.hauer@pengutronix.de>
References: <20181002140403.3735-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/14] vsprintf: implement %pV
To: Barebox List <barebox@lists.infradead.org>

%pV allows to pass in a struct va_format as a pointer. UBIFS uses this
for its logging functions, but it may be useful in other places aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/printk.h |  5 +++++
 lib/vsprintf.c   | 15 +++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/include/printk.h b/include/printk.h
index b4ae0b3217..4384fb85ea 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -120,4 +120,9 @@ extern void log_clean(unsigned int limit);
 
 void log_print(unsigned flags);
 
+struct va_format {
+	const char *fmt;
+	va_list *va;
+};
+
 #endif
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index fa9fb75800..6fe0283e84 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -302,6 +302,11 @@ char *address_val(char *buf, char *end, const void *addr,
  *             [0][1][2][3]-[4][5]-[6][7]-[8][9]-[10][11][12][13][14][15]
  *           little endian output byte order is:
  *             [3][2][1][0]-[5][4]-[7][6]-[8][9]-[10][11][12][13][14][15]
+ * - 'V' For a struct va_format which contains a format string * and va_list *,
+ *       call vsnprintf(->format, *->va_list).
+ *       Implements a "recursive vsnprintf".
+ *       Do not use this feature without some mechanism to verify the
+ *       correctness of the format string and va_list arguments.
  * - 'a[pd]' For address types [p] phys_addr_t, [d] dma_addr_t and derivatives
  *           (default assumed to be phys_addr_t, passed by reference)
  *
@@ -318,6 +323,16 @@ static char *pointer(const char *fmt, char *buf, char *end, void *ptr, int field
 		if (IS_ENABLED(CONFIG_PRINTF_UUID))
 			return uuid_string(buf, end, ptr, field_width, precision, flags, fmt);
 		break;
+	case 'V':
+		{
+			va_list va;
+
+			va_copy(va, *((struct va_format *)ptr)->va);
+			buf += vsnprintf(buf, end > buf ? end - buf : 0,
+					 ((struct va_format *)ptr)->fmt, va);
+			va_end(va);
+			return buf;
+		}
 	case 'a':
 		return address_val(buf, end, ptr, field_width, precision, flags, fmt);
 	case 'I':
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
