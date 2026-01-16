Delivery-date: Fri, 16 Jan 2026 17:07:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMX-00216D-0B
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMU-0005cY-EY
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1rjq0uz/5p2bdOh1uP7tywd+My8TrLCRgVmQvr0p49c=; b=NC5qivUXLTdO7OcJv58cU2DUvv
	ohnrZNrVH1CrkTsFpLDfGr1/KSxk9h4nA5q+56EaJgCQ9XcYF6CI0ngHGjX3B+MfoB2NWUJbaE97M
	StkY5/nQyfsvSAFWKg0wqDC/4XE9m1eWlcPISclKR5k6TpLpCwN7Q++yH0P89umAJ+CKHQVxQFw0A
	QvhR0v66BL9p646QBQKqJnjGrwRY3Zl1ndlBcijIsHqAsQ9s/2p4UXzhrfp9Kfl+t52YN6Jjrdr5L
	KnLTTMfxkb4gSD/KLe2bMShA0ziOPPoWoR/9Ns/Q8Ths7eITjhnULX+NH8c+zW+HL3TwXcZ8FaGmk
	T9FNCItg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLo-0000000EPxd-0LZz;
	Fri, 16 Jan 2026 16:07:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLj-0000000EPtb-3m5j
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:07:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLh-0004sd-0x; Fri, 16 Jan 2026 17:06:57 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 17:06:26 +0100
Message-ID: <20260116160654.3981425-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080700_091209_19B6A50D 
X-CRM114-Status: GOOD (  16.76  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/13] ARM: qemu-virt: add image for use as -bios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We previously used barebox-dt-2nd.img as image for Qemu Virt.
Adding a dedicated image however allows us to use -kernel to specify,
well, a kernel, which can make some testing scenarios more straight
forward, once we implement support for barebox to lookup -kernel and
-append QEMU options.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/Makefile                |  1 +
 arch/arm/boards/qemu-virt/Makefile      |  2 +-
 arch/arm/boards/qemu-virt/lowlevel.c    | 80 +++++++++++++++++++++++++
 images/Makefile.vexpress                |  5 ++
 test/arm/dt-2nd@multi_v7_defconfig.yaml | 22 +++++++
 test/arm/dt-2nd@multi_v8_defconfig.yaml | 23 +++++++
 test/arm/virt@multi_v7_defconfig.yaml   |  4 +-
 test/arm/virt@multi_v8_defconfig.yaml   |  4 +-
 8 files changed, 136 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/boards/qemu-virt/lowlevel.c
 create mode 100644 test/arm/dt-2nd@multi_v7_defconfig.yaml
 create mode 100644 test/arm/dt-2nd@multi_v8_defconfig.yaml

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 4c586de2a985..dd2f2c324e25 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -189,6 +189,7 @@ obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
 obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
 obj-$(CONFIG_MACH_PINE64_PINETAB2)		+= pine64-pinetab2/
 obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
+obj-$(CONFIG_BOARD_ARM_VIRT)			+= qemu-virt/
 obj-$(CONFIG_MACH_RADXA_ROCK3)			+= radxa-rock3/
 obj-$(CONFIG_MACH_RADXA_ROCK5)			+= radxa-rock5/
 obj-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP)	+= variscite-dt8mcustomboard-imx8mp/
