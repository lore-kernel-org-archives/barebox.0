Delivery-date: Mon, 16 Feb 2026 09:50:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruJT-002GL0-13
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:50:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruJT-0003Gu-KG
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:50:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DSrovn5DRCAdb4Wgxp11Hx02A5vWpHAyHQACP3Qm3ws=; b=gjo94I5N/uxLKpAtKLM6eeDV1J
	F+p4q/dXDobSUXlGY2Han0EAU+SXdizrNAnEjbgFM6fHcdcW4fKgVusaDwMehu+MJZvnwyd9VB8Vj
	E5q+I4jLlKyMttX63yNCv8zFjdBTYKPkrTqxFWvjs9K+/WeKK1NKrtV+9ZiAjpXQtUJLHzzvpIO3M
	NtvYqaCv8UmHcZVstpFqW3G3o/Jy5qwA1GVYZeL2VUmdF2rKoaE3D11FU7NE0GHkxlQHU9bNZqhb9
	SsgjwQfMBvmk1fC34npmuXwpy5Eogq3qBReAb0kjhuE0RcnUkCUB46p9ZKvnsNqWTknTk6z4jlrvy
	QLXiygtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruJ8-00000006CDa-1aDY;
	Mon, 16 Feb 2026 08:50:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruJ5-00000006CDE-1guU
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:50:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruJ3-0003DL-RD; Mon, 16 Feb 2026 09:50:13 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruJ2-0012E4-0x;
	Mon, 16 Feb 2026 09:50:13 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruJ3-0000000Evlv-2J2g;
	Mon, 16 Feb 2026 09:50:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Date: Mon, 16 Feb 2026 09:49:34 +0100
Message-ID: <20260216085011.3555633-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_005015_478707_A818B950 
X-CRM114-Status: GOOD (  10.68  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: add ARMv8 EFI app testing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add test coverage for barebox running as an EFI application on ARM64
by having barebox as EFI firmware boot barebox.efi as EFI app via
QEMU FW_CFG.

Cc: Chali Anis <chalianis1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This requires some of the fixes in the 39-patch series that was I just sent
out to be applied.
---
 .github/workflows/test-labgrid-pytest.yml |  4 +++
 test/arm/multi_v8_efi_defconfig.yaml      | 30 +++++++++++++++++++++++
 2 files changed, 34 insertions(+)
 create mode 100644 test/arm/multi_v8_efi_defconfig.yaml

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 8469a5387f22..1247ced8e0ac 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -42,6 +42,10 @@ jobs:
             defconfig: multi_v7_efiloader_defconfig
             osimg: debian-13.3.0-armhf-netinst.iso
 
+          - ARCH: arm
+            lgenv: test/arm/multi_v8_efi_defconfig.yaml
+            defconfig: multi_v8_efi_defconfig
+
           - ARCH: mips
             lgenv: test/mips/qemu-malta_defconfig.yaml
             defconfig: qemu-malta_defconfig
diff --git a/test/arm/multi_v8_efi_defconfig.yaml b/test/arm/multi_v8_efi_defconfig.yaml
new file mode 100644
index 000000000000..3848d3b34574
--- /dev/null
+++ b/test/arm/multi_v8_efi_defconfig.yaml
@@ -0,0 +1,30 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-aarch64
+        machine: virt,highmem=off
+        cpu: cortex-a57
+        memory: 1024M
+        bios: barebox-qemu-virt.img
+        kernel: barebox.efi
+        display: qemu-default
+      BareboxDriver:
+        prompt: 'barebox@(\x1b.+)?barebox EFI payload:[^ ]+ '
+        bootstring: 'Starting EFI payload at'
+        autoboot: 'stop autoboot'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+    devices:
+      wdog0: 'Parent: efi-wdt'
+      efivarfs0: 'Driver: efivarfs'
+      # efifs0: 'Driver: efifs' # TODO: ESP not detected
+    env:
+      nv/boot.default: qemu_fw_cfg
+      nv/autoboot: boot
+images:
+  barebox-qemu-virt.img: !template "$LG_BUILDDIR/images/barebox-qemu-virt.img"
+  barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
+imports:
+  -  ../strategy.py
-- 
2.47.3



