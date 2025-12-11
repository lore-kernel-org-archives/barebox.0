Delivery-date: Thu, 11 Dec 2025 22:01:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnn4-00AQnm-3D
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 22:01:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnn3-0004MZ-Vh
	for lore@pengutronix.de; Thu, 11 Dec 2025 22:01:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=00QlIi7QsfO1da2GZQP54OQxT+uJyr/IsxRNppcYwIU=; b=J1tnoUk8hw34daCfvVlZ4SiNR3
	YpB70YdaU7C6NqQWXT7PkeIHhjciYiNec+v+Wkh2hCrvYNkZ3C/LI1bW+2oW7hcngEAkhEhoFH4lY
	p4fEQRgF66Os+tsKBMkvmry3sinP2cCSD6ToyFhq3s5+RweM16H9mToISJkzUKBsyBp6SIYChJ7Wa
	bFfHna3Vy7E7UpAxJGIZ7y4cp/bgkxd5KZpgeJJT4w45qengr7M5pZeChUfqCZyDe4iXRRyfERyFT
	4poGT75p5iGszd8J+VIGCBx1HTo6+iSjWqSZvVhfcETeoLRi/k1bhv+MkMg15ZeF9uRBQbGQWDnJd
	ab51gjzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnmR-0000000HIwI-3VWO;
	Thu, 11 Dec 2025 21:00:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnmO-0000000HIu2-0RqQ
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 21:00:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-0003vG-CM; Thu, 11 Dec 2025 22:00:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-005BZw-0a;
	Thu, 11 Dec 2025 22:00:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnmM-0000000DJ5q-0N4v;
	Thu, 11 Dec 2025 22:00:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 22:00:45 +0100
Message-ID: <20251211210049.3170349-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
References: <20251211210049.3170349-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_130052_181037_4448CE45 
X-CRM114-Status: GOOD (  20.04  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] cdev-alias: add support for storage{.removable,.builtin}
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our current of global.boot.default expanding to bootsource doesn't work
when booting from boot-only flash. Improve upon this by adding cdev
aliases for removable and builtin storage devices.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 25 ++++++++
 common/cdev-alias.c                  | 86 ++++++++++++++++++++++++++++
 include/driver.h                     |  5 ++
 3 files changed, 116 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index b164c538c62a..f1df5ee2bbf0 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -182,6 +182,31 @@ and configure the overrides as arguments to the ``boot`` command:
 
   boot -o bootm.image=/mnt/tftp/oftree mmc
 
+Generic Boot Targets
+^^^^^^^^^^^^^^^^^^^^
+
+A single boot target can yield multiple entries, e.g., one for each
+bootloader spec file detected at runtime as described in the next section.
+
+There is also a number of generic default boot targets available, when
+``CONFIG_BOOT_DEFAULTS`` is enabled. These expands to a single device at most:
+
+* ``bootsource``: expands to the device barebox booted from
+* ``diskuuid.*``: expands to the device with specified ``*`` diskuuid
+
+For these targets that expand to a single device, a partition can also be specified,
+e.g., ``bootsource.esp`` to reference the partition with the ``esp`` partition
+label within the bootsource.
+
+Following target can expand to multiple devices:
+
+* ``storage.removable``: expands to built-in storage devices, like USB sticks
+* ``storage.builtin``: expands to built-in storage devices, like eMMC
+* ``storage``: expands to all of the above ``storage.*``
+
+If the bootsource exists within any of these targets, it will be the first
+device in the returned list.
+
 .. _bootloader_spec:
 
 Boot Loader Specification
diff --git a/common/cdev-alias.c b/common/cdev-alias.c
index 3732fd90525f..82b91108c1fc 100644
--- a/common/cdev-alias.c
+++ b/common/cdev-alias.c
@@ -9,7 +9,9 @@
 #include <stringlist.h>
 #include <bootsource.h>
 #include <driver.h>
