Delivery-date: Thu, 28 Aug 2025 19:29:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRX-005WU6-1h
	for lore@lore.pengutronix.de;
	Thu, 28 Aug 2025 19:29:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urgRW-0005vO-1R
	for lore@pengutronix.de; Thu, 28 Aug 2025 19:29:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0T4QzNjIapq2KJMayXLRkV1XNjGiGuSQ8YpEEywfrM0=; b=wYmKe3g2BvO1LGJqKhcT2jNKrC
	T6Un61cPqg7TST9d6dgIVCiZQjYvqzG2lcdg/FFT7R2VcXTtiwSJGbvATc26RoXQnY9KVHU08eKTQ
	Zab4wIj5v9HC4xXM8lKg6TvDJpfBpTgspWDiqK/RnFGzNUtkdFls8+YXbr55syjvlci3+j+PB0Iz+
	wx4ymA10wWb0qNkoUo/YOjGOOckzCJdNUmp9ypKl3GSRLQv9t+QELHEVjSUejyne/0zZK1YQB3URb
	k+j5v2hCshaYh7tGv0wFRaaGeipEvh3ZXE0JltTZjwMW41IYFb/U9nKJAt3pPpHsiKQ5B/0xgOToF
	krR+Rgug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgR0-00000002Wge-2Ly4;
	Thu, 28 Aug 2025 17:29:14 +0000
Received: from mail-ed1-f41.google.com ([209.85.208.41])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ureDN-000000022hx-0wZu
	for barebox@lists.infradead.org;
	Thu, 28 Aug 2025 15:07:02 +0000
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-61c26f3cf6fso1962123a12.1
        for <barebox@lists.infradead.org>; Thu, 28 Aug 2025 08:07:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1756393619; x=1756998419; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0T4QzNjIapq2KJMayXLRkV1XNjGiGuSQ8YpEEywfrM0=;
        b=Paba3kth7mU3yKf+j3dLp/rgdUCSxijqWQd2hNmu8i3kmOVK3/hrZBWNTPGbzIaWxr
         YCqWpGg6h9KInU7O0SEeW5lhxsmLyeFlYfeO+nIzxb9WT6I/XpXUmyyFQ6B7r1XhQ3lU
         s9/prbf0kAZr4ToQTfc6hzIum9KvBVU/WLHXsXQ9BHLehd5Dnu8hh5wrXXI9oSBA9g0I
         4S4p2HaNS8qLDqC7NE9jVrdZnMiTlO+1KpPmR9pCbkHBypHnIvX2D941lEK9wX4e0d9X
         a7Xhjkl9i4jjcTC58bc6yVUZYUSTlH6/6MN/CBj4ANhe5zISs4TdTtdzKrRpR9iVbX5v
         esXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756393619; x=1756998419;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0T4QzNjIapq2KJMayXLRkV1XNjGiGuSQ8YpEEywfrM0=;
        b=V1NU/5U6x3SS7Aj3x1WX2/bB6Kh/S1j8Yisv73onQcYzwWATzoWYsdVTilBKYKqX9s
         V6o4XtWkkC2CXnUyVxEeiyr/oy3mgZsRz4UkBIGQT18Bgt4B6X/0ki7FFk5fO/rGxsRt
         DyWxV+h9RE+jQa0mlN4t6kGI8UHcBB9X9W92ZznvyXS2e3DrKYjfYQtpU9pKTzaf+t5X
         O6UfCtYvMDLKxs+p+WwLCE/dMBGmb3dfuDPhJarsBzGeATjZ5vB0PSqAugM7AvxyzJho
         HvFFUote3SvFk4TCb48tJ5YpFDt2Kr7ajhBGXXATBJ61IXuL75CVehjKtP6naTi0xVQB
         GcyQ==
X-Gm-Message-State: AOJu0YzxYz5AcrTU3IJPQimVtLljhyNULDfExjdY4YzX9R3NeBZR+Ipq
	0YLlTvXHaayR7FKu02BtxU7HjeRKEZQt1RJMWMRL2CA70vA3EMVaZmSrhxFiViplY+rcGcumb8d
	olbxh
