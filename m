Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OthgE-0003o8-6v
	for barebox@lists.infradead.org; Thu, 09 Sep 2010 14:00:47 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  9 Sep 2010 15:59:47 +0200
Message-Id: <1284040793-32145-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20100909135543.GF9112@game.jcrosoft.org>
References: <20100909135543.GF9112@game.jcrosoft.org>
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
Subject: [PATCH 1/7] add digest framework
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Makefile  |    1 +
 common/digest.c  |   77 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/digest.h |   49 ++++++++++++++++++++++++++++++++++
 lib/Kconfig      |    7 +++++
 4 files changed, 134 insertions(+), 0 deletions(-)
 create mode 100644 common/digest.c
 create mode 100644 include/digest.h

diff --git a/common/Makefile b/common/Makefile
index 4b8cce0..b087e3d 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -11,6 +11,7 @@ obj-y += clock.o
 obj-y += command.o
 obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
+obj-$(CONFIG_DIGEST) += digest.o
 obj-y += env.o
 obj-y += startup.o
 obj-y += misc.o
diff --git a/common/digest.c b/common/digest.c
new file mode 100644
index 0000000..10ad060
--- /dev/null
+++ b/common/digest.c
@@ -0,0 +1,77 @@
+/*
+ * (C) Copyright 2008-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
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
+
+#include <common.h>
+#include <digest.h>
+#include <malloc.h>
+#include <errno.h>
+#include <module.h>
+#include <linux/err.h>
+
+static LIST_HEAD(digests);
+
+static int dummy_init(struct digest *d)
+{
+	return 0;
+}
+
+int digest_register(struct digest *d)
+{
+	if (!d || !d->name || !d->update || !d->final || d->length < 1)
+		return -EINVAL;
+
+	if (!d->init)
+		d->init = dummy_init;
+
+	if (digest_get_by_name(d->name))
+		return -EEXIST;
+
+	list_add_tail(&d->list, &digests);
+
+	return 0;
+}
+EXPORT_SYMBOL(digest_register);
+
+void digest_unregister(struct digest *d)
+{
+	if (!d)
+		return;
+
+	list_del(&d->list);
+}
+EXPORT_SYMBOL(digest_unregister);
+
+struct digest* digest_get_by_name(char* name)
+{
+	struct digest* d;
+
+	if (!name)
+		return NULL;
+
+	list_for_each_entry(d, &digests, list) {
+		if(strcmp(d->name, name) == 0)
+			return d;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(digest_get_by_name);
diff --git a/include/digest.h b/include/digest.h
new file mode 100644
index 0000000..1dcfd9d
--- /dev/null
+++ b/include/digest.h
@@ -0,0 +1,49 @@
+/*
+ * (C) Copyright 2008-2010 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; version 2 of
+ * the License.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ */
+
+#ifndef __DIGEST_H__
+#define __DIGEST_H__
+
+#include <linux/list.h>
+
+struct digest
+{
+	char *name;
+
+	int (*init)(struct digest *d);
+	int (*update)(struct digest *d, const void *data, unsigned long len);
+	int (*final)(struct digest *d, unsigned char *md);
+
+	unsigned int length;
+
+	struct list_head list;
+};
+
+/*
+ * digest functions
+ */
+int digest_register(struct digest *d);
+void digest_unregister(struct digest *d);
+
+struct digest* digest_get_by_name(char* name);
+
+#endif /* __SH_ST_DEVICES_H__ */
diff --git a/lib/Kconfig b/lib/Kconfig
index 28c92cd..a571ba8 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -10,6 +10,13 @@ config CRC32
 config CRC16
 	bool
 
+menuconfig DIGEST
+	bool "Digest"
+
+if DIGEST
+
+endif
+
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
