Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aK5Si-0002P4-Lq
 for barebox@lists.infradead.org; Fri, 15 Jan 2016 14:34:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Jan 2016 15:34:15 +0100
Message-Id: <1452868456-2057-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] vsprintf: Add support for %pa
To: Barebox List <barebox@lists.infradead.org>

Add support for the %pa format specifier to print phys_addr_t,
dma_addr_t and resource_size_t.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/vsprintf.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 9b8e8cf..00b8863 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -237,6 +237,29 @@ char *uuid_string(char *buf, char *end, const u8 *addr, int field_width,
 	return string(buf, end, uuid, field_width, precision, flags);
 }
 
+static noinline_for_stack
+char *address_val(char *buf, char *end, const void *addr,
+		int field_width, int precision, int flags, const char *fmt)
+{
+	unsigned long long num;
+
+	flags |= SPECIAL | SMALL | ZEROPAD;
+
+	switch (fmt[1]) {
+	case 'd':
+		num = *(const dma_addr_t *)addr;
+		field_width = sizeof(dma_addr_t) * 2 + 2;
+		break;
+	case 'p':
+	default:
+		num = *(const phys_addr_t *)addr;
+		field_width = sizeof(phys_addr_t) * 2 + 2;
+		break;
+	}
+
+	return number(buf, end, num, 16, field_width, precision, flags);
+}
+
 /*
  * Show a '%p' thing.  A kernel extension is that the '%p' is followed
  * by an extra set of alphanumeric characters that are extended format
@@ -256,6 +279,8 @@ char *uuid_string(char *buf, char *end, const u8 *addr, int field_width,
  *             [0][1][2][3]-[4][5]-[6][7]-[8][9]-[10][11][12][13][14][15]
  *           little endian output byte order is:
  *             [3][2][1][0]-[5][4]-[7][6]-[8][9]-[10][11][12][13][14][15]
+ * - 'a[pd]' For address types [p] phys_addr_t, [d] dma_addr_t and derivatives
+ *           (default assumed to be phys_addr_t, passed by reference)
  *
  * Note: The difference between 'S' and 'F' is that on ia64 and ppc64
  * function pointers are really function descriptors, which contain a
@@ -270,6 +295,8 @@ static char *pointer(const char *fmt, char *buf, char *end, void *ptr, int field
 		if (IS_ENABLED(CONFIG_PRINTF_UUID))
 			return uuid_string(buf, end, ptr, field_width, precision, flags, fmt);
 		break;
+	case 'a':
+		return address_val(buf, end, ptr, field_width, precision, flags, fmt);
 	}
 	flags |= SMALL;
 	if (field_width == -1) {
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
