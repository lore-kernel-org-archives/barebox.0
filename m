Delivery-date: Fri, 04 Jun 2021 10:50:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5Wu-0005Mp-14
	for lore@lore.pengutronix.de; Fri, 04 Jun 2021 10:50:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lp5Wh-0001XE-22
	for lore@pengutronix.de; Fri, 04 Jun 2021 10:50:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqcentexO7Vrmhl01OD4SCBssJpX9O33PUJJ09Pxp9o=; b=2B5UB4s2D6tcr4
	pUeDvxedMSQtjztQ+7QRZtAVBBpFIbi5yzUIfrbbkc+ey4c727dy+rbb3cQruW1jxyW4nHqPgHS6/
	fl6mHI8Lz64+e197gdnHYkjS0U4bzsBekzkni7QsAKD++dR0o4Yiug3pQspQEy4o7V328h923VKtO
	MSGJGdf9Mgny+VhRIyeSBZ0BnYWqMj/Dnh97oXxEQ13CZDOon09TZqhnwS1z/va2WYWFyZrCpir2e
	Nrv3PExJwQ8YQRsczvwL6WDqkafBZ0ONtpyWDfkIunuLqBtSFrZag4APlbTza0XmfEl/++aj+5cl0
	ADcelJSpj7iPCqcJvuiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lp5Uy-00CMW2-It; Fri, 04 Jun 2021 08:48:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lp5UA-00CM94-Bc
 for barebox@lists.infradead.org; Fri, 04 Jun 2021 08:47:29 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5U8-0000ia-NZ; Fri, 04 Jun 2021 10:47:20 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lp5U7-00053K-N3; Fri, 04 Jun 2021 10:47:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  4 Jun 2021 10:47:00 +0200
Message-Id: <20210604084704.17410-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210604084704.17410-1-a.fatoum@pengutronix.de>
References: <20210604084704.17410-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_014722_836736_6AC181D4 
X-CRM114-Status: GOOD (  14.13  )
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
Cc: jmaselbas@kalray.eu, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Rouven Czerwinski <r.czerwinski@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND v4 09/13] test: add labgrid-style configs for some
 emulated targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are various ways barebox can run under emulation, some of them are
described in the documentation and some more in the git history.

Make running the emulators more convenient to use by collecting some
known-good emulator invocations in a machine readable format.

These files can be processed by a test/emulate.pl script added in a
follow-up commit. They contain enough information to configure, build
and run barebox inside an emulator. Those YAML files utilizing QEMUDriver
can also be directly parsed by labgrid for running tests.

Utilizing labgrid for this will allow using the same test suite for
physical targets as well in future.