X-Gm-Gg: ASbGncvytWdSxdmC+0eSLIxJRZKHzw+Ij/IZTOQU3QsLiXzA3QOlEp6V+N2io0sZSuO
	jWUIuGslHVy6I4sKKXq9KySqjLslGCJo6qbOgPNS5tEwoZWXK9KiDafGbAzk0TPUXWxnKs+xQWl
	Cw3T/zVRZ13tOwyX2+WtXTo9yrUMyECz73/iOcD0N0aGV3tc98KyyDvgyTleubWQ8MhZGwLlEzp
	bqPV1YVXzRPV3YdXY78Qx8Ar0Qd1729Mo2CW7TbKF1nWQuAmBixtTsMQZVvxhQ3FUkjGpKkUZ51
	QgS0szOU1rPdqoLO0XvxW47Qo++taX5X48OxF8FauVGnDSp32+QgDL0j04kWrDX25KCFtWhP+JE
	rGHc/KN4ikTG4Xi6NbZg5MOY9x6yaDhBugEiZArQyqU4IGKU0AgB/++nukL4NGWZba6rISSFFpE
	YS
X-Google-Smtp-Source: AGHT+IGQgOyj6CCDfk6wL21M0BHp/5OrFDuO93poI63LJ5l26NqOSl19Sy80ao5fNnxRIh+cOoLUkA==
X-Received: by 2002:a05:6402:26d3:b0:61c:7f7e:1e with SMTP id 4fb4d7f45d1cf-61c7f7e2182mr10445056a12.22.1756393618666;
        Thu, 28 Aug 2025 08:06:58 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61c78e49c90sm7371038a12.45.2025.08.28.08.06.58
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 08:06:58 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Aug 2025 17:05:29 +0200
Message-ID: <20250828150637.2222474-5-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250828150637.2222474-1-tobias@waldekranz.com>
References: <20250828150637.2222474-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_080701_267398_BD6DB7A4 
X-CRM114-Status: GOOD (  19.54  )
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
Subject: [PATCH 4/5] test: self: dm: Add test of linear target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Verify that the 'linear' target works as expected.

Do this by (1) creating a dm device with a couple of linear mappings
to two underlying ramdisks, and then (2) verify that data is returned
in the expected order when reading it through the dm device.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 test/self/Kconfig  |   7 ++
 test/self/Makefile |   1 +
 test/self/dm.c     | 159 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 167 insertions(+)
 create mode 100644 test/self/dm.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 4c43dfe394..a6dfd5f9ae 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -125,4 +125,11 @@ config SELFTEST_TLV
 	select BASE64
 	select BOARD_LXA
 
+config SELFTEST_DM
+	bool "Device mapper selftest"
+	depends on DM_BLK
+	select RAMDISK_BLK
+	help
+	  Tests the available device mapper targets
+
 endif
diff --git a/test/self/Makefile b/test/self/Makefile
index 9aa8aab78b..3d74bf9e98 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
 obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
 obj-$(CONFIG_SELFTEST_IDR) += idr.o
 obj-$(CONFIG_SELFTEST_TLV) += tlv.o tlv.dtb.o
+obj-$(CONFIG_SELFTEST_DM) += dm.o
 
 ifdef REGENERATE_KEYTOC
 
