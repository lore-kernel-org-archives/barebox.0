Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiq3-0003M5-4Z
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:35:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:35:02 +0200
Message-Id: <1277372108-30332-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] add progression bar function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/progress.h  |   15 ++++++++++++
 lib/Makefile        |    1 +
 lib/show_progress.c |   62 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 78 insertions(+), 0 deletions(-)
 create mode 100644 include/progress.h
 create mode 100644 lib/show_progress.c

diff --git a/include/progress.h b/include/progress.h
new file mode 100644
index 0000000..5c4dd1e
--- /dev/null
+++ b/include/progress.h
@@ -0,0 +1,15 @@
+#ifndef __PROGRSS_H
+#define __PROGRSS_H
+
+/* Initialize a progress bar. If max > 0 a one line progress
+ * bar is printed where 'max' corresponds to 100%. If max == 0
+ * a multi line progress bar is printed.
+ */
+void init_progression_bar(int max);
+
+/* update a progress bar to a new value. If now < 0 then a
+ * spinner is printed.
+ */
+void show_progress(int now);
+
+#endif /*  __PROGRSS_H */
diff --git a/lib/Makefile b/lib/Makefile
index 4a33aaa..5afbf13 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -30,5 +30,6 @@ obj-y			+= notifier.o
 obj-y			+= copy_file.o
 obj-y			+= random.o
 obj-y			+= lzo/
+obj-y			+= show_progress.o
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
diff --git a/lib/show_progress.c b/lib/show_progress.c
new file mode 100644
index 0000000..333f498
--- /dev/null
+++ b/lib/show_progress.c
@@ -0,0 +1,62 @@
+/*
+ * show_progress.c - simple progress bar functions
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
+
+#include <common.h>
+#include <progress.h>
+
+#define HASHES_PER_LINE	65
+
+static int printed;
+static int progress_max;
+static int spin;
+
+void show_progress(int now)
+{
+	char spinchr[] = "\\|/-";
+
+	if (now < 0) {
+		printf("%c\b", spinchr[spin++ % (sizeof(spinchr) - 1)]);
+		return;
+	}
+
+	if (progress_max)
+		now = now * HASHES_PER_LINE / progress_max;
+
+	while (printed < now) {
+		if (!(printed % HASHES_PER_LINE) && printed)
+			printf("\n\t");
+		printf("#");
+		printed++;
+	}
+}
+
+void init_progression_bar(int max)
+{
+	printed = 0;
+	progress_max = max;
+	spin = 0;
+	if (progress_max)
+		printf("\t[%65s]\r\t[", "");
+	else
+		printf("\t");
+}
+
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
