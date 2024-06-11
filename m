Delivery-date: Tue, 11 Jun 2024 09:00:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUG-00471n-0c
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 09:00:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvUF-0006AG-DQ
	for lore@pengutronix.de; Tue, 11 Jun 2024 09:00:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZIqNH5n91jKO7gYORWf0amYKsCNyU8wOI5LrBEv29Kg=; b=RyO9AIEKPXaruwSxQnJpmZtI/e
	64aLLqAenERsK0yE28mxYvxlYnXgTOBPxXetHTjmSrr42kDTEnjFuq8r2KODuZxPuv+DIiuj1O11b
	KpUoQLDDzyUnelj3D0ZdpNIT5mUTj6LHntNRaoZVPyHQPH+fRT54R0oK5wqHtgTnhPjn0tJhq60Po
	Aq8AnAUQ8r7x/KAD8tYHFHdREr836qSustMlKsD80ZU40Dg5Hs1g9saXwq1QhMiQ0LyTp69vVEdMK
	/ZnJuYa+xyjTR7AvUZDzg0b6EabPA6ZxdWtTb0HnKozYpwJ6K0hBqlUVE8fvQmscUCIHXIMnTy1dO
	mF5ib+4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTi-00000007mys-1jSm;
	Tue, 11 Jun 2024 06:59:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvTa-00000007mst-0a9s
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:59:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-0005qL-Rz; Tue, 11 Jun 2024 08:59:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-001UDF-F6; Tue, 11 Jun 2024 08:59:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvTY-00CATV-1D;
	Tue, 11 Jun 2024 08:59:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:59:19 +0200
Message-Id: <20240611065923.2900168-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
References: <20240611065923.2900168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235926_356692_F647BB51 
X-CRM114-Status: GOOD (  17.63  )
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
Subject: [PATCH 2/6] firmware: semihosting: add ARMv8-A semihosting support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The semihosting code was assuming registers and pointers to be 32-bit in
size. To enable usage for ARM64, switch to long-sized types where
appropriate and add a trap implementation for ARMv8.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                   |  1 -
 arch/arm/cpu/semihosting-trap_64.S | 10 ++++++
 drivers/firmware/semihosting.c     | 55 +++++++++++++++---------------
 fs/smhfs.c                         |  4 +--
 include/asm-generic/semihosting.h  |  4 +--
 5 files changed, 41 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm/cpu/semihosting-trap_64.S

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 26547cd3ba71..89125ca576ea 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -372,7 +372,6 @@ config ARM_UNWIND
 
 config ARM_SEMIHOSTING
 	bool "enable ARM semihosting support"
-	depends on !CPU_V8
 	select SEMIHOSTING
 	help
 	  This option enables ARM semihosting support in barebox. ARM
diff --git a/arch/arm/cpu/semihosting-trap_64.S b/arch/arm/cpu/semihosting-trap_64.S
new file mode 100644
index 000000000000..0f52094fc46b
--- /dev/null
+++ b/arch/arm/cpu/semihosting-trap_64.S
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <linux/linkage.h>
+#include <asm/unified.h>
+
+.section .text.semihosting_trap
+ENTRY(semihosting_trap)
+	hlt	#0xf000
+	ret
+ENDPROC(semihosting_trap)
diff --git a/drivers/firmware/semihosting.c b/drivers/firmware/semihosting.c
index 57b412e08ded..a037a95a1077 100644
--- a/drivers/firmware/semihosting.c
+++ b/drivers/firmware/semihosting.c
@@ -41,9 +41,9 @@ enum {
 	SEMIHOSTING_SYS_SYSTEM	= 0x12,
 };
 
-uint32_t semihosting_trap(uint32_t sysnum, void *addr);
+long semihosting_trap(ulong sysnum, void *addr);
 
