Delivery-date: Tue, 27 Apr 2021 22:24:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGP-0006Wq-Uz
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:24:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGO-00066D-H1
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:24:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jxEKEa776LRkU/MqevLbWRxzE8o3TlTDggq1C4ZWFLw=; b=P3lxam9ta/Z66OGKHE2vQS7g8
	WBqBQmqJM0DCqgC21iPNd4wfonYGmIHnm2uQtEo6ds6O2c7GhhHua5XE+24lKv0EKEhe8d3yHgbW8
	CY2ZYREWaMksZEomfEycpdf/MX+r1YQ8P25TnQnrJkhnqgpqLXCHnyRbSwOV9IVbAndFvRAfPT24p
	J9ov1ZWYrJScwukMHeCJ+URkLmKdal8UG2YXIyyUaTkZdTSH7j+r7w+pX5kW4LpbD8JpB1tykCp6Z
	BWJaqUTR0iXzu+WbC4rW7uqNao0TW3ui2BWlb2LALgdg2SPcMP9XXAzmeoOdGKQXD8xyolkWkkbfl
	bVYDOuxjw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUFE-002Bsk-I5; Tue, 27 Apr 2021 20:23:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEx-002Bqj-MQ
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=GPkV6ksm1hchdB41SxzjmWTt9gubYE8EVIjbkvqiYEs=; b=FVpnEHt3RY7GgoT53OsBuQWVJH
 tkX1XMbe51EeLU66lMzBL3f1AkNTdoHCKJZmgHk+qLDe0/CtQlcGb7DLYaWROmpe5lMrQcD37h542
 4jOjJLWTAOrvoUK1jwD4c9CZxFCf6T7S4eHeoQjDIMHTduhxf5naQhoyZQ8IPrucn9YZgtojJpJwW
 lEdGCbDz2iFavpDbbG2XJHE7cg1YPNsiUMhk6yKhCBpie1VJrlcxpbA0yEojVmBIOJA+zXSCEyIHG
 nCadhGgDtfmYIFYo4tk7Bm+unxzZQWRf9vkLsZGTZuCRsayU9+t9z1s9x0I2LqTvJ2aG2cTjDZEh4
 nsYAU1uw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEu-00GyI6-Qd
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEr-0005Xa-U4; Tue, 27 Apr 2021 22:23:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016f-21; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:04 +0200
Message-Id: <20210427202309.32077-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132324_885302_F4664F45 
X-CRM114-Status: GOOD (  20.92  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/12] RISC-V: add SBI based cpuinfo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SBI appeared to be especially useful to implement a generic console
driver. However, SBI v0.2 removes these services without substitute.

We might find other use for it later, but for now, add the bare minimum
of querying the version of the running SBI implementation.

The cpuinfo command is intentionally kept generic. It can later be
extended to support CONFIG_RISCV_M_MODE as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/sbi.h | 32 +++++++++++++++----
 arch/riscv/lib/Makefile      |  2 ++
 arch/riscv/lib/cpuinfo.c     | 45 ++++++++++++++++++++++++++
 arch/riscv/lib/sbi.c         | 62 ++++++++++++++++++++++++++++++++++++
 commands/Kconfig             |  7 ++++
 5 files changed, 142 insertions(+), 6 deletions(-)
 create mode 100644 arch/riscv/lib/cpuinfo.c
 create mode 100644 arch/riscv/lib/sbi.c

diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
index 99895d9c3bdd..ab1fc9a128e5 100644
--- a/arch/riscv/include/asm/sbi.h
+++ b/arch/riscv/include/asm/sbi.h
@@ -89,11 +89,32 @@ struct sbiret {
 	long value;
 };
 
-void sbi_init(void);
-struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
-			unsigned long arg1, unsigned long arg2,
-			unsigned long arg3, unsigned long arg4,
-			unsigned long arg5);
+static inline struct sbiret sbi_ecall(int ext, int fid, unsigned long arg0,
+				      unsigned long arg1, unsigned long arg2,
+				      unsigned long arg3, unsigned long arg4,
+				      unsigned long arg5)
+{
+	struct sbiret ret;
+
+	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
+	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
+	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
+	register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
+	register uintptr_t a4 asm ("a4") = (uintptr_t)(arg4);
+	register uintptr_t a5 asm ("a5") = (uintptr_t)(arg5);
+	register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
+	register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
+	asm volatile ("ecall"
+		      : "+r" (a0), "+r" (a1)
+		      : "r" (a2), "r" (a3), "r" (a4), "r" (a5), "r" (a6), "r" (a7)
+		      : "memory");
+	ret.error = a0;
+	ret.value = a1;
+
+	return ret;
+}
+
+long __sbi_base_ecall(int fid);
 
 void sbi_console_putchar(int ch);
 int sbi_console_getchar(void);
@@ -148,6 +169,5 @@ static inline unsigned long sbi_minor_version(void)
 int sbi_err_map_linux_errno(int err);
 #else /* CONFIG_RISCV_SBI */
 static inline int sbi_remote_fence_i(const unsigned long *hart_mask) { return -1; }
