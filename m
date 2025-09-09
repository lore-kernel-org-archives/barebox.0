Delivery-date: Tue, 09 Sep 2025 18:03:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0oC-0017qC-37
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:03:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0oA-0007se-E4
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:03:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tmh+MoQHeLYyw8VMcgEvhTD8h7E6MASG8rY03d66tKk=; b=GzonsSkMq8RyYC1jLxhXgpEnQ/
	LnD8DLe3dHXOnw5Icbtn8jNSJi6nk1psmMBd4sm51YOr3BKBUfrt0kTKpk6RkR5x63uEtR6rSFojZ
	nPBYG0SoSZVWr/bDhO4jSoTjmoaQEc/1VnxYJzu3P+1q3i8pDjZn7nhPlcLmyje2hOpP3UO+B/jme
	NkFYvduGmhErQzjTzcueEns9XZ8v5vcmJVYIFToE30kOt/+0erReOiI6l4nvRSJAUNHmgHauYz4LD
	og3Fk2fR3CX2YOeHS+ySCy7C8MfxctkySXqwoVDa6ArkkgAYPSFMpiymEcahpj4d1gHdBUAOnei9y
	ktl6Xwdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0ne-00000008Njo-0Klm;
	Tue, 09 Sep 2025 16:02:30 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyFd-00000007KJI-0FMS
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 13:19:14 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-b047f28a83dso945489066b.2
        for <barebox@lists.infradead.org>; Tue, 09 Sep 2025 06:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757423951; x=1758028751; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tmh+MoQHeLYyw8VMcgEvhTD8h7E6MASG8rY03d66tKk=;
        b=vhrZjDjOanUk/wXIZu/rORLjCfx4Yd9BkytGe7RRQNluwDFVGaMWcR3U79V5Di1TfM
         9rGYpVvjlvfyM30PTBzdcsCvnlJMLWTDPvZtrVjMKn1g/wSC9sAqh/t32Tiq26OqKcXw
         7Ymo/s18W5dYzcA0+pGRUqDXWpCUr0vcar2kHOQ4uBu9K/uMfyIboTgBWe2CBJhjDO9x
         Q9VVbBECbPOEGKJuQaFqcy79m6LF5tTvIqkDsQJQpl7qp/wLQioKnrwCFsMlmKOtQIn9
         5EW8YiOqJevBWs7z4volW/+e7/Qmxvwrbhsw2etZ9LU5c4aJp+QEJ8kFeTQvjh4wAzfB
         06Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757423951; x=1758028751;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tmh+MoQHeLYyw8VMcgEvhTD8h7E6MASG8rY03d66tKk=;
        b=U5cZQ8iasKj1a0Mwl3+/h4Yndzag55rg30XgS8dQsEOBFk/36P5cXPZ6eOu3yJDF69
         V9gPzkCK/8Oat7SGVCdnOF3xvNk0Z83HFLP1ZWYuZgEZwwHT6zLx4YXA9REno6SNKmUa
         4cmkGEYWPvzlvO6eJDololnRS864eH6ztNRzbHKuLx5+jLdWYbyxekenZDUYgfZKwend
         gtS+PWH+BsV0vnUYY6+qWICzvI0Zn87terGJQz2GKv7Y0u2y4xV+bVTt8tD6YwMbMvop
         C8I3Tk2K/KlClVktyxES613f8A+koviKjt8s+7mQU67Fg4e+6okSMLFnpIoGryiWe0OA
         Ouuw==
X-Gm-Message-State: AOJu0YyL++qvlbEtBqVvVkwmtX2OC1XuTOYfSWb5uvdxNhTzT6VIV3Gk
	USg1dhZVoGgtxTsKSYYETol3puF4jxO3peQM0tl5ZGwffKigPw/8IToYB2CF9Zne+5ZHmcvUdDL
	X17Cd
X-Gm-Gg: ASbGncv1+gvsYZTC6MKq3wn2jpKxYORVRrXhkLanuygMFKw4ib3IJJ8MRVpOh3eNxOV
	YG2ebOq+qryFfYDeHbtf9i9Y3glqAHGYnUzXruVmFgikHTDjaqRkW3cU0x//3ye2W3g427wGSKf
	3W5ZpE9Xv4HrXWoiAI2lMfT4uNxzvbUFL4w31MZ4SykZY5Ju1YmYLMODffcu4+Upno5fcbWMf8l
	H3g+L4PQ1djOWbTHF/7boMZeP7WYokrgRl2WKYpAja4WvYOLbtW2zqvloBbP+SyHSm3084b75v+
	dLLjB19Pjz63XTcYuMytrp95L9hWWRjl5JGknpdfCAYQxkv+l6NmSFsNGXkEQ4HQZBEgxhZbI8W
	Lfgv5SUfJaDYNTEdZaU/icrAr+bsCwJXN9MJY0O5Nho+JSr8SCUTk3muMjL5dq4LUx8xoT4r8Z8
	hA