+#include <block.h>
 #include <init.h>
+#include <linux/bits.h>
 
 struct cdev_alias_res {
 	const char *name;
@@ -77,9 +79,93 @@ static int cdev_alias_resolve_diskuuid(struct cdev_alias_res *cdev_alias_res,
 	return ret;
 }
 
+#define STORAGE_REMOVABLE	BIT(0)
+#define STORAGE_BUILTIN		BIT(1)
+
+/**
+ * call_for_each_storage() - invoke callback for each storage medium
+ *
+ * @fn:			callback to invoke
+ * @data:		callback-specific data
+ * @filter:		OR-ed types of STORAGE_* to filter for
+ * @only_bootsource:	If true, include only bootsource if available,
+ *			otherwise omit always
+ * Return:		number of successful callback invocations or a negative error
+ */
+static int call_for_each_storage(cdev_alias_processor_t fn,
+				 void *data,
+				 unsigned filter,
+				 bool only_bootsource)
+{
+	struct cdev *cdev, *bootcdev;
+	int ret, nmatches = 0;
+
+	bootcdev = bootsource_of_cdev_find();
+
+	for_each_cdev(cdev) {
+		struct block_device *bdev;
+
+		if (!cdev_is_storage(cdev) || cdev_is_partition(cdev))
+			continue;
+
+		bdev = cdev_get_block_device(cdev);
+
+		if (((filter & STORAGE_REMOVABLE) && bdev && bdev->removable) ||
+		    ((filter & STORAGE_BUILTIN) && (!bdev || !bdev->removable))) {
+			if (only_bootsource && cdev != bootcdev)
+				continue;
+			if (!only_bootsource && cdev == bootcdev)
+				continue;
+
+			ret = fn(cdev, data);
+			if (ret < 0)
+				return ret;
+			nmatches++;
+
+			/* Got our bootsource, no need to continue iteration */
+			if (only_bootsource)
+				break;
+		}
+	}
+
+	return nmatches;
+}
+
+static int cdev_alias_resolve_storage(struct cdev_alias_res *cdev_alias_res,
+				      const char *class,
+				      cdev_alias_processor_t fn,
+				      void *data)
+{
+	struct cdev *bootcdev;
+	unsigned filter = 0;
+	int bootsource, nmatches;
+
+	if (!class)
+		filter = ~0;
+	else if (streq_ptr(class, "removable"))
+		filter |= STORAGE_REMOVABLE;
+	else if (streq_ptr(class, "builtin"))
+		filter |= STORAGE_BUILTIN;
+	else
+		return -EINVAL;
+
+	bootcdev = bootsource_of_cdev_find();
+
+	bootsource = call_for_each_storage(fn, data, filter, true);
+	if (bootsource < 0)
+		return bootsource;
+
+	nmatches = call_for_each_storage(fn, data, filter, false);
+	if (nmatches < 0)
+		return nmatches;
+
+	return bootsource + nmatches;
+}
+
 static struct cdev_alias_res cdev_alias_aliases[] = {
 	{ "bootsource", cdev_alias_resolve_bootsource },
 	{ "diskuuid", cdev_alias_resolve_diskuuid },
+	{ "storage", cdev_alias_resolve_storage },
 	{ /* sentinel */}
 };
 
diff --git a/include/driver.h b/include/driver.h
index a941ca6127e6..de5a63c379eb 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -597,6 +597,11 @@ get_inheritable_devfs_flags(const struct cdev *parent_cdev)
 	return parent_cdev->flags & DEVFS_INHERITABLE_FLAGS;
 }
 
+static inline bool cdev_is_storage(const struct cdev *cdev)
+{
+	return (cdev->flags & DEVFS_IS_BLOCK_DEV) || cdev->mtd;
+}
+
 struct cdev *
 cdev_find_child_by_gpt_typeuuid(struct cdev *cdev, const guid_t *typeuuid);
 
-- 
2.47.3



