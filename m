Delivery-date: Mon, 12 Apr 2021 09:20:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqrn-0003jL-7Y
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:20:15 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqrl-0005Tn-9J
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:20:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ujBE7znA9xML2N9S5qX7XgvmDqE16a4e873LFNoYDUs=; b=cQAI7hfZ1bD56HfyBuaEbUlFu
	PGw8t3nhV+piRHFGjJVJqzHv2/rq25qlSwBwJNdbqvy38a2U8FHD8sIOSGIceaOqT6q0u8yqYYLeD
	eVm5ODxob5CdK7hDaTSHnSmUx2DDuesvXM/PxJB+No2YmIneAyzOAAa037s4vHOTzGm7Ik8FTvUHh
	WeZE2IaKArQ8vWdqZoRG/Ie5gjEdhdQFMj4VAPdk/a42LetCfXPODVQau3g2UQDipoVLrUHja4NGe
	8EUo2U8v32aZz/Bdb+PWdGjLcU2QtvYljVHWsSx1LFEQZlT/DewvkORzwW7iYTEYtTf3mtHyuSxKF
	0jo0T3qTw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqqY-005whR-0R; Mon, 12 Apr 2021 07:18:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqow-005vxe-Pi
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=noygv8AnArXN4wvan+i2sTnIYGextPrAlbnZM3wffDk=; b=uEYcQa8HP9Q+en1mHIQEGtiDL4
 Kfjmyk5+BOUU7X9+EG37xefXbbjpi9MPIqFsBUPEDfJ8ncXMX2zRnoId3egoo4VVjL5rHchq8DV9K
 VLT/JvJF/OEEeYGfENcvLajSikqwXu22fyX+aVPfmzcL9h9C061Qec7vMBZE/w9zx03Ch9mXYwEXe
 A7f0E+q5pcENBqfWFmPtB5xX4SjpnzK+2FGHeihU5FDxnYpVUGJ6er+gHerWx68Bf9/UiXpT9dglg
 EiaUxlMXKh0kHRLQEHosr8RcJuRAVykZ3qVgZJ3KMnnRyNwOVGQBA6dFQA5OscZEPBDegua9XwExF
 4apr++Kw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqor-005vIk-Tq
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HN-IG; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fq-Be; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:45 +0200
Message-Id: <20210412071651.8769-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001714_314700_BAF521E3 
X-CRM114-Status: GOOD (  13.60  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/17] test: add labgrid configs for some emulated targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are various ways barebox can run under emulation, some of them are
described in the documentation and some more in the git history.

Make running the emulators more convenient to use by collecting some
known-good emulator invocations in a machine readable format.

These YAML files can be parsed by labgrid for running tests or executed
by a new test/emulate.pl runner script that will be added in a follow-up
commit.

