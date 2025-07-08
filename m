Delivery-date: Tue, 08 Jul 2025 22:09:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEch-00FTK0-0k
	for lore@lore.pengutronix.de;
	Tue, 08 Jul 2025 22:09:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEcg-0002Fw-33
	for lore@pengutronix.de; Tue, 08 Jul 2025 22:09:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nkFYazz6iWSTM6xAYXYMEEveugC4IjEYNX+Ysl+1xYQ=; b=q5mOysy1WoyDA8tEtQtFjEdYLe
	mX0NyQXY1cgACq7RR+U/CTKXKRAQolop9LdQ2UuDp+hhOOV+1TfJRKwzpuDMvrf5s24ZlzItpSN7G
	Da+TkEAj5sNuvvzweXEcpfPlCwqNNmfV3XtHWa1oHb0Icbz2tQJ0HgMYr1jFHfUGMSR2ZJOjod1ZZ
	6RZ1WLjUr1nE56sF5if0XT2U5E/tJ8gFb4izMLMRuxpQVao3uq9CG/dVy4lI2i5wWpNgOb4I5LPT1
	D3G4VpK9IyTBS6Iwbqs0MO4gDS2LHfoCpaB1BEFMJMWN82cMyui+g8yg1VEHx+o+vVk+XZpdIhZZs
	58v7D24Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEc6-00000006Smn-2tU7;
	Tue, 08 Jul 2025 20:08:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZE6o-00000006M34-31K0
	for barebox@lists.infradead.org;
	Tue, 08 Jul 2025 19:36:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uZE6l-0008Qx-Kv; Tue, 08 Jul 2025 21:36:03 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Dang Huynh <danct12@riseup.net>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  8 Jul 2025 21:36:00 +0200
Message-Id: <20250708193600.758772-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250708193600.758772-1-a.fatoum@barebox.org>
References: <20250708193600.758772-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_123607_062432_F2369833 
X-CRM114-Status: GOOD (  13.96  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] test: add support for pytest --graphic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This new option will take care to provide a suitable graphics device.
How it's displayed can be customized via --qemu -display $OUTPUT.

For this to work, we must instruct labgrid not to set -nographic or
-display itself, which is possible via setting qemu-default since
Labgrid v25.0.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/boards/emulated.rst             |  3 +++
 conftest.py                                   | 20 ++++++++++++++++++-
 test/arm/a15@multi_v7_defconfig.yaml          |  1 +
 test/arm/a9@multi_v7_defconfig.yaml           |  1 +
 .../qemu-raspi0@multi_v5_v6_defconfig.yaml    |  1 +
 .../qemu-raspi1ap@multi_v5_v6_defconfig.yaml  |  1 +
 test/arm/qemu-raspi2b@multi_v7_defconfig.yaml |  1 +
 test/arm/qemu-raspi3b@multi_v8_defconfig.yaml |  1 +
 .../qemu-sabrelite@multi_v7_defconfig.yaml    |  1 +
 test/arm/virt@multi_v7_defconfig.yaml         |  1 +
 test/arm/virt@multi_v8_defconfig.yaml         |  1 +
 test/mips/be@qemu-malta_defconfig.yaml        |  1 +
 test/mips/qemu-malta64el_defconfig.yaml       |  1 +
 test/mips/qemu-maltael_defconfig.yaml         |  1 +
 test/openrisc/generic_defconfig.yaml          |  1 +
 test/riscv/qemu-virt64@rv64i_defconfig.yaml   |  1 +
 test/riscv/qemu@virt32_defconfig.yaml         |  1 +
 test/riscv/sifive@rv64i_defconfig.yaml        |  1 +
 test/x86/pc@efi_defconfig.yaml                |  1 +
 test/x86/q35@efi_defconfig.yaml               |  1 +
 test/x86/virtio@efi_defconfig.yaml            |  1 +
 21 files changed, 41 insertions(+), 1 deletion(-)

diff --git a/Documentation/boards/emulated.rst b/Documentation/boards/emulated.rst
index 602def560120..dbc869546e2f 100644
--- a/Documentation/boards/emulated.rst
+++ b/Documentation/boards/emulated.rst
@@ -59,6 +59,9 @@ more easily::
   # Run tests and pass a block device (here /dev/virtioblk0)
   pytest --lg-env test/arm/virt@multi_v8_defconfig.yaml --blk=rootfs.ext4
 
