Delivery-date: Thu, 11 Dec 2025 21:53:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnf3-00AQh3-02
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:53:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnf2-0002tA-3P
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:53:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WTeVnTXC8YIAdmUJ8/QD2kMfAKEuYIubnQA6F6+6Bx8=; b=jPTw7n/GOGC8ZaBN82o8Gz5m5L
	nrDtWi93W5WfBWiCL0o6312FUT/4boQrF2/yXUtdQjqJBX5GtQTt+ZKp/Q6PvvuJJqG5UmorAx6s2
	WekswsRs95d39uuL2jJIEktgncfffqeGaX0FVugdd22m7oxKMgtspp5Dr+mH4eOX+tNPkGRUlV9nu
	+PE4sb4LMfPGuwtJG7l6z62wdEc+TUIkPeIyAsmtMHguvcwMfN6lyakkoU0IkWkaXhvxKeW6DDibd
	V0EdW0/sYj0qk5yAxvHNJypt/RPXa5dEHg1cWEY59EoJOerPejYAIQmNmYrXHSLZ4TAX3DUtCFNzF
	ROKPR7Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneZ-0000000HIBr-1my9;
	Thu, 11 Dec 2025 20:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTneV-0000000HI7U-0iE8
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:52:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0002VA-K7; Thu, 11 Dec 2025 21:52:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-005BZ3-1N;
	Thu, 11 Dec 2025 21:52:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTneT-0000000CFbB-1NZM;
	Thu, 11 Dec 2025 21:52:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:50:04 +0100
Message-ID: <20251211205240.2836186-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
References: <20251211205240.2836186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_125243_404721_CB579EE7 
X-CRM114-Status: GOOD (  17.89  )
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
Subject: [PATCH 2/6] test: self: implement resource walker selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To get some confidence into the new resource iteration code before
making use for it in the EFI loader case, add a selftest that exercises
its normal use.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig    |   4 +
 test/self/Makefile   |   1 +
 test/self/resource.c | 189 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 194 insertions(+)
 create mode 100644 test/self/resource.c

diff --git a/test/self/Kconfig b/test/self/Kconfig
index adef8609ef00..2ccdfe621821 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -45,6 +45,7 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_STRING
 	select SELFTEST_SETJMP if ARCH_HAS_SJLJ
 	select SELFTEST_REGULATOR if REGULATOR_FIXED
+	select SELFTEST_RESOURCE
 	select SELFTEST_TEST_COMMAND if CMD_TEST
 	select SELFTEST_IDR
 	select SELFTEST_TLV
@@ -131,6 +132,9 @@ config SELFTEST_REGULATOR
 	depends on REGULATOR_FIXED
 	select OF_OVERLAY
 
+config SELFTEST_RESOURCE
+	bool "Resource selftest"
+
 config SELFTEST_TEST_COMMAND
 	bool "test command selftest"
 	depends on CMD_TEST
diff --git a/test/self/Makefile b/test/self/Makefile
index d244c190522a..9f839fc0d07a 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_SELFTEST_MMU) += mmu.o
 obj-$(CONFIG_SELFTEST_STRING) += string.o
 obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
 obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
+obj-$(CONFIG_SELFTEST_RESOURCE) += resource.o
 obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
 obj-$(CONFIG_SELFTEST_IDR) += idr.o
 obj-$(CONFIG_SELFTEST_TLV) += tlv.o tlv.dtb.o
