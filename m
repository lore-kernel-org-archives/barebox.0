Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpfZq-0004j4-Ip
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:20 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 24 Jan 2012 12:34:00 +0000
Message-Id: <1327408443-3519-7-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 6/9] Add file and compilation of strmhz.
To: barebox@lists.infradead.org

strmhz is called by checkcpu to display information on the CPU.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 lib/Makefile |    1 +
 lib/strmhz.c |   38 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+), 0 deletions(-)
 create mode 100644 lib/strmhz.c

diff --git a/lib/Makefile b/lib/Makefile
index 7799e69..3483e43 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -13,6 +13,7 @@ obj-y			+= kfifo.o
 obj-y			+= libbb.o
 obj-y			+= libgen.o
 obj-y			+= stringlist.o
+obj-y			+= strmhz.o
 obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
 obj-$(CONFIG_BZLIB)	+= decompress_bunzip2.o
diff --git a/lib/strmhz.c b/lib/strmhz.c
new file mode 100644
index 0000000..d6da1d1
--- /dev/null
+++ b/lib/strmhz.c
@@ -0,0 +1,38 @@
+/*
+ * (C) Copyright 2002-2006
+ * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+#include <common.h>
+
+char *strmhz (char *buf, long hz)
+{
+	long l, n;
+	long m;
+
+	n = DIV_ROUND(hz, 1000) / 1000L;
+	l = sprintf (buf, "%ld", n);
+
+	hz -= n * 1000000L;
+	m = DIV_ROUND(hz, 1000L);
+	if (m != 0)
+		sprintf (buf + l, ".%03ld", m);
+	return (buf);
+}
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