Acked-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/a15@vexpress_defconfig.yaml     | 20 +++++++++++++++
 test/arm/a9@vexpress_defconfig.yaml      | 20 +++++++++++++++
 test/arm/qemu_virt64_defconfig.yaml      | 24 ++++++++++++++++++
 test/arm/vexpress_defconfig.yaml         |  1 +
 test/arm/virt@vexpress_defconfig.yaml    | 22 ++++++++++++++++
 test/kconfig/virtio-pci.cfg              |  6 +++++
 test/mips/be@qemu-malta_defconfig.yaml   | 22 ++++++++++++++++
 test/mips/le@qemu-malta_defconfig.yaml   | 25 ++++++++++++++++++
 test/mips/qemu-malta_defconfig.yaml      |  1 +
 test/openrisc/generic_defconfig.yaml     | 20 +++++++++++++++
 test/riscv/qemu@virt32_defconfig.yaml    | 27 ++++++++++++++++++++
 test/riscv/qemu@virt64_defconfig.yaml    | 27 ++++++++++++++++++++
 test/riscv/sifive_defconfig.yaml         | 25 ++++++++++++++++++
 test/riscv/tinyemu@virt32_defconfig.yaml | 22 ++++++++++++++++
 test/riscv/tinyemu@virt64_defconfig.yaml | 22 ++++++++++++++++
 test/riscv/virt32_defconfig.yaml         |  1 +
 test/riscv/virt64_defconfig.yaml         |  1 +
 test/sandbox/sandbox_defconfig.yaml      | 12 +++++++++
 test/x86/efi_defconfig.yaml              |  1 +
 test/x86/pc@efi_defconfig.yaml           | 31 +++++++++++++++++++++++
 test/x86/q35@efi_defconfig.yaml          | 31 +++++++++++++++++++++++
 test/x86/virtio@efi_defconfig.yaml       | 32 ++++++++++++++++++++++++
 22 files changed, 393 insertions(+)
 create mode 100644 test/arm/a15@vexpress_defconfig.yaml
 create mode 100644 test/arm/a9@vexpress_defconfig.yaml
 create mode 100644 test/arm/qemu_virt64_defconfig.yaml
 create mode 120000 test/arm/vexpress_defconfig.yaml
 create mode 100644 test/arm/virt@vexpress_defconfig.yaml
 create mode 100644 test/kconfig/virtio-pci.cfg
 create mode 100644 test/mips/be@qemu-malta_defconfig.yaml
 create mode 100644 test/mips/le@qemu-malta_defconfig.yaml
 create mode 120000 test/mips/qemu-malta_defconfig.yaml
 create mode 100644 test/openrisc/generic_defconfig.yaml
 create mode 100644 test/riscv/qemu@virt32_defconfig.yaml
 create mode 100644 test/riscv/qemu@virt64_defconfig.yaml
 create mode 100644 test/riscv/sifive_defconfig.yaml
 create mode 100644 test/riscv/tinyemu@virt32_defconfig.yaml
 create mode 100644 test/riscv/tinyemu@virt64_defconfig.yaml
 create mode 120000 test/riscv/virt32_defconfig.yaml
 create mode 120000 test/riscv/virt64_defconfig.yaml
 create mode 100644 test/sandbox/sandbox_defconfig.yaml
 create mode 120000 test/x86/efi_defconfig.yaml
 create mode 100644 test/x86/pc@efi_defconfig.yaml
 create mode 100644 test/x86/q35@efi_defconfig.yaml
 create mode 100644 test/x86/virtio@efi_defconfig.yaml