X-Google-Smtp-Source: AGHT+IE2hx6KH4DUh7giSGlT3G5O9zma+3KBA0j7UKMHsBFULPjORsum9a0ZcdbzdeT/HJer1p9KRw==
X-Received: by 2002:a17:907:3f1b:b0:b04:53cc:441c with SMTP id a640c23a62f3a-b04b14aeaa4mr1152663666b.28.1757423950692;
        Tue, 09 Sep 2025 06:19:10 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm2131074366b.60.2025.09.09.06.19.10
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:19:10 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Tue,  9 Sep 2025 15:18:36 +0200
Message-ID: <20250909131843.2260573-4-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250909131843.2260573-1-tobias@waldekranz.com>
References: <20250909131843.2260573-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_061913_107956_F92A15DC 
X-CRM114-Status: GOOD (  27.46  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/7] dm: Add initial device mapper infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add initial scaffolding for a block device mapper which is intended to
be compatible with the corresponding subsystem in Linux.

This is the foundation of several higher level abstractions, for
example:

- LVM: Linux Volume manager. Dynamically allocates logical volumes
  from one or more storage devices, manages RAID arrays, etc.

- LUKS: Linux Unified Key Setup. Transparent disk
  encryption/decryption.

- dm-verity: Transparent integrity checking of block devices.

Being able to configure dm devices in barebox will allow us to access
data from LVM volumes, access filesystems with block layer integrity
validation, etc.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---

Notes:
    v1 -> v2:
    - General cleanup
    - Define a device class to which all dm devices are assigned
    - Add some comments detailing core concepts
    - Add general devinfo support
    - Rename include/dm.h -> include/device-mapper.h

 drivers/block/Kconfig        |   2 +
 drivers/block/Makefile       |   1 +
 drivers/block/dm/Kconfig     |   7 +
 drivers/block/dm/Makefile    |   2 +
 drivers/block/dm/dm-core.c   | 395 +++++++++++++++++++++++++++++++++++
 drivers/block/dm/dm-target.h |  39 ++++
 include/device-mapper.h      |  16 ++
 7 files changed, 462 insertions(+)
 create mode 100644 drivers/block/dm/Kconfig
 create mode 100644 drivers/block/dm/Makefile
 create mode 100644 drivers/block/dm/dm-core.c
 create mode 100644 drivers/block/dm/dm-target.h
 create mode 100644 include/device-mapper.h

diff --git a/drivers/block/Kconfig b/drivers/block/Kconfig
index 5b1b778917..dace861670 100644
--- a/drivers/block/Kconfig
+++ b/drivers/block/Kconfig
@@ -32,3 +32,5 @@ config RAMDISK_BLK
         help
 	  This symbol is selected by testing code that requires lightweight
 	  creation of anonymous block devices backed fully by memory buffers.
+
+source "drivers/block/dm/Kconfig"
diff --git a/drivers/block/Makefile b/drivers/block/Makefile
index 6066b35c31..8f913bd0ad 100644
--- a/drivers/block/Makefile
+++ b/drivers/block/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_EFI_BLK) += efi-block-io.o
 obj-$(CONFIG_VIRTIO_BLK) += virtio_blk.o
 obj-$(CONFIG_RAMDISK_BLK) += ramdisk.o
