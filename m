Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZACBy-0004yD-Je
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 07:12:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  1 Jul 2015 09:11:57 +0200
Message-Id: <1435734718-18367-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] bbu: Add a standard file-to-device-copy handler
To: Barebox List <barebox@lists.infradead.org>

The most standard update handler will simply copy a file to a device.
This can be shared across several users, so add a standard handler for
this operation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bbu.c  | 113 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/bbu.h |   9 +++++
 2 files changed, 122 insertions(+)

diff --git a/common/bbu.c b/common/bbu.c
index 7fb154a..4d71fa4 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -20,6 +20,12 @@
 #include <linux/list.h>
 #include <errno.h>
 #include <readkey.h>
+#include <filetype.h>
+#include <libfile.h>
+#include <fs.h>
+#include <fcntl.h>
+#include <malloc.h>
+#include <linux/stat.h>
 
 static LIST_HEAD(bbu_image_handlers);
 
@@ -153,3 +159,110 @@ int bbu_register_handler(struct bbu_handler *handler)
 
 	return 0;
 }
+
+struct bbu_std {
+	struct bbu_handler handler;
+	enum filetype filetype;
+};
+
+static int bbu_std_file_handler(struct bbu_handler *handler,
+					struct bbu_data *data)
+{
+	struct bbu_std *std = container_of(handler, struct bbu_std, handler);
+	int fd, ret;
+	enum filetype filetype;
+	struct stat s;
+	unsigned oflags = O_WRONLY;
+
+	filetype = file_detect_type(data->image, data->len);
+	if (filetype != std->filetype) {
+		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
+				file_type_to_string(std->filetype),
+				file_type_to_string(filetype)))
+			return -EINVAL;
+	}
+
+	ret = stat(data->devicefile, &s);
+	if (ret) {
+		oflags |= O_CREAT;
+	} else {
+		if (!S_ISREG(s.st_mode) && s.st_size < data->len) {
+			printf("Image (%lld) is too big for device (%d)\n",
+					s.st_size, data->len);
+		}
+	}
+
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	fd = open(data->devicefile, oflags);
+	if (fd < 0)
+		return fd;
+
+	ret = protect(fd, data->len, 0, 0);
+	if (ret && ret != -ENOSYS) {
+		printf("unprotecting %s failed with %s\n", data->devicefile,
+				strerror(-ret));
+		goto err_close;
+	}
+
+	ret = erase(fd, data->len, 0);
+	if (ret && ret != -ENOSYS) {
+		printf("erasing %s failed with %s\n", data->devicefile,
+				strerror(-ret));
+		goto err_close;
+	}
+
+	ret = write_full(fd, data->image, data->len);
+	if (ret < 0)
+		goto err_close;
+
+	protect(fd, data->len, 0, 1);
+
+	ret = 0;
+
+err_close:
+	close(fd);
+
+	return ret;
+}
+
+/**
+ * bbu_register_std_file_update() - register a barebox update handler for a
+ *                                  standard file-to-device-copy operation
+ * @name:	Name of the handler
+ * @flags:	BBU_HANDLER_FLAG_* flags
+ * @devicefile: the file to write the update image to
+ * @imagetype:	The filetype that the update image must have
+ *
+ * This update handler us suitable for a standard file-to-device copy operation.
+ * The handler checks for a filetype and unprotects/erases the device if
+ * necessary. If devicefile belongs to a device then the device is checkd for
+ * enough space before touching it.
+ *
+ * Return: 0 if successful, negative error code otherwise
+ */
+int bbu_register_std_file_update(const char *name, unsigned long flags,
+		char *devicefile, enum filetype imagetype)
+{
+	struct bbu_std *std;
+	struct bbu_handler *handler;
+	int ret;
+
+	std = xzalloc(sizeof(*std));
+	std->filetype = imagetype;
+
+	handler = &std->handler;
+
+	handler->flags = flags;
+	handler->devicefile = devicefile;
+	handler->name = name;
+	handler->handler = bbu_std_file_handler;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(std);
+
+	return ret;
+}
diff --git a/include/bbu.h b/include/bbu.h
index 4a3d35e..af2f84a 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -4,6 +4,7 @@
 #include <asm-generic/errno.h>
 #include <linux/list.h>
 #include <linux/types.h>
+#include <filetype.h>
 
 struct bbu_data {
 #define BBU_FLAG_FORCE	(1 << 0)
@@ -41,6 +42,9 @@ void bbu_handlers_list(void);
 
 int bbu_register_handler(struct bbu_handler *);
 
+int bbu_register_std_file_update(const char *name, unsigned long flags,
+		char *devicefile, enum filetype imagetype);
+
 #else
 
 static inline int bbu_register_handler(struct bbu_handler *unused)
@@ -48,6 +52,11 @@ static inline int bbu_register_handler(struct bbu_handler *unused)
 	return -EINVAL;
 }
 
+static inline int bbu_register_std_file_update(const char *name, unsigned long flags,
+		char *devicefile, enum filetype imagetype)
+{
+	return -ENOSYS;
+}
 #endif
 
 #endif /* __INCLUDE_BBU_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