-static uint32_t semihosting_flags_to_mode(int flags)
+static ulong semihosting_flags_to_mode(int flags)
 {
 	static const int semihosting_open_modeflags[12] = {
 		O_RDONLY,
@@ -72,11 +72,11 @@ static uint32_t semihosting_flags_to_mode(int flags)
 int semihosting_open(const char *fname, int flags)
 {
 	struct __packed {
-		uint32_t fname;
-		uint32_t mode;
-		uint32_t len;
+		ulong fname;
+		ulong mode;
+		ulong len;
 	} open = {
-		.fname = (uint32_t)fname,
+		.fname = virt_to_phys(fname),
 		.len = strlen(fname),
 		.mode = semihosting_flags_to_mode(flags),
 	};
@@ -104,16 +104,16 @@ int semihosting_write0(const char *str)
 EXPORT_SYMBOL(semihosting_write0);
 
 struct __packed semihosting_file_io {
-	uint32_t fd;
-	uint32_t memp;
-	uint32_t len;
+	ulong fd;
+	ulong memp;
+	ulong len;
 };
 
 ssize_t semihosting_write(int fd, const void *buf, size_t count)
 {
 	struct semihosting_file_io write = {
 		.fd = fd,
-		.memp = (uint32_t)buf,
+		.memp = virt_to_phys(buf),
 		.len = count,
 	};
 
@@ -125,7 +125,7 @@ ssize_t semihosting_read(int fd, void *buf, size_t count)
 {
 	struct semihosting_file_io read = {
 		.fd = fd,
-		.memp = (uint32_t)buf,
+		.memp = virt_to_phys(buf),
 		.len = count,
 	};
 
@@ -145,11 +145,11 @@ int semihosting_isatty(int fd)
 }
 EXPORT_SYMBOL(semihosting_isatty);
 
-int semihosting_seek(int fd, loff_t pos)
+off_t semihosting_seek(int fd, off_t pos)
 {
 	struct __packed {
-		uint32_t fd;
-		uint32_t pos;
+		ulong fd;
+		ulong pos;
 	} seek = {
 		.fd = fd,
 		.pos = pos,
@@ -158,8 +158,7 @@ int semihosting_seek(int fd, loff_t pos)
 	return semihosting_trap(SEMIHOSTING_SYS_SEEK, &seek);
 }
 EXPORT_SYMBOL(semihosting_seek);
-
-int semihosting_flen(int fd)
+off_t semihosting_flen(int fd)
 {
 	return semihosting_trap(SEMIHOSTING_SYS_FLEN, &fd);
 }
@@ -168,10 +167,10 @@ EXPORT_SYMBOL(semihosting_flen);
 int semihosting_remove(const char *fname)
 {
 	struct __packed {
-		uint32_t fname;
-		uint32_t fname_length;
+		ulong fname;
+		ulong fname_length;
 	} remove = {
-		.fname = (uint32_t)fname,
+		.fname = virt_to_phys(fname),
 		.fname_length = strlen(fname),
 	};
 
@@ -182,14 +181,14 @@ EXPORT_SYMBOL(semihosting_remove);
 int semihosting_rename(const char *fname1, const char *fname2)
 {
 	struct __packed {
-		uint32_t fname1;
-		uint32_t fname1_length;
-		uint32_t fname2;
-		uint32_t fname2_length;
+		ulong fname1;
+		ulong fname1_length;
+		ulong fname2;
+		ulong fname2_length;
 	} rename = {
-		.fname1 = (uint32_t)fname1,
+		.fname1 = virt_to_phys(fname1),
 		.fname1_length = strlen(fname1),
-		.fname2 = (uint32_t)fname2,
+		.fname2 = virt_to_phys(fname2),
 		.fname2_length = strlen(fname2),
 	};
 
@@ -207,10 +206,10 @@ EXPORT_SYMBOL(semihosting_errno);
 int semihosting_system(const char *command)
 {
 	struct __packed {
-		uint32_t cmd;
-		uint32_t cmd_len;
+		ulong cmd;
+		ulong cmd_len;
 	} system = {
-		.cmd = (uint32_t)command,
+		.cmd = virt_to_phys(command),
 		.cmd_len = strlen(command),
 	};
 
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 5165bf939406..da285b5be52f 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -26,7 +26,7 @@
 
 static int file_to_fd(const FILE *f)
 {
-	return (int)f->priv;
+	return (int)(uintptr_t)f->priv;
 }
 
 static int smhfs_create(struct device __always_unused *dev,
@@ -72,7 +72,7 @@ static int smhfs_open(struct device __always_unused *dev,
 	if (fd < 0)
 		goto error;
 
-	file->priv = (void *)fd;
+	file->priv = (void *)(uintptr_t)fd;
 	file->size = semihosting_flen(fd);
 	if (file->size < 0)
 		goto error;
diff --git a/include/asm-generic/semihosting.h b/include/asm-generic/semihosting.h
index d337c33ff486..b745f8831977 100644
--- a/include/asm-generic/semihosting.h
+++ b/include/asm-generic/semihosting.h
@@ -13,8 +13,8 @@ ssize_t semihosting_write(int fd, const void *buf, size_t count);
 ssize_t semihosting_read(int fd, void *buf, size_t count);
 int semihosting_readc(void);
 int semihosting_isatty(int fd);
-int semihosting_seek(int fd, loff_t pos);
-int semihosting_flen(int fd);
+off_t semihosting_seek(int fd, off_t pos);
+off_t semihosting_flen(int fd);
 int semihosting_remove(const char *fname);
 int semihosting_rename(const char *fname1, const char *fname2);
 int semihosting_errno(void);
-- 
2.39.2



