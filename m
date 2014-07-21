Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YP-D0
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:40 +0200
Message-Id: <1405955687-27433-17-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/23] USB: gadget: DFU: register as USB function
To: barebox@lists.infradead.org

Register DFU as usb_function_instance to make it work with composite
gadgets. Also use this internally for registering as DFU device (with
the 'dfu' command).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/dfu.c           |  12 ++--
 drivers/usb/gadget/dfu.c | 141 ++++++++++++++++++++++++++++++++---------------
 include/usb/dfu.h        |   8 ++-
 3 files changed, 107 insertions(+), 54 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index 1610349..99fec9b 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -33,7 +33,7 @@
  */
 static int do_dfu(int argc, char *argv[])
 {
-	struct usb_dfu_pdata pdata;
+	struct f_dfu_opts opts;
 	char *argstr;
 	struct usb_dfu_dev *dfu_alts = NULL;
 	int ret;
@@ -43,15 +43,15 @@ static int do_dfu(int argc, char *argv[])
 
 	argstr = argv[optind];
 
-	pdata.files = file_list_parse(argstr);
-	if (IS_ERR(pdata.files)) {
-		ret = PTR_ERR(pdata.files);
+	opts.files = file_list_parse(argstr);
+	if (IS_ERR(opts.files)) {
+		ret = PTR_ERR(opts.files);
 		goto out;
 	}
 
-	ret = usb_dfu_register(&pdata);
+	ret = usb_dfu_register(&opts);
 
-	file_list_free(pdata.files);
+	file_list_free(opts.files);
 out:
 
 	free(dfu_alts);
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index ca7462b..3684edd 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -182,6 +182,13 @@ dfu_bind(struct usb_configuration *c, struct usb_function *f)
 	int			status;
 	struct usb_string	*us;
 
+	if (!dfu_files) {
+		const struct usb_function_instance *fi = f->fi;
+		struct f_dfu_opts *opts = container_of(fi, struct f_dfu_opts, func_inst);
+
+		dfu_files = opts->files;
+	}
+
 	dfu_string_defs = xzalloc(sizeof(struct usb_string) * (dfu_files->num_entries + 2));
 	dfu_string_defs[0].s = "Generic DFU";
 	i = 0;
@@ -652,42 +659,6 @@ static struct usb_gadget_strings *dev_strings[] = {
 	NULL,
 };
 
-static int dfu_bind_config(struct usb_configuration *c)
-{
-	struct f_dfu *dfu;
-	struct usb_function *func;
-	int		status;
-
-	/* config description */
-	status = usb_string_id(c->cdev);
-	if (status < 0)
-		return status;
-	strings_dev[STRING_DESCRIPTION_IDX].id = status;
-
-	/* allocate and initialize one new instance */
-	dfu = xzalloc(sizeof *dfu);
-
-	func = &dfu->func;
-	func->name = "DFU";
-	func->strings = dfu_strings;
-	/* descriptors are per-instance copies */
-	func->bind = dfu_bind;
-	func->unbind = dfu_unbind;
-	func->set_alt = dfu_set_alt;
-	func->setup = dfu_setup;
-	func->disable = dfu_disable;
-
-	status = usb_add_function(c, func);
-	if (status)
-		goto out;
-
-	return 0;
-out:
-	free(dfu);
-
-	return status;
-}
-
 static void dfu_unbind_config(struct usb_configuration *c)
 {
 	free(dfu_string_defs);
@@ -713,6 +684,9 @@ static struct usb_device_descriptor dfu_dev_descriptor = {
 	.bNumConfigurations	= 0x01,
 };
 
+static struct usb_function_instance *fi_dfu;
+static struct usb_function *f_dfu;
+
 static int dfu_driver_bind(struct usb_composite_dev *cdev)
 {
 	struct usb_gadget *gadget = cdev->gadget;
@@ -748,52 +722,129 @@ static int dfu_driver_bind(struct usb_composite_dev *cdev)
 	strings_dev[STRING_DESCRIPTION_IDX].id = status;
 	dfu_config_driver.iConfiguration = status;
 
-	status = usb_add_config(cdev, &dfu_config_driver, dfu_bind_config);
+	status = usb_add_config_only(cdev, &dfu_config_driver);
 	if (status < 0)
 		goto fail;
 
+	fi_dfu = usb_get_function_instance("dfu");
+	if (IS_ERR(fi_dfu)) {
+		status = PTR_ERR(fi_dfu);
+		goto fail;
+	}
+
+	f_dfu = usb_get_function(fi_dfu);
+	if (IS_ERR(f_dfu)) {
+		status = PTR_ERR(f_dfu);
+		goto fail;
+	}
+
+	status = usb_add_function(&dfu_config_driver, f_dfu);
+	if (status)
+		goto fail;
+
 	return 0;
 fail:
 	return status;
 }
 
+static int dfu_driver_unbind(struct usb_composite_dev *cdev)
+{
+	usb_put_function(f_dfu);
+	usb_put_function_instance(fi_dfu);
+
+	return 0;
+}
+
 static struct usb_composite_driver dfu_driver = {
 	.name		= "g_dfu",
 	.dev		= &dfu_dev_descriptor,
 	.strings	= dev_strings,
 	.bind		= dfu_driver_bind,
+	.unbind		= dfu_driver_unbind,
 };
 
-int usb_dfu_register(struct usb_dfu_pdata *pdata)
+int usb_dfu_register(struct f_dfu_opts *opts)
 {
 	int ret;
 
-	dfu_files = pdata->files;
+	if (dfu_files)
+		return -EBUSY;
+
+	dfu_files = opts->files;
 
 	ret = usb_composite_probe(&dfu_driver);
 	if (ret)
-		return ret;
+		goto out;
 
 	while (1) {
 		ret = usb_gadget_poll();
 		if (ret < 0)
-			goto out;
+			goto out1;
 
 		if (dfudetach) {
 			ret = 0;
-			goto out;
+			goto out1;
 		}
 
 		if (ctrlc()) {
 			ret = -EINTR;
-			goto out;
+			goto out1;
 		}
 	}
 
-out:
+out1:
 	dfudetach = 0;
 	usb_composite_unregister(&dfu_driver);
+out:
+	dfu_files = NULL;
 
-	return 0;
+	return ret;
+}
+
+static void dfu_free_func(struct usb_function *f)
+{
+	struct f_dfu *dfu = container_of(f, struct f_dfu, func);
+
+	free(dfu);
+}
+
+static struct usb_function *dfu_alloc_func(struct usb_function_instance *fi)
+{
+	struct f_dfu *dfu;
+
+	dfu = xzalloc(sizeof(*dfu));
+
+	dfu->func.name = "dfu";
+	dfu->func.strings = dfu_strings;
+	/* descriptors are per-instance copies */
+	dfu->func.bind = dfu_bind;
+	dfu->func.set_alt = dfu_set_alt;
+	dfu->func.setup = dfu_setup;
+	dfu->func.disable = dfu_disable;
+	dfu->func.unbind = dfu_unbind;
+	dfu->func.free_func = dfu_free_func;
+
+	return &dfu->func;
+}
+
+static void dfu_free_instance(struct usb_function_instance *fi)
+{
+	struct f_dfu_opts *opts;
+
+	opts = container_of(fi, struct f_dfu_opts, func_inst);
+	kfree(opts);
+}
+
+static struct usb_function_instance *dfu_alloc_instance(void)
+{
+	struct f_dfu_opts *opts;
+
+	opts = kzalloc(sizeof(*opts), GFP_KERNEL);
+	if (!opts)
+		return ERR_PTR(-ENOMEM);
+	opts->func_inst.free_func_inst = dfu_free_instance;
+
+	return &opts->func_inst;
 }
 
+DECLARE_USB_FUNCTION_INIT(dfu, dfu_alloc_instance, dfu_alloc_func);
diff --git a/include/usb/dfu.h b/include/usb/dfu.h
index f9dd381..560a031 100644
--- a/include/usb/dfu.h
+++ b/include/usb/dfu.h
@@ -22,11 +22,13 @@
 
 #include <linux/types.h>
 #include <file-list.h>
+#include <usb/composite.h>
 
-struct usb_dfu_pdata {
-	struct file_list	*files;
+struct f_dfu_opts {
+	struct usb_function_instance func_inst;
+	struct file_list *files;
 };
 
-int usb_dfu_register(struct usb_dfu_pdata *);
+int usb_dfu_register(struct f_dfu_opts *);
 
 #endif /* _USB_DFU_H */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
