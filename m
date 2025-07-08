Delivery-date: Tue, 08 Jul 2025 22:09:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEcf-00FTIv-0l
	for lore@lore.pengutronix.de;
	Tue, 08 Jul 2025 22:09:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZEce-0002F6-9E
	for lore@pengutronix.de; Tue, 08 Jul 2025 22:09:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pF0LGiUDbGRxveLJ2vtSWcm/b7lCSlCVV2XDEFboH5U=; b=dqukRGNlT+/iN8iPLyDklLsMJw
	LwZsxpT8P1Z7ApLx6eNQxCbaXW3YjQC9zGM66/l+ftUOlTfm1pz00AisJImbvO/GJpVvO7T3IwUJg
	2pV6wc9qb/dAVF2fgV/IPjAUhOQ3r/gWJ9D/BuKM6M7g69q/FTbPkJ8/ayVmN9IKA4pKh0ChmGCVt
	Imkm3lFhQ5Kvf/KWfwW7OfiXSjCeJqd6KpUyw36iCVU3jWUINcUDjDmg5Mimn/kz8wDw2eCBVePDc
	GBdKPG8wSceHHjdFDDJF2z5TzGX+hnsd79BJwRTH0Mfj9cCRmrRgwNiV+jQy3YtpBLIsOUSJmM4z2
	Lxta9qMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEc6-00000006SmL-0Fcc;
	Tue, 08 Jul 2025 20:08:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZE6o-00000006M32-2rLw
	for barebox@lists.infradead.org;
	Tue, 08 Jul 2025 19:36:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uZE6l-0008Qx-4Z; Tue, 08 Jul 2025 21:36:03 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Dang Huynh <danct12@riseup.net>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  8 Jul 2025 21:35:58 +0200
Message-Id: <20250708193600.758772-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250708193600.758772-1-a.fatoum@barebox.org>
References: <20250708193600.758772-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_123606_877994_9963207F 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 2/4] test: drop now superfluous extra_args
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Labgrid v25.0 allows this to be empty, so let's drop it where unneeded.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/arm/a15@multi_v7_defconfig.yaml              | 1 -
 test/arm/a9@multi_v7_defconfig.yaml               | 1 -
 test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml   | 1 -
 test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml | 1 -
 test/arm/qemu-raspi2b@multi_v7_defconfig.yaml     | 1 -
 test/arm/virt@multi_v7_defconfig.yaml             | 1 -
 test/arm/virt@multi_v8_defconfig.yaml             | 1 -
 test/mips/be@qemu-malta_defconfig.yaml            | 1 -
 test/mips/qemu-malta64el_defconfig.yaml           | 1 -
 test/mips/qemu-maltael_defconfig.yaml             | 1 -
 test/openrisc/generic_defconfig.yaml              | 1 -
 test/riscv/qemu-virt64@rv64i_defconfig.yaml       | 1 -
 test/riscv/qemu@virt32_defconfig.yaml             | 1 -
 test/riscv/sifive@rv64i_defconfig.yaml            | 1 -
 14 files changed, 14 deletions(-)

diff --git a/test/arm/a15@multi_v7_defconfig.yaml b/test/arm/a15@multi_v7_defconfig.yaml
index dfa73fb3f5fd..c7c3e3b0af49 100644
--- a/test/arm/a15@multi_v7_defconfig.yaml
+++ b/test/arm/a15@multi_v7_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: cortex-a15
         memory: 1024M
         bios: barebox-vexpress-ca15.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/a9@multi_v7_defconfig.yaml b/test/arm/a9@multi_v7_defconfig.yaml
index 8e8220102c90..21ce4202cf90 100644
--- a/test/arm/a9@multi_v7_defconfig.yaml
+++ b/test/arm/a9@multi_v7_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: cortex-a9
         memory: 1024M
         bios: barebox-vexpress-ca9.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml b/test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml
