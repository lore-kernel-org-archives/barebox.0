Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6m-0006Vh-Ux
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:50:04 +0200
Message-Id: <1404809417-21477-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/21] vsprintf: Support pU for printing UUIDs
To: barebox@lists.infradead.org

With EFI 16byte UUIDs/GUIDs are common. Add support for printing them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/Kconfig    |  3 +++
 lib/vsprintf.c | 62 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 65 insertions(+)

diff --git a/lib/Kconfig b/lib/Kconfig
index d9ad4aa..09a1674 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -54,4 +54,7 @@ source lib/gui/Kconfig
 
 source lib/bootstrap/Kconfig
 
+config PRINTF_UUID
+	bool
+
 endmenu
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 066338b..512c882 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -253,6 +253,53 @@ static char *symbol_string(char *buf, char *end, void *ptr, int field_width, int
 #endif
 }
 
+static noinline_for_stack
+char *uuid_string(char *buf, char *end, const u8 *addr, int field_width,
+		int precision, int flags, const char *fmt)
+{
+	char uuid[sizeof("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx")];
+	char *p = uuid;
+	int i;
+	static const u8 be[16] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
+	static const u8 le[16] = {3,2,1,0,5,4,7,6,8,9,10,11,12,13,14,15};
+	const u8 *index = be;
+	bool uc = false;
+
+	switch (*(++fmt)) {
+	case 'L':
+		uc = true;		/* fall-through */
+	case 'l':
+		index = le;
+		break;
+	case 'B':
+		uc = true;
+		break;
+	}
+
+	for (i = 0; i < 16; i++) {
+		p = hex_byte_pack(p, addr[index[i]]);
+		switch (i) {
+		case 3:
+		case 5:
+		case 7:
+		case 9:
+			*p++ = '-';
+			break;
+		}
+	}
+
+	*p = 0;
+
+	if (uc) {
+		p = uuid;
+		do {
+			*p = toupper(*p);
+		} while (*(++p));
+	}
+
+	return string(buf, end, uuid, field_width, precision, flags);
+}
+
 /*
  * Show a '%p' thing.  A kernel extension is that the '%p' is followed
  * by an extra set of alphanumeric characters that are extended format
@@ -261,6 +308,17 @@ static char *symbol_string(char *buf, char *end, void *ptr, int field_width, int
  * Right now we handle:
  *
  * - 'S' For symbolic direct pointers
+ * - 'U' For a 16 byte UUID/GUID, it prints the UUID/GUID in the form
+ *       "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
+ *       Options for %pU are:
+ *         b big endian lower case hex (default)
+ *         B big endian UPPER case hex
+ *         l little endian lower case hex
+ *         L little endian UPPER case hex
+ *           big endian output byte order is:
+ *             [0][1][2][3]-[4][5]-[6][7]-[8][9]-[10][11][12][13][14][15]
+ *           little endian output byte order is:
+ *             [3][2][1][0]-[5][4]-[7][6]-[8][9]-[10][11][12][13][14][15]
  *
  * Note: The difference between 'S' and 'F' is that on ia64 and ppc64
  * function pointers are really function descriptors, which contain a
@@ -271,6 +329,10 @@ static char *pointer(const char *fmt, char *buf, char *end, void *ptr, int field
 	switch (*fmt) {
 	case 'S':
 		return symbol_string(buf, end, ptr, field_width, precision, flags);
+	case 'U':
+		if (IS_ENABLED(CONFIG_PRINTF_UUID))
+			return uuid_string(buf, end, ptr, field_width, precision, flags, fmt);
+		break;
 	}
 	flags |= SMALL;
 	if (field_width == -1) {
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
