Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAY7Y-0002Tr-UK
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 06:37:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 08:36:53 +0200
Message-Id: <1435819013-22686-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: Move library functions to net/lib.c
To: Barebox List <barebox@lists.infradead.org>

Some network related functions are also needed when networking
is disabled. Move these to a separate file which is always compiled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/Makefile |   1 +
 net/lib.c    | 108 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 net/net.c    |  78 ------------------------------------------
 3 files changed, 109 insertions(+), 78 deletions(-)
 create mode 100644 net/lib.c

diff --git a/net/Makefile b/net/Makefile
index 58bf143..8d564e7 100644
--- a/net/Makefile
+++ b/net/Makefile
@@ -1,3 +1,4 @@
+obj-y			+= lib.o
 obj-$(CONFIG_NET)	+= eth.o
 obj-$(CONFIG_NET)	+= net.o
 obj-$(CONFIG_NET_NFS)	+= nfs.o
diff --git a/net/lib.c b/net/lib.c
new file mode 100644
index 0000000..04abfc2
--- /dev/null
+++ b/net/lib.c
@@ -0,0 +1,108 @@
+/*
+ * net.c - barebox networking support
+ *
+ * Copyright (c) 2015 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * based on U-Boot (LiMon) code
+ *
+ * Copyright 1994 - 2000 Neil Russell.
+ * Copyright 2000 Roland Borde
+ * Copyright 2000 Paolo Scaffardi
+ * Copyright 2000-2002 Wolfgang Denk, wd@denx.de
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
+ */
+
+#include <common.h>
+#include <net.h>
+#include <linux/ctype.h>
+
+int string_to_ethaddr(const char *str, u8 enetaddr[6])
+{
+	int reg;
+	char *e;
+
+        if (!str || strlen(str) != 17) {
+		memset(enetaddr, 0, 6);
+		return -EINVAL;
+	}
+
+        if (str[2] != ':' || str[5] != ':' || str[8] != ':' ||
+                        str[11] != ':' || str[14] != ':')
+                return -EINVAL;
+
+	for (reg = 0; reg < 6; ++reg) {
+		enetaddr[reg] = simple_strtoul (str, &e, 16);
+			str = e + 1;
+	}
+
+	return 0;
+}
+
+void ethaddr_to_string(const u8 enetaddr[6], char *str)
+{
+	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
+		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
+		 enetaddr[4], enetaddr[5]);
+}
+
+void print_IPaddr (IPaddr_t x)
+{
+	puts(ip_to_string(x));
+}
+
+char *ip_to_string (IPaddr_t x)
+{
+	static char s[sizeof("xxx.xxx.xxx.xxx")];
+
+	x = ntohl (x);
+	sprintf (s, "%d.%d.%d.%d",
+		 (int) ((x >> 24) & 0xff),
+		 (int) ((x >> 16) & 0xff),
+		 (int) ((x >> 8) & 0xff), (int) ((x >> 0) & 0xff)
+	);
+	return s;
+}
+
+int string_to_ip(const char *s, IPaddr_t *ip)
+{
+	IPaddr_t addr = 0;
+	char *e;
+	int i;
+
+	if (!s)
+		return -EINVAL;
+
+	for (i = 0; i < 4; i++) {
+		unsigned long val;
+
+		if (!isdigit(*s))
+			return -EINVAL;
+
+		val = simple_strtoul(s, &e, 10);
+		if (val > 255)
+			return -EINVAL;
+
+		addr = (addr << 8) | val;
+
+		if (*e != '.' && i != 3)
+			return -EINVAL;
+
+		s = e + 1;
+	}
+
+	*ip = htonl(addr);
+	return 0;
+}
+
diff --git a/net/net.c b/net/net.c
index 75292c7..9380664 100644
--- a/net/net.c
+++ b/net/net.c
@@ -62,50 +62,6 @@ uint16_t net_checksum(unsigned char *ptr, int len)
 	return xsum & 0xffff;
 }
 
-char *ip_to_string (IPaddr_t x)
-{
-	static char s[sizeof("xxx.xxx.xxx.xxx")];
-
-	x = ntohl (x);
-	sprintf (s, "%d.%d.%d.%d",
-		 (int) ((x >> 24) & 0xff),
-		 (int) ((x >> 16) & 0xff),
-		 (int) ((x >> 8) & 0xff), (int) ((x >> 0) & 0xff)
-	);
-	return s;
-}
-
-int string_to_ip(const char *s, IPaddr_t *ip)
-{
-	IPaddr_t addr = 0;
-	char *e;
-	int i;
-
-	if (!s)
-		return -EINVAL;
-
-	for (i = 0; i < 4; i++) {
-		unsigned long val;
-
-		if (!isdigit(*s))
-			return -EINVAL;
-
-		val = simple_strtoul(s, &e, 10);
-		if (val > 255)
-			return -EINVAL;
-
-		addr = (addr << 8) | val;
-
-		if (*e != '.' && i != 3)
-			return -EINVAL;
-
-		s = e + 1;
-	}
-
-	*ip = htonl(addr);
-	return 0;
-}
-
 IPaddr_t getenv_ip(const char *name)
 {
 	IPaddr_t ip;
@@ -131,40 +87,6 @@ int setenv_ip(const char *name, IPaddr_t ip)
 	return 0;
 }
 
-void print_IPaddr (IPaddr_t x)
-{
-	puts(ip_to_string(x));
-}
-
-int string_to_ethaddr(const char *str, u8 enetaddr[6])
-{
-	int reg;
-	char *e;
-
-        if (!str || strlen(str) != 17) {
-		memset(enetaddr, 0, 6);
-		return -EINVAL;
-	}
-
-        if (str[2] != ':' || str[5] != ':' || str[8] != ':' ||
-                        str[11] != ':' || str[14] != ':')
-                return -EINVAL;
-
-	for (reg = 0; reg < 6; ++reg) {
-		enetaddr[reg] = simple_strtoul (str, &e, 16);
-			str = e + 1;
-	}
-
-	return 0;
-}
-
-void ethaddr_to_string(const u8 enetaddr[6], char *str)
-{
-	sprintf(str, "%02x:%02x:%02x:%02x:%02x:%02x",
-		 enetaddr[0], enetaddr[1], enetaddr[2], enetaddr[3],
-		 enetaddr[4], enetaddr[5]);
-}
-
 static unsigned char *arp_ether;
 static IPaddr_t arp_wait_ip;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
