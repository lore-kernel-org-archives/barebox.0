Delivery-date: Thu, 28 Aug 2025 19:29:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRX-005WTs-0e
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 19:29:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRV-0005vE-9N
	for lore@pengutronix.de; Thu, 28 Aug 2025 19:29:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tN8Xtej56eKGiSCbefLAhnnynnZEX8jnm0ZuBAhw8zM=; b=YtjBWs7Hw8vp0Loaz9bGLRVCi8
	dbqqhwFu4iQurZi/4dEhL4/+qahaWNprx6V6K3X3AC57Ar3oZCS01yFHEWcYenguqm0NyGooo5gLd
	AL40r5r4gUkk05uPIhLkNKlRseC+31sXWoyirvrLiZ+MOA8gbTMY9jVIvrdcM6aQUPR+pya8lOmG+
	B8MS0O67uh5McpQ+53e3cAw9Y9LFYm1TtAtn9QdJCddJvB9awI/qlaxZMhITWJlYVnvSvmyYBrjEZ
	R2MYtuhLrd0VOBt10xbD5nGxDFK/4+W2eALYRnBY2GzSdtYQ4Or2+CI5cKTxWRCwHU9jvo0v8zNHU
	AVrq0d/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgQy-00000002Wdz-1Jc7;
	Thu, 28 Aug 2025 17:29:12 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ureDL-000000022gt-2cKZ
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 15:07:00 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-61cd3748c6dso1879922a12.3
        for <barebox@lists.infradead.org>; Thu, 28 Aug 2025 08:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756393618; x=1756998418; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tN8Xtej56eKGiSCbefLAhnnynnZEX8jnm0ZuBAhw8zM=;
        b=jQ49lQ/aLWvbh6vLBvQeLZ9ip9XYk4H76vLSEF/gJQd1GvHxRvWSIn7AVcXjLJrj7I
         3xC3RzPpGR25nQ/DKgnMpEZMAd43IFUNnSpxABfqOJnV/mq7K3tSxr8aHvtr9geC0yur
         OiqxOqZAJPikEWRUwX9JoY4iYFtwVhG0RrLRGGUgclwLRu4zJqhP0b3G4OrxXnLoXcNo
         NjZD20ankArjZ6W6+HPNijB21wg//m6gEkFBZajz71p+ocIBDGtF8zs9M/pliUNXTo1o
         osltBi0I2U01+34G/tn0e4g4Hj3W2DWAyqQZdFhV+nzh17Tm0U50c/PyT+39wSG4pySV
         1EBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756393618; x=1756998418;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tN8Xtej56eKGiSCbefLAhnnynnZEX8jnm0ZuBAhw8zM=;
        b=Pt0jsyCAKQHVPEyDc0Ru1ExQQzIiXVPiVl9GYF587yVldrOKAzX/88xClaMhHy6xwa
         AYmFgMpfWjnIei7LVLCPf/yjBEIhBprIQ/RW5vx5fFoy8o+G+gHxeegTWQYwTfuaQBck
         bhztSYhxh1LhHS5xwNUiLNP37Ke065edFr2vTKUA9nhrkIe+MLrduifKSgyIbAqHIiKf
         qfNdikw0adI/dZP2vu3CXJkZKoH906BGsax2EIgYZOP022zw7Cjp7LgPFh15HFN7NbsT
         Rvp23PkNN1FhIwBiPir02BL0rfyKS6uX1IB52IVor5KLmrYKp3t9i0eJo+rUloFdt16/
         oVfQ==
X-Gm-Message-State: AOJu0YwR1QevGqmwXjmqG6rHHGOFMXgt6zEBy9lk84Ki+iX3LWumEuwj
	ye6lRu997NwyS7uAsGIrOpbfpPTKBhEwicl5O0YAK4fT5fLa9m4kG6bz/utf9Ae0h2I/dPXSnbS
	626lc
X-Gm-Gg: ASbGncvNMou7CCTxHquCcq7ZmOuXbBb9uvbkE/iSFvFxAWTTGQBo/0yABDmD52zNezy
	0egGjWdnnwBjaD4nSOw34Ro3/sj8gXZi3iO1aF6E9LQ+bsS/q1D+FNc8F4DfWy8QAaZYY5Vv5L5
	zkK8z0bpJNmIpE9s4+qAiqMyCCtT7ckRgM6dYrbvd9ln9/2RlLagckYNGvo9t5U7I4LloVnKRsO
	Q9Rgw3+P15iOVO3b+1rlWKPgFW6Jf4prR6PJIzSG95FJowVckJwEBIwiEd6thiudp2qMoXy2/B7
	RUnHkQVBDBaOJN0wjW8TlSN2xfX4fJ2PJ63FNZTS+7mdHfOqSw/BxO1uzka0bRdSEGQ0sPDr/hK
	223zB42U4DsVKk0pt14A6ezvYJzz81Ov2UQBrOZ6poa12baCeMCBzxbM+nNZLBX+XJQ==
