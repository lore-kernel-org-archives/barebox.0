Delivery-date: Mon, 19 Jun 2023 11:54:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaf-00D3Bv-5L
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 11:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBab-00025J-Vs
	for lore@pengutronix.de; Mon, 19 Jun 2023 11:54:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+3QfGTfvSjcFcywZYsccCPET62UjL9LBgwI/AMU3tzw=; b=fT+tDcCpIIaWF+RtpgBDgmUP9f
	Nl0iid3giNSmAMdjoFzbGI07F7FJQazIdHVHOZhzdTbshQ4Ihz6hThD2owOi34vfXDtNdlfATAG8q
	ewWzyvbub/oJV0QXwsvh7zlNu68+joJAUSN6CHPukbxz5eu3upTA+iOelB+6wmyQjaHhtxAJxVt4P
	5GFVNWfc48etE3B/fOBzzOndjlM2SjGtgrC0v/g0wMxVlSr+a6qS5KeLN2It173JMoFsbbi/Vlyjl
	VMlvryCk3sJOpuwHptwhVYSoyfwEGg1iO6wJQ+fJVMKQWajaoh57pYCbXC8Iyt5oiFNOifnguWEGW
	nbImGgGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZU-0085ea-0d;
	Mon, 19 Jun 2023 09:53:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZQ-0085d8-2e
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 09:53:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBZ1-0001as-GF; Mon, 19 Jun 2023 11:52:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYz-008Tbk-8J; Mon, 19 Jun 2023 11:52:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYy-0004bt-1M;
	Mon, 19 Jun 2023 11:52:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jun 2023 11:52:38 +0200
Message-Id: <20230619095240.4168216-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
References: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_025313_187921_0F85572B 
X-CRM114-Status: GOOD (  10.28  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/5] test: lookup qemu binary in path if no tools key exists
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is already the behavior on labgrid master, but until there's a
release using that, we amend the BareboxTestStrategy to achieve the same
result with existing labgrid releases.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/a15@multi_v7_defconfig.yaml            |  4 +---
 test/arm/a9@multi_v7_defconfig.yaml             |  4 +---
 test/arm/multi_v8_defconfig.yaml                |  4 +---
 test/arm/qemu-raspi0@multi_v7_defconfig.yaml    |  4 +---
 test/arm/qemu-raspi1ap@multi_v7_defconfig.yaml  |  4 +---
 test/arm/qemu-raspi2b@multi_v7_defconfig.yaml   |  4 +---
 test/arm/qemu-sabrelite@multi_v7_defconfig.yaml |  4 +---
 test/arm/virt@multi_v7_defconfig.yaml           |  4 +---
 test/mips/be@qemu-malta_defconfig.yaml          |  4 +---
 test/mips/le@qemu-malta_defconfig.yaml          |  4 +---
 test/mips/qemu-malta64el_defconfig.yaml         |  4 +---
 test/openrisc/generic_defconfig.yaml            |  4 +---
 test/riscv/qemu-virt64@rv64i_defconfig.yaml     |  4 +---
 test/riscv/qemu@virt32_defconfig.yaml           |  4 +---
 test/riscv/sifive@rv64i_defconfig.yaml          |  4 +---
 test/strategy.py                                | 12 ++++++++++++
 test/x86/pc@efi_defconfig.yaml                  |  4 +---
 test/x86/q35@efi_defconfig.yaml                 |  4 +---
 test/x86/virtio@efi_defconfig.yaml              |  4 +---
 19 files changed, 30 insertions(+), 54 deletions(-)

diff --git a/test/arm/a15@multi_v7_defconfig.yaml b/test/arm/a15@multi_v7_defconfig.yaml
index 941e914ab2d6..dfa73fb3f5fd 100644
--- a/test/arm/a15@multi_v7_defconfig.yaml
+++ b/test/arm/a15@multi_v7_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-arm
         machine: vexpress-a15
         cpu: cortex-a15
         memory: 1024M
@@ -14,7 +14,5 @@ targets:
       BareboxTestStrategy: {}
 images:
   barebox-vexpress-ca15.img: !template "$LG_BUILDDIR/images/barebox-vexpress-ca15.img"
