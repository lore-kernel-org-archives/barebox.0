Delivery-date: Tue, 11 Jun 2024 09:00:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUD-004714-1n
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 09:00:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUC-00068c-OT
	for lore@pengutronix.de; Tue, 11 Jun 2024 09:00:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OpiIlzMYBHxmiWdwWxR2tx1BDtlDaDcExPWTvoG+YmE=; b=UA91hhwtD3XlHIafxRdI5TvvOp
	bS8TNnQ/q2WyEp9V91jPr+D7cyYRTyhp/k1leqeut873mQlsyzDXwv7rDOn0rXzbgS0Q4rN0Dueuz
	l7il/4EsegJW7bIHOptviaVsCXFmzgkFp26X18w4cYzfzY9yXUEdh79eQL1344bJzbI0KO2y6bTds
	bXtxw/UCu1MHEpcCuR/Facs5WdCR6agfk4iwPwcn80dHoY0QwC8gtnuCe8BVahuYE5ZYuxJHtaX0g
	zrjbh/mjEsiY+nLHX0Gk++pYEMKlugSeeWxH4asRDVkWVVy0B8XRObgpmNDkbeBK0Ba9LfT/KZo45
	lvYe6A9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTf-00000007mwm-0uKv;
	Tue, 11 Jun 2024 06:59:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTa-00000007mss-0FXS
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:59:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-0005qK-Pk; Tue, 11 Jun 2024 08:59:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-001UDB-DM; Tue, 11 Jun 2024 08:59:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-00CATV-13;
	Tue, 11 Jun 2024 08:59:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:59:18 +0200
Message-Id: <20240611065923.2900168-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
References: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235926_239199_0BA2982D 
X-CRM114-Status: GOOD (  16.88  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/6] ARM: lib32: semihosting: prepare for more general use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, we limited semihosting support to 32-bit ARM, but it's also
usable on ARM64 and even RISC-V. Move the common code to
drivers/firmware, so it can be shared by all architectures.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                              |  1 +
 arch/arm/cpu/Makefile                         |  2 ++
 .../semihosting-trap_32.S}                    |  2 +-
 arch/arm/include/asm/semihosting.h            | 15 +-----------
 arch/arm/lib32/Makefile                       |  1 -
 drivers/firmware/Kconfig                      |  3 +++
 drivers/firmware/Makefile                     |  1 +
 .../lib32 => drivers/firmware}/semihosting.c  |  0
 fs/Kconfig                                    |  2 +-
 include/asm-generic/semihosting.h             | 23 +++++++++++++++++++
 10 files changed, 33 insertions(+), 17 deletions(-)
 rename arch/arm/{lib32/semihosting-trap.S => cpu/semihosting-trap_32.S} (84%)
 rename {arch/arm/lib32 => drivers/firmware}/semihosting.c (100%)
 create mode 100644 include/asm-generic/semihosting.h

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index be18b609c782..26547cd3ba71 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -373,6 +373,7 @@ config ARM_UNWIND
 config ARM_SEMIHOSTING
 	bool "enable ARM semihosting support"
 	depends on !CPU_V8
+	select SEMIHOSTING
 	help
 	  This option enables ARM semihosting support in barebox. ARM
 	  semihosting is a communication discipline that allows code
diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 28161cd7d714..999cc375da1c 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -23,6 +23,8 @@ obj-pbl-y += setupc_$(S64_32).o cache_$(S64_32).o
 
 obj-$(CONFIG_ARM_PSCI_CLIENT) += psci-client.o
 
+obj-$(CONFIG_ARM_SEMIHOSTING) += semihosting-trap_$(S64_32).o
+
 #
 # Any variants can be called as start-armxyz.S
 #
diff --git a/arch/arm/lib32/semihosting-trap.S b/arch/arm/cpu/semihosting-trap_32.S
similarity index 84%
rename from arch/arm/lib32/semihosting-trap.S
rename to arch/arm/cpu/semihosting-trap_32.S
index f7960d7cea96..069cdaa1dd38 100644
--- a/arch/arm/lib32/semihosting-trap.S
+++ b/arch/arm/cpu/semihosting-trap_32.S
@@ -2,7 +2,7 @@
 /* SPDX-FileCopyrightText: 2015 Zodiac Inflight Innovations */
 
 /*
- * semihosting-trap.S -- Assembly code needed to make a semihosting call
+ * semihosting-trap_32.S -- Assembly code needed to make a semihosting call
  *
  * Author: Andrey Smirnov <andrew.smirnov@gmail.com>
  */
