Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout03.rmx.de ([94.199.88.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw1UG-000456-QX
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 10:19:22 +0000
Received: from kdin02.retarus.com (unknown [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout03.rmx.de (Postfix) with ESMTPS id 485m1x25wKzlb7D
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 11:19:17 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 485m1w1d5bz2TTJZ
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 11:19:16 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 27 Jan 2020 11:18:31 +0100
Message-ID: <20200127101831.27601-1-ceggers@arri.de>
In-Reply-To: <20200127100711.wo2fwdq4o3cax3jl@pengutronix.de>
References: <20200127100711.wo2fwdq4o3cax3jl@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC PATCH] bootm: Register as bootentry provider
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

> Obviously anything involving shell scripts cannot work when no shell is
> enabled. I suggest using bootloader spec (CONFIG_BLSPEC) to boot a
> kernel. This works without shell support.

I would like to avoid using bootloader spec. The patch below works fine
for me. Do you think that this (or something similar) can be added to
barebox?


Support for "boot <device>". This is required for using bootchooser with
CONFIG_SHELL_NONE. In this case no boot scripts can be used, so the
device name of the flash partition containing the kernel image has to
provided.

Only enabled if CONFIG_BLSPEC is disabled.

Example: bootchooser.system0.boot=nand0.root.ubi.kernel0

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 common/bootm.c | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 70 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 366f31455..e880d3cab 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -12,6 +12,7 @@
  */
 
 #include <common.h>
+#include <boot.h>
 #include <bootm.h>
 #include <fs.h>
 #include <malloc.h>
@@ -721,6 +722,74 @@ err_out:
 	return ret;
 }
 
+#ifndef CONFIG_BLSPEC
+static int bootm_entry_boot(struct bootentry *entry, int verbose, int dryrun)
+{
+	struct bootm_data data = {};
+
+	bootm_data_init_defaults(&data);
+	data.os_file = entry->title;
+
+	return bootm_boot(&data);
+}
+
+static void bootm_release(struct bootentry *entry)
+{
+	free(entry);
+}
+
+/*
+ * bootm_scan_devicename - scan a hardware device for child cdevs
+ *
+ * Given a name of a hardware device this functions checks whether the device
+ * exists and add one booentries entry.
+ * Returns the number of entries found or a negative error code if some unexpected
+ * error occured.
+ */
+static int bootm_scan_devicename(struct bootentries *bootentries, const char *devname)
+{
+	struct cdev *cdev;
+
+	pr_debug("%s: %s\n", __func__, devname);
+
+	device_detect_by_name(devname);
+
+	cdev = cdev_by_name(devname);
+	if (cdev || get_device_by_name(devname)) {
+		struct bootentry *entry = xzalloc(sizeof(*entry));
+
+		entry->boot = bootm_entry_boot;
+		entry->release = bootm_release;
+		entry->title = basprintf("/dev/%s", devname);
+		entry->description = xstrdup(entry->title);
+
+		bootentries_add_entry(bootentries, entry);
+
+		return 1;
+	}
+
+	return -ENODEV;
+}
+
+static int bootm_bootentry_provider(struct bootentries *bootentries,
+				     const char *name)
+{
+	int ret, found = 0;
+
+	ret = bootm_scan_devicename(bootentries, name);
+	if (ret > 0)
+		found += ret;
+
+	return found;
+}
+#else   /* CONFIG_BLSPEC */
+static int bootm_bootentry_provider(struct bootentries *bootentries,
+				     const char *name)
+{
+	return 0;
+}
+#endif  /* CONFIG_BLSPEC */
+
 static int bootm_init(void)
 {
 	globalvar_add_simple("bootm.image", NULL);
@@ -742,7 +811,7 @@ static int bootm_init(void)
 	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
 				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
 
-	return 0;
+	return bootentry_register_provider(bootm_bootentry_provider);
 }
 late_initcall(bootm_init);
 
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
