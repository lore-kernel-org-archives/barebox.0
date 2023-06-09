Delivery-date: Fri, 09 Jun 2023 09:53:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7WwY-00GuP0-6e
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 09:53:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7WwV-0003ag-Ki
	for lore@pengutronix.de; Fri, 09 Jun 2023 09:53:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sUzwSVEb+2mFDoXfj13i6lq5aOUmr2NUjRmMDHfPC8M=; b=ghIJkXAoyrZqA7U3tZQ/swcJzE
	HZD0cfZ5uoAzi2KEydKOhC4LqUIsqpY0EjutFxgRuiMPmMfzWaMxdtlkOmTAOy+cr6BA5CE9GdaH0
	ZZUTDI3yWx/QurP9ubMBCF3UHM075+iw6OeoFZor5LEOBwpUCFopNiRaQxrWk1PZLQI/HLawYesjI
	gAUmRUH4UV5c0HE/KqY0RP6InFWFFfyH3ia4+ENl0I3ZzJ3B0bfTXYiEzCx1W+3GQu5X/Hd5EivDt
	ZMyQpNhBDr8WUuwT742Ym+ACxARcAmDgckftGQNT16BbP7h9zoWhplTpyi9n9oBKURNH389Dpn+L2
	IlgMzpQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7WvE-00C6wG-2P;
	Fri, 09 Jun 2023 07:52:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7WvC-00C6v6-11
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 07:52:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q7WvA-0003SJ-SW; Fri, 09 Jun 2023 09:52:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7WvA-0069Vv-7x; Fri, 09 Jun 2023 09:52:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q7Wv9-004eDc-JS; Fri, 09 Jun 2023 09:52:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Jun 2023 09:52:29 +0200
Message-Id: <20230609075229.1093397-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230609075229.1093397-1-a.fatoum@pengutronix.de>
References: <20230609075229.1093397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_005234_356261_D3207BED 
X-CRM114-Status: GOOD (  16.47  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/2] file-list: support special 'auto', 'block' specifiers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Best practice is for each board to populate $global.system.partitions
or $global.fastboot.partitions with a string exporting its flashable
devices in a descriptive manner, e.g. "/dev/mmc0(eMMC),/dev/mmc1(SD)".

This often goes into BSPs though, so upstream boards are left without
default partitions, making use a bit cumbersome. Make this easier
by providing three new magic specifiers:

  - block: exports all registered block devices (e.g. eMMC and SD)
  - auto:  currently equivalent to "block". May be extended
           to EEPROMs, raw MTD and UBI in future

This makes it easy to export devices on any board:

  usbgadget -A auto -b

or

  usbgadget -S auto,/tmp/fitimage(fitimage)c

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> 2:
  - dropped nvmem specifier (Sascha). Can add it back later
    limited to only EEPROMs
  - reordered code in file_list_handle_spec to make future extension
    easier (Sascha)
---
 Documentation/user/usb.rst | 16 ++++++++++++++++
 common/block.c             | 16 ++++++++++++++++
 common/file-list.c         | 24 ++++++++++++++++++++++--
 include/block.h            |  6 ++++++
 4 files changed, 60 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
index f2f57ead98d4..eaee342956f9 100644
--- a/Documentation/user/usb.rst
+++ b/Documentation/user/usb.rst
@@ -73,6 +73,22 @@ Example:
 
   /dev/nand0.barebox.bb(barebox)sr,/kernel(kernel)rc
 
+Board code authors are encouraged to provide a default environment containing
+partitions with descriptive names. For boards where this is not specified,
+there exist a number of **partition** specifiers for automatically generating entries:
+
+* ``block`` exports all registered block devices (e.g. eMMC and SD)
+* ``auto``  currently equivalent to ``block``. May be extended to other flashable
+            devices, like EEPROMs, MTD or UBI volumes in future
+
+Example usage of exporting registered block devices, barebox update
+handlers and a single file that is created on flashing:
+
+.. code-block:: sh
+
+     detect -a # optional. Detects everything, so auto can register it
+     usbgadget -A auto,/tmp/fitimage(fitimage)c -b
+
 DFU
 ^^^
 
