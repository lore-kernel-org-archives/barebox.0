Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwBP4-00088p-C7
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 09:37:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 11:36:20 +0200
Message-Id: <1269855383-22716-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/12] add process_escape_sequence function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libbb.h               |    2 +
 lib/Kconfig                   |    3 ++
 lib/Makefile                  |    1 +
 lib/process_escape_sequence.c |   78 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 84 insertions(+), 0 deletions(-)
 create mode 100644 lib/process_escape_sequence.c

diff --git a/include/libbb.h b/include/libbb.h
index 735ed21..4151230 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -28,4 +28,6 @@ char * safe_strncpy(char *dst, const char *src, size_t size);
 
 int copy_file(const char *src, const char *dst);
 
+int process_escape_sequence(const char *source, char *dest, int destlen);
+
 #endif /* __LIBBB_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 90cf784..28c92cd 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -13,5 +13,8 @@ config CRC16
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
 
+config PROCESS_ESCAPE_SEQUENCE
+	def_bool n
+
 source lib/lzo/Kconfig
 
diff --git a/lib/Makefile b/lib/Makefile
index 74f7d82..817165d 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -30,3 +30,4 @@ obj-y			+= notifier.o
 obj-y			+= copy_file.o
 obj-y			+= lzo/
 obj-y			+= decompress_unlzo.o
+obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
diff --git a/lib/process_escape_sequence.c b/lib/process_escape_sequence.c
new file mode 100644
index 0000000..546edaa
--- /dev/null
+++ b/lib/process_escape_sequence.c
@@ -0,0 +1,78 @@
+/*
+ * process_esacpe_sequence.c
+ *
+ * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
+#include <common.h>
+#include <fs.h>
+
+int process_escape_sequence(const char *source, char *dest, int destlen)
+{
+	int i = 0;
+
+	while (*source) {
+		if (*source == '\\') {
+			switch (*(source + 1)) {
+			case 0:
+				return 0;
+			case '\\':
+				dest[i++] = '\\';
+				break;
+			case 'a':
+				dest[i++] = '\a';
+				break;
+			case 'b':
+				dest[i++] = '\b';
+				break;
+			case 'n':
+				dest[i++] = '\n';
+				break;
+			case 'r':
+				dest[i++] = '\r';
+				break;
+			case 't':
+				dest[i++] = '\t';
+				break;
+			case 'f':
+				dest[i++] = '\f';
+				break;
+			case 'e':
+				dest[i++] = 0x1b;
+				break;
+			case 'h':
+				i += snprintf(dest + i, destlen - i, "%s", CONFIG_BOARDINFO);
+				break;
+			case 'w':
+				i += snprintf(dest + i, destlen - i, "%s", getcwd());
+				break;
+			default:
+				dest[i++] = '\\';
+				dest[i++] = *(source + 1);
+			}
+			source++;
+		} else
+			dest[i++] = *source;
+		source++;
+		if (!(destlen - i))
+			break;
+	}
+	dest[i] = 0;
+	return 0;
+}
+
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