-static inline void sbi_init(void) {}
 #endif /* CONFIG_RISCV_SBI */
 #endif /* _ASM_RISCV_SBI_H */
diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index a4eaa1005d44..49750d576ae1 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -6,3 +6,5 @@ obj-y += dtb.o
 obj-pbl-y += sections.o setupc.o reloc.o sections.o runtime-offset.o
 obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o longjmp.o
 obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
+obj-$(CONFIG_RISCV_SBI) += sbi.o
+obj-$(CONFIG_CMD_RISCV_CPUINFO) += cpuinfo.o
diff --git a/arch/riscv/lib/cpuinfo.c b/arch/riscv/lib/cpuinfo.c
new file mode 100644
index 000000000000..21b99a990a1a
--- /dev/null
+++ b/arch/riscv/lib/cpuinfo.c
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <command.h>
+#include <asm/sbi.h>
+
+static const char *implementations[] = {
+	[0] = "\"Berkeley Boot Loader (BBL)\" ",
+	[1] = "\"OpenSBI\" ",
+	[2] = "\"Xvisor\" ",
+	[3] = "\"KVM\" ",
+	[4] = "\"RustSBI\" ",
+	[5] = "\"Diosix\" ",
+};
+
+static int do_cpuinfo(int argc, char *argv[])
+{
+	const char *implementation = "";
+	unsigned long impid;
+
+	printf("SBI specification v%lu.%lu detected\n",
+	       sbi_major_version(), sbi_minor_version());
+
+	if (sbi_spec_is_0_1())
+		return 0;
+
+	impid = __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_ID);
+	if (impid < ARRAY_SIZE(implementations))
+		implementation = implementations[impid];
+
+	printf("SBI implementation ID=0x%lx %sVersion=0x%lx\n",
+	       impid, implementation, __sbi_base_ecall(SBI_EXT_BASE_GET_IMP_VERSION));
+
+	printf("SBI Machine VENDORID=0x%lx ARCHID=0x%lx MIMPID=0x%lx\n",
+	       __sbi_base_ecall(SBI_EXT_BASE_GET_MVENDORID),
+	       __sbi_base_ecall(SBI_EXT_BASE_GET_MARCHID),
+	       __sbi_base_ecall(SBI_EXT_BASE_GET_MIMPID));
+
+	return 0;
+}
+
+BAREBOX_CMD_START(cpuinfo)
+	.cmd            = do_cpuinfo,
+BAREBOX_CMD_DESC("show CPU information")
+BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_END
diff --git a/arch/riscv/lib/sbi.c b/arch/riscv/lib/sbi.c
new file mode 100644
index 000000000000..973c9d9d0f1e
--- /dev/null
+++ b/arch/riscv/lib/sbi.c
@@ -0,0 +1,62 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * SBI initialilization and all extension implementation.
+ *
+ * Copyright (c) 2020 Western Digital Corporation or its affiliates.
+ */
+
+#include <asm/sbi.h>
+#include <linux/export.h>
+#include <errno.h>
+#include <init.h>
+
+/* default SBI version is 0.1 */
+unsigned long sbi_spec_version = SBI_SPEC_VERSION_DEFAULT;
+EXPORT_SYMBOL(sbi_spec_version);
+
+int sbi_err_map_linux_errno(int err)
+{
+	switch (err) {
+	case SBI_SUCCESS:
+		return 0;
+	case SBI_ERR_DENIED:
+		return -EPERM;
+	case SBI_ERR_INVALID_PARAM:
+		return -EINVAL;
+	case SBI_ERR_INVALID_ADDRESS:
+		return -EFAULT;
+	case SBI_ERR_NOT_SUPPORTED:
+	case SBI_ERR_FAILURE:
+	default:
+		return -ENOTSUPP;
+	};
+}
+EXPORT_SYMBOL(sbi_err_map_linux_errno);
+
+long __sbi_base_ecall(int fid)
+{
+	struct sbiret ret;
+
+	ret = sbi_ecall(SBI_EXT_BASE, fid, 0, 0, 0, 0, 0, 0);
+	if (!ret.error)
+		return ret.value;
+	else
+		return sbi_err_map_linux_errno(ret.error);
+}
+
+static inline long sbi_get_spec_version(void)
+{
+	return __sbi_base_ecall(SBI_EXT_BASE_GET_SPEC_VERSION);
+}
+
+static int sbi_init(void)
+{
+	int ret;
+
+	ret = sbi_get_spec_version();
+	if (ret > 0)
+		sbi_spec_version = ret;
+	return 0;
+
+}
+core_initcall(sbi_init);
diff --git a/commands/Kconfig b/commands/Kconfig
index b3937fdd8df8..5ae3cb3dd145 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -44,6 +44,13 @@ config CMD_ARM_CPUINFO
 	  D-cache: 8192 bytes (linelen = 8)
 	  Control register: M C W P D L I V RR DT IT U XP
 
+config CMD_RISCV_CPUINFO
+	bool "cpuinfo command"
+	default y
+	depends on RISCV_SBI
+	help
+	  Show SBI info about RISC-V CPU
+
 config CMD_DEVINFO
 	tristate
 	default y
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