+obj-y += dm/
diff --git a/drivers/block/dm/Kconfig b/drivers/block/dm/Kconfig
new file mode 100644
index 0000000000..3316386d0c
--- /dev/null
+++ b/drivers/block/dm/Kconfig
@@ -0,0 +1,7 @@
+menuconfig DM_BLK
+	bool "Device mapper"
+	help
+	  Composable virtual block devices made up of mappings to
+	  other data sources. Modeled after, and intended to be
+	  compatible with, the Linux kernel's device mapper subsystem.
+
diff --git a/drivers/block/dm/Makefile b/drivers/block/dm/Makefile
new file mode 100644
index 0000000000..9c045087c0
--- /dev/null
+++ b/drivers/block/dm/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_DM_BLK) += dm-core.o
diff --git a/drivers/block/dm/dm-core.c b/drivers/block/dm/dm-core.c
new file mode 100644
index 0000000000..1413eb0e3e
--- /dev/null
+++ b/drivers/block/dm/dm-core.c
@@ -0,0 +1,395 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
+
+#include <block.h>
+#include <disks.h>
+#include <device-mapper.h>
+#include <stdio.h>
+#include <string.h>
+#include <xfuncs.h>
+
+#include <linux/kstrtox.h>
+
+#include "dm-target.h"
+
+static LIST_HEAD(dm_target_ops_list);
+
+static struct dm_target_ops *dm_target_ops_find(const char *name)
+{
+	struct dm_target_ops *ops;
+
+	list_for_each_entry(ops, &dm_target_ops_list, list) {
+		if (!strcmp(ops->name, name))
+			return ops;
+	}
+	return NULL;
+}
+
+int dm_target_register(struct dm_target_ops *ops)
+{
+	list_add(&ops->list, &dm_target_ops_list);
+	return 0;
+}
+
+void dm_target_unregister(struct dm_target_ops *ops)
+{
+	list_del(&ops->list);
+}
+
+struct dm_device {
+	struct device dev;
+	struct block_device blk;
+	struct list_head targets;
+};
+
+DEFINE_DEV_CLASS(dm_class, "dm");
+
+struct dm_device *dm_find_by_name(const char *name)
+{
+	struct device *dev;
+
+	class_for_each_device(&dm_class, dev) {
+		if (!strcmp(dev_name(dev), name))
+			return container_of(dev, struct dm_device, dev);
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+EXPORT_SYMBOL(dm_find_by_name);
+
+int dm_foreach(int (*cb)(struct dm_device *dm, void *ctx), void *ctx)
+{
+	struct dm_device *dm;
+	int err;
+
+	class_for_each_container_of_device(&dm_class, dm, dev) {
+		err = cb(dm, ctx);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(dm_foreach);
+
+void dm_target_err(struct dm_target *ti, const char *fmt, ...)
+{
+	struct dm_target *iter;
+	va_list ap;
+	char *msg;
+	int i = 0;
+
+	/* Figure out the index in the target list, which corresponds
+	 * to the first column in the table generated in
+	 * dm_asprint().
+	 */
+	list_for_each_entry(iter, &ti->dm->targets, list) {
+		if (iter == ti)
+			break;
+		i++;
+	}
+
+	va_start(ap, fmt);
+	msg = xvasprintf(fmt, ap);
+	va_end(ap);
+
+	dev_err(&ti->dm->dev, "%d(%s): %s", i, ti->ops->name, msg);
+	free(msg);
+}
+EXPORT_SYMBOL(dm_target_err);
+
+static int dm_blk_read(struct block_device *blk, void *buf,
+		       sector_t block, blkcnt_t num_blocks)
+{
+	struct dm_device *dm = container_of(blk, struct dm_device, blk);
+	struct dm_target *ti;
+	blkcnt_t tnblks, todo;
+	sector_t tblk;
+	int err;
+
+	todo = num_blocks;
+
+	/* We can have multiple non-overlapping targets and a read may
+	 * span multiple targets. Since targets are ordered by base
+	 * address, we iterate until we find the first applicable
+	 * target and then read as much as we can from each until we
+	 * have completed the full request.
+	 */
+	list_for_each_entry(ti, &dm->targets, list) {
+		if (block < ti->base || block >= ti->base + ti->size)
+			continue;
+
+		if (!ti->ops->read)
+			return -EIO;
+
+		tblk = block - ti->base;
+		tnblks = min(todo, ti->size - tblk);
+		err = ti->ops->read(ti, buf, tblk, tnblks);
+		if (err)
+			return err;
+
+		block += tnblks;
+		todo -= tnblks;
+		buf += tnblks << SECTOR_SHIFT;
+		if (!todo)
+			return 0;
+	}
+
+	return -EIO;
+}
+
+static int dm_blk_write(struct block_device *blk, const void *buf,
+			sector_t block, blkcnt_t num_blocks)
+{
+	struct dm_device *dm = container_of(blk, struct dm_device, blk);
+	struct dm_target *ti;
+	blkcnt_t tnblks, todo;
+	sector_t tblk;
+	int err;
+
+	todo = num_blocks;
+
+	list_for_each_entry(ti, &dm->targets, list) {
+		if (block < ti->base || block >= ti->base + ti->size)
+			continue;
+
+		if (!ti->ops->write)
+			return -EIO;
+
+		tblk = block - ti->base;
+		tnblks = min(todo, ti->size - tblk);
+		err = ti->ops->write(ti, buf, tblk, tnblks);
+		if (err)
+			return err;
+
+		block += tnblks;
+		todo -= tnblks;
+		buf += tnblks << SECTOR_SHIFT;
+		if (!todo)
+			return 0;
+	}
+
+	return -EIO;
+}
+
+static struct block_device_ops dm_blk_ops = {
+	.read = dm_blk_read,
+	.write = dm_blk_write,
+};
+
+static blkcnt_t dm_size(struct dm_device *dm)
+{
+	struct dm_target *last;
+
+	if (list_empty(&dm->targets))
+		return 0;
+
+	last = list_last_entry(&dm->targets, struct dm_target, list);
+	return last->base + last->size;
+}
+
+char *dm_asprint(struct dm_device *dm)
+{
+	struct dm_target *ti;
+	char *str, *tistr;
+	int n = 0;
+
+	str = xasprintf(
+		"Device: %s\n"
+		"Size: %llu\n"
+		"Table:\n"
+		" #       Start         End        Size  Target\n",
+		dev_name(&dm->dev), dm_size(dm));
+
+	list_for_each_entry(ti, &dm->targets, list) {
+		tistr = ti->ops->asprint ? ti->ops->asprint(ti) : NULL;
+
+		str = xrasprintf(str, "%2d  %10llu  %10llu  %10llu  %s %s\n",
+				 n++, ti->base, ti->base + ti->size - 1,
+				 ti->size, ti->ops->name, tistr ? : "");
+
+		if (tistr)
+			free(tistr);
+	}
+
+	return str;
+}
+EXPORT_SYMBOL(dm_asprint);
+
+static void dm_devinfo(struct device *dev)
+{
+	struct dm_device *dm = dev->priv;
+	char *info = dm_asprint(dm);
+
+	puts(info);
+	free(info);
+}
+
+static struct dm_target *dm_parse_row(struct dm_device *dm, const char *crow)
+{
+	struct dm_target *ti = NULL;
+	char *row, **argv;
+	int argc;
+
+	row = xstrdup(crow);
+	argv = strtokv(row, " \t", &argc);
+
+	if (argc < 3) {
+		dev_err(&dm->dev, "Invalid row: \"%s\"\n", crow);
+		goto err;
+	}
+
+	ti = xzalloc(sizeof(*ti));
+	ti->dm = dm;
+
+	ti->ops = dm_target_ops_find(argv[2]);
+	if (!ti->ops) {
+		dev_err(&dm->dev, "Unknown target: \"%s\"\n", argv[2]);
+		goto err;
+	}
+
+	if (kstrtoull(argv[0], 0, &ti->base)) {
+		dm_target_err(ti, "Invalid start: \"%s\"\n", argv[0]);
+		goto err;
+	}
+
+	if (ti->base != dm_size(dm)) {
+		/* Could we just skip the start argument, then? Seems
+		 * like it, but let's keep things compatible with the
+		 * table format in Linux.
+		 */
+		dm_target_err(ti, "Non-contiguous start: %llu, expected %llu\n",
+			      ti->base, dm_size(dm));
+		goto err;
+	}
+
+	if (kstrtoull(argv[1], 0, &ti->size) || !ti->size) {
+		dm_target_err(ti, "Invalid length: \"%s\"\n", argv[1]);
+		goto err;
+	}
+
+	argc -= 3;
+
+	if (ti->ops->create(ti, argc, argc ? &argv[3] : NULL))
+		goto err;
+
+	free(argv);
+	free(row);
+	return ti;
+
+err:
+	if (ti)
+		free(ti);
+
+	free(argv);
+	free(row);
+	return NULL;
+}
+
+static int dm_parse_table(struct dm_device *dm, const char *ctable)
+{
+	struct dm_target *ti, *tmp;
+	char *table, **rowv;
+	int i, rowc;
+
+	table = xstrdup(ctable);
+	rowv = strtokv(table, "\n", &rowc);
+
+	for (i = 0; i < rowc; i++) {
+		ti = dm_parse_row(dm, rowv[i]);
+		if (!ti)
+			goto err_destroy;
+
+		list_add_tail(&ti->list, &dm->targets);
+	}
+
+	free(rowv);
+	free(table);
+	return 0;
+
+err_destroy:
+	list_for_each_entry_safe_reverse(ti, tmp, &dm->targets, list) {
+		ti->ops->destroy(ti);
+		list_del(&ti->list);
+	}
+
+	free(rowv);
+	free(table);
+
+	dev_err(&dm->dev, "Failed to parse table\n");
+	return -EINVAL;
+}
+
+void dm_destroy(struct dm_device *dm)
+{
+	struct dm_target *ti;
+
+	blockdevice_unregister(&dm->blk);
+
+	list_for_each_entry_reverse(ti, &dm->targets, list) {
+		ti->ops->destroy(ti);
+	}
+
+	unregister_device(&dm->dev);
+
+	free(dm);
+}
+EXPORT_SYMBOL(dm_destroy);
+
+struct dm_device *dm_create(const char *name, const char *table)
+{
+	struct dm_target *ti;
+	struct dm_device *dm;
+	int err;
+
+	dm = xzalloc(sizeof(*dm));
+	dm->dev.priv = dm;
+
+	dev_set_name(&dm->dev, "%s", name);
+	dm->dev.id = DEVICE_ID_SINGLE;
+	err = register_device(&dm->dev);
+	if (err)
+		goto err_free;
+
+	class_add_device(&dm_class, &dm->dev);
+	devinfo_add(&dm->dev, dm_devinfo);
+
+	INIT_LIST_HEAD(&dm->targets);
+	err = dm_parse_table(dm, table);
+	if (err)
+		goto err_unregister;
+
+	dm->blk = (struct block_device) {
+		.dev = &dm->dev,
+		.cdev.name = xstrdup(name),
+
+		.type = BLK_TYPE_VIRTUAL,
+		.ops = &dm_blk_ops,
+
+		.num_blocks = dm_size(dm),
+
+		/* Linux defines a fixed sector size of 512B for DM
+		 * devices.
+		 */
+		.blockbits = SECTOR_SHIFT,
+	};
+
+	err = blockdevice_register(&dm->blk);
+	if (err)
+		goto err_destroy;
+
+	return dm;
+
+err_destroy:
+	list_for_each_entry_reverse(ti, &dm->targets, list) {
+		ti->ops->destroy(ti);
+	}
+
+err_unregister:
+	unregister_device(&dm->dev);
+
+err_free:
+	free(dm);
+	return ERR_PTR(err);
+}
+EXPORT_SYMBOL(dm_create);
diff --git a/drivers/block/dm/dm-target.h b/drivers/block/dm/dm-target.h
new file mode 100644
index 0000000000..506e808b79
--- /dev/null
+++ b/drivers/block/dm/dm-target.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/* SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires */
+
+#ifndef __DM_TARGET_H
+#define __DM_TARGET_H
+
+struct dm_device;
+struct dm_target_ops;
+
+struct dm_target {
+	struct dm_device *dm;
+	struct list_head list;
+
+	sector_t base;
+	blkcnt_t size;
+
+	const struct dm_target_ops *ops;
+	void *private;
+};
+
+void dm_target_err(struct dm_target *ti, const char *fmt, ...);
+
+struct dm_target_ops {
+	struct list_head list;
+	const char *name;
+
+	char *(*asprint)(struct dm_target *ti);
+	int (*create)(struct dm_target *ti, unsigned int argc, char **argv);
+	int (*destroy)(struct dm_target *ti);
+	int (*read)(struct dm_target *ti, void *buf,
+		    sector_t block, blkcnt_t num_blocks);
+	int (*write)(struct dm_target *ti, const void *buf,
+		     sector_t block, blkcnt_t num_blocks);
+};
+
+int dm_target_register(struct dm_target_ops *ops);
+void dm_target_unregister(struct dm_target_ops *ops);
+
+#endif	/* __DM_TARGET_H */
diff --git a/include/device-mapper.h b/include/device-mapper.h
new file mode 100644
index 0000000000..255796ca2f
--- /dev/null
+++ b/include/device-mapper.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __DM_H
+#define __DM_H
+
+struct dm_device;
+
+struct dm_device *dm_find_by_name(const char *name);
+int dm_foreach(int (*cb)(struct dm_device *dm, void *ctx), void *ctx);
+
+char *dm_asprint(struct dm_device *dm);
+
+void dm_destroy(struct dm_device *dm);
+struct dm_device *dm_create(const char *name, const char *ctable);
+
+#endif /* __DM_H */
-- 
2.43.0