diff --git a/test/self/dm.c b/test/self/dm.c
new file mode 100644
index 0000000000..e2add03a48
--- /dev/null
+++ b/test/self/dm.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <common.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <disks.h>
+#include <dirent.h>
+#include <libfile.h>
+#include <sys/stat.h>
+#include <unistd.h>
+#include <bselftest.h>
+#include <linux/sizes.h>
+#include <ramdisk.h>
+#include <dm.h>
+#include <driver.h>
+#include <block.h>
+
+BSELFTEST_GLOBALS();
+
+struct rdctx {
+	char mem[16][SECTOR_SIZE];
+	struct ramdisk *rd;
+	const char *name;
+};
+
+static struct rdctx rdctx[2];
+
+static int rd_create(void)
+{
+	struct block_device *blk;
+	struct rdctx *ctx;
+	char base;
+	int i, s;
+
+
+	for (i = 0, ctx = rdctx; i < 2; i++, ctx++) {
+		/* In case tests are run multiple times */
+		memset(ctx->mem, '\0', sizeof(ctx->mem));
+
+		/* Add an identifying mark ('a'-'p' and 'A'-'P') at
+		 * the start and end of every sector in both disks, so
+		 * that we have something to compare against when we
+		 * read them back through the DM device.
+		 */
+		base = i ? 'A' : 'a';
+		for (s = 0; s < 16; s++) {
+			ctx->mem[s][0] = base + s;
+			ctx->mem[s][SECTOR_SIZE - 1] = base + s;
+		}
+
+		ctx->rd = ramdisk_init(SECTOR_SIZE);
+		if (!ctx->rd) {
+			failed_tests++;
+			pr_err("Could not create ramdisk\n");
+			return 1;
+		}
+
+		ramdisk_setup_rw(ctx->rd, ctx->mem, sizeof(ctx->mem));
+		blk = ramdisk_get_block_device(ctx->rd);
+		ctx->name = cdev_name(&blk->cdev);
+	}
+
+	return 0;
+}
+
+static void rd_destroy(void)
+{
+	ramdisk_free(rdctx[0].rd);
+	ramdisk_free(rdctx[1].rd);
+}
+
+static void verify_read(const char *pattern, const char *buf)
+{
+	off_t first, last;
+	int s, len;
+
+	for (s = 0, len = strlen(pattern); s < len; s++) {
+		first = s << SECTOR_SHIFT;
+		last = first + SECTOR_SIZE - 1;
+
+		if (buf[first] != pattern[s]) {
+			failed_tests++;
+			pr_err("Expected '%c' at beginning of sector %d, read '%c'\n",
+			       pattern[s], s, buf[first]);
+			return;
+		}
+
+		if (buf[last] != pattern[s]) {
+			failed_tests++;
+			pr_err("Expected '%c' at end of sector %d, read '%c'\n",
+			       pattern[s], s, buf[last]);
+			return;
+		}
+	}
+}
+
+static void test_dm_linear(void)
+{
+	static const char pattern[] = "DEFaghijklmnopNOP";
+	const size_t dmsize = (sizeof(pattern) - 1) * SECTOR_SIZE;
+	struct dm_device *dm;
+	struct cdev *cdev;
+	char *buf, *table;
+
+	total_tests++;
+
+	if (!IS_ENABLED(CONFIG_DM_BLK_LINEAR)) {
+		pr_info("skipping dm-linear test: disabled in config\n");
+		skipped_tests++;
+		return;
+	}
+
+	if (rd_create())
+		return;
+
+	table = xasprintf(" 0  3 linear /dev/%s  3\n" /* "DEF" */
+			  " 3  1 linear /dev/%s  0\n" /* "a"   */
+			  " 4 10 linear /dev/%s  6\n" /* "ghijklmnop" */
+			  "14  3 linear /dev/%s 13\n" /* "NOP" */,
+			  rdctx[1].name,
+			  rdctx[0].name,
+			  rdctx[0].name,
+			  rdctx[1].name);
+
+	dm = dm_create("dmtest", table);
+	free(table);
+
+	if (IS_ERR_OR_NULL(dm)) {
+		failed_tests++;
+		pr_err("Could not create dm device\n");
+		goto out_destroy;
+	}
+
+	cdev = cdev_by_name("dmtest");
+	if (!cdev) {
+		failed_tests++;
+		pr_err("Could not find dm device\n");
+		goto out_destroy;
+	}
+
+	buf = xmalloc(dmsize);
+
+	if (cdev_read(cdev, buf, dmsize, 0, 0) < dmsize) {
+		failed_tests++;
+		pr_err("Could not read dm device\n");
+		goto out_free_buf;
+	}
+
+	verify_read(pattern, buf);
+
+out_free_buf:
+	free(buf);
+out_destroy:
+	dm_destroy(dm);
+	rd_destroy();
+}
+bselftest(core, test_dm_linear);
-- 
2.43.0