-tools:
-  qemu: /usr/bin/qemu-system-arm
 imports:
   -  ../strategy.py
diff --git a/test/arm/a9@multi_v7_defconfig.yaml b/test/arm/a9@multi_v7_defconfig.yaml
index fefee153cf91..8e8220102c90 100644
--- a/test/arm/a9@multi_v7_defconfig.yaml
+++ b/test/arm/a9@multi_v7_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-arm
         machine: vexpress-a9
         cpu: cortex-a9
         memory: 1024M
@@ -14,7 +14,5 @@ targets:
       BareboxTestStrategy: {}
 images:
   barebox-vexpress-ca9.img: !template "$LG_BUILDDIR/images/barebox-vexpress-ca9.img"
-tools:
-  qemu: /usr/bin/qemu-system-arm
 imports:
   -  ../strategy.py
diff --git a/test/arm/multi_v8_defconfig.yaml b/test/arm/multi_v8_defconfig.yaml
index 5da5dfeb7e27..d8f8ab5cbff3 100644
--- a/test/arm/multi_v8_defconfig.yaml
+++ b/test/arm/multi_v8_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-aarch64
         machine: virt,highmem=off
         cpu: cortex-a57
         memory: 1024M
@@ -18,7 +18,5 @@ targets:
       tuxmake_arch: arm64
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
-tools:
-  qemu: /usr/bin/qemu-system-aarch64
 imports:
   -  ../strategy.py
diff --git a/test/arm/qemu-raspi0@multi_v7_defconfig.yaml b/test/arm/qemu-raspi0@multi_v7_defconfig.yaml
index e6ba6410879f..0a9a727c641f 100644
--- a/test/arm/qemu-raspi0@multi_v7_defconfig.yaml
+++ b/test/arm/qemu-raspi0@multi_v7_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-arm
         machine: raspi0
         cpu: arm1176
         memory: 512M
@@ -14,7 +14,5 @@ targets:
       BareboxTestStrategy: {}
 images:
   barebox-raspberry-pi.img: !template "$LG_BUILDDIR/images/barebox-raspberry-pi.img"
-tools:
-  qemu: /usr/bin/qemu-system-arm
 imports:
   -  ../strategy.py
diff --git a/test/arm/qemu-raspi1ap@multi_v7_defconfig.yaml b/test/arm/qemu-raspi1ap@multi_v7_defconfig.yaml
index 1abd6721cb65..0950481a63ea 100644
--- a/test/arm/qemu-raspi1ap@multi_v7_defconfig.yaml
+++ b/test/arm/qemu-raspi1ap@multi_v7_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-arm
         machine: raspi1ap
         cpu: arm1176
         memory: 512M
@@ -14,7 +14,5 @@ targets:
       BareboxTestStrategy: {}
 images:
   barebox-raspberry-pi.img: !template "$LG_BUILDDIR/images/barebox-raspberry-pi.img"
-tools:
-  qemu: /usr/bin/qemu-system-arm
 imports:
   -  ../strategy.py
diff --git a/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml b/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml
index bd92343c80fc..72471c0a7f30 100644
--- a/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml
+++ b/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-arm
         machine: raspi2b
         cpu: cortex-a7
         memory: 1G
@@ -14,7 +14,5 @@ targets:
       BareboxTestStrategy: {}
 images:
   barebox-raspberry-pi.img: !template "$LG_BUILDDIR/images/barebox-raspberry-pi.img"
-tools:
-  qemu: /usr/bin/qemu-system-arm
 imports:
   -  ../strategy.py
diff --git a/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml b/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
index 948618a90f1e..77b7f9e58913 100644
--- a/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
+++ b/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-arm
         machine: sabrelite
         cpu: cortex-a9
         memory: 1024M
@@ -16,7 +16,5 @@ targets:
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
   imx6q-sabreliste.dtb: !template "$LG_BUILDDIR/arch/arm/dts/imx6q-sabrelite.dtb"
-tools:
-  qemu: /usr/bin/qemu-system-arm
 imports:
   -  ../strategy.py