diff --git a/arch/arm/boards/qemu-virt/Makefile b/arch/arm/boards/qemu-virt/Makefile
index ad283446eaf1..458f5209008d 100644
--- a/arch/arm/boards/qemu-virt/Makefile
+++ b/arch/arm/boards/qemu-virt/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/qemu-virt/lowlevel.c b/arch/arm/boards/qemu-virt/lowlevel.c
new file mode 100644
index 000000000000..d6c48e367d08
--- /dev/null
+++ b/arch/arm/boards/qemu-virt/lowlevel.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/reloc.h>
+#include <compressed-dtb.h>
+#include <debug_ll.h>
+#include <console.h>
+#include <stdio.h>
+#include <debug_ll/pl011.h>
+#include <pbl.h>
+
+#define RAM_BASE	0x40000000
+#define PL011_BASE	IOMEM(0x9000000)
+
+extern char __dtb_qemu_virt32_start[];
+extern char __dtb_qemu_virt64_start[];
+
+static void *find_fdt(void *r0)
+{
+	void *fdt, *ram = (void *)RAM_BASE;
+	const char *origin;
+
+	if (blob_is_fdt(ram)) {
+		origin = "-bios";
+		fdt = ram;
+	} else if (r0 >= ram && blob_is_fdt(r0)) {
+		origin = "-kernel";
+		fdt = r0;
+	} else if (IS_ENABLED(CONFIG_ARM32)) {
+		origin = "built-in";
+		fdt = __dtb_qemu_virt32_start;
+	} else {
+		origin = "built-in";
+		fdt = __dtb_qemu_virt64_start;
+	}
+
+	pr_info("Using %s device tree at %p\n", origin, fdt);
+	return fdt;
+}
+
+/*
+ * Entry point for QEMU virt firmware boot (-bios option).
+ *
+ * Memory layout:
+ *   0x00000000 - 0x08000000: Flash/ROM
+ *   0x08000000 - 0x40000000: Peripherals
+ *   0x40000000 - ...........: RAM
+ */
+static noinline void continue_qemu_virt_bios(ulong r0)
+{
+	ulong membase = RAM_BASE, memsize = SZ_32M - SZ_4M;
+	void *fdt;
+
+	pbl_set_putc(debug_ll_pl011_putc, PL011_BASE);
+
+	/* QEMU may put a DTB at the start of RAM */
+	fdt = find_fdt((void *)r0);
+
+	fdt_find_mem(fdt, &membase, &memsize);
+
+	barebox_arm_entry(membase, memsize, fdt);
+}
+
+ENTRY_FUNCTION_WITHSTACK(start_qemu_virt_bios, RAM_BASE + SZ_32M, r0, r1, r2)
+{
+
+	arm_cpu_lowlevel_init();
+
+	putc_ll('>');
+
+	if (get_pc() >= RAM_BASE)
+		relocate_to_current_adr();
+	else
+		relocate_to_adr_full(RAM_BASE + SZ_4M);
+
+	setup_c();
+
+	continue_qemu_virt_bios(r0);
+}
diff --git a/images/Makefile.vexpress b/images/Makefile.vexpress
index 11c49cca0cbd..81ab8caa4c24 100644
--- a/images/Makefile.vexpress
+++ b/images/Makefile.vexpress
@@ -10,3 +10,8 @@ image-$(CONFIG_MACH_VEXPRESS) += barebox-vexpress-ca9.img
 pblb-$(CONFIG_MACH_VEXPRESS) += start_vexpress_ca15
 FILE_barebox-vexpress-ca15.img = start_vexpress_ca15.pblb
 image-$(CONFIG_MACH_VEXPRESS) += barebox-vexpress-ca15.img
+
+# Firmware image for -bios option
+pblb-$(CONFIG_BOARD_ARM_VIRT) += start_qemu_virt_bios
+FILE_barebox-qemu-virt.img = start_qemu_virt_bios.pblb
+image-$(CONFIG_BOARD_ARM_VIRT) += barebox-qemu-virt.img
diff --git a/test/arm/dt-2nd@multi_v7_defconfig.yaml b/test/arm/dt-2nd@multi_v7_defconfig.yaml
new file mode 100644
index 000000000000..891581205898
--- /dev/null
+++ b/test/arm/dt-2nd@multi_v7_defconfig.yaml
@@ -0,0 +1,22 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-arm
+        machine: virt
+        cpu: cortex-a7
+        memory: 1024M
+        kernel: barebox-dt-2nd.img
+        display: qemu-default
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+      - barebox-state
+      - testfs
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+imports:
+  -  ../strategy.py
diff --git a/test/arm/dt-2nd@multi_v8_defconfig.yaml b/test/arm/dt-2nd@multi_v8_defconfig.yaml
new file mode 100644
index 000000000000..8aa514fb4179
--- /dev/null
+++ b/test/arm/dt-2nd@multi_v8_defconfig.yaml
@@ -0,0 +1,23 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-aarch64
+        machine: virt,highmem=off
+        cpu: cortex-a57
+        memory: 1024M
+        kernel: barebox-dt-2nd.img
+        display: qemu-default
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+      - network
+      - barebox-state
+      - testfs
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+imports:
+  -  ../strategy.py
diff --git a/test/arm/virt@multi_v7_defconfig.yaml b/test/arm/virt@multi_v7_defconfig.yaml
index 891581205898..eef08a5b345b 100644
--- a/test/arm/virt@multi_v7_defconfig.yaml
+++ b/test/arm/virt@multi_v7_defconfig.yaml
@@ -6,7 +6,7 @@ targets:
         machine: virt
         cpu: cortex-a7
         memory: 1024M
-        kernel: barebox-dt-2nd.img
+        bios: barebox-qemu-virt.img
         display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
@@ -17,6 +17,6 @@ targets:
       - barebox-state
       - testfs
 images:
-  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+  barebox-qemu-virt.img: !template "$LG_BUILDDIR/images/barebox-qemu-virt.img"
 imports:
   -  ../strategy.py
diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index 8aa514fb4179..2e654359709e 100644
--- a/test/arm/virt@multi_v8_defconfig.yaml
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -6,7 +6,7 @@ targets:
         machine: virt,highmem=off
         cpu: cortex-a57
         memory: 1024M
-        kernel: barebox-dt-2nd.img
+        bios: barebox-qemu-virt.img
         display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
@@ -18,6 +18,6 @@ targets:
       - barebox-state
       - testfs
 images:
-  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+  barebox-qemu-virt.img: !template "$LG_BUILDDIR/images/barebox-qemu-virt.img"
 imports:
   -  ../strategy.py
-- 
2.47.3



