Delivery-date: Mon, 11 Sep 2023 17:10:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYg-00Bcvh-DM
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:10:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfiYe-0005PJ-74
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:10:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x3V7giSBb8SeF03svGvcjykcw7Kw+99XYqLVZEFK1oI=; b=brxi/5CMFcHSn3R2GMvvK7hdim
	jwhp92OrKv+kiKPWfWvrcvAeT7VE2HLbZRkitz08yiSPkq5YV8anvneBvZmnZ5IV99CVducE96lkD
	uvkuparScstWhvDPstxczFIfXAd0zvtWmZiQt02857LwPLm5x4qG11rl7jvLCeoQXWisbdCPxstC3
	rX7ZiZHrl1d1B/GL+XEI6aJSgcIbRoI0daIUQn8bq0Wszc41tjTyPtinI3qwceL9SOeE3VHOhcyzD
	zBbfIcHUcZgugF2K/FOe4cxjzUeeRc9GxPn6ndMjqPVZnqmQNYObvGCLeaLtDGj19GIiJTBG8EFVS
	5XcNRdQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXN-000pT9-1U;
	Mon, 11 Sep 2023 15:09:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfiXI-000pRM-2d
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:09:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-0004xV-Mb; Mon, 11 Sep 2023 17:09:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX9-005a6G-8l; Mon, 11 Sep 2023 17:09:03 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfiX8-00F2rm-2S;
	Mon, 11 Sep 2023 17:09:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:09:00 +0200
Message-Id: <20230911150900.3584523-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
References: <20230911150900.3584523-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_080912_862387_54697D34 
X-CRM114-Status: GOOD (  16.71  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] commands: add stacksmash command for causing stack overflows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have two mechanisms for detecting stack overflows, add a
command to intentionally trigger stack frame and stack region overflow
to verify their correct operation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig      |  6 +++++
 commands/Makefile     |  1 +
 commands/stacksmash.c | 58 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 65 insertions(+)
 create mode 100644 commands/stacksmash.c

diff --git a/commands/Kconfig b/commands/Kconfig
index eb95b2a5fbcc..c1bba22443e6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2401,6 +2401,12 @@ config CMD_UBSAN
 	  This is a test command for the undefined behavior sanitizer.
 	  It triggers various undefined behavior, and detect it.
 
+config CMD_STACKSMASH
+	tristate "stacksmash"
+	help
+	  This commands trashes the stack to test stackprotector and
+	  guard page. This command does not return.
+
 # end Miscellaneous commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 4b083a852d83..4924755500e3 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -145,5 +145,6 @@ obj-$(CONFIG_CMD_BTHREAD)	+= bthread.o
 obj-$(CONFIG_CMD_UBSAN)		+= ubsan.o
 obj-$(CONFIG_CMD_SELFTEST)	+= selftest.o
 obj-$(CONFIG_CMD_TUTORIAL)	+= tutorial.o
+obj-$(CONFIG_CMD_STACKSMASH)	+= stacksmash.o
 
 UBSAN_SANITIZE_ubsan.o := y
diff --git a/commands/stacksmash.c b/commands/stacksmash.c
new file mode 100644
index 000000000000..1e9be0d40e15
--- /dev/null
+++ b/commands/stacksmash.c
@@ -0,0 +1,58 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <common.h>
+#include <command.h>
+#include <complete.h>
+#include <linux/compiler.h>
+#include <string.h>
+
+static noinline void stack_overflow_frame(void)
+{
+	volatile int length = 512;
+	char a[128] = {};
+
+	/*
+	 * In order to avoid having the compiler optimize away the stack smashing
+	 * we need to do a little something here.
+	 */
+	OPTIMIZER_HIDE_VAR(length);
+
+	memset(a, 0xa5, length);
+
+	printf("We have smashed our stack as this should not exceed 128: sizeof(a) = %zu\n",
+	       strlen(a));
+}
+
+static noinline void stack_overflow_region(u64 i)
+{
+	volatile char a[1024] = {};
+
+	if (ctrlc())
+		return;
+
+	RELOC_HIDE(&a, 0);
+
+	stack_overflow_region(0);
+
+	printf("%*ph", 1024, a);
+}
+
+static int do_stacksmash(int argc, char *argv[])
+{
+	if (argc != 2)
+		return COMMAND_ERROR_USAGE;
+
+	if (!strcmp(argv[1], "frame"))
+		stack_overflow_frame();
+	else if (!strcmp(argv[1], "region"))
+		stack_overflow_region(0);
+
+	panic("Stack smashing of %s not caught\n", argv[1]);
+}
+BAREBOX_CMD_START(stacksmash)
+        .cmd            = do_stacksmash,
+        BAREBOX_CMD_DESC("Run stack smashing tests")
+	BAREBOX_CMD_OPTS("[frame | region]")
+        BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+        BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
-- 
2.39.2



