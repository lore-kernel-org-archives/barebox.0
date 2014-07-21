Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YK-BO
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:35 +0200
Message-Id: <1405955687-27433-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/23] Add function to parse a string in dfu format
To: barebox@lists.infradead.org

The dfu command parses a string which contains a list of
devices and flags. This format is useful for other users
aswell, so add common helper functions to parse it and
let the dfu command use this format.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dfu.c             |  90 +++---------------------------------
 common/Kconfig             |   3 ++
 common/Makefile            |   1 +
 common/file-list.c         | 113 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/usb/gadget/Kconfig |   1 +
 drivers/usb/gadget/dfu.c   |  69 ++++++++++++++++-----------
 include/file-list.h        |  26 +++++++++++
 include/usb/dfu.h          |  14 +-----
 8 files changed, 196 insertions(+), 121 deletions(-)
 create mode 100644 common/file-list.c
 create mode 100644 include/file-list.h

diff --git a/commands/dfu.c b/commands/dfu.c
index a8948f1..1610349 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -24,71 +24,7 @@
 #include <fs.h>
 #include <xfuncs.h>
 #include <usb/dfu.h>
-
-#define PARSE_DEVICE	0
-#define PARSE_NAME	1
-#define PARSE_FLAGS	2
-
-static int dfu_do_parse_one(char *partstr, char **endstr, struct usb_dfu_dev *dfu)
-{
-	int i = 0, state = PARSE_DEVICE;
-	char device[PATH_MAX];
-	char name[PATH_MAX];
-
-	memset(device, 0, sizeof(device));
-	memset(name, 0, sizeof(name));
-	dfu->flags = 0;
-
-	while (*partstr && *partstr != ',') {
-		switch (state) {
-		case PARSE_DEVICE:
-			if (*partstr == '(') {
-				state = PARSE_NAME;
-				i = 0;
-			} else {
-				device[i++] = *partstr;
-			}
-			break;
-		case PARSE_NAME:
-			if (*partstr == ')') {
-				state = PARSE_FLAGS;
-				i = 0;
-			} else {
-				name[i++] = *partstr;
-			}
-			break;
-		case PARSE_FLAGS:
-			switch (*partstr) {
-			case 's':
-				dfu->flags |= DFU_FLAG_SAFE;
-				break;
-			case 'r':
-				dfu->flags |= DFU_FLAG_READBACK;
-				break;
-			case 'c':
-				dfu->flags |= DFU_FLAG_CREATE;
-				break;
-			default:
-				return -EINVAL;
-			}
-			break;
-		default:
-			return -EINVAL;
-		}
-		partstr++;
-	}
-
-	if (state != PARSE_FLAGS)
-		return -EINVAL;
-
-	dfu->name = xstrdup(name);
-	dfu->dev = xstrdup(device);
-	if (*partstr == ',')
-		partstr++;
-	*endstr = partstr;
-
-	return 0;
-}
+#include <linux/err.h>
 
 /* dfu /dev/self0(bootloader)sr,/dev/nand0.root.bb(root)
  *
@@ -97,9 +33,8 @@ static int dfu_do_parse_one(char *partstr, char **endstr, struct usb_dfu_dev *df
  */
 static int do_dfu(int argc, char *argv[])
 {
-	int n = 0;
 	struct usb_dfu_pdata pdata;
-	char *endptr, *argstr;
+	char *argstr;
 	struct usb_dfu_dev *dfu_alts = NULL;
 	int ret;
 
@@ -108,27 +43,16 @@ static int do_dfu(int argc, char *argv[])
 
 	argstr = argv[optind];
 
-	for (n = 0; *argstr; n++) {
-		dfu_alts = xrealloc(dfu_alts, sizeof(*dfu_alts) * (n + 1));
-		if (dfu_do_parse_one(argstr, &endptr, &dfu_alts[n])) {
-			printf("parse error\n");
-			ret = -EINVAL;
-			goto out;
-		}
-		argstr = endptr;
+	pdata.files = file_list_parse(argstr);
+	if (IS_ERR(pdata.files)) {
+		ret = PTR_ERR(pdata.files);
+		goto out;
 	}
 
-	pdata.alts = dfu_alts;
-	pdata.num_alts = n;
-
 	ret = usb_dfu_register(&pdata);
 
+	file_list_free(pdata.files);
 out:
-	while (n) {
-		n--;
-		free(dfu_alts[n].name);
-		free(dfu_alts[n].dev);
-	};
 
 	free(dfu_alts);
 
diff --git a/common/Kconfig b/common/Kconfig
index 469a5d7..5a2c125 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -72,6 +72,9 @@ config EFI_GUID
 config EFI_DEVICEPATH
 	bool
 
+config FILE_LIST
+	bool
+
 menu "General Settings"
 
 config LOCALVERSION
diff --git a/common/Makefile b/common/Makefile
index 4220e15..31a3ada 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -46,6 +46,7 @@ obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_MENUTREE)		+= menutree.o
 obj-$(CONFIG_EFI_GUID)		+= efi-guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= efi-devicepath.o
+obj-$(CONFIG_FILE_LIST)		+= file-list.o
 
 quiet_cmd_pwd_h = PWDH    $@
 ifdef CONFIG_PASSWORD
diff --git a/common/file-list.c b/common/file-list.c
new file mode 100644
index 0000000..90c0f42
--- /dev/null
+++ b/common/file-list.c
@@ -0,0 +1,113 @@
+#include <common.h>
+#include <malloc.h>
+#include <fs.h>
+#include <file-list.h>
+#include <linux/err.h>
+
+#define PARSE_DEVICE	0
+#define PARSE_NAME	1
+#define PARSE_FLAGS	2
+
+static int file_list_parse_one(struct file_list *files, const char *partstr, const char **endstr)
+{
+	int i = 0, state = PARSE_DEVICE;
+	char filename[PATH_MAX];
+	char name[PATH_MAX];
+	struct file_list_entry *entry = xzalloc(sizeof(*entry));
+
+	memset(filename, 0, sizeof(filename));
+	memset(name, 0, sizeof(name));
+
+	while (*partstr && *partstr != ',') {
+		switch (state) {
+		case PARSE_DEVICE:
+			if (*partstr == '(') {
+				state = PARSE_NAME;
+				i = 0;
+			} else {
+				filename[i++] = *partstr;
+			}
+			break;
+		case PARSE_NAME:
+			if (*partstr == ')') {
+				state = PARSE_FLAGS;
+				i = 0;
+			} else {
+				name[i++] = *partstr;
+			}
+			break;
+		case PARSE_FLAGS:
+			switch (*partstr) {
+			case 's':
+				entry->flags |= FILE_LIST_FLAG_SAFE;
+				break;
+			case 'r':
+				entry->flags |= FILE_LIST_FLAG_READBACK;
+				break;
+			case 'c':
+				entry->flags |= FILE_LIST_FLAG_CREATE;
+				break;
+			default:
+				return -EINVAL;
+			}
+			break;
+		default:
+			return -EINVAL;
+		}
+		partstr++;
+	}
+
+	if (state != PARSE_FLAGS)
+		return -EINVAL;
+
+	entry->name = xstrdup(name);
+	entry->filename = xstrdup(filename);
+	if (*partstr == ',')
+		partstr++;
+	*endstr = partstr;
+
+	list_add_tail(&entry->list, &files->list);
+
+	return 0;
+}
+
+struct file_list *file_list_parse(const char *str)
+{
+	struct file_list *files;
+	int ret;
+	const char *endptr;
+
+	files = xzalloc(sizeof(*files));
+
+	INIT_LIST_HEAD(&files->list);
+
+	while (*str) {
+		if (file_list_parse_one(files, str, &endptr)) {
+			printf("parse error\n");
+			ret = -EINVAL;
+			goto out;
+		}
+		str = endptr;
+
+		files->num_entries++;
+	}
+
+	return files;
+out:
+	free(files);
+
+	return ERR_PTR(ret);
+}
+
+void file_list_free(struct file_list *files)
+{
+	struct file_list_entry *entry, *tmp;
+
+	list_for_each_entry_safe(entry, tmp, &files->list, list) {
+		free(entry->name);
+		free(entry->filename);
+		free(entry);
+	}
+
+	free(files);
+}
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 806bb16..94d3bce 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -41,6 +41,7 @@ comment "USB Gadget drivers"
 
 config USB_GADGET_DFU
 	bool
+	select FILE_LIST
 	prompt "Device Firmware Update Gadget"
 
 config USB_GADGET_SERIAL
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index ac8ddb9..1db1932 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -126,10 +126,9 @@ enum dfu_state {
 #define CONFIG_USBD_DFU_XFER_SIZE     4096
 #define DFU_TEMPFILE "/dfu_temp"
 
-static int dfualt;
+struct file_list_entry *dfu_file_entry;
 static int dfufd = -EINVAL;
-static struct usb_dfu_dev *dfu_devs;
-static int dfu_num_alt;
+static struct file_list *dfu_files;
 static int dfudetach;
 
 /* USB DFU functional descriptor */
@@ -174,6 +173,7 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	struct usb_composite_dev *cdev = c->cdev;
 	struct usb_descriptor_header **header;
 	struct usb_interface_descriptor *desc;
+	struct file_list_entry *fentry;
 	int i;
 	int			status;
 
@@ -182,9 +182,9 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	if (status < 0)
 		return status;
 
-	header = xzalloc(sizeof(void *) * (dfu_num_alt + 2));
-	desc = xzalloc(sizeof(struct usb_interface_descriptor) * dfu_num_alt);
-	for (i = 0; i < dfu_num_alt; i++) {
+	header = xzalloc(sizeof(void *) * (dfu_files->num_entries + 2));
+	desc = xzalloc(sizeof(struct usb_interface_descriptor) * dfu_files->num_entries);
+	for (i = 0; i < dfu_files->num_entries; i++) {
 		desc[i].bLength =		USB_DT_INTERFACE_SIZE;
 		desc[i].bDescriptorType =	USB_DT_INTERFACE;
 		desc[i].bNumEndpoints	=	0;
@@ -206,9 +206,14 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	if (status)
 		goto out;
 
-	for (i = 0; i < dfu_num_alt; i++)
+	i = 0;
+	file_list_for_each_entry(dfu_files, fentry) {
 		printf("dfu: register alt%d(%s) with device %s\n",
-				i, dfu_devs[i].name, dfu_devs[i].dev);
+				i, fentry->name, fentry->filename);
+		i++;
+	}
+
+	return 0;
 out:
 	free(desc);
 	free(header);
@@ -233,9 +238,19 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
 
 static int dfu_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
 {
-	dfualt = alt;
+	struct file_list_entry	*fentry;
+	int i = 0;
 
-	return 0;
+	file_list_for_each_entry(dfu_files, fentry) {
+		if (i == alt) {
+			dfu_file_entry = fentry;
+			return 0;
+		}
+
+		i++;
+	}
+
+	return -EINVAL;
 }
 
 static int dfu_status(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
@@ -290,14 +305,14 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
 
 	if (w_length == 0) {
 		dfu->dfu_state = DFU_STATE_dfuIDLE;
-		if (dfu_devs[dfualt].flags & DFU_FLAG_SAFE) {
+		if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
 			int fd;
 			unsigned flags = O_WRONLY;
 
-			if (dfu_devs[dfualt].flags & DFU_FLAG_CREATE)
+			if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
 				flags |= O_CREAT | O_TRUNC;
 
-			fd = open(dfu_devs[dfualt].dev, flags);
+			fd = open(dfu_file_entry->filename, flags);
 			if (fd < 0) {
 				perror("open");
 				ret = -EINVAL;
@@ -310,7 +325,7 @@ static int handle_dnload(struct usb_function *f, const struct usb_ctrlrequest *c
 				ret = -EINVAL;
 				goto err_out;
 			}
-			ret = copy_file(DFU_TEMPFILE, dfu_devs[dfualt].dev, 0);
+			ret = copy_file(DFU_TEMPFILE, dfu_file_entry->filename, 0);
 			if (ret) {
 				printf("copy file failed\n");
 				ret = -EINVAL;
@@ -425,16 +440,16 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 				value = -EINVAL;
 				goto out;
 			}
-			debug("dfu: starting download to %s\n", dfu_devs[dfualt].dev);
-			if (dfu_devs[dfualt].flags & DFU_FLAG_SAFE) {
+			debug("dfu: starting download to %s\n", dfu_file_entry->filename);
+			if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE) {
 				dfufd = open(DFU_TEMPFILE, O_WRONLY | O_CREAT);
 			} else {
 				unsigned flags = O_WRONLY;
 
-				if (dfu_devs[dfualt].flags & DFU_FLAG_CREATE)
+				if (dfu_file_entry->flags & FILE_LIST_FLAG_CREATE)
 					flags |= O_CREAT | O_TRUNC;
 
-				dfufd = open(dfu_devs[dfualt].dev, flags);
+				dfufd = open(dfu_file_entry->filename, flags);
 			}
 
 			if (dfufd < 0) {
@@ -456,12 +471,12 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 			break;
 		case USB_REQ_DFU_UPLOAD:
 			dfu->dfu_state = DFU_STATE_dfuUPLOAD_IDLE;
-			debug("dfu: starting upload from %s\n", dfu_devs[dfualt].dev);
-			if (!(dfu_devs[dfualt].flags & DFU_FLAG_READBACK)) {
+			debug("dfu: starting upload from %s\n", dfu_file_entry->filename);
+			if (!(dfu_file_entry->flags & FILE_LIST_FLAG_READBACK)) {
 				dfu->dfu_state = DFU_STATE_dfuERROR;
 				goto out;
 			}
-			dfufd = open(dfu_devs[dfualt].dev, O_RDONLY);
+			dfufd = open(dfu_file_entry->filename, O_RDONLY);
 			if (dfufd < 0) {
 				dfu->dfu_state = DFU_STATE_dfuERROR;
 				perror("open");
@@ -609,6 +624,7 @@ static int dfu_bind_config(struct usb_configuration *c)
 {
 	struct f_dfu *dfu;
 	struct usb_function *func;
+	struct file_list_entry *fentry;
 	int		status;
 	int i;
 
@@ -628,15 +644,17 @@ static int dfu_bind_config(struct usb_configuration *c)
 	dfu->dfu_state = DFU_STATE_appIDLE;
 	dfu->dfu_status = DFU_STATUS_OK;
 
-	dfu_string_defs = xzalloc(sizeof(struct usb_string) * (dfu_num_alt + 2));
+	dfu_string_defs = xzalloc(sizeof(struct usb_string) * (dfu_files->num_entries + 2));
 	dfu_string_defs[0].s = "Generic DFU";
 	dfu_string_defs[0].id = status;
-	for (i = 0; i < dfu_num_alt; i++) {
-		dfu_string_defs[i + 1].s = dfu_devs[i].name;
+	i = 0;
+	file_list_for_each_entry(dfu_files, fentry) {
+		dfu_string_defs[i + 1].s = fentry->name;
 		status = usb_string_id(c->cdev);
 		if (status < 0)
 			goto out;
 		dfu_string_defs[i + 1].id = status;
+		i++;
 	}
 	dfu_string_defs[i + 1].s = NULL;
 	dfu_string_table.strings = dfu_string_defs;
@@ -752,8 +770,7 @@ int usb_dfu_register(struct usb_dfu_pdata *pdata)
 {
 	int ret;
 
-	dfu_devs = pdata->alts;
-	dfu_num_alt = pdata->num_alts;
+	dfu_files = pdata->files;
 
 	ret = usb_composite_probe(&dfu_driver);
 	if (ret)
diff --git a/include/file-list.h b/include/file-list.h
new file mode 100644
index 0000000..608181f
--- /dev/null
+++ b/include/file-list.h
@@ -0,0 +1,26 @@
+#ifndef __FILE_LIST
+#define __FILE_LIST
+
+#define FILE_LIST_FLAG_SAFE	(1 << 0)
+#define FILE_LIST_FLAG_READBACK	(1 << 1)
+#define FILE_LIST_FLAG_CREATE	(1 << 2)
+
+struct file_list_entry {
+	char *name;
+	char *filename;
+	unsigned long flags;
+	struct list_head list;
+};
+
+struct file_list {
+	struct list_head list;
+	int num_entries;
+};
+
+struct file_list *file_list_parse(const char *str);
+void file_list_free(struct file_list *);
+
+#define file_list_for_each_entry(files, entry) \
+	list_for_each_entry(entry, &files->list, list)
+
+#endif /* __FILE_LIST */
diff --git a/include/usb/dfu.h b/include/usb/dfu.h
index db50437..f9dd381 100644
--- a/include/usb/dfu.h
+++ b/include/usb/dfu.h
@@ -21,20 +21,10 @@
  */
 
 #include <linux/types.h>
-
-#define DFU_FLAG_SAFE		(1 << 0)
-#define DFU_FLAG_READBACK	(1 << 1)
-#define DFU_FLAG_CREATE		(1 << 2)
-
-struct usb_dfu_dev {
-	char *name;
-	char *dev;
-	unsigned long flags;
-};
+#include <file-list.h>
 
 struct usb_dfu_pdata {
-	struct usb_dfu_dev	*alts;
-	int			num_alts;
+	struct file_list	*files;
 };
 
 int usb_dfu_register(struct usb_dfu_pdata *);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
