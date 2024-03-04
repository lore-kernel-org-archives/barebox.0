Delivery-date: Mon, 04 Mar 2024 20:08:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfi-008dVb-1N
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:08:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDfh-0003HA-A3
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:08:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=inNGBPOFgvwb2GY2xERBkNaKB07rIy083d9OgeTw+AI=; b=4ga48UbybQWO6zvNcEovk4I1Oh
	YhZmp9LGbq+Ncir5WQJaUNuqjA8l07TmxO2yHC+CJraQsgxx4DGiUuE4i+E1IFfntyxMM7ZJArbXR
	yI9qIzz0EDEcoxooTLEJOu86PiEqz5gLueMZ5sE0qi9w2wh6BWJGbGNA/hIY2o/J+dV6EUWFS8TdC
	xumXA8VWry9SpsYmO9ujANkntug/ShnfMPKd0jHEmPodgViVyOaOkfLs2eJWYaKfJNAJqZXxpIv65
	zBHVu2aXHhvflKNJOz40FFklrL7AftPSHof1urROhOTbgv4kdA9wMwjY17wt/BUNJ40hJWG6kbhpI
	D+C7w1mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDfC-0000000ALhy-2ZbS;
	Mon, 04 Mar 2024 19:07:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaW-0000000AIX5-077t
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=inNGBPOFgvwb2GY2xERBkNaKB07rIy083d9OgeTw+AI=; b=g0dOwOk9F9EUYe+S8CUIdNGh+Q
	9/R1G9BSBe5evg/MTMti9wloS2BV2SmFY1rAktludjabGlIlqjDtr9RT5MVNb3e3ASZhhIYj5k5E5
	OOVvBa7dYd71U/Q3UJXSGnADEHP2TNpFfCwLATkswDU8FhTYZqj3NAGjyiCkbST90bya/bVO1txnq
	5LVcXrR3obwaNh0vW9zKzPyWGOZKDZV2KRzXjFeFxSa3Bx27zCLnPHkH4htZhRy9iFzGFQVTaCcqQ
	U/2CjztXC7HhVn4w2ugVYyUaADAG/z9wm42KzOV4TftiLLi5foLM7jLozLhQWxkri3VIo9XnxNLKb
	UVGf7fow==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaP-000000051vc-0LfV
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006EG-51; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PLO-Js; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-29;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:43 +0100
Message-Id: <20240304190038.3486881-59-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190253_293703_66AA7C97 
X-CRM114-Status: GOOD (  23.37  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 058/113] pbl: introduce CONFIG_PBL_FULLY_PIC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In the quest for making barebox PBL code W^X mappable, we have now taken
care to make the ARM64 assembly routines not emit code relocations,
so let's do the same for the C code as well.

We do this by setting pragma GCC visibility push(hidden) globally. This
option is stronger than -fvisibility=hidden and ensures we are
completely position-independent. See kernel commit e544ea57ac07
("x86/boot/compressed: Force hidden visibility for all symbol references")
for more information.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/export.h |  2 +-
 include/linux/hidden.h | 19 +++++++++++++++++++
 pbl/Kconfig            |  7 +++++++
 scripts/Makefile.lib   |  5 +++++
 scripts/Makefile.pic   | 22 ++++++++++++++++++++++
 5 files changed, 54 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/hidden.h
 create mode 100644 scripts/Makefile.pic

diff --git a/include/linux/export.h b/include/linux/export.h
index 8f47742bea99..a136d727d128 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -6,7 +6,7 @@
 
 #define THIS_MODULE	0
 
-#ifdef CONFIG_MODULES
+#if defined(CONFIG_MODULES) && !defined(__DISABLE_EXPORTS)
 
 struct kernel_symbol
 {
diff --git a/include/linux/hidden.h b/include/linux/hidden.h
new file mode 100644
index 000000000000..49a17b6b5962
--- /dev/null
+++ b/include/linux/hidden.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * When building position independent code with GCC using the -fPIC option,
+ * (or even the -fPIE one on older versions), it will assume that we are
+ * building a dynamic object (either a shared library or an executable) that
+ * may have symbol references that can only be resolved at load time. For a
+ * variety of reasons (ELF symbol preemption, the CoW footprint of the section
+ * that is modified by the loader), this results in all references to symbols
+ * with external linkage to go via entries in the Global Offset Table (GOT),
+ * which carries absolute addresses which need to be fixed up when the
+ * executable image is loaded at an offset which is different from its link
+ * time offset.
+ *
+ * Fortunately, there is a way to inform the compiler that such symbol
+ * references will be satisfied at link time rather than at load time, by
+ * giving them 'hidden' visibility.
+ */
+
+#pragma GCC visibility push(hidden)
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 223bf0640e1b..669a49a530a2 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -46,6 +46,13 @@ config PBL_RELOCATABLE
 	  This option only influences the PBL image. See RELOCATABLE to also make
 	  the real image relocatable.
 
+config PBL_FULLY_PIC
+	bool "fully position-independent pbl image"
+	depends on PBL_RELOCATABLE && ARM
+	help
+	  Compared to CONFIG_PBL_RELOCATABLE, this image has no relocations in
+	  the code sections.
+
 config PBL_VERIFY_PIGGY
 	depends on ARM
 	bool "Verify barebox proper hash before decompression" if COMPILE_TEST
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index f205e08afc13..6b1f0ccbc003 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -170,6 +170,11 @@ _stackp_flags_pbl-$(CONFIG_PBL_STACKPROTECTOR_ALL)     := -fstack-protector-all
 
 _c_flags += $(if $(part-of-pbl),$(_stackp_flags_pbl-y),$(_stackp_flags-y))
 
+ifeq ($(CONFIG_PBL_FULLY_PIC),y)
+include scripts/Makefile.pic
+PBL_CPPFLAGS	+= $(picflags-y)
+endif
+
 # If building barebox in a separate objtree expand all occurrences
 # of -Idir to -I$(srctree)/dir except for absolute paths (starting with '/').
 
diff --git a/scripts/Makefile.pic b/scripts/Makefile.pic
new file mode 100644
index 000000000000..c30894ba98d9
--- /dev/null
+++ b/scripts/Makefile.pic
@@ -0,0 +1,22 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# The stub may be linked into the kernel proper or into a separate boot binary,
+# but in either case, it executes before the kernel does (with MMU disabled) so
+# things like ftrace and stack-protector are likely to cause trouble if left
+# enabled, even if doing so doesn't break the build.
+#
+picflags-$(CONFIG_X86_64)	:= -mcmodel=small
+picflags-$(CONFIG_X86)		+= -fPIC -fno-asynchronous-unwind-tables
+
+ifeq ($(CONFIG_ARM),y)
+picflags-$(CONFIG_CPU_32)	:= -fpic -mno-single-pic-base
+picflags-$(CONFIG_CPU_64)	:= -fpie
+endif
+
+picflags-y			+= -include $(srctree)/include/linux/hidden.h \
+				   -D__fully_pic__ \
+				   -D__NO_FORTIFY \
+				   -ffreestanding \
+				   -fno-stack-protector \
+				   $(call cc-option,-fno-addrsig) \
+				   -D__DISABLE_EXPORTS
-- 
2.39.2



