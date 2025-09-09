Delivery-date: Tue, 09 Sep 2025 18:03:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0oC-0017oH-1X
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 18:03:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uw0oA-0007sy-MA
	for lore@pengutronix.de; Tue, 09 Sep 2025 18:03:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h1dED5M4ryBTvh8k/ce17y8MBhYGfkWI8Mi6nWsTmBY=; b=aKDGgmZrG3tsN44Zc5eukYM8ed
	ej8eNzbKVwZMMzYDX0lfnf6o1+sTephwTgh7PAl4NGkjOjHlm/C/rxEKn/vRDeshh6hfwTbvlUw2v
	om7NTTuGA/PkuKzfUSU0G8jhlmZMMLvprmsUbuHY2ra2+01mZbHfhA0wDsZxrHdMAoST8oeSkfcX/
	kx3ErDsQwUJenTgtYwyUAy5+Ox/dc6b5jVpBL5KplBYWbvR+2NrIxBIjHxupL436t2Op4KIl0bYrj
	ol0Adpf9E8OrpwQd8/lsbXfd11OUMGhXyxUePx/b6/EDYU09Zrwr3mTCdirLqBBnXeyzV6maoWtqm
	VRRhY38g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uw0ng-00000008NpP-0OXf;
	Tue, 09 Sep 2025 16:02:32 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvyFe-00000007KKp-4BeI
	for barebox@lists.infradead.org;
	Tue, 09 Sep 2025 13:19:16 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-b04770a25f2so759393866b.2
        for <barebox@lists.infradead.org>; Tue, 09 Sep 2025 06:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1757423953; x=1758028753; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h1dED5M4ryBTvh8k/ce17y8MBhYGfkWI8Mi6nWsTmBY=;
        b=HFyd5hmjjaCxbCpmdt2Q43U9tAuSfErDinQx3uQIBDwUqmGdeHixGKkVmpyVbn9ngI
         UIDqDHQ7MVrL6hISgE2yIGGjLaA5NzzU1AHgN66ph2V760f5J38rUgHMfRfDeoyOY9J8
         r0mgQvv0pHPSeq7+mx0SCLmD3h5nUtq/YCHky7xlMsVS/Gbky1NF0Z7VlOKbbutnxLzT
         43b1HH0JQO8Fv66irQzP0QRA8UdkzG6L+UREMr0TyaFzbyGeMKlviifPh2d97sKbDbSt
         7+Kz/yQA+Ti5RZ9nyE02O5KkdiCmmJyC67Qjpi2jBNAQ18gmJUNjsMAGTUeAvoJMH1bs
         ddcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757423953; x=1758028753;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h1dED5M4ryBTvh8k/ce17y8MBhYGfkWI8Mi6nWsTmBY=;
        b=mW4zEhh2xTWwvopHL7xCyoRBw4JVNeZ8qjSGXeSopQNPpNzMf14SChVydxM9pfFyn0
         zOd4bhG+HQu7nmEPdfsiYKUUhV45KV+4ls8PxBWp6M486rVtftTZz5CpUMc6YhJxrf0G
         3D09HwZwwU3UzED0+xiPB8HqhEPR+vDGIWtzWCA1NOl0eeTuRq4X7DuRUhlZDghVTYjJ
         IFe2bAwszwPhs0zy6uQzpsoBXNsZ/sXDSfhIqns068lZhrr7lsA4A2ePHWvb9FHPSYFL
         26NlNWU7dgERIhACeqVlYDHvDWnvWX3ff1TRVbNfVolByfqM+OYQyH2+dODBRXR+yzte
         VUxA==
X-Gm-Message-State: AOJu0YwrrehrM6kRPAEPqJjAHhR2Q3/MVcHZDpk/Np1FlaNzNlM3lu2F
	ri1UOspH09t694c9O63Z4trloO5X55q1+S4d0FePFypesyjovunwvzy6vXVu90kIG2Io/E2eUDL
	X/0Nq
X-Gm-Gg: ASbGncutTCDKpklZMYkjtHN99XZXOrkfBUwrLCZ8RU1rXgewjgQq9U1dv8sONIUzjKW
	ecOTDtPUNCSL4Vf1W5H/3n1avXGVLEjn2vyM5XLuVrP7UVRhUORea55CTq1QcgGWFTddUhGwiS9
	LxKyHrbErvqWrIRBOQTAQwpreJ0ku7GlxHSlegxqMnYqVsFAPtSggtpT1PpCTl1nAXknMv45SGN
	JKAkfIk8MoFz86E/tSeB1GVSyFljReMKz9E3jDi1FgTo0klhFl65sHXv2mlVMqH9aCyv750RX15
	yttmLtlkGTEqxknj2Isq1wm8xJL5yy3VFCtv7rfbnvaIZPWISywwK8IAjrsWdgEv0NMxZaksF61
	aMy24u83MipT4Bq5HO+ZyHvuPWNITowU53IKHFWe4MWRBCFmr1IoVSmcSOiDJ0idyCwOeeqM6nZ
	YN
X-Google-Smtp-Source: AGHT+IEel8zUVSwkXY2xVqkkQZ21+otY5uizqp8OLQqEUmLdueJZalTitTD+1alTUYwBiFaPmLVtQA==
X-Received: by 2002:a17:907:d94:b0:afe:db34:d769 with SMTP id a640c23a62f3a-b04b140d092mr1171877566b.18.1757423952760;
        Tue, 09 Sep 2025 06:19:12 -0700 (PDT)
Received: from wkz-x13.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04279a59ffsm2131074366b.60.2025.09.09.06.19.11
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 06:19:12 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Date: Tue,  9 Sep 2025 15:18:39 +0200
Message-ID: <20250909131843.2260573-7-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250909131843.2260573-1-tobias@waldekranz.com>
References: <20250909131843.2260573-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250909_061915_039472_E53AAC8B 
X-CRM114-Status: GOOD (  20.75  )
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
Subject: [PATCH v2 6/7] test: self: dm: Add test of linear target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Verify that the 'linear' target works as expected.

Do this by (1) creating a dm device with a couple of linear mappings
to two underlying ramdisks, and then (2) verify that data is returned
in the expected order when reading it through the dm device.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---

Notes:
    v1 -> v2:
    - Make sure tests are run in CI jobs

 test/self/Kconfig  |  10 +++
 test/self/Makefile |   1 +
 test/self/dm.c     | 159 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 170 insertions(+)
 create mode 100644 test/self/dm.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 4c43dfe394..fa2911fa64 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -46,6 +46,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_TEST_COMMAND if CMD_TEST
 	select SELFTEST_IDR
 	select SELFTEST_TLV
+	select SELFTEST_DM
 	help
 	  Selects all self-tests compatible with current configuration
 
@@ -125,4 +126,13 @@ config SELFTEST_TLV
 	select BASE64
 	select BOARD_LXA
 
+config SELFTEST_DM
+	bool "Device mapper selftest"
+	select DISK
+	select DM_BLK
+	select DM_BLK_LINEAR
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
index 0000000000..64c4c14f1c
--- /dev/null
+++ b/test/self/dm.c
@@ -0,0 +1,159 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <block.h>
+#include <bselftest.h>
+#include <device-mapper.h>
+#include <dirent.h>
+#include <disks.h>
+#include <driver.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <libfile.h>
+#include <linux/sizes.h>
+#include <ramdisk.h>
+#include <sys/stat.h>
+#include <unistd.h>
+#include <xfuncs.h>
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