diff --git a/test/arm/virt@multi_v7_defconfig.yaml b/test/arm/virt@multi_v7_defconfig.yaml
index 66ecf20690d1..203f17bfc7f0 100644
--- a/test/arm/virt@multi_v7_defconfig.yaml
+++ b/test/arm/virt@multi_v7_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-arm
         machine: virt
         cpu: cortex-a7
         memory: 1024M
@@ -16,7 +16,5 @@ targets:
       - virtio-mmio
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
-tools:
-  qemu: /usr/bin/qemu-system-arm
 imports:
   -  ../strategy.py
diff --git a/test/mips/be@qemu-malta_defconfig.yaml b/test/mips/be@qemu-malta_defconfig.yaml
index 774023cd8451..5f438e4b900a 100644
--- a/test/mips/be@qemu-malta_defconfig.yaml
+++ b/test/mips/be@qemu-malta_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-mips
         machine: malta
         cpu: M14Kc
         memory: 256M
@@ -16,7 +16,5 @@ targets:
       - virtio-pci
 images:
   barebox-qemu-malta.img: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img"
-tools:
-  qemu: /usr/bin/qemu-system-mips
 imports:
   -  ../strategy.py
diff --git a/test/mips/le@qemu-malta_defconfig.yaml b/test/mips/le@qemu-malta_defconfig.yaml
index 8fc8c4dae925..ecf9484dcc1e 100644
--- a/test/mips/le@qemu-malta_defconfig.yaml
+++ b/test/mips/le@qemu-malta_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-mipsel
         machine: malta
         cpu: M14Kc
         memory: 256M
@@ -19,7 +19,5 @@ targets:
         - CONFIG_CPU_LITTLE_ENDIAN=y
 images:
   barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
-tools:
-  qemu: /usr/bin/qemu-system-mipsel
 imports:
   -  ../strategy.py
diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
index 22562d5b7a6a..bf8563e6623b 100644
--- a/test/mips/qemu-malta64el_defconfig.yaml
+++ b/test/mips/qemu-malta64el_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-mips64el
         machine: malta
         cpu: 5KEf
         memory: 256M
@@ -16,7 +16,5 @@ targets:
       - virtio-pci
 images:
   barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
-tools:
-  qemu: /usr/bin/qemu-system-mips64el
 imports:
   -  ../strategy.py
diff --git a/test/openrisc/generic_defconfig.yaml b/test/openrisc/generic_defconfig.yaml
index 0a2d4a7a18a0..93ba9586c439 100644
--- a/test/openrisc/generic_defconfig.yaml
+++ b/test/openrisc/generic_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-or1k
         machine: or1k-sim
         cpu: or1200
         memory: 256M
@@ -14,7 +14,5 @@ targets:
       BareboxTestStrategy: {}
 images:
   barebox: !template "$LG_BUILDDIR/barebox"
-tools:
-  qemu: /usr/bin/qemu-system-or1k
 imports:
   -  ../strategy.py
diff --git a/test/riscv/qemu-virt64@rv64i_defconfig.yaml b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
index ee121f153619..c920413a17bf 100644
--- a/test/riscv/qemu-virt64@rv64i_defconfig.yaml
+++ b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-riscv64
         machine: virt
         cpu: rv64
         memory: 256M
@@ -16,7 +16,5 @@ targets:
       - virtio-mmio
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
-tools:
-  qemu: /usr/bin/qemu-system-riscv64
 imports:
   -  ../strategy.py
diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
index 5c602635d4c5..da1bb5bddd3e 100644
--- a/test/riscv/qemu@virt32_defconfig.yaml
+++ b/test/riscv/qemu@virt32_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-riscv32
         machine: virt
         cpu: rv32
         memory: 256M
@@ -21,7 +21,5 @@ targets:
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
   opensbi-riscv32-generic-fw_dynamic.bin: !template "$LG_BUILDDIR/opensbi-riscv32-generic-fw_dynamic.bin"
-tools:
-  qemu: /usr/bin/qemu-system-riscv32
 imports:
   -  ../strategy.py
