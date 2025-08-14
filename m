Delivery-date: Thu, 14 Aug 2025 09:27:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umSMd-000Qwx-2T
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 09:27:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umSMc-0007kA-J5
	for lore@pengutronix.de; Thu, 14 Aug 2025 09:27:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qJYqOhszAyw9snr2NBVvFZxwr9HG+5YAU0e650ru/fc=; b=sMOHN+k6Gl2wnDBuK963Pgqzgo
	bez6Lzx3k+o4DgHFWdQcujWOZ91GyfV7o3DRbS/MTdP8beeRksObcHt0d05AkdsryesCb+dpOSWNU
	kLL05dgluCaMZ4nFTtwtwDc1rY9ZKTMpkXWU9HUHI8mzBr3hE3sA6fsJHoGzXsacze2koGaea5oVb
	Ozak7sRPlguyukImLNjT5E73QQhhtzmA21FkrSGvBojktklDHKM0RvPFr4+mEKnEbQw/GUIJJ16Fn
	UwBqi3xpH+o+OdUYAJUCmcv8Pu7JPtf/Dxr6tao+tFXOVbB6jvX+RgBf/jhR+fSSCLVr0jZ5loag2
	5PZ1AlRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umSLv-0000000G4q4-2pPC;
	Thu, 14 Aug 2025 07:26:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umSBW-0000000G3Ug-29Bm
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 07:15:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umSBV-0006Hx-17; Thu, 14 Aug 2025 09:15:37 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Tobias Waldekranz <tobias@waldekranz.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 14 Aug 2025 09:15:33 +0200
Message-Id: <20250814071533.3917128-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_001538_549676_5FBF20C1 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] test: py: add regression test for missing x86 EFI child devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A bug introduced by commit 4a5a9b58b568 ("drive: bus: make use of new
bus_find_device helper") led to child devices of EFI handles not being
probed.

Let's assert existence of some devices to ensure such issues don't slip
through again. As handles don't have stable names, we don't hardcode
any, but instead look for their virtual child devices that we expect.

Cc: Tobias Waldekranz <tobias@waldekranz.com>
Link: https://lore.barebox.org/barebox/20250813214103.254178-1-tobias@waldekranz.com/T/#u
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/test_devices.py        | 12 ++++++++++++
 test/x86/pc@efi_defconfig.yaml |  8 ++++++++
 2 files changed, 20 insertions(+)
 create mode 100644 test/py/test_devices.py

diff --git a/test/py/test_devices.py b/test/py/test_devices.py
new file mode 100644
index 000000000000..8b1df393ed4d
--- /dev/null
+++ b/test/py/test_devices.py
@@ -0,0 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+import pytest
+
+
+def test_devices_present(env, barebox):
+    devices = env.config.data["targets"]["main"].get("devices")
+    if not devices:
+        pytest.skip("No devices listed in YAML to assert existence of")
+
+    for devname in devices.keys():
+        assert devices[devname] in barebox.run_check(f"devinfo {devname}")
diff --git a/test/x86/pc@efi_defconfig.yaml b/test/x86/pc@efi_defconfig.yaml
index 632e72ea7bd9..29e9fa3595b0 100644
--- a/test/x86/pc@efi_defconfig.yaml
+++ b/test/x86/pc@efi_defconfig.yaml
@@ -15,6 +15,14 @@ targets:
       BareboxTestStrategy: {}
     features:
       - pci
+    devices:
+      fb0: 'Type: primary'
+      fbconsole0: 'Parent: fb0'
+      wdog0: 'Parent: efi-wdt'
+      efivarfs0: 'Driver: efivarfs'
+      'pci-8086:1237.0': 'Bus: pci'
+      efifs0: 'Driver: efifs'
+      acpi-APIC0: 'Signature: APIC (Multiple APIC Description Table)'
     runner:
       tuxmake_arch: x86_64
       kconfig_add:
-- 
2.39.5



