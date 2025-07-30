Delivery-date: Wed, 30 Jul 2025 07:59:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugzqd-005AUV-0J
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 07:59:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugzqc-0003Gf-Fh
	for lore@pengutronix.de; Wed, 30 Jul 2025 07:59:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wTV2DRvKnlpN4bKBatIZFViU/kFtnwyum7oMyDzHiTs=; b=LiK5hhEJpzv9fyJn2O88h5rPSl
	D964Y0F51I30m2vtuO1q1oVfbP9IS8Y5uCT/87+Tf5uBC9nVet6qDxK+KlDPy5jr5HV7s4Q2fuuOG
	Iz3eBY4dRxkeWmCSiH1x5bHNMJQCLOvumtFWTK3tth4nXH2fCXY7U0yF5ugWOTd1ZdJpj3VU7A1+w
	5q8ohbaKBxWSsIu9Zyuth60HlVuPMQDILO8lOFo7tp0WECwhm1c9XlgaegMFyObWv/etotfpR8r9p
	3U4YW3w9t/GhyLly73Ro1p1oB/KfNwTUfVYI8nWmULcdNVCKDc0BFWTa8FHSFDKYCqMbWBwgVsTOZ
	Dwsc+Pyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugzq1-00000000kwL-2elI;
	Wed, 30 Jul 2025 05:58:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugzoy-00000000kgs-2Y2Q
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 05:57:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ugzov-0002zI-Fm; Wed, 30 Jul 2025 07:57:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 30 Jul 2025 07:57:43 +0200
Message-Id: <20250730055743.922932-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250730055743.922932-1-a.fatoum@barebox.org>
References: <20250730055743.922932-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_225748_658540_9D1225AD 
X-CRM114-Status: GOOD (  10.40  )
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
Subject: [PATCH 4/4] ARM64: configs: add multi_v8_efi_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will want to have a efi_defconfig once all necessary components are
in place, but for now let's just add a config that extends
multi_v8_defconfig with an EFI stub.

To use, get QEMU_EFI.fd (e.g., from Debian qemu-efi-aarch64) and run:

  qemu-system-aarch64 -kernel images/barebox-dt-2nd.img \
  -bios QEMU_EFI.fd -machine virt,highmem=off -cpu cortex-a57 \
  -m 1024M -nographic -serial mon:stdio -trace file=/dev/null

A labgrid YAML will follow once we can provide QEMU_EFI.fd there.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/Makefile                        |  4 ++++
 common/boards/configs/efi-payload.config | 13 +++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 common/boards/configs/efi-payload.config

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index eb71c84f587a..8fa7f1dc80b7 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -8,6 +8,10 @@ am335x_mlo_sdmmc_defconfig:
 am335x_mlo_rawflash_defconfig:
 	$(call merge_into_defconfig,am335x_mlo_defconfig,nomci)
 
+multi_v8_efi_defconfig:
+	$(call merge_into_defconfig,multi_v8_defconfig,efi-payload)
+generated_configs += multi_v8_efi_defconfig
+
 KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
 ifeq ($(CONFIG_CPU_64),y)
diff --git a/common/boards/configs/efi-payload.config b/common/boards/configs/efi-payload.config
new file mode 100644
index 000000000000..954910263a6f
--- /dev/null
+++ b/common/boards/configs/efi-payload.config
@@ -0,0 +1,13 @@
+CONFIG_COMPILE_TEST=y
+CONFIG_EFI_PAYLOAD=y
+CONFIG_FS_EFI=y
+CONFIG_FS_EFIVARFS=y
+CONFIG_DRIVER_SERIAL_EFI_STDIO=y
+CONFIG_EFI_BLK=y
+CONFIG_EFI_BLK_SEPARATE_USBDISK=y
+CONFIG_WATCHDOG_EFI=y
+CONFIG_HW_RANDOM_EFI=y
+CONFIG_I2C_EFI=y
+CONFIG_CLOCKSOURCE_EFI=y
+CONFIG_SERIAL_EFI_STDIO=y
+CONFIG_CMD_EFI_HANDLE_DUMP=y
-- 
2.39.5