diff --git a/test/riscv/sifive@rv64i_defconfig.yaml b/test/riscv/sifive@rv64i_defconfig.yaml
index 303f96299766..ce4ea0e1e27e 100644
--- a/test/riscv/sifive@rv64i_defconfig.yaml
+++ b/test/riscv/sifive@rv64i_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-riscv64
         machine: sifive_u
         cpu: sifive-u54
         memory: 256M
@@ -14,7 +14,5 @@ targets:
       BareboxTestStrategy: {}
 images:
   barebox-hifive-unleashed.img: !template "$LG_BUILDDIR/images/barebox-hifive-unleashed.img"
-tools:
-  qemu: /usr/bin/qemu-system-riscv64
 imports:
   -  ../strategy.py
diff --git a/test/strategy.py b/test/strategy.py
index 81650a7600bd..65cdae4fbf04 100644
--- a/test/strategy.py
+++ b/test/strategy.py
@@ -4,6 +4,7 @@ import attr
 import pytest
 import subprocess
 import os
+import shutil
 import sys
 
 from labgrid import target_factory, step, driver
@@ -33,6 +34,7 @@ class BareboxTestStrategy(Strategy):
         super().__attrs_post_init__()
         if isinstance(self.console, driver.QEMUDriver):
             self.qemu = self.console
+        self.patchtools()
 
     @step(args=['status'])
     def transition(self, status, *, step):
@@ -110,6 +112,16 @@ class BareboxTestStrategy(Strategy):
 
         return cmd
 
+    def patchtools(self):
+        # https://github.com/labgrid-project/labgrid/commit/69fd553c6969526b609d0be6bb81f0c35f08d1d0
+        if self.qemu is None:
+            return
+
+        if 'tools' not in self.target.env.config.data:
+            self.target.env.config.data['tools'] = {}
+        self.target.env.config.data["tools"][self.qemu.qemu_bin] = \
+                shutil.which(self.qemu.qemu_bin)
+
 def quote_cmd(cmd):
     quoted = map(lambda s : s if s.find(" ") == -1 else "'" + s + "'", cmd)
     return " ".join(quoted)
diff --git a/test/x86/pc@efi_defconfig.yaml b/test/x86/pc@efi_defconfig.yaml
index 280f5dcee9a6..e818409703f8 100644
--- a/test/x86/pc@efi_defconfig.yaml
+++ b/test/x86/pc@efi_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-x86_64
         machine: pc
         cpu: Nehalem
         memory: 1024M
@@ -25,7 +25,5 @@ targets:
 images:
   barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
   OVMF.fd: !template "$LG_BUILDDIR/OVMF.fd"
-tools:
-  qemu: /usr/bin/qemu-system-x86_64
 imports:
   -  ../strategy.py
diff --git a/test/x86/q35@efi_defconfig.yaml b/test/x86/q35@efi_defconfig.yaml
index dcb3f604c0ac..71c44e8cd45f 100644
--- a/test/x86/q35@efi_defconfig.yaml
+++ b/test/x86/q35@efi_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-x86_64
         machine: q35
         cpu: Nehalem
         memory: 1024M
@@ -25,7 +25,5 @@ targets:
 images:
   barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
   OVMF.fd: !template "$LG_BUILDDIR/OVMF.fd"
-tools:
-  qemu: /usr/bin/qemu-system-x86_64
 imports:
   -  ../strategy.py
diff --git a/test/x86/virtio@efi_defconfig.yaml b/test/x86/virtio@efi_defconfig.yaml
index 326fcbc68999..389089363872 100644
--- a/test/x86/virtio@efi_defconfig.yaml
+++ b/test/x86/virtio@efi_defconfig.yaml
@@ -2,7 +2,7 @@ targets:
   main:
     drivers:
       QEMUDriver:
-        qemu_bin: qemu
+        qemu_bin: qemu-system-x86_64
         machine: pc
         cpu: Nehalem
         memory: 1024M
@@ -26,7 +26,5 @@ targets:
 images:
   barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
   OVMF.fd: !template "$LG_BUILDDIR/OVMF.fd"
-tools:
-  qemu: /usr/bin/qemu-system-x86_64
 imports:
   -  ../strategy.py
-- 
2.39.2