diff --git a/arch/arm/include/asm/semihosting.h b/arch/arm/include/asm/semihosting.h
index 9e1606c4aeaa..c18aa1a5fef5 100644
--- a/arch/arm/include/asm/semihosting.h
+++ b/arch/arm/include/asm/semihosting.h
@@ -3,19 +3,6 @@
 #ifndef __ASM_ARM_SEMIHOSTING_H
 #define __ASM_ARM_SEMIHOSTING_H
 
-int semihosting_open(const char *fname, int flags);
-int semihosting_close(int fd);
-int semihosting_writec(char c);
-int semihosting_write0(const char *str);
-ssize_t semihosting_write(int fd, const void *buf, size_t count);
-ssize_t semihosting_read(int fd, void *buf, size_t count);
-int semihosting_readc(void);
-int semihosting_isatty(int fd);
-int semihosting_seek(int fd, loff_t pos);
-int semihosting_flen(int fd);
-int semihosting_remove(const char *fname);
-int semihosting_rename(const char *fname1, const char *fname2);
-int semihosting_errno(void);
-int semihosting_system(const char *command);
+#include <asm-generic/semihosting.h>
 
 #endif
diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
index d54fb7644c39..511a029062e6 100644
--- a/arch/arm/lib32/Makefile
+++ b/arch/arm/lib32/Makefile
@@ -23,7 +23,6 @@ pbl-y	+= runtime-offset.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 obj-$(CONFIG_ARM_UNWIND) += unwind.o
-obj-$(CONFIG_ARM_SEMIHOSTING) += semihosting-trap.o semihosting.o
 obj-$(CONFIG_MODULES) += module.o
 obj-$(CONFIG_ARM_MODULE_PLTS) += module-plts.o
 extra-y += barebox.lds
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 3252b61bc764..89c8bdeda3f0 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -1,6 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menu "Firmware Drivers"
 
+config SEMIHOSTING
+	bool
+
 config FIRMWARE_ALTERA_SERIAL
 	bool "Altera SPI programming"
 	depends on OFDEVICE
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index 4eabf42fd639..d0ebe663ea55 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_SEMIHOSTING) += semihosting.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o socfpga_sdr.o
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
diff --git a/arch/arm/lib32/semihosting.c b/drivers/firmware/semihosting.c
similarity index 100%
rename from arch/arm/lib32/semihosting.c
rename to drivers/firmware/semihosting.c
diff --git a/fs/Kconfig b/fs/Kconfig
index a3ba84b6aefd..e02cb939a5cf 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -113,7 +113,7 @@ config FS_UIMAGEFS
 	prompt "uImage FS support"
 
 config FS_SMHFS
-	depends on ARM_SEMIHOSTING
+	depends on SEMIHOSTING
 	select FS_LEGACY
 	bool
 	prompt "Semihosting FS support"
diff --git a/include/asm-generic/semihosting.h b/include/asm-generic/semihosting.h
new file mode 100644
index 000000000000..d337c33ff486
--- /dev/null
+++ b/include/asm-generic/semihosting.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_GENERIC_SEMIHOSTING_H
+#define __ASM_GENERIC_SEMIHOSTING_H
+
+#include <linux/types.h>
+
+int semihosting_open(const char *fname, int flags);
+int semihosting_close(int fd);
+int semihosting_writec(char c);
+int semihosting_write0(const char *str);
+ssize_t semihosting_write(int fd, const void *buf, size_t count);
+ssize_t semihosting_read(int fd, void *buf, size_t count);
+int semihosting_readc(void);
+int semihosting_isatty(int fd);
+int semihosting_seek(int fd, loff_t pos);
+int semihosting_flen(int fd);
+int semihosting_remove(const char *fname);
+int semihosting_rename(const char *fname1, const char *fname2);
+int semihosting_errno(void);
+int semihosting_system(const char *command);
+
+#endif
-- 
2.39.2