diff --git a/common/block.c b/common/block.c
index f6eeb7f9c85f..3a4a9fb73149 100644
--- a/common/block.c
+++ b/common/block.c
@@ -11,6 +11,7 @@
 #include <linux/err.h>
 #include <linux/list.h>
 #include <dma.h>
+#include <file-list.h>
 
 #define BLOCKSIZE(blk)	(1 << blk->blockbits)
 
@@ -458,3 +459,18 @@ int block_write(struct block_device *blk, void *buf, sector_t block, blkcnt_t nu
 
 	return ret < 0 ? ret : 0;
 }
+
+unsigned file_list_add_blockdevs(struct file_list *files)
+{
+	struct block_device *blk;
+	unsigned count = 0;
+	int err;
+
+	list_for_each_entry(blk, &block_device_list, list) {
+		err = file_list_add_cdev_entry(files, &blk->cdev, 0);
+		if (!err)
+			count++;
+	}
+
+	return count;
+}
diff --git a/common/file-list.c b/common/file-list.c
index 5c7020111145..7ecc8d00bb9e 100644
--- a/common/file-list.c
+++ b/common/file-list.c
@@ -9,6 +9,7 @@
 #include <stringlist.h>
 #include <linux/err.h>
 #include <driver.h>
+#include <block.h>
 
 #define PARSE_DEVICE	0
 #define PARSE_NAME	1
@@ -59,12 +60,28 @@ int file_list_add_cdev_entry(struct file_list *files, struct cdev *cdev,
 				     xasprintf("/dev/%s", cdev->name), flags);
 }
 
+static bool file_list_handle_spec(struct file_list *files, const char *spec)
+{
+	unsigned count = 0;
+	bool autoadd;
+
+	autoadd = !strcmp(spec, "auto");
+	if (autoadd || !strcmp(spec, "block"))
+		count += file_list_add_blockdevs(files);
+	else
+		return false;
+
+	pr_debug("'%s' spcifier resulted in %u entries\n", spec, count);
+	return true;
+}
+
 static int file_list_parse_one(struct file_list *files, const char *partstr, const char **endstr)
 {
 	int i = 0, state = PARSE_DEVICE;
 	char filename[PATH_MAX];
 	char name[PATH_MAX];
 	unsigned long flags = 0;
+	bool special = false;
 
 	memset(filename, 0, sizeof(filename));
 	memset(name, 0, sizeof(name));
@@ -115,7 +132,10 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 		partstr++;
 	}
 
-	if (state != PARSE_FLAGS) {
+	if (state == PARSE_DEVICE)
+		special = file_list_handle_spec(files, filename);
+
+	if (!special && state != PARSE_FLAGS) {
 		pr_err("Missing ')'\n");
 		return -EINVAL;
 	}
@@ -124,7 +144,7 @@ static int file_list_parse_one(struct file_list *files, const char *partstr, con
 		partstr++;
 	*endstr = partstr;
 
-	return file_list_add_entry(files, name, filename, flags);
+	return special ? 0 : file_list_add_entry(files, name, filename, flags);
 }
 
 static const char *flags_to_str(int flags)
diff --git a/include/block.h b/include/block.h
index da258f509b41..44037bd74c61 100644
--- a/include/block.h
+++ b/include/block.h
@@ -7,6 +7,7 @@
 #include <linux/types.h>
 
 struct block_device;
+struct file_list;
 
 struct block_device_ops {
 	int (*read)(struct block_device *, void *buf, sector_t block, blkcnt_t num_blocks);
@@ -51,11 +52,16 @@ static inline int block_flush(struct block_device *blk)
 
 #ifdef CONFIG_BLOCK
 struct block_device *cdev_get_block_device(const struct cdev *cdev);
+unsigned file_list_add_blockdevs(struct file_list *files);
 #else
 static inline struct block_device *cdev_get_block_device(const struct cdev *cdev)
 {
 	return NULL;
 }
+static inline unsigned file_list_add_blockdevs(struct file_list *files)
+{
+	return 0;
+}
 #endif
 
 static inline bool cdev_is_block_device(const struct cdev *cdev)
-- 
2.39.2