+  # Run interactively with graphics output
+  pytest --lg-env test/mips/qemu-malta_defconfig.yaml --interactive --graphics
+
 For testing, the QEMU fw_cfg and virtfs support is particularly useful::
 
   # inject boot.sh file in working directory into barebox environment
diff --git a/conftest.py b/conftest.py
index 0cdae2126bfd..9131b843d4e4 100644
--- a/conftest.py
+++ b/conftest.py
@@ -51,6 +51,8 @@ def pytest_addoption(parser):
     parser.addoption('--dump-dtb', action='store_const', const='qemu_dump_dtb',
         dest='lg_initial_state',
         help=('(for debugging) skip tests and just dump the Qemu device tree'))
+    parser.addoption('--graphic', '--graphics', action='store_true', dest='qemu_graphics',
+        help=('enable QEMU graphics output'))
     parser.addoption('--rng', action='count', dest='qemu_rng',
         help=('instantiate Virt I/O random number generator'))
     parser.addoption('--console', action='count', dest='qemu_console', default=0,
@@ -77,9 +79,12 @@ def strategy(request, target, pytestconfig):
         pytest.exit(e)
 
     try:
-        features = target.env.config.data["targets"]["main"]["features"]
+        main = target.env.config.data["targets"]["main"]
+        features = main["features"]
+        qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
     except KeyError:
         features = []
+        qemu_bin = None
 
     virtio = None
 
@@ -111,6 +116,19 @@ def strategy(request, target, pytestconfig):
         else:
             pytest.exit("barebox currently supports only a single extra virtio console\n", 1)
 
+    graphics = None
+    if pytestconfig.option.qemu_graphics:
+        if qemu_bin == "qemu-system-x86_64":
+            graphics = '-device isa-vga'
+        elif 'pci' in features:
+            graphics = '-device VGA'
+        elif virtio:
+            graphics = '-vga none -device ramfb'
+        else:
+            pytest.exit("--graphics unsupported for target\n", 1)
+
+    strategy.append_qemu_args(graphics or '-nographic')
+
     for i, blk in enumerate(pytestconfig.option.qemu_block):
         if virtio:
             strategy.append_qemu_args(
diff --git a/test/arm/a15@multi_v7_defconfig.yaml b/test/arm/a15@multi_v7_defconfig.yaml
index c7c3e3b0af49..d62c8e5c414f 100644
--- a/test/arm/a15@multi_v7_defconfig.yaml
+++ b/test/arm/a15@multi_v7_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: cortex-a15
         memory: 1024M
         bios: barebox-vexpress-ca15.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/a9@multi_v7_defconfig.yaml b/test/arm/a9@multi_v7_defconfig.yaml
index 21ce4202cf90..6b5528978831 100644
--- a/test/arm/a9@multi_v7_defconfig.yaml
+++ b/test/arm/a9@multi_v7_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: cortex-a9
         memory: 1024M
         bios: barebox-vexpress-ca9.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml b/test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml
index 9cad68225e1e..f9480a44b5f5 100644
--- a/test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml
+++ b/test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: arm1176
         memory: 512M
         kernel: barebox-raspberry-pi.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml b/test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml
index cbd0686ebd71..62bbd20b6d56 100644
--- a/test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml
+++ b/test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: arm1176
         memory: 512M
         kernel: barebox-raspberry-pi.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml b/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml
index 6dc91984ecca..d6841d8d65d9 100644
--- a/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml
+++ b/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: cortex-a7
         memory: 1G
         kernel: barebox-raspberry-pi.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/qemu-raspi3b@multi_v8_defconfig.yaml b/test/arm/qemu-raspi3b@multi_v8_defconfig.yaml
index 4f591ba21596..fddd19757094 100644
--- a/test/arm/qemu-raspi3b@multi_v8_defconfig.yaml
+++ b/test/arm/qemu-raspi3b@multi_v8_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: cortex-a53
         memory: 1G
         kernel: barebox-raspberry-pi.img
+        display: qemu-default
         extra_args: "\
           -serial chardev:serial2 \
           -chardev socket,id=serial2,host=localhost,port=2302,nodelay=on,server=on,wait=off"
diff --git a/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml b/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
index 8dc137ee44dc..ee146018f29c 100644
--- a/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
+++ b/test/arm/qemu-sabrelite@multi_v7_defconfig.yaml
@@ -8,6 +8,7 @@ targets:
         memory: 1024M
         kernel: barebox-dt-2nd.img
         dtb: imx6q-sabreliste.dtb
+        display: qemu-default
         extra_args: '-nographic -serial null'
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
diff --git a/test/arm/virt@multi_v7_defconfig.yaml b/test/arm/virt@multi_v7_defconfig.yaml
index d22b67cb31a8..891581205898 100644
--- a/test/arm/virt@multi_v7_defconfig.yaml
+++ b/test/arm/virt@multi_v7_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: cortex-a7
         memory: 1024M
         kernel: barebox-dt-2nd.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index 0c73591e4513..46caf8820f00 100644
--- a/test/arm/virt@multi_v8_defconfig.yaml
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: cortex-a57
         memory: 1024M
         kernel: barebox-dt-2nd.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/mips/be@qemu-malta_defconfig.yaml b/test/mips/be@qemu-malta_defconfig.yaml
index 2f6de8a43a8f..a3d34a660dfb 100644
--- a/test/mips/be@qemu-malta_defconfig.yaml
+++ b/test/mips/be@qemu-malta_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: M14Kc
         memory: 256M
         bios: barebox-qemu-malta.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
index 61318f491aa8..5562f59dc7d5 100644
--- a/test/mips/qemu-malta64el_defconfig.yaml
+++ b/test/mips/qemu-malta64el_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: 5KEf
         memory: 256M
         bios: barebox-qemu-malta.img.swapped
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/mips/qemu-maltael_defconfig.yaml b/test/mips/qemu-maltael_defconfig.yaml
index 0571d1b4d495..6cfe99a01633 100644
--- a/test/mips/qemu-maltael_defconfig.yaml
+++ b/test/mips/qemu-maltael_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: M14Kc
         memory: 256M
         bios: barebox-qemu-malta.img.swapped
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/openrisc/generic_defconfig.yaml b/test/openrisc/generic_defconfig.yaml
index 3d2cd5f9550f..16310093bc0b 100644
--- a/test/openrisc/generic_defconfig.yaml
+++ b/test/openrisc/generic_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: or1200
         memory: 256M
         kernel: barebox
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/riscv/qemu-virt64@rv64i_defconfig.yaml b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
index f6497de85e54..7f86d9ac7de0 100644
--- a/test/riscv/qemu-virt64@rv64i_defconfig.yaml
+++ b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: rv64
         memory: 256M
         kernel: barebox-dt-2nd.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
index 58a4f918958b..7860e97c5260 100644
--- a/test/riscv/qemu@virt32_defconfig.yaml
+++ b/test/riscv/qemu@virt32_defconfig.yaml
@@ -8,6 +8,7 @@ targets:
         memory: 256M
         kernel: barebox-dt-2nd.img
         bios: opensbi-riscv32-generic-fw_dynamic.bin
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/riscv/sifive@rv64i_defconfig.yaml b/test/riscv/sifive@rv64i_defconfig.yaml
index a35229bddb34..0b90507f9c3e 100644
--- a/test/riscv/sifive@rv64i_defconfig.yaml
+++ b/test/riscv/sifive@rv64i_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: sifive-u54
         memory: 256M
         kernel: barebox-hifive-unleashed.img
+        display: qemu-default
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/x86/pc@efi_defconfig.yaml b/test/x86/pc@efi_defconfig.yaml
index ae06fbf69744..632e72ea7bd9 100644
--- a/test/x86/pc@efi_defconfig.yaml
+++ b/test/x86/pc@efi_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: Nehalem
         memory: 1024M
         kernel: barebox.efi
+        display: qemu-default
         extra_args: '-bios OVMF.fd'
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
diff --git a/test/x86/q35@efi_defconfig.yaml b/test/x86/q35@efi_defconfig.yaml
index 578a3654fe9b..be56a36151c6 100644
--- a/test/x86/q35@efi_defconfig.yaml
+++ b/test/x86/q35@efi_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: Nehalem
         memory: 1024M
         kernel: barebox.efi
+        display: qemu-default
         extra_args: '-bios OVMF.fd -global ICH9-LPC.noreboot=false'
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
diff --git a/test/x86/virtio@efi_defconfig.yaml b/test/x86/virtio@efi_defconfig.yaml
index 9ff4ff5a4e5a..0f6b8d2b17de 100644
--- a/test/x86/virtio@efi_defconfig.yaml
+++ b/test/x86/virtio@efi_defconfig.yaml
@@ -7,6 +7,7 @@ targets:
         cpu: Nehalem
         memory: 1024M
         kernel: barebox.efi
+        display: qemu-default
         extra_args: '-bios OVMF.fd'
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
-- 
2.39.5



