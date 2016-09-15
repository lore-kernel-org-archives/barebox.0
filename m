Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkUHY-0003Vy-Mo
 for barebox@lists.infradead.org; Thu, 15 Sep 2016 10:52:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Sep 2016 12:52:16 +0200
Message-Id: <1473936737-4919-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] vsprintf: Add support for printing ipv4 addresses with
 %pI4
To: Barebox List <barebox@lists.infradead.org>

Can be used conveniently in places that currently use ip_to_string().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/vsprintf.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index f3885a8..fa9fb75 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -191,6 +191,27 @@ static char *symbol_string(char *buf, char *end, void *ptr, int field_width, int
 }
 
 static noinline_for_stack
+char *ip4_addr_string(char *buf, char *end, const u8 *addr, int field_width,
+		      int precision, int flags, const char *fmt)
+{
+	char ip4_addr[sizeof("255.255.255.255")];
+	char *pos;
+	int i;
+
+	pos = ip4_addr;
+
+	for (i = 0; i < 4; i++) {
+		pos = number(pos, pos + 3, addr[i], 10, 0, 0, LEFT);
+		if (i < 3)
+			*pos++ = '.';
+	}
+
+	*pos = 0;
+
+	return string(buf, end, ip4_addr, field_width, precision, flags);
+}
+
+static noinline_for_stack
 char *uuid_string(char *buf, char *end, const u8 *addr, int field_width,
 		int precision, int flags, const char *fmt)
 {
@@ -267,6 +288,8 @@ char *address_val(char *buf, char *end, const void *addr,
  *
  * Right now we handle:
  *
+ * - 'I' [4] for IPv4 addresses printed in the usual way
+ *       IPv4 uses dot-separated decimal without leading 0's (1.2.3.4)
  * - 'S' For symbolic direct pointers
  * - 'U' For a 16 byte UUID/GUID, it prints the UUID/GUID in the form
  *       "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
@@ -297,6 +320,12 @@ static char *pointer(const char *fmt, char *buf, char *end, void *ptr, int field
 		break;
 	case 'a':
 		return address_val(buf, end, ptr, field_width, precision, flags, fmt);
+	case 'I':
+		switch (fmt[1]) {
+		case '4':
+                        return ip4_addr_string(buf, end, ptr, field_width, precision, flags, fmt);
+		}
+		break;
 	}
 	flags |= SMALL;
 	if (field_width == -1) {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
