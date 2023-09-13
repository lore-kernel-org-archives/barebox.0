Delivery-date: Wed, 13 Sep 2023 14:58:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPS4-00DmCA-Ol
	for lore@lore.pengutronix.de; Wed, 13 Sep 2023 14:58:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qgPS2-0007VD-Jb
	for lore@pengutronix.de; Wed, 13 Sep 2023 14:58:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n19L+RX0JceTxaffMO1NWHXrRQG4LyfvGnxVCVxiyV4=; b=rcY849dhYk14LVeuHPKP16/y3G
	mRFkz1jKb7FE8ZGhz0JCgMhHX2jWoaIOA/eNcIoJJLC2wOTjW5JAplkArQIBUE9/VckrkF8dQ1mYn
	Cw9r1AoLeCMo+IgsGoqFEI7zrmCAkuHFmjsdzq1+C8jBvrxxO0hTK7Nvin1DEJYwIYvTBtpYG1Vr6
	04iKD+Qg22xRt/5zc1YQjBrsnqoHvHT9xwC74bM7vaZ2XAYXTFmAj7QlI3azTx3VRzjFwSdDnxqfB
	WLfWj2g2+Eu5daEUmPMHwYjhf3OvBI6ktUgp8gtH4JwQMESymN3LAlhJotfESOZXxZtDWI0Wli9xy
	wcX4ad2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPQt-005uSr-1s;
	Wed, 13 Sep 2023 12:57:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgPQo-005uRB-32
	for barebox@lists.infradead.org;
	Wed, 13 Sep 2023 12:57:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-0006hQ-Lm; Wed, 13 Sep 2023 14:57:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-0064XD-2F; Wed, 13 Sep 2023 14:57:18 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qgPQk-008zjD-03;
	Wed, 13 Sep 2023 14:57:18 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Sep 2023 14:57:14 +0200
Message-Id: <20230913125715.2142524-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230913125715.2142524-1-a.fatoum@pengutronix.de>
References: <20230913125715.2142524-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230913_055722_993934_0834571D 
X-CRM114-Status: GOOD (  17.85  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: add support for booting ELF executables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike MIPS and kvx, where ELF is used as kernel image format, Linux
ARM support defines its own flattened format.

Other kernels may be distributed as ELF images though, so it makes
sense to enable booting of ELF images on ARM as well.

This has been tested booting FreeRTOS ELF executables on the ZynqMP.

Note that this will refuse to boot kernel ELF images as those have
type dyn, while the common ELF code in barebox will only boot type exec.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/Makefile      |  1 +
 arch/arm/cpu/bootm-elf.c   | 56 ++++++++++++++++++++++++++++++++++++++
 arch/arm/include/asm/elf.h |  5 ++++
 include/elf.h              |  1 +
 4 files changed, 63 insertions(+)
 create mode 100644 arch/arm/cpu/bootm-elf.c

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 5baff2fad087..28161cd7d714 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -29,6 +29,7 @@ obj-$(CONFIG_ARM_PSCI_CLIENT) += psci-client.o
 obj-$(CONFIG_CMD_ARM_CPUINFO) += cpuinfo.o
 obj-$(CONFIG_MMUINFO) += mmuinfo.o mmuinfo_$(S64_32).o
 obj-$(CONFIG_OFDEVICE) += dtb.o
+obj-$(CONFIG_BOOTM_ELF)	+= bootm-elf.o
 
 ifeq ($(CONFIG_MMU),)
 obj-$(CONFIG_CPU_32v7) += no-mmu.o
diff --git a/arch/arm/cpu/bootm-elf.c b/arch/arm/cpu/bootm-elf.c
new file mode 100644
index 000000000000..bcca3931f22f
--- /dev/null
+++ b/arch/arm/cpu/bootm-elf.c
@@ -0,0 +1,56 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#define pr_fmt(fmt) "ELF: " fmt
+
+#include <bootm.h>
+#include <elf.h>
+#include <common.h>
+#include <init.h>
+#include <errno.h>
+
+static int do_bootm_elf(struct image_data *data)
+{
+	void (*fn)(unsigned long x0, unsigned long x1, unsigned long x2,
+		   unsigned long x3);
+	struct elf_image *elf = data->elf;
+	int ret;
+
+	if (elf_hdr_e_machine(elf, elf->hdr_buf) != ELF_ARCH) {
+		pr_err("Unsupported machine: 0x%02x, but 0x%02x expected\n",
+		       elf_hdr_e_machine(elf, elf->hdr_buf), ELF_ARCH);
+
+		return -EINVAL;
+	}
+
+	ret = bootm_load_os(data, data->os_address);
+	if (ret)
+		return ret;
+
+	if (data->dryrun)
+		return ret;
+
+	ret = of_overlay_load_firmware();
+	if (ret)
+		return ret;
+
+	shutdown_barebox();
+
+	fn = (void *) (unsigned long) data->os_address;
+
+	fn(0, 0, 0, 0);
+
+	pr_err("ELF application terminated\n");
+	return -EINVAL;
+}
+
+static struct image_handler elf_handler = {
+	.name = "ELF",
+	.bootm = do_bootm_elf,
+	.filetype = filetype_elf,
+};
+
+static int arm_register_elf_image_handler(void)
+{
+	return register_image_handler(&elf_handler);
+}
+late_initcall(arm_register_elf_image_handler);
diff --git a/arch/arm/include/asm/elf.h b/arch/arm/include/asm/elf.h
index 486275a3361d..4043e6fd5b99 100644
--- a/arch/arm/include/asm/elf.h
+++ b/arch/arm/include/asm/elf.h
@@ -22,6 +22,7 @@ typedef struct user_fp elf_fpregset_t;
 #endif
 
 #define EM_ARM	40
+#define EM_AARCH64	183
 #define EF_ARM_APCS26 0x08
 #define EF_ARM_SOFT_FLOAT 0x200
 #define EF_ARM_EABI_MASK 0xFF000000
@@ -44,7 +45,11 @@ typedef struct user_fp elf_fpregset_t;
 #else
 #define ELF_DATA	ELFDATA2LSB
 #endif
+#ifdef CONFIG_CPU_64
+#define ELF_ARCH	EM_AARCH64
+#else
 #define ELF_ARCH	EM_ARM
+#endif
 
 #ifdef __KERNEL__
 #ifndef __ASSEMBLY__
diff --git a/include/elf.h b/include/elf.h
index 12673e93ed0d..de1549ee8620 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -432,6 +432,7 @@ ELF_GET_FIELD(hdr, e_phnum, u16)
 ELF_GET_FIELD(hdr, e_phoff, u64)
 ELF_GET_FIELD(hdr, e_phentsize, u16)
 ELF_GET_FIELD(hdr, e_type, u16)
+ELF_GET_FIELD(hdr, e_machine, u16)
 ELF_GET_FIELD(phdr, p_paddr, u64)
 ELF_GET_FIELD(phdr, p_filesz, u64)
 ELF_GET_FIELD(phdr, p_memsz, u64)
-- 
2.39.2