index 0a9a727c641f..9cad68225e1e 100644
--- a/test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml
+++ b/test/arm/qemu-raspi0@multi_v5_v6_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: arm1176
         memory: 512M
         kernel: barebox-raspberry-pi.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml b/test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml
index 0950481a63ea..cbd0686ebd71 100644
--- a/test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml
+++ b/test/arm/qemu-raspi1ap@multi_v5_v6_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: arm1176
         memory: 512M
         kernel: barebox-raspberry-pi.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml b/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml
index 72471c0a7f30..6dc91984ecca 100644
--- a/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml
+++ b/test/arm/qemu-raspi2b@multi_v7_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: cortex-a7
         memory: 1G
         kernel: barebox-raspberry-pi.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/virt@multi_v7_defconfig.yaml b/test/arm/virt@multi_v7_defconfig.yaml
index d8cd6c853bb9..d22b67cb31a8 100644
--- a/test/arm/virt@multi_v7_defconfig.yaml
+++ b/test/arm/virt@multi_v7_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: cortex-a7
         memory: 1024M
         kernel: barebox-dt-2nd.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index 8d1de41f8572..0c73591e4513 100644
--- a/test/arm/virt@multi_v8_defconfig.yaml
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: cortex-a57
         memory: 1024M
         kernel: barebox-dt-2nd.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/mips/be@qemu-malta_defconfig.yaml b/test/mips/be@qemu-malta_defconfig.yaml
index 5f438e4b900a..2f6de8a43a8f 100644
--- a/test/mips/be@qemu-malta_defconfig.yaml
+++ b/test/mips/be@qemu-malta_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: M14Kc
         memory: 256M
         bios: barebox-qemu-malta.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/mips/qemu-malta64el_defconfig.yaml b/test/mips/qemu-malta64el_defconfig.yaml
index bf8563e6623b..61318f491aa8 100644
--- a/test/mips/qemu-malta64el_defconfig.yaml
+++ b/test/mips/qemu-malta64el_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: 5KEf
         memory: 256M
         bios: barebox-qemu-malta.img.swapped
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/mips/qemu-maltael_defconfig.yaml b/test/mips/qemu-maltael_defconfig.yaml
index 1b3f15fec5e9..0571d1b4d495 100644
--- a/test/mips/qemu-maltael_defconfig.yaml
+++ b/test/mips/qemu-maltael_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: M14Kc
         memory: 256M
         bios: barebox-qemu-malta.img.swapped
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/openrisc/generic_defconfig.yaml b/test/openrisc/generic_defconfig.yaml
index 56b70b8242f0..3d2cd5f9550f 100644
--- a/test/openrisc/generic_defconfig.yaml
+++ b/test/openrisc/generic_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: or1200
         memory: 256M
         kernel: barebox
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/riscv/qemu-virt64@rv64i_defconfig.yaml b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
index 83cdac6c8b9d..f6497de85e54 100644
--- a/test/riscv/qemu-virt64@rv64i_defconfig.yaml
+++ b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: rv64
         memory: 256M
         kernel: barebox-dt-2nd.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
index 03d5ef281592..58a4f918958b 100644
--- a/test/riscv/qemu@virt32_defconfig.yaml
+++ b/test/riscv/qemu@virt32_defconfig.yaml
@@ -8,7 +8,6 @@ targets:
         memory: 256M
         kernel: barebox-dt-2nd.img
         bios: opensbi-riscv32-generic-fw_dynamic.bin
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
diff --git a/test/riscv/sifive@rv64i_defconfig.yaml b/test/riscv/sifive@rv64i_defconfig.yaml
index ce4ea0e1e27e..a35229bddb34 100644
--- a/test/riscv/sifive@rv64i_defconfig.yaml
+++ b/test/riscv/sifive@rv64i_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: sifive-u54
         memory: 256M
         kernel: barebox-hifive-unleashed.img
-        extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
-- 
2.39.5



