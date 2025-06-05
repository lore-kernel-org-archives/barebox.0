Delivery-date: Thu, 05 Jun 2025 13:39:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w6-003zpZ-1L
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:39:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8w2-0002T4-Ve
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:39:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/GAJgpODGYIUV4NvW1+ZB5gCeGFG3YhyLU9zDHWGBN0=; b=wu6pllT+YBQfpW7I6xcrHx27jG
	TA9/WQE78tTbsnwsjv5fRbyK+r6mWxrT67x7jm9epGUEdA38rR6jGIYv9le1I7FQQI7qPh9wiOop9
	4RW9UHxyjPRDo0SZclmLXDuBU27AlkF5SGwSBljmNAGlX9OHACCdiyuc4oGjyLqPggtUiDk77aObA
	N4PY/SVP+N+woLeSa0cGHhx8uCa4Guf6F4d6EtUXhUvTIcDML670teIZEkrayquooAZG+wEXpZi3N
	OCWsCnHmevUkJzG2o6t1FOMN9T+WyANOXbO+pGckrxsXHz5nZDnpTEnU2wozNBaQWuoBg39VcEh66
	sTTpnPSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vZ-0000000FOVK-0oIh;
	Thu, 05 Jun 2025 11:38:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8vT-0000000FOOT-1AS4
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:38:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vS-0001iB-2H; Thu, 05 Jun 2025 13:38:26 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8vR-001x0T-2K;
	Thu, 05 Jun 2025 13:38:25 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sg-008mT4-0h;
	Thu, 05 Jun 2025 13:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:26 +0200
Message-Id: <20250605113530.2076990-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043827_343428_50F43ACA 
X-CRM114-Status: GOOD (  15.30  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 17/21] partitions: add partition table parser fuzz target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Parsing on-disk partition tables is something barebox often does on
every boot, so add a fuzz test to smoke out memory safety issues.

Co-developed-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c     | 56 +++++++++++++++++++++++++++++++++++++++++
 images/Makefile.sandbox |  1 +
 2 files changed, 57 insertions(+)

diff --git a/common/partitions.c b/common/partitions.c
index 25d5f15721fc..3f618119850d 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -17,6 +17,7 @@
 #include <linux/err.h>
 #include <partitions.h>
 #include <range.h>
+#include <fuzz.h>
 
 static LIST_HEAD(partition_parser_list);
 
@@ -72,6 +73,21 @@ static int register_one_partition(struct block_device *blk, struct partition *pa
 	return ret;
 }
 
+static int remove_one_partition(struct block_device *blk, int no)
+{
+	char *partition_name;
+	int ret;
+
+	partition_name = basprintf("%s.%d", blk->cdev.name, no);
+	if (!partition_name)
+		return -ENOMEM;
+
+	ret = devfs_del_partition(partition_name);
+	free(partition_name);
+
+	return ret;
+}
+
 static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
 {
 	enum filetype type;
@@ -329,6 +345,46 @@ int partition_parser_register(struct partition_parser *p)
 	return 0;
 }
 
+/**
+ * Try to collect partition information on the given block device
+ * @param blk Block device to examine
+ * @return 0 most of the time, negative value else
+ *
+ * It is not a failure if no partition information is found
+ */
+static int fuzz_partition_table_parser(struct block_device *ramdisk)
+{
+	struct partition_desc *pdesc;
+	struct partition *part;
+	int rc = 0;
+	struct partition_parser *parser;
+	u8 buf[2 * SECTOR_SIZE] __aligned(8);
+
+	rc = block_read(ramdisk, buf, 0, 2);
+	if (rc != 0)
+		return 0;
+
+	parser = partition_parser_get_by_filetype(buf);
+	if (!parser)
+		return 0;
+
+	pdesc = parser->parse(buf, ramdisk);
+	if (!pdesc)
+		return 0;
+
+	pdesc->parser = parser;
+
+	list_for_each_entry(part, &pdesc->partitions, list) {
+		register_one_partition(ramdisk, part);
+		remove_one_partition(ramdisk, part->num);
+	}
+
+	partition_table_free(pdesc);
+
+	return 0;
+}
+fuzz_test_ramdisk("partitions", fuzz_partition_table_parser);
+
 /**
  * cdev_unallocated_space - return unallocated space
  * cdev: The cdev
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index ce09d0c1374c..b6893d314668 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -4,6 +4,7 @@ SYMLINK_TARGET_barebox = sandbox_main.elf
 symlink-$(CONFIG_SANDBOX) += barebox
 
 fuzzer-$(CONFIG_FILETYPE)	+= filetype
+fuzzer-$(CONFIG_PARTITION)	+= partitions
 fuzzer-$(CONFIG_PRINTF_HEXSTR)	+= printf
 
 ifeq ($(CONFIG_SANDBOX),y)
-- 
2.39.5