X-Google-Smtp-Source: AGHT+IHSBS3iDGGjTmMzp9lDiBqjiQ2VoDN7ApUn76RRGQBtRLOMqPEWcudexoDXYtRl3+q36CHWMA==
X-Received: by 2002:a05:6402:5188:b0:61c:d118:618d with SMTP id 4fb4d7f45d1cf-61cd1189313mr2480449a12.35.1756393617348;
        Thu, 28 Aug 2025 08:06:57 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61c78e49c90sm7371038a12.45.2025.08.28.08.06.56
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 08:06:56 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Aug 2025 17:05:27 +0200
Message-ID: <20250828150637.2222474-3-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250828150637.2222474-1-tobias@waldekranz.com>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_080659_694420_165A4670 
X-CRM114-Status: GOOD (  24.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] dm: Add initial device mapper infrastructure
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
 drivers/block/Kconfig        |   2 +
 drivers/block/Makefile       |   1 +
 drivers/block/dm/Kconfig     |   7 +
 drivers/block/dm/Makefile    |   2 +
 drivers/block/dm/dm-core.c   | 393 +++++++++++++++++++++++++++++++++++
 drivers/block/dm/dm-target.h |  39 ++++
 include/dm.h                 |  16 ++
 7 files changed, 460 insertions(+)
 create mode 100644 drivers/block/dm/Kconfig
 create mode 100644 drivers/block/dm/Makefile
 create mode 100644 drivers/block/dm/dm-core.c
 create mode 100644 drivers/block/dm/dm-target.h
 create mode 100644 include/dm.h

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
index 0000000000..f64c69e03d
--- /dev/null
+++ b/drivers/block/dm/Kconfig
@@ -0,0 +1,7 @@
+menuconfig DM_BLK
+        bool "Device mapper"
+        help
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
index 0000000000..cf92dac94c
--- /dev/null
+++ b/drivers/block/dm/dm-core.c
@@ -0,0 +1,393 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: © 2025 Tobias Waldekranz <tobias@waldekranz.com>, Wires
+
+#include <block.h>
+#include <common.h>
+#include <disks.h>
+#include <dm.h>
+#include <string.h>
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
+	struct list_head list;
+	struct list_head targets;
+};
+
+static LIST_HEAD(dm_device_list);
+
+struct dm_device *dm_find_by_name(const char *name)
+{
+	struct dm_device *dm;
+
+	list_for_each_entry(dm, &dm_device_list, list) {
+		if (!strcmp(dev_name(&dm->dev), name))
+			return dm;
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
+	list_for_each_entry(dm, &dm_device_list, list) {
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
+static int dm_n_targets(struct dm_device *dm)
+{
+	struct dm_target *ti;
+	int n = 0;
+
+	list_for_each_entry(ti, &dm->targets, list) {
+		n++;
+	}
+
+	return n;
+}
+
+char *dm_asprint(struct dm_device *dm)
+{
+	char **strv, *str, *tistr;
+	struct dm_target *ti;
+	int n = 0, strc;
+
+	strc = 1 + dm_n_targets(dm);
+	strv = xmalloc(strc * sizeof(*strv));
+
+	strv[n++] = xasprintf(
+		"Device: %s\n"
+		"Size: %llu\n"
+		"Table:\n"
+		" #       Start         End        Size  Target\n",
+		dev_name(&dm->dev), dm_size(dm));
+
+	list_for_each_entry(ti, &dm->targets, list) {
+		tistr = ti->ops->asprint ? ti->ops->asprint(ti) : NULL;
+
+		strv[n] = xasprintf("%2d  %10llu  %10llu  %10llu  %s %s\n",
+				    n - 1, ti->base, ti->base + ti->size - 1,
+				    ti->size, ti->ops->name, tistr ? : "");
+		n++;
+
+		if (tistr)
+			free(tistr);
+	}
+
+	str = strjoin("", strv, strc);
+
+	for (n = 0; n < strc; n++)
+		free(strv[n]);
+
+	free(strv);
+
+	return str;
+}
+EXPORT_SYMBOL(dm_asprint);
+
+static struct dm_target *dm_parse_row(struct dm_device *dm, const char *crow)
+{
+	struct dm_target *ti;
+	char *row, **argv;
+	int argc;
+
+	row = xstrdup(crow);
+	argc = strtokv(row, " \t", &argv);
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
+		goto err_free;
+	}
+
+	if (kstrtoull(argv[0], 0, &ti->base)) {
+		dm_target_err(ti, "Invalid start: \"%s\"\n", argv[0]);
+		goto err_free;
+	}
+
+	if (ti->base != dm_size(dm)) {
+		/* Could we just skip the start argument, then? Seems
+		 * like it, but let's keep things compatible with the
+		 * table format in Linux.
+		 */
+		dm_target_err(ti, "Non-contiguous start: %llu, expected %llu\n",
+			      ti->base, dm_size(dm));
+		goto err_free;
+	}
+
+	if (kstrtoull(argv[1], 0, &ti->size) || !ti->size) {
+		dm_target_err(ti, "Invalid length: \"%s\"\n", argv[1]);
+		goto err_free;
+	}
+
+	argc -= 3;
+
+	if (ti->ops->create(ti, argc, argc ? &argv[3] : NULL))
+		goto err_free;
+
+	free(argv);
+	free(row);
+	return ti;
+
+err_free:
+	free(ti);
+err:
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
+	rowc = strtokv(table, "\n", &rowv);
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
+	list_del(&dm->list);
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
+
+	dev_set_name(&dm->dev, "%s", name);
+	dm->dev.id = DEVICE_ID_SINGLE;
+	err = register_device(&dm->dev);
+	if (err)
+		goto err_free;
+
+	INIT_LIST_HEAD(&dm->targets);
+	err = dm_parse_table(dm, table);
+	if (err)
+		goto err_unregister;
+
+	dm->blk = (struct block_device) {
+		.dev = &dm->dev,
+		.cdev = {
+			.name = xstrdup(name),
+		},
+
+		.type = BLK_TYPE_VIRTUAL,
+		.ops = &dm_blk_ops,
+
+		.num_blocks = dm_size(dm),
+		.blockbits = SECTOR_SHIFT,
+	};
+
+	err = blockdevice_register(&dm->blk);
+	if (err)
+		goto err_destroy;
+
+	list_add_tail(&dm->list, &dm_device_list);
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
diff --git a/include/dm.h b/include/dm.h
new file mode 100644
index 0000000000..255796ca2f
--- /dev/null
+++ b/include/dm.h
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



