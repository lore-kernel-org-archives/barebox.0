Delivery-date: Mon, 22 May 2023 07:30:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7f-009JEg-Ud
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:30:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7c-00034A-TP
	for lore@pengutronix.de; Mon, 22 May 2023 07:30:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPJFLl2QKW1JhhLtuEvvqZYvgNQTItozQGc4Gj+ASdY=; b=GDTxnUfeE36CAV
	GSdOdoYg0VTfA9jlWHbqBzyS4DLwT2HkWJ3kAaYfnRuCc2s5bJS61VaUZWtydFKc3u9o6Zq0hbKBx
	Kd90mefU6SnUAhae0+EZd9Y/C8mY2Kb+3K3JrBc4L2HiD95eJWguRpzuxHxVTRfeVNAnXI5K6u0yr
	W8lKxjJSKpkpTu8ohEHvaHR+cqCfD2qg+J+KrjFjO8d6LBvoqAHdAuWEBvHPaJrF9m0KYytuDbhgO
	7GJarE5pdjYBd9+2DeT2HZm4D5jWtHV2fpSbvfcEY/GPI2PAWqXMhXOKBmIfgqO1KDcJOLGF8pPMc
	uty4MaMtlsfKuoq7icQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6K-005OdD-2f;
	Mon, 22 May 2023 05:28:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y66-005OUb-0p
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-0002Lm-1A; Mon, 22 May 2023 07:28:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y62-001vvg-8v; Mon, 22 May 2023 07:28:38 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLc-Mj; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:33 +0200
Message-Id: <20230522052835.1039143-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222845_474704_FE122372 
X-CRM114-Status: GOOD (  19.62  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/11] common: memtest: prepare for reuse in self test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

memtest is quite talkative: it narrates status and advances a progress
bar. For non-interactive use, e.g. for selftest, this is a bit much,
so hide that behidnd a new MEMTEST_VERBOSE flag.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig   |  1 +
 commands/memtest.c |  5 +++--
 common/Kconfig     |  3 +++
 common/Makefile    |  2 +-
 common/memtest.c   | 44 ++++++++++++++++++++++++++------------------
 include/memtest.h  |  7 +++++--
 6 files changed, 39 insertions(+), 23 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 3a43682b2b2c..4d3ff631a8bf 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1708,6 +1708,7 @@ config CMD_MEMSET
 
 config CMD_MEMTEST
 	tristate
+	select MEMTEST
 	prompt "memtest"
 	help
 	  The memtest command can test the registered barebox memory.
