Delivery-date: Mon, 25 Nov 2024 16:14:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFanB-000FcK-1j
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:14:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFanB-00007J-9L
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:14:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KJePUQAlitvdTzZHbPQoVKjxkHWmIdXrS0qwz+TkunQ=; b=bzgZ6r+cGI1NtfBRi/OOH+WntN
	6UWWR0ufuw6VwHPhjqj2ZlFmK1fmQx0YazEWm83Gjp3OiXIZgPzfW0bGdJotd0gj61cgZIuzF0wUz
	8MdRIrgqy+TXklhRFdveM7TANF1Tu24EK3/3zni5JAiyCnmT5ipaWhcbDFXydV/bo/o57OoD16Tne
	yNWgylb+8FTLD9joYgoWPkT/Lbv0sROUpB16VoV4ftVJtvb5paErZNekarxwn9puntRJjgfe9AR1Q
	H8x/Gc0ApAjINyBuw5QGdBNGUtA0OubrybEO1HnZMsyRDtuZ3VzCzmqk8DaQED5vucSLGBkxC+F+X
	k7Lco5rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFaml-00000008QQQ-3L4D;
	Mon, 25 Nov 2024 15:13:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFamh-00000008QOt-29jy
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:13:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFamg-0008IQ-2s; Mon, 25 Nov 2024 16:13:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFamf-0006NF-0M;
	Mon, 25 Nov 2024 16:13:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFamf-001ntE-0Z;
	Mon, 25 Nov 2024 16:13:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:13:50 +0100
Message-Id: <20241125151353.428428-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071355_551198_B7EC84C9 
X-CRM114-Status: GOOD (  15.07  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] commands: reginfo: make command mpc5xxx-specific
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The reginfo command sounds very generic, but it's actually only used on
the PowerPC MPC5xxx. Move the command there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - define normal command instead of DEFINE_SIMPLE_COMMAND in previous
    series
---
 arch/powerpc/mach-mpc5xxx/Kconfig   |  4 ----
 arch/powerpc/mach-mpc5xxx/Makefile  |  2 +-
 arch/powerpc/mach-mpc5xxx/reginfo.c | 13 ++++++++++++-
 commands/Kconfig                    | 11 -----------
 commands/Makefile                   |  1 -
 commands/reginfo.c                  | 21 ---------------------
 include/common.h                    |  5 -----
 7 files changed, 13 insertions(+), 44 deletions(-)
 delete mode 100644 commands/reginfo.c

diff --git a/arch/powerpc/mach-mpc5xxx/Kconfig b/arch/powerpc/mach-mpc5xxx/Kconfig
index e78c2fa350b1..df6d8c187459 100644
--- a/arch/powerpc/mach-mpc5xxx/Kconfig
+++ b/arch/powerpc/mach-mpc5xxx/Kconfig
@@ -7,10 +7,6 @@ config ARCH_TEXT_BASE
 	default 0x00000000 if RELOCATABLE
 	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
 
-config HAS_REGINFO
-	bool
-	default y if ARCH_MPC5200
-
 choice
 	prompt "Select your board"
 
diff --git a/arch/powerpc/mach-mpc5xxx/Makefile b/arch/powerpc/mach-mpc5xxx/Makefile
index 9fc45c08bb31..b9b4cb8e434e 100644
--- a/arch/powerpc/mach-mpc5xxx/Makefile
+++ b/arch/powerpc/mach-mpc5xxx/Makefile
@@ -8,4 +8,4 @@ obj-y				+= traps.o
 obj-y				+= time.o
 extra-y				+= start.o
 obj-$(CONFIG_MPC5200)		+= firmware_sc_task_bestcomm.impl.o
-obj-$(CONFIG_REGINFO)		+= reginfo.o
+obj-$(CONFIG_COMMAND_SUPPORT)	+= reginfo.o
diff --git a/arch/powerpc/mach-mpc5xxx/reginfo.c b/arch/powerpc/mach-mpc5xxx/reginfo.c
index 64816faffc22..dd33a82601ac 100644
--- a/arch/powerpc/mach-mpc5xxx/reginfo.c
+++ b/arch/powerpc/mach-mpc5xxx/reginfo.c
@@ -4,9 +4,11 @@
 #include <common.h>
 #include <config.h>
 #include <mach/mpc5xxx.h>
+#include <command.h>
+#include <complete.h>
 #include <asm/io.h>
 
-void reginfo(void)
+static int do_reginfo(int argc, char *argv[])
 {
 	puts ("\nMPC5200 registers\n");
 	printf ("MBAR=%08x\n", CFG_MBAR);
@@ -60,4 +62,13 @@ void reginfo(void)
 		in_be32((void*)MPC5XXX_SDRAM_CS0CFG));
 	printf ("\tSDRAMCS1: %08X\n",
 		in_be32((void*)MPC5XXX_SDRAM_CS1CFG));
+
+	return 0;
 }
+
+BAREBOX_CMD_START(reginfo)
+       .cmd            = do_reginfo,
+       BAREBOX_CMD_DESC("print MPC5200 register information")
+       BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+       BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
diff --git a/commands/Kconfig b/commands/Kconfig
index 4a0486861186..313fa51dcadd 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1,8 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-config REGINFO
-	bool
-
 config COMMAND_SUPPORT
 	bool
 	depends on !SHELL_NONE
@@ -247,14 +244,6 @@ config CMD_ARM_MMUINFO
 	  SuperSection [1]:         0x0
 	  Failure [0]:              0x0
 
-config CMD_REGINFO
-	depends on HAS_REGINFO
-	select REGINFO
-	tristate
-	prompt "reginfo"
-	help
-	  Print register information.
-
 config CMD_BLKSTATS
 	bool
 	depends on BLOCK
diff --git a/commands/Makefile b/commands/Makefile
index ff5d713ca72c..a98c39637cee 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -37,7 +37,6 @@ obj-$(CONFIG_CMD_CAT)		+= cat.o
 obj-$(CONFIG_CMD_MOUNT)		+= mount.o
 obj-$(CONFIG_CMD_UMOUNT)	+= umount.o
 obj-$(CONFIG_CMD_FINDMNT)	+= findmnt.o
-obj-$(CONFIG_CMD_REGINFO)	+= reginfo.o
 obj-$(CONFIG_CMD_CRC)		+= crc.o
 obj-$(CONFIG_CMD_CLEAR)		+= clear.o
 obj-$(CONFIG_CMD_TEST)		+= test.o
diff --git a/commands/reginfo.c b/commands/reginfo.c
deleted file mode 100644
index bd46cf15e7de..000000000000
--- a/commands/reginfo.c
+++ /dev/null
@@ -1,21 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-// SPDX-FileCopyrightText: © 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-/* reginfo.c - print information about SoC specifc registers */
-
-#include <common.h>
-#include <command.h>
-#include <complete.h>
-
-static int do_reginfo(int argc, char *argv[])
-{
-	reginfo();
-	return 0;
-}
-
-BAREBOX_CMD_START(reginfo)
-	.cmd		= do_reginfo,
-	BAREBOX_CMD_DESC("print register information")
-	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
-	BAREBOX_CMD_COMPLETE(empty_complete)
-BAREBOX_CMD_END
diff --git a/include/common.h b/include/common.h
index dd0d6548e5db..1f00baf8067a 100644
--- a/include/common.h
+++ b/include/common.h
@@ -23,11 +23,6 @@
 #include <linux/printk.h>
 #include <barebox-info.h>
 
-/*
- * Function Prototypes
- */
-void reginfo(void);
-
 /* common/memsize.c */
 long	get_ram_size  (volatile long *, long);
 
-- 
2.39.5



