Delivery-date: Thu, 09 Nov 2023 13:44:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r14Ov-004CS5-1Q
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 13:44:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r14Ov-0007FZ-E1
	for lore@pengutronix.de; Thu, 09 Nov 2023 13:44:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9FwOR6UuCx7yWd+BYT3ix08sqH+FyQY/HSP+zRD1fj0=; b=G2aaGiEGjBOin//GKmheUMhEiA
	H+5m0wH6X+Z+ynDi+QCMyvLmcd5TqEuyH+dumHMWfPcUDNjS7zCMKUcMAQmga/vRIw7/btS3Caobo
	6FX+SB+m51B6xdrB7tlvf3HVdO2TgfVblhpwu3Nzcuxlhtc5KtThuRyDgCDBEEWA6xnRJauofm8u5
	py7UNzR2LzNVNenGfMHm2IH9F/5i+xqgPOg+s/RKRnLkRYqYWWCDgw28vn+MtlmYVGGtw9Hi9nsho
	c3k+TyO+O8jZbBpEUCy4lY68iz5ziNOUi1h1CDxfKnFeLAdEDfJ92keFUF/jJUilBchXpC8OYk8Jf
	9lpFhFZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r14Ni-006L8Q-0Y;
	Thu, 09 Nov 2023 12:43:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r14Nf-006L6n-18
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 12:43:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r14Nb-0006vD-QA; Thu, 09 Nov 2023 13:43:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r14Nb-007mbS-Dg; Thu, 09 Nov 2023 13:43:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r14Nb-006I7Z-13;
	Thu, 09 Nov 2023 13:43:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 13:43:26 +0100
Message-Id: <20231109124326.1499612-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_044331_387742_1D9C29E3 
X-CRM114-Status: GOOD (  16.19  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] console: move ARCH_HAS_CTRLC into Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We should do away altogether with <asm/common.h>, so prepare for doing
that in the future by moing the only content it has on sandbox into
Kconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Kconfig                           |  2 +-
 arch/Kconfig                      | 13 +++++++++++++
 arch/sandbox/Kconfig              |  1 +
 arch/sandbox/include/asm/common.h |  2 --
 common/console.c                  |  2 +-
 common/console_simple.c           |  2 +-
 include/stdio.h                   |  4 ++--
 7 files changed, 19 insertions(+), 7 deletions(-)
 create mode 100644 arch/Kconfig

diff --git a/Kconfig b/Kconfig
index 49bd17c89f33..4c076026b0c9 100644
--- a/Kconfig
+++ b/Kconfig
@@ -8,7 +8,7 @@ mainmenu "Barebox/$(ARCH) $(KERNELVERSION) Configuration"
 
 source "scripts/Kconfig.include"
 
-source "arch/$(SRCARCH)/Kconfig"
+source "arch/Kconfig"
 
 source "common/Kconfig"
 source "commands/Kconfig"
diff --git a/arch/Kconfig b/arch/Kconfig
new file mode 100644
index 000000000000..1a9d32370422
--- /dev/null
+++ b/arch/Kconfig
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# General architecture dependent options
+#
+
+#
+# Note: arch/$(SRCARCH)/Kconfig needs to be included first so that it can
+# override the default values in this file.
+#
+source "arch/$(SRCARCH)/Kconfig"
+
+config ARCH_HAS_CTRLC
+	bool
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 88da35a955ee..136a97b1ad30 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -16,6 +16,7 @@ config SANDBOX
 	select ARCH_HAS_STACK_DUMP if ASAN
 	select GENERIC_FIND_NEXT_BIT
 	select ARCH_HAS_SJLJ
+	select ARCH_HAS_CTRLC
 	select HAS_DEBUG_LL
 	default y
 
diff --git a/arch/sandbox/include/asm/common.h b/arch/sandbox/include/asm/common.h
index 66ed2f5e9c52..002dfb52b513 100644
--- a/arch/sandbox/include/asm/common.h
+++ b/arch/sandbox/include/asm/common.h
@@ -3,6 +3,4 @@
 #ifndef ASM_COMMON_H
 #define ASM_COMMON_H
 
-#define ARCH_HAS_CTRLC
-
 #endif /* ASM_COMMON_H */
diff --git a/common/console.c b/common/console.c
index 7e43a9b5fc0e..03b76b122b2b 100644
--- a/common/console.c
+++ b/common/console.c
@@ -625,7 +625,7 @@ int ctrlc(void)
 	if (ctrlc_abort)
 		return 1;
 
-#ifdef ARCH_HAS_CTRLC
+#ifdef CONFIG_ARCH_HAS_CTRLC
 	ret = arch_ctrlc();
 #else
 	if (tstc() && getchar() == 3)
diff --git a/common/console_simple.c b/common/console_simple.c
index afa9a0f186fb..702087bd23d7 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -70,7 +70,7 @@ EXPORT_SYMBOL(console_flush);
 int ctrlc (void)
 {
 	int ret = 0;
-#ifdef ARCH_HAS_CTRLC
+#ifdef CONFIG_ARCH_HAS_CTRLC
 	ret = arch_ctrlc();
 #else
 	if (tstc() && getchar() == 3)
diff --git a/include/stdio.h b/include/stdio.h
index 49f3d0cf77b3..b6ded805cc21 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -60,13 +60,13 @@ static inline int vprintf(const char *fmt, va_list args)
 	return 0;
 }
 
-#ifndef ARCH_HAS_CTRLC
+#ifndef CONFIG_ARCH_HAS_CTRLC
 /* test if ctrl-c was pressed */
 static inline int ctrlc (void)
 {
 	return 0;
 }
-#endif /* ARCH_HAS_CTRLC */
+#endif /* CONFIG_ARCH_HAS_CTRLC */
 
 #endif
 
-- 
2.39.2



