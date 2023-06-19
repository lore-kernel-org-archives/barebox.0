Delivery-date: Mon, 19 Jun 2023 11:54:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaP-00D3Ai-GO
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 11:54:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBBaM-0001zT-US
	for lore@pengutronix.de; Mon, 19 Jun 2023 11:54:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S/hdqS3byZuImpcJJPVYwj/jf+SoJLFVCCnsmxPQgPE=; b=sW5k6zAeSbTYOdgkktfbftu7ke
	0AccvCjLN9c17nzpeB8TWb8UAFXYumcfRZ9mDSOHihaAoAqi2K21awk4C5m450xDqT1hiJWmmwS/K
	GDYSP1nB24qkpLka+kj2xwQi4YWTzfI/UFlbF1VEuu6hyj54SYGXNsMH/VM39qM8ZGSaiHFEnbJLV
	ZcsHVaDsj8WRtSVGHbMJ7CuUdhtOrg3l919Jm5tJwEIBmm/ROpKiSPabZAP3z8ZpaWkczH6sAbC62
	qiKBY1oXm41GwvEWk2MWUm/uTiwWJ6C1RapZ+k0OY/Elfs61WMdn6Zt8a+6x1No8IdTUXe8C9EAbM
	LAwWjeCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZM-0085bI-1K;
	Mon, 19 Jun 2023 09:53:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBBZI-0085Zd-2i
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 09:53:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBZ1-0001at-GA; Mon, 19 Jun 2023 11:52:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYz-008Tbn-MM; Mon, 19 Jun 2023 11:52:45 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qBBYy-0004c1-1P;
	Mon, 19 Jun 2023 11:52:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Jun 2023 11:52:40 +0200
Message-Id: <20230619095240.4168216-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
References: <20230619095240.4168216-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_025305_140610_BEAB0516 
X-CRM114-Status: GOOD (  10.39  )
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
Subject: [PATCH 5/5] test: don't hardcode origin of OVMF.fd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Labgrid will look up the bios key in images, so we had an ugly
workaround of the "runner" (test/emulate.pl or script running in CI)
"downloading" /usr/share/qemu/OVMF.fd into the build directory and
referencing that.

Qemu already has a search path for BIOS images (controllable by -L),
where OVMF.fd, which would already point at /usr/share/qemu on Debian,
so let's make use of this by passing literal -bios OVMF.fd without
involving Labgrid automagic.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml | 4 ----
 test/x86/pc@efi_defconfig.yaml            | 6 +-----
 test/x86/q35@efi_defconfig.yaml           | 6 +-----
 test/x86/virtio@efi_defconfig.yaml        | 6 +-----
 4 files changed, 3 insertions(+), 19 deletions(-)

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index efbb51181b18..0f34f43e8dff 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -56,10 +56,6 @@ jobs:
         ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/enable_self_test.kconf \
                 -k test/kconfig/disable_target_tools.kconf ${{matrix.defconfig}}
 
-        if [ ${{matrix.arch}} = "x86" ]; then
-          cp /usr/share/ovmf/OVMF.fd build-${{matrix.arch}}
-        fi
-
         if [ ${{matrix.arch}} = "riscv" ]; then
           cp /usr/share/qemu/opensbi-riscv32-generic-fw_dynamic.bin build-${{matrix.arch}}
         fi
diff --git a/test/x86/pc@efi_defconfig.yaml b/test/x86/pc@efi_defconfig.yaml
index e818409703f8..ae06fbf69744 100644
--- a/test/x86/pc@efi_defconfig.yaml
+++ b/test/x86/pc@efi_defconfig.yaml
@@ -7,8 +7,7 @@ targets:
         cpu: Nehalem
         memory: 1024M
         kernel: barebox.efi
-        bios: OVMF.fd
-        extra_args: ''
+        extra_args: '-bios OVMF.fd'
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
@@ -20,10 +19,7 @@ targets:
       kconfig_add:
         - CONFIG_DRIVER_SERIAL_NS16550=y
         - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
-      download:
-        OVMF.fd: /usr/share/qemu/OVMF.fd
 images:
   barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
-  OVMF.fd: !template "$LG_BUILDDIR/OVMF.fd"
 imports:
   -  ../strategy.py
diff --git a/test/x86/q35@efi_defconfig.yaml b/test/x86/q35@efi_defconfig.yaml
index 71c44e8cd45f..578a3654fe9b 100644
--- a/test/x86/q35@efi_defconfig.yaml
+++ b/test/x86/q35@efi_defconfig.yaml
@@ -7,8 +7,7 @@ targets:
         cpu: Nehalem
         memory: 1024M
         kernel: barebox.efi
-        bios: OVMF.fd
-        extra_args: -global ICH9-LPC.noreboot=false
+        extra_args: '-bios OVMF.fd -global ICH9-LPC.noreboot=false'
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
@@ -20,10 +19,7 @@ targets:
       kconfig_add:
         - CONFIG_DRIVER_SERIAL_NS16550=y
         - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
-      download:
-        OVMF.fd: /usr/share/qemu/OVMF.fd
 images:
   barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
-  OVMF.fd: !template "$LG_BUILDDIR/OVMF.fd"
 imports:
   -  ../strategy.py
diff --git a/test/x86/virtio@efi_defconfig.yaml b/test/x86/virtio@efi_defconfig.yaml
index 389089363872..83340d19ddef 100644
--- a/test/x86/virtio@efi_defconfig.yaml
+++ b/test/x86/virtio@efi_defconfig.yaml
@@ -7,8 +7,7 @@ targets:
         cpu: Nehalem
         memory: 1024M
         kernel: barebox.efi
-        bios: OVMF.fd
-        extra_args: ''
+        extra_args: '-bios OVMF.fd'
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
@@ -21,10 +20,7 @@ targets:
         - test/kconfig/virtio-pci.cfg
         - CONFIG_DRIVER_SERIAL_NS16550=y
         - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
-      download:
-        OVMF.fd: /usr/share/qemu/OVMF.fd
 images:
   barebox.efi: !template "$LG_BUILDDIR/barebox.efi"
-  OVMF.fd: !template "$LG_BUILDDIR/OVMF.fd"
 imports:
   -  ../strategy.py
-- 
2.39.2