diff --git a/test/self/resource.c b/test/self/resource.c
new file mode 100644
index 000000000000..f9cbed51740e
--- /dev/null
+++ b/test/self/resource.c
@@ -0,0 +1,189 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "test-resource: " fmt
+
+#include <common.h>
+#include <command.h>
+#include <malloc.h>
+#include <linux/ioport.h>
+#include <bselftest.h>
+#include <stdio.h>
+
+struct test_ctx {
+	int calls;
+	struct {
+		resource_size_t start;
+		resource_size_t end;
+		bool is_gap;
+	} rec[64];
+	int fail_on;
+};
+
+BSELFTEST_GLOBALS();
+
+#define __expect_equal(x, y, desc, line) do {	\
+	typeof(x) __x = (x);			\
+	typeof(y) __y = (y);			\
+	total_tests++;				\
+	if ((__x) != (__y)) {			\
+		failed_tests++;			\
+		pr_err("%s:%d failed: %s == %llu, but %llu expected\n",	\
+		       desc, line, #x, (u64)__x, (u64)__y);		\
+	} \
+} while (0)
+
+#define expect_equal(x, y) __expect_equal((x), (y), testname, __LINE__)
+
+static int test_cb(const struct resource *res, void *data)
+{
+	bool is_gap = region_is_gap(res);
+	struct test_ctx *ctx = data;
+
+	if (ctx->fail_on && ctx->calls + 1 == ctx->fail_on) {
+		ctx->calls++;
+		return -EIO;
+	}
+
+	ctx->rec[ctx->calls].start = res->start;
+	ctx->rec[ctx->calls].end = res->end;
+	ctx->rec[ctx->calls].is_gap = is_gap;
+	ctx->calls++;
+
+	return 0;
+}
+
+static void add_res(struct resource *resources,
+		    resource_size_t start, resource_size_t end)
+{
+	struct resource *res = xzalloc(sizeof(*res));
+
+	res->start = start;
+	res->end = end;
+	res->parent = resources;
+	list_add_tail(&res->sibling, &resources->children);
+}
+
+static void free_reslist(struct resource *resource)
+{
+	struct resource *r, *tmp;
+
+	list_for_each_entry_safe(r, tmp, &resource->children, sibling)
+		free(r);
+}
+
+static int resource_list_walk(struct resource *parent,
+			      int (*cb)(const struct resource *res, void *data),
+			      void *data,
+			      bool reverse, bool include_gaps)
+{
+	struct resource *res, _gap, *gap = include_gaps ? &_gap : NULL;
+	int ret = 0;
+	struct resource *(*start)(struct resource *, struct resource *);
+	struct resource *(*advance)(struct resource *, struct resource *);
+
+	if (reverse) {
+		start = resource_iter_last;
+		advance = resource_iter_prev;
+	} else {
+		start = resource_iter_first;
+		advance = resource_iter_next;
+	}
+
+	for (res = start(parent, gap); res; res = advance(res, gap)) {
+		ret = cb(res, data);
+		if (ret < 0)
+			return ret;
+	}
+
+	return ret;
+}
+
+static int test_resource_list_walk(const char *testname,
+				   resource_size_t start,
+				   resource_size_t end)
+{
+	struct resource resources = { .start = start, .end = end };
+	struct test_ctx ctx;
+	int ret, i, subranges = 0;
+
+	INIT_LIST_HEAD(&resources.children);
+
+	add_res(&resources, 100, 199);
+	add_res(&resources, 300, 399);
+	subranges = 3; /* 2 regions and range in-between */
+
+	if (start < 100)
+		subranges++;
+	if (end > 399)
+		subranges++;
+
+	memset(&ctx, 0, sizeof(ctx));
+	ret = resource_list_walk(&resources, test_cb, &ctx,
+				 false, true);
+	expect_equal(ret, 0);
+	expect_equal(ctx.calls, subranges);
+
+	i = 0;
+	if (start < 100)
+		expect_equal(ctx.rec[i++].is_gap, true);	/* [0–99] */
+	expect_equal(ctx.rec[i++].is_gap, false);		/* [100–199] */
+	expect_equal(ctx.rec[i++].is_gap, true);		/* [200–299] */
+	expect_equal(ctx.rec[i++].is_gap, false);		/* [300–399] */
+	if (end > 399)
+		expect_equal(ctx.rec[i++].is_gap, true);	/* [400–500] */
+
+	memset(&ctx, 0, sizeof(ctx));
+	ret = resource_list_walk(&resources, test_cb, &ctx,
+				 false, false);
+	expect_equal(ctx.calls, 2);
+	expect_equal(ctx.rec[0].start, 100);
+	expect_equal(ctx.rec[1].start, 300);
+
+	memset(&ctx, 0, sizeof(ctx));
+	ctx.fail_on = 2;
+	ret = resource_list_walk(&resources, test_cb, &ctx,
+				 false, true);
+	expect_equal(ret, -EIO);
+	expect_equal(ctx.calls, 2);
+
+	memset(&ctx, 0, sizeof(ctx));
+	ret = resource_list_walk(&resources, test_cb, &ctx,
+				 true, true);
+	expect_equal(ret, 0);
+	expect_equal(ctx.calls, subranges);
+
+	i = 0;
+	if (end > 399)
+		expect_equal(ctx.rec[i++].is_gap, true);
+	expect_equal(ctx.rec[i++].is_gap, false);
+	expect_equal(ctx.rec[i++].is_gap, true);
+	expect_equal(ctx.rec[i++].is_gap, false);
+	if (start < 100)
+		expect_equal(ctx.rec[i++].is_gap, true);
+
+	i = 0;
+	if (end > 399)
+		expect_equal(ctx.rec[i++].start, 400);
+	expect_equal(ctx.rec[i++].start, 300);
+	expect_equal(ctx.rec[++i].start, 100);
+
+	memset(&ctx, 0, sizeof(ctx));
+	ret = resource_list_walk(&resources, test_cb, &ctx,
+				 true, false);
+	expect_equal(ctx.calls, 2);
+	expect_equal(ctx.rec[0].start, 300);
+	expect_equal(ctx.rec[1].start, 100);
+
+	free_reslist(&resources);
+
+	return 0;
+}
+
+static void test_resources(void)
+{
+	test_resource_list_walk("gap-around", 0, 499);
+	test_resource_list_walk("gap-end", 100, 499);
+	test_resource_list_walk("gap-start", 0, 399);
+	test_resource_list_walk("gap-around-none", 100, 399);
+}
+bselftest(core, test_resources);
-- 
2.47.3



