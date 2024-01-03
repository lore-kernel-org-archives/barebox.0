Delivery-date: Wed, 03 Jan 2024 19:33:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63K-002Nfp-0a
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63B-00042z-83
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LBfQAwy3l0BlrmLh9t5SqrDDYR8/yib56yqnDU4Jank=; b=njTlHhd9RCIXhVeCGseU/LcFap
	0jkwJ7NLryF8LVgwGW0AqooB1dTphZYYqvArlN9EIuXcDy+QcEf532fbWReVpmE6lM+EpXBlUJDLU
	jJURlkBjm8ydYvtjZeI2hsa416WTQOLlZHUKwcEzHmGjlNh5rTsQNGbGc/HbAAopIogfgjo+EM6uP
	MDIWo/izNo2ulNab3nMViJhHRm8IRpYCFKtwhx75eBfnRW7qQJyrQ1clrHQ6hTsB9cSB4C30Cif8e
	lYgOXRLykUHqY6adPgi762yFTdvD2PFr1xSO66IErYJpdsXfcT2sWiUN3nmpDD0uJvdJcfYkuh3nx
	NVkEyHJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61l-00Bhsr-1n;
	Wed, 03 Jan 2024 18:31:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61A-00BhEH-31
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LBfQAwy3l0BlrmLh9t5SqrDDYR8/yib56yqnDU4Jank=; b=F0SFv8IR4oBuVEOfLXrtFrKt7D
	RoLar5gAP3fHF6qeLYMOY2Dr3iOHHPr5L+miP9C+8cLF44vij0zdxZcUdPUhnyC+I2Iecf65pg3Am
	qwPPzgn2jV5Y9OuEZjoIaA1tTFxcnI2yJq3LMkO+Gydnb+5HVTH21tQOguvgJx+Z3z9MOP6JrHW1z
	6jE0qAibmT3wq0J2teF20Ms4JOYi59Na68MZ/rNxNZbs5i4Mptz8HyTzm+52YXLGQrekM5ic3UJO7
	3QcFIJE2B69tybO1Z0ItlZwr/BiLvJMm+m3hxpPJ96syZ9Ov/xH1jwgOO84Vl+Es61uhQ42puUh7n
	Ne6w1dMg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eC3-2f
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001S5-R5; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000Atb-EC; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-1f;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:17 +0100
Message-Id: <20240103181312.409668-58-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_271820_FFF55B70 
X-CRM114-Status: GOOD (  22.66  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 057/112] pbl: introduce CONFIG_PBL_FULLY_PIC
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
index 91970c19bc1e..23fcbd20dacd 100644
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
 	bool
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0b236babb275..ec9cb4bf4028 100644
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