diff --git a/test/arm/a15@vexpress_defconfig.yaml b/test/arm/a15@vexpress_defconfig.yaml
new file mode 100644
index 000000000000..941e914ab2d6
--- /dev/null
+++ b/test/arm/a15@vexpress_defconfig.yaml
@@ -0,0 +1,20 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: vexpress-a15
+        cpu: cortex-a15
+        memory: 1024M
+        bios: barebox-vexpress-ca15.img
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+images:
+  barebox-vexpress-ca15.img: !template "$LG_BUILDDIR/images/barebox-vexpress-ca15.img"
+tools:
+  qemu: /usr/bin/qemu-system-arm
+imports:
+  -  ../strategy.py
diff --git a/test/arm/a9@vexpress_defconfig.yaml b/test/arm/a9@vexpress_defconfig.yaml
new file mode 100644
index 000000000000..fefee153cf91
--- /dev/null
+++ b/test/arm/a9@vexpress_defconfig.yaml
@@ -0,0 +1,20 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: vexpress-a9
+        cpu: cortex-a9
+        memory: 1024M
+        bios: barebox-vexpress-ca9.img
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+images:
+  barebox-vexpress-ca9.img: !template "$LG_BUILDDIR/images/barebox-vexpress-ca9.img"
+tools:
+  qemu: /usr/bin/qemu-system-arm
+imports:
+  -  ../strategy.py
diff --git a/test/arm/qemu_virt64_defconfig.yaml b/test/arm/qemu_virt64_defconfig.yaml
new file mode 100644
index 000000000000..ed308591da53
--- /dev/null
+++ b/test/arm/qemu_virt64_defconfig.yaml
@@ -0,0 +1,24 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: virt
+        cpu: cortex-a57
+        memory: 1024M
+        kernel: barebox-dt-2nd.img
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+    runner:
+      tuxmake_arch: arm64
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+tools:
+  qemu: /usr/bin/qemu-system-aarch64
+imports:
+  -  ../strategy.py
diff --git a/test/arm/vexpress_defconfig.yaml b/test/arm/vexpress_defconfig.yaml
new file mode 120000
index 000000000000..732f51b19dc9
--- /dev/null
+++ b/test/arm/vexpress_defconfig.yaml
@@ -0,0 +1 @@
+a9@vexpress_defconfig.yaml
\ No newline at end of file
diff --git a/test/arm/virt@vexpress_defconfig.yaml b/test/arm/virt@vexpress_defconfig.yaml
new file mode 100644
index 000000000000..66ecf20690d1
--- /dev/null
+++ b/test/arm/virt@vexpress_defconfig.yaml
@@ -0,0 +1,22 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: virt
+        cpu: cortex-a7
+        memory: 1024M
+        kernel: barebox-dt-2nd.img
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+tools:
+  qemu: /usr/bin/qemu-system-arm
+imports:
+  -  ../strategy.py
diff --git a/test/kconfig/virtio-pci.cfg b/test/kconfig/virtio-pci.cfg
new file mode 100644
index 000000000000..78237b8fca26
--- /dev/null
+++ b/test/kconfig/virtio-pci.cfg
@@ -0,0 +1,6 @@
+CONFIG_VIRTIO_MENU=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_CONSOLE=y
+CONFIG_VIRTIO_BLK=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
diff --git a/test/mips/be@qemu-malta_defconfig.yaml b/test/mips/be@qemu-malta_defconfig.yaml
new file mode 100644
index 000000000000..774023cd8451
--- /dev/null
+++ b/test/mips/be@qemu-malta_defconfig.yaml
@@ -0,0 +1,22 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: malta
+        cpu: M14Kc
+        memory: 256M
+        bios: barebox-qemu-malta.img
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-pci
+images:
+  barebox-qemu-malta.img: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img"
+tools:
+  qemu: /usr/bin/qemu-system-mips
+imports:
+  -  ../strategy.py
diff --git a/test/mips/le@qemu-malta_defconfig.yaml b/test/mips/le@qemu-malta_defconfig.yaml
new file mode 100644
index 000000000000..8fc8c4dae925
--- /dev/null
+++ b/test/mips/le@qemu-malta_defconfig.yaml
@@ -0,0 +1,25 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: malta
+        cpu: M14Kc
+        memory: 256M
+        bios: barebox-qemu-malta.img.swapped
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-pci
+    runner:
+      kconfig_add:
+        - CONFIG_CPU_LITTLE_ENDIAN=y
+images:
+  barebox-qemu-malta.img.swapped: !template "$LG_BUILDDIR/images/barebox-qemu-malta.img.swapped"
+tools:
+  qemu: /usr/bin/qemu-system-mipsel
+imports:
+  -  ../strategy.py
diff --git a/test/mips/qemu-malta_defconfig.yaml b/test/mips/qemu-malta_defconfig.yaml
new file mode 120000
index 000000000000..481b6e547782
--- /dev/null
+++ b/test/mips/qemu-malta_defconfig.yaml
@@ -0,0 +1 @@
+be@qemu-malta_defconfig.yaml
\ No newline at end of file
diff --git a/test/openrisc/generic_defconfig.yaml b/test/openrisc/generic_defconfig.yaml
new file mode 100644
index 000000000000..0a2d4a7a18a0
--- /dev/null
+++ b/test/openrisc/generic_defconfig.yaml
@@ -0,0 +1,20 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: or1k-sim
+        cpu: or1200
+        memory: 256M
+        kernel: barebox
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+images:
+  barebox: !template "$LG_BUILDDIR/barebox"
+tools:
+  qemu: /usr/bin/qemu-system-or1k
+imports:
+  -  ../strategy.py
diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
new file mode 100644
index 000000000000..5c602635d4c5
--- /dev/null
+++ b/test/riscv/qemu@virt32_defconfig.yaml
@@ -0,0 +1,27 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: virt
+        cpu: rv32
+        memory: 256M
+        kernel: barebox-dt-2nd.img
+        bios: opensbi-riscv32-generic-fw_dynamic.bin
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+    runner:
+      download:
+        opensbi-riscv32-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+  opensbi-riscv32-generic-fw_dynamic.bin: !template "$LG_BUILDDIR/opensbi-riscv32-generic-fw_dynamic.bin"
+tools:
+  qemu: /usr/bin/qemu-system-riscv32
+imports:
+  -  ../strategy.py
diff --git a/test/riscv/qemu@virt64_defconfig.yaml b/test/riscv/qemu@virt64_defconfig.yaml
new file mode 100644
index 000000000000..fefbd20e5c99
--- /dev/null
+++ b/test/riscv/qemu@virt64_defconfig.yaml
@@ -0,0 +1,27 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: virt
+        cpu: rv64
+        memory: 256M
+        kernel: barebox-dt-2nd.img
+        bios: opensbi-riscv64-generic-fw_dynamic.bin
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+    runner:
+      download:
+        opensbi-riscv64-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv64-generic-fw_dynamic.bin?raw=true
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+  opensbi-riscv64-generic-fw_dynamic.bin: !template "$LG_BUILDDIR/opensbi-riscv64-generic-fw_dynamic.bin"
+tools:
+  qemu: /usr/bin/qemu-system-riscv64
+imports:
+  -  ../strategy.py
diff --git a/test/riscv/sifive_defconfig.yaml b/test/riscv/sifive_defconfig.yaml
new file mode 100644
index 000000000000..f7299453a499
--- /dev/null
+++ b/test/riscv/sifive_defconfig.yaml
@@ -0,0 +1,25 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: sifive_u
+        cpu: sifive-u54
+        memory: 256M
+        kernel: barebox-hifive-unleashed.img
+        bios: opensbi-riscv64-generic-fw_dynamic.bin
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    runner:
+      download:
+        opensbi-riscv64-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv64-generic-fw_dynamic.bin?raw=true
+images:
+  barebox-hifive-unleashed.img: !template "$LG_BUILDDIR/images/barebox-hifive-unleashed.img"
+  opensbi-riscv64-generic-fw_dynamic.bin: !template "$LG_BUILDDIR/opensbi-riscv64-generic-fw_dynamic.bin"
+tools:
+  qemu: /usr/bin/qemu-system-riscv64
+imports:
+  -  ../strategy.py
diff --git a/test/riscv/tinyemu@virt32_defconfig.yaml b/test/riscv/tinyemu@virt32_defconfig.yaml
new file mode 100644
index 000000000000..1102f36aca2b
--- /dev/null
+++ b/test/riscv/tinyemu@virt32_defconfig.yaml
@@ -0,0 +1,22 @@
+targets:
+  main:
+    drivers:
+      TinyEMUDriver: # not yet supported by labgrid, only for interactive use
+        temu_bin: temu
+        config: ./Documentation/boards/riscv/barebox-virt32.cfg
+        image: barebox-dt-2nd.img
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+    runner:
+      download:
+        bbl32.bin: https://barebox.org/jsbarebox/bbl32.bin
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+tools:
+  temu: /usr/local/bin/temu
+imports:
+  -  ../strategy.py
diff --git a/test/riscv/tinyemu@virt64_defconfig.yaml b/test/riscv/tinyemu@virt64_defconfig.yaml
new file mode 100644
index 000000000000..e9624160ef0a
--- /dev/null
+++ b/test/riscv/tinyemu@virt64_defconfig.yaml
@@ -0,0 +1,22 @@
+targets:
+  main:
+    drivers:
+      TinyEMUDriver: # not yet supported by labgrid, only for interactive use
+        temu_bin: temu
+        config: ./Documentation/boards/riscv/barebox-virt64.cfg
+        image: barebox-dt-2nd.img
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+    runner:
+      download:
+        bbl64.bin: https://barebox.org/jsbarebox/bbl64.bin
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+tools:
+  temu: /usr/local/bin/temu
+imports:
+  -  ../strategy.py
diff --git a/test/riscv/virt32_defconfig.yaml b/test/riscv/virt32_defconfig.yaml
new file mode 120000
index 000000000000..e9d7237f5339
--- /dev/null
+++ b/test/riscv/virt32_defconfig.yaml
@@ -0,0 +1 @@
+qemu@virt32_defconfig.yaml
\ No newline at end of file
diff --git a/test/riscv/virt64_defconfig.yaml b/test/riscv/virt64_defconfig.yaml
new file mode 120000
index 000000000000..ab419d5e7fb4
--- /dev/null
+++ b/test/riscv/virt64_defconfig.yaml
@@ -0,0 +1 @@
+qemu@virt64_defconfig.yaml
\ No newline at end of file
diff --git a/test/sandbox/sandbox_defconfig.yaml b/test/sandbox/sandbox_defconfig.yaml
new file mode 100644
index 000000000000..784f49146605
--- /dev/null
+++ b/test/sandbox/sandbox_defconfig.yaml
@@ -0,0 +1,12 @@
+targets:
+  main:
+    drivers:
+      NativeExecutableDriver: # not yet supported by labgrid, only for interactive use
+        command: ./barebox
+        image: barebox
+    runner:
+      tuxmake_arch: um
+images:
+  barebox: !template "$LG_BUILDDIR/barebox"
+tools:
+  qemu: /usr/local/bin/temu
diff --git a/test/x86/efi_defconfig.yaml b/test/x86/efi_defconfig.yaml
new file mode 120000
index 000000000000..942dc259d56b
--- /dev/null
+++ b/test/x86/efi_defconfig.yaml
@@ -0,0 +1 @@
+pc@efi_defconfig.yaml
\ No newline at end of file
diff --git a/test/x86/pc@efi_defconfig.yaml b/test/x86/pc@efi_defconfig.yaml
new file mode 100644
index 000000000000..280f5dcee9a6
--- /dev/null
+++ b/test/x86/pc@efi_defconfig.yaml
@@ -0,0 +1,31 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: pc
+        cpu: Nehalem
+        memory: 1024M
+        kernel: barebox.efi
+        bios: OVMF.fd
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - pci
+    runner:
+      tuxmake_arch: x86_64
+      kconfig_add:
+        - CONFIG_DRIVER_SERIAL_NS16550=y
+        - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
+      download:
+        OVMF.fd: /usr/share/qemu/OVMF.fd
+images:
+  barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
+  OVMF.fd: !template "$LG_BUILDDIR/OVMF.fd"
+tools:
+  qemu: /usr/bin/qemu-system-x86_64
+imports:
+  -  ../strategy.py
diff --git a/test/x86/q35@efi_defconfig.yaml b/test/x86/q35@efi_defconfig.yaml
new file mode 100644
index 000000000000..dcb3f604c0ac
--- /dev/null
+++ b/test/x86/q35@efi_defconfig.yaml
@@ -0,0 +1,31 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: q35
+        cpu: Nehalem
+        memory: 1024M
+        kernel: barebox.efi
+        bios: OVMF.fd
+        extra_args: -global ICH9-LPC.noreboot=false
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - pci
+    runner:
+      tuxmake_arch: x86_64
+      kconfig_add:
+        - CONFIG_DRIVER_SERIAL_NS16550=y
+        - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
+      download:
+        OVMF.fd: /usr/share/qemu/OVMF.fd
+images:
+  barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
+  OVMF.fd: !template "$LG_BUILDDIR/OVMF.fd"
+tools:
+  qemu: /usr/bin/qemu-system-x86_64
+imports:
+  -  ../strategy.py
diff --git a/test/x86/virtio@efi_defconfig.yaml b/test/x86/virtio@efi_defconfig.yaml
new file mode 100644
index 000000000000..326fcbc68999
--- /dev/null
+++ b/test/x86/virtio@efi_defconfig.yaml
@@ -0,0 +1,32 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: pc
+        cpu: Nehalem
+        memory: 1024M
+        kernel: barebox.efi
+        bios: OVMF.fd
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-pci
+    runner:
+      tuxmake_arch: x86_64
+      kconfig_add:
+        - test/kconfig/virtio-pci.cfg
+        - CONFIG_DRIVER_SERIAL_NS16550=y
+        - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
+      download:
+        OVMF.fd: /usr/share/qemu/OVMF.fd
+images:
+  barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
+  OVMF.fd: !template "$LG_BUILDDIR/OVMF.fd"
+tools:
+  qemu: /usr/bin/qemu-system-x86_64
+imports:
+  -  ../strategy.py
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