diff --git a/commands/memtest.c b/commands/memtest.c
index 864947fa94f9..9fa148b3aa41 100644
--- a/commands/memtest.c
+++ b/commands/memtest.c
@@ -15,6 +15,7 @@
 static int do_test_one_area(struct mem_test_resource *r, int bus_only,
 		unsigned cache_flag)
 {
+	unsigned flags = MEMTEST_VERBOSE;
 	int ret;
 
 	printf("Testing memory space: %pa -> %pa:\n",
@@ -22,14 +23,14 @@ static int do_test_one_area(struct mem_test_resource *r, int bus_only,
 
 	remap_range((void *)r->r->start, resource_size(r->r), cache_flag);
 
-	ret = mem_test_bus_integrity(r->r->start, r->r->end);
+	ret = mem_test_bus_integrity(r->r->start, r->r->end, flags);
 	if (ret < 0)
 		return ret;
 
 	if (bus_only)
 		return 0;
 
-	ret = mem_test_moving_inversions(r->r->start, r->r->end);
+	ret = mem_test_moving_inversions(r->r->start, r->r->end, flags);
 	if (ret < 0)
 		return ret;
 	printf("done.\n\n");
diff --git a/common/Kconfig b/common/Kconfig
index bd1df889e69a..ce94718c848a 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -144,6 +144,9 @@ config MEMINFO
 	bool "display memory info"
 	default y
 
+config MEMTEST
+	bool
+
 config ENVIRONMENT_VARIABLES
 	bool "environment variables support"
 
diff --git a/common/Makefile b/common/Makefile
index 8dc475f3244c..7fb864f61480 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -27,7 +27,7 @@ obj-$(CONFIG_BLOCK)		+= block.o
 obj-$(CONFIG_BLSPEC)		+= blspec.o
 obj-$(CONFIG_BOOTM)		+= bootm.o booti.o
 obj-$(CONFIG_CMD_LOADS)		+= s_record.o
-obj-$(CONFIG_CMD_MEMTEST)	+= memtest.o
+obj-$(CONFIG_MEMTEST)		+= memtest.o
 obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
 obj-$(CONFIG_CONSOLE_FULL)	+= console.o
 obj-$(CONFIG_CONSOLE_SIMPLE)	+= console_simple.o
diff --git a/common/memtest.c b/common/memtest.c
index d47e4a672ed9..aa16d94eeda0 100644
--- a/common/memtest.c
+++ b/common/memtest.c
@@ -160,7 +160,7 @@ static void mem_test_report_failure(const char *failure_description,
 }
 
 int mem_test_bus_integrity(resource_size_t _start,
-			   resource_size_t _end)
+			   resource_size_t _end, unsigned int flags)
 {
 	static const uint64_t bitpattern[] = {
 		0x0000000000000001ULL,	/* single bit */
@@ -190,7 +190,8 @@ int mem_test_bus_integrity(resource_size_t _start,
 	dummy = start + 1;
 	num_words = (_end - _start + 1)/sizeof(resource_size_t);
 
-	printf("Starting data line test.\n");
+	if (flags & MEMTEST_VERBOSE)
+		printf("Starting data line test.\n");
 
 	/*
 	 * Data line test: write a pattern to the first
@@ -294,7 +295,8 @@ int mem_test_bus_integrity(resource_size_t _start,
 	 */
 	start[0] = anti_pattern;
 
-	printf("Check for address bits stuck high.\n");
+	if (flags & MEMTEST_VERBOSE)
+		printf("Check for address bits stuck high.\n");
 
 	/*
 	 * Check for address bits stuck high.
@@ -313,8 +315,8 @@ int mem_test_bus_integrity(resource_size_t _start,
 	 */
 	start[0] = pattern;
 
-	printf("Check for address bits stuck "
-			"low or shorted.\n");
+	if (flags & MEMTEST_VERBOSE)
+		printf("Check for address bits stuck low or shorted.\n");
 
 	/*
 	 * Check for address bits stuck low or shorted.
@@ -340,7 +342,7 @@ int mem_test_bus_integrity(resource_size_t _start,
 	return 0;
 }
 
-static int update_progress(resource_size_t offset)
+static int update_progress(resource_size_t offset, unsigned flags)
 {
 	/* Only check every 4k to reduce overhead */
 	if (offset & (SZ_4K - 1))
@@ -349,12 +351,14 @@ static int update_progress(resource_size_t offset)
 	if (ctrlc())
 		return -EINTR;
 
-	show_progress(offset);
+	if (flags & MEMTEST_VERBOSE)
+		show_progress(offset);
 
 	return 0;
 }
 
-int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
+int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end,
+			       unsigned flags)
 {
 	volatile resource_size_t *start, num_words, offset, temp, anti_pattern;
 	int ret;
@@ -368,8 +372,12 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 	start = (resource_size_t *)_start;
 	num_words = (_end - _start + 1)/sizeof(resource_size_t);
 
-	printf("Starting moving inversions test of RAM:\n"
-	       "Fill with address, compare, fill with inverted address, compare again\n");
+	if (flags & MEMTEST_VERBOSE) {
+		printf("Starting moving inversions test of RAM:\n"
+		       "Fill with address, compare, fill with inverted address, compare again\n");
+
+		init_progression_bar(3 * num_words);
+	}
 
 	/*
 	 * Description: Test the integrity of a physical
@@ -382,11 +390,9 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 	 *		selected by the caller.
 	 */
 
-	init_progression_bar(3 * num_words);
-
 	/* Fill memory with a known pattern */
 	for (offset = 0; offset < num_words; offset++) {
-		ret = update_progress(offset);
+		ret = update_progress(offset, flags);
 		if (ret)
 			return ret;
 		start[offset] = offset + 1;
@@ -394,7 +400,7 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 
 	/* Check each location and invert it for the second pass */
 	for (offset = 0; offset < num_words; offset++) {
-		ret = update_progress(num_words + offset);
+		ret = update_progress(num_words + offset, flags);
 		if (ret)
 			return ret;
 
@@ -413,7 +419,7 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 
 	/* Check each location for the inverted pattern and zero it */
 	for (offset = 0; offset < num_words; offset++) {
-		ret = update_progress(2 * num_words + offset);
+		ret = update_progress(2 * num_words + offset, flags);
 		if (ret)
 			return ret;
 
@@ -430,10 +436,12 @@ int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end)
 
 		start[offset] = 0;
 	}
-	show_progress(3 * num_words);
+	if (flags & MEMTEST_VERBOSE) {
+		show_progress(3 * num_words);
 
-	/* end of progressbar */
-	printf("\n");
+		/* end of progressbar */
+		printf("\n");
+	}
 
 	return 0;
 }
diff --git a/include/memtest.h b/include/memtest.h
index df0a391cc3c2..3de30631ae24 100644
--- a/include/memtest.h
+++ b/include/memtest.h
@@ -3,6 +3,7 @@
 #define __MEMTEST_H
 
 #include <linux/ioport.h>
+#include <linux/bitops.h>
 
 struct mem_test_resource {
 	struct resource *r;
@@ -13,7 +14,9 @@ int mem_test_request_regions(struct list_head *list);
 void mem_test_release_regions(struct list_head *list);
 struct mem_test_resource *mem_test_biggest_region(struct list_head *list);
 
-int mem_test_bus_integrity(resource_size_t _start, resource_size_t _end);
-int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end);
+#define MEMTEST_VERBOSE		BIT(0)
+
+int mem_test_bus_integrity(resource_size_t _start, resource_size_t _end, unsigned flags);
+int mem_test_moving_inversions(resource_size_t _start, resource_size_t _end, unsigned flags);
 
 #endif /* __MEMTEST_H */
-- 
2.39.2