Using labgrid for this will allow reusing the same test suite for physical
targets as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/a15@vexpress_defconfig.yaml     | 25 +++++++++++++++++
 test/arm/a9@vexpress_defconfig.yaml      | 25 +++++++++++++++++
 test/arm/qemu_virt64_defconfig.yaml      | 28 +++++++++++++++++++
 test/arm/vexpress_defconfig.yaml         |  1 +
 test/arm/virt@vexpress_defconfig.yaml    | 26 ++++++++++++++++++
 test/kconfig/virtio-pci.cfg              |  6 +++++
 test/mips/be@qemu-malta_defconfig.yaml   | 26 ++++++++++++++++++
 test/mips/le@qemu-malta_defconfig.yaml   | 29 ++++++++++++++++++++
 test/mips/qemu-malta_defconfig.yaml      |  1 +
 test/openrisc/generic_defconfig.yaml     | 25 +++++++++++++++++
 test/riscv/qemu@virt32_defconfig.yaml    | 29 ++++++++++++++++++++
 test/riscv/qemu@virt64_defconfig.yaml    | 29 ++++++++++++++++++++
 test/riscv/tinyemu@virt32_defconfig.yaml | 26 ++++++++++++++++++
 test/riscv/tinyemu@virt64_defconfig.yaml | 26 ++++++++++++++++++
 test/riscv/virt32_defconfig.yaml         |  1 +
 test/riscv/virt64_defconfig.yaml         |  1 +
 test/sandbox/sandbox_defconfig.yaml      | 14 ++++++++++
 test/x86/efi_defconfig.yaml              |  1 +
 test/x86/pc@efi_defconfig.yaml           | 33 +++++++++++++++++++++++
 test/x86/q35@efi_defconfig.yaml          | 34 ++++++++++++++++++++++++
 test/x86/virtio@efi_defconfig.yaml       | 34 ++++++++++++++++++++++++
 21 files changed, 420 insertions(+)
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
index 000000000000..775a98fc6b99
--- /dev/null
+++ b/test/arm/a15@vexpress_defconfig.yaml
@@ -0,0 +1,25 @@
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
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+images:
+  barebox-vexpress-ca15.img: ../../images/barebox-vexpress-ca15.img
+tools:
+  qemu: /usr/bin/qemu-system-arm
diff --git a/test/arm/a9@vexpress_defconfig.yaml b/test/arm/a9@vexpress_defconfig.yaml
new file mode 100644
index 000000000000..b47f401f0fb6
--- /dev/null
+++ b/test/arm/a9@vexpress_defconfig.yaml
@@ -0,0 +1,25 @@
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
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+images:
+  barebox-vexpress-ca9.img: ../../images/barebox-vexpress-ca9.img
+tools:
+  qemu: /usr/bin/qemu-system-arm
diff --git a/test/arm/qemu_virt64_defconfig.yaml b/test/arm/qemu_virt64_defconfig.yaml
new file mode 100644
index 000000000000..c13d94c4a1f4
--- /dev/null
+++ b/test/arm/qemu_virt64_defconfig.yaml
@@ -0,0 +1,28 @@
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
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - virtio-mmio
+    runner:
+      tuxmake_arch: arm64
+images:
+  barebox-dt-2nd.img: ../../images/barebox-dt-2nd.img
+tools:
+  qemu: /usr/bin/qemu-system-aarch64
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
index 000000000000..c2c2c486ec3b
--- /dev/null
+++ b/test/arm/virt@vexpress_defconfig.yaml
@@ -0,0 +1,26 @@
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
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - virtio-mmio
+images:
+  barebox-dt-2nd.img: ../../images/barebox-dt-2nd.img
+tools:
+  qemu: /usr/bin/qemu-system-arm
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
index 000000000000..b81de0685813
--- /dev/null
+++ b/test/mips/be@qemu-malta_defconfig.yaml
@@ -0,0 +1,26 @@
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
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - virtio-pci
+images:
+  barebox-qemu-malta.img: ../../images/barebox-qemu-malta.img
+tools:
+  qemu: /usr/bin/qemu-system-mips
diff --git a/test/mips/le@qemu-malta_defconfig.yaml b/test/mips/le@qemu-malta_defconfig.yaml
new file mode 100644
index 000000000000..9c49a5bf5c8b
--- /dev/null
+++ b/test/mips/le@qemu-malta_defconfig.yaml
@@ -0,0 +1,29 @@
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
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - virtio-pci
+    runner:
+      kconfig_add:
+        - CONFIG_CPU_LITTLE_ENDIAN=y
+images:
+  barebox-qemu-malta.img.swapped: ../../images/barebox-qemu-malta.img.swapped
+tools:
+  qemu: /usr/bin/qemu-system-mipsel
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
index 000000000000..94ae160206d5
--- /dev/null
+++ b/test/openrisc/generic_defconfig.yaml
@@ -0,0 +1,25 @@
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
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+images:
+  barebox: ../../barebox
+tools:
+  qemu: /usr/bin/qemu-system-or1k
diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
new file mode 100644
index 000000000000..36943add5801
--- /dev/null
+++ b/test/riscv/qemu@virt32_defconfig.yaml
@@ -0,0 +1,29 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: virt
+        cpu: rv32
+        memory: 256M
+        kernel: barebox-dt-2nd.img
+        extra_args: -bios opensbi-riscv32-generic-fw_dynamic.bin
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - virtio-mmio
+    runner:
+      download:
+        opensbi-riscv32-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true
+images:
+  barebox-dt-2nd.img: ../../images/barebox-dt-2nd.img
+tools:
+  qemu: /usr/bin/qemu-system-riscv32
diff --git a/test/riscv/qemu@virt64_defconfig.yaml b/test/riscv/qemu@virt64_defconfig.yaml
new file mode 100644
index 000000000000..da296f2aa6f2
--- /dev/null
+++ b/test/riscv/qemu@virt64_defconfig.yaml
@@ -0,0 +1,29 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: virt
+        cpu: rv64
+        memory: 256M
+        kernel: barebox-dt-2nd.img
+        extra_args: -bios opensbi-riscv64-generic-fw_dynamic.bin
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - virtio-mmio
+    runner:
+      download:
+        opensbi-riscv64-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv64-generic-fw_dynamic.bin?raw=true
+images:
+  barebox-dt-2nd.img: ../../images/barebox-dt-2nd.img
+tools:
+  qemu: /usr/bin/qemu-system-riscv64
diff --git a/test/riscv/tinyemu@virt32_defconfig.yaml b/test/riscv/tinyemu@virt32_defconfig.yaml
new file mode 100644
index 000000000000..444642d6c1ce
--- /dev/null
+++ b/test/riscv/tinyemu@virt32_defconfig.yaml
@@ -0,0 +1,26 @@
+targets:
+  main:
+    drivers:
+      TinyEMUDriver:
+        temu_bin: temu
+        config: ./Documentation/boards/riscv/barebox-virt32.cfg
+        image: barebox-dt-2nd.img
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - virtio-mmio
+    runner:
+      download:
+        bbl32.bin: https://barebox.org/jsbarebox/bbl32.bin
+images:
+  barebox-dt-2nd.img: ../../images/barebox-dt-2nd.img
+tools:
+  temu: /usr/local/bin/temu
diff --git a/test/riscv/tinyemu@virt64_defconfig.yaml b/test/riscv/tinyemu@virt64_defconfig.yaml
new file mode 100644
index 000000000000..e89521b14fdf
--- /dev/null
+++ b/test/riscv/tinyemu@virt64_defconfig.yaml
@@ -0,0 +1,26 @@
+targets:
+  main:
+    drivers:
+      TinyEMUDriver:
+        temu_bin: temu
+        config: ./Documentation/boards/riscv/barebox-virt64.cfg
+        image: barebox-dt-2nd.img
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - virtio-mmio
+    runner:
+      download:
+        bbl64.bin: https://barebox.org/jsbarebox/bbl64.bin
+images:
+  barebox-dt-2nd.img: ../../images/barebox-dt-2nd.img
+tools:
+  temu: /usr/local/bin/temu
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
index 000000000000..b9596f1012c8
--- /dev/null
+++ b/test/sandbox/sandbox_defconfig.yaml
@@ -0,0 +1,14 @@
+targets:
+  main:
+    drivers:
+      NativeExecutableDriver:
+        command: ./barebox
+        image: barebox
+    features:
+      - barebox
+    runner:
+      tuxmake_arch: um
+images:
+  barebox: ../../barebox
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
index 000000000000..1f06ddccb177
--- /dev/null
+++ b/test/x86/pc@efi_defconfig.yaml
@@ -0,0 +1,33 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: pc
+        cpu: Nehalem
+        memory: 1024M
+        kernel: barebox.efi
+        extra_args: -bios OVMF.fd
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - pci
+    runner:
+      tuxmake_arch: x86_64
+      kconfig_add:
+        - CONFIG_DRIVER_SERIAL_NS16550=y
+        - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
+      download:
+        OVMF.fd: /usr/share/qemu/OVMF.fd
+images:
+  barebox.efi: ../../barebox.efi
+tools:
+  qemu: /usr/bin/qemu-system-x86_64
diff --git a/test/x86/q35@efi_defconfig.yaml b/test/x86/q35@efi_defconfig.yaml
new file mode 100644
index 000000000000..6b0f0cc1a870
--- /dev/null
+++ b/test/x86/q35@efi_defconfig.yaml
@@ -0,0 +1,34 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: q35
+        cpu: Nehalem
+        memory: 1024M
+        kernel: barebox.efi
+        extra_args: >
+          -bios OVMF.fd -global ICH9-LPC.noreboot=false
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
+      - pci
+    runner:
+        tuxmake_arch: x86_64
+        kconfig_add:
+            - CONFIG_DRIVER_SERIAL_NS16550=y
+            - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
+        download:
+            OVMF.fd: /usr/share/qemu/OVMF.fd
+images:
+  barebox.efi: ../../barebox.efi
+tools:
+  qemu: /usr/bin/qemu-system-x86_64
diff --git a/test/x86/virtio@efi_defconfig.yaml b/test/x86/virtio@efi_defconfig.yaml
new file mode 100644
index 000000000000..ab99e812eb93
--- /dev/null
+++ b/test/x86/virtio@efi_defconfig.yaml
@@ -0,0 +1,34 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu
+        machine: pc
+        cpu: Nehalem
+        memory: 1024M
+        kernel: barebox.efi
+        extra_args: -bios OVMF.fd
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      ShellDriver:
+        prompt: 'root@\w+:[^ ]+ '
+        login_prompt: ' login: '
+        login_timeout: 90
+        username: 'root'
+      BareboxStrategy: {}
+    features:
+      - barebox
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
+  barebox.efi: ../../barebox.efi
+tools:
+  qemu: /usr/bin/qemu-system-x86_64
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

