Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9VCm-00078L-L2
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 06:04:45 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BA0E5FF8C48
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 08:12:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  6 Sep 2012 08:04:52 +0200
Message-Id: <1346911500-12902-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120906060058.GE4761@game.jcrosoft.org>
 <1346911500-12902-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/12] introduce image_renderer framework
To: barebox@lists.infradead.org

This will allow to support bmp and png

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/image_renderer.h |   62 +++++++++++++++++++++++++++++++++++++++
 lib/Kconfig              |    3 ++
 lib/Makefile             |    1 +
 lib/image_renderer.c     |   73 ++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 139 insertions(+)
 create mode 100644 include/image_renderer.h
 create mode 100644 lib/image_renderer.c

diff --git a/include/image_renderer.h b/include/image_renderer.h
new file mode 100644
index 0000000..a93242c
--- /dev/null
+++ b/include/image_renderer.h
@@ -0,0 +1,62 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#ifndef __IMAGE_RENDER_H__
+#define __IMAGE_RENDER_H__
+
+#include <filetype.h>
+#include <linux/list.h>
+#include <errno.h>
+
+struct image_renderer {
+	enum filetype type;
+	int (*renderer)(struct fb_info *info, void* data, int size, void* fb,
+		int startx, int starty, void* offscreenbuf);
+
+	struct list_head list;
+};
+
+static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int b)
+{
+	u32 px;
+
+	px = (r >> (8 - info->red.length)) << info->red.offset |
+		(g >> (8 - info->green.length)) << info->green.offset |
+		(b >> (8 - info->blue.length)) << info->blue.offset;
+
+	switch (info->bits_per_pixel) {
+	case 8:
+		break;
+	case 16:
+		*(u16 *)adr = px;
+		break;
+	case 32:
+		*(u32 *)adr = px;
+		break;
+	}
+}
+
+#ifdef CONFIG_IMAGE_RENDERER
+int image_renderer_register(struct image_renderer *ir);
+void image_render_unregister(struct image_renderer *ir);
+
+int image_renderer_file(struct fb_info *info, const char* bmpfile, void* fb,
+	    int startx, int starty, void* offscreenbuf);
+#else
+static inline int image_renderer_register(struct image_renderer *ir)
+{
+	return -EINVAL;
+}
+static inline void image_renderer_unregister(struct image_renderer *ir) {}
+
+static inline int image_renderer_file(struct fb_info *info, const char* file, void* fb,
+		    int startx, int starty, void* offscreenbuf)
+{
+	return -EINVAL;
+}
+#endif
+
+#endif /* __IMAGE_RENDERER_H__ */
diff --git a/lib/Kconfig b/lib/Kconfig
index 93e360b..e74189d 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -38,6 +38,9 @@ config BITREV
 config QSORT
 	bool
 
+config IMAGE_RENDERER
+	bool
+
 config BMP
 	bool
 
diff --git a/lib/Makefile b/lib/Makefile
index df4b5e5..8fbae8a 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -35,3 +35,4 @@ obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
 obj-$(CONFIG_BMP)	+= bmp.o
+obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o
diff --git a/lib/image_renderer.c b/lib/image_renderer.c
new file mode 100644
index 0000000..e8d4ab5
--- /dev/null
+++ b/lib/image_renderer.c
@@ -0,0 +1,73 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#include <common.h>
+#include <fb.h>
+#include <image_renderer.h>
+#include <errno.h>
+#include <fs.h>
+#include <malloc.h>
+
+static LIST_HEAD(image_renderers);
+
+static struct image_renderer *get_renderer(void* buf)
+{
+	struct image_renderer *ir;
+	enum filetype type = file_detect_type(buf);
+
+	list_for_each_entry(ir, &image_renderers, list) {
+		if (ir->type == type)
+			return ir;
+	}
+
+	return NULL;
+}
+
+int image_renderer_file(struct fb_info *info, const char* file, void* fb,
+			int startx, int starty, void* offscreenbuf)
+{
+	void *data;
+	int size;
+	struct image_renderer *ir;
+	int ret;
+
+	data = read_file(file, &size);
+	if (!data) {
+		printf("unable to read %s\n", file);
+		return -ENOMEM;
+	}
+
+	ir = get_renderer(data);
+	if (!ir) {
+		ret = -ENOENT;
+		goto out;
+	}
+
+	ret = ir->renderer(info, data, size, fb, startx, starty, offscreenbuf);
+
+out:
+	free(data);
+
+	return ret;
+}
+
+int image_renderer_register(struct image_renderer *ir)
+{
+	if (!ir || !ir->type || !ir->renderer)
+		return -EIO;
+
+	list_add_tail(&ir->list, &image_renderers);
+
+	return 0;
+}
+
+void image_renderer_unregister(struct image_renderer *ir)
+{
+	if (!ir)
+		return;
+
+	list_del(&ir->list);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
