Delivery-date: Wed, 06 Dec 2023 14:13:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAriB-005jHF-3C
	for lore@lore.pengutronix.de;
	Wed, 06 Dec 2023 14:13:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rAriB-00014L-Vv
	for lore@pengutronix.de; Wed, 06 Dec 2023 14:13:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BWnhFXfJKxjZjDJl995yT+Hity3a9lJTy0QF0BeooOM=; b=w4rgzMqULBGfAnBIWya89n84vV
	Q697bk2bUhuPpWIm7vCv7RoFEFwUKjXSy3bR5Na6oyVCKmHetguEMpUBhxlxglRhtXlTGmdtTWtdd
	i1Sg3EnTqZqgwTkSax5/zh0BNE7A1zE9c+uzpb7QJ2P8Grk5GFRnnChQIYFI/9kg5p9EeKcquq8ab
	6wV21OerovCSy2RjqHO9Vy1loqoXjjCltPWjuewHSqdBeQXYg+OwleEDT7atnLOiHxGaa36/DiKgO
	Dz9cRfmnSi+avFPazSik57RygKowjmcGWgtyvzsSSPZHEQmuGHU+wPo2Pqbd13alH0LfrOjrs0PTU
	KFgbF/tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rArh0-00AMWd-1c;
	Wed, 06 Dec 2023 13:11:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rArgw-00AMVz-2X
	for barebox@lists.infradead.org;
	Wed, 06 Dec 2023 13:11:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mol@pengutronix.de>)
	id 1rArgt-0000mP-4a; Wed, 06 Dec 2023 14:11:51 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mol@pengutronix.de>)
	id 1rArgs-00DyNk-OW; Wed, 06 Dec 2023 14:11:50 +0100
Received: from mol by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mol@pengutronix.de>)
	id 1rArgs-00CzRX-2K;
	Wed, 06 Dec 2023 14:11:50 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Wed,  6 Dec 2023 14:11:45 +0100
Message-Id: <20231206131145.3096043-2-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231206131145.3096043-1-m.olbrich@pengutronix.de>
References: <20231206131145.3096043-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_051154_839881_8DC5D4FC 
X-CRM114-Status: UNSURE (   8.67  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] efi: fill more EFI runtime variables defined by systemd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootctl will use those variables if available, and produce somethink
like this:

System:
      Firmware: UEFI 2.70 (American Megatrends 5.13)
 Firmware Arch: x64
   Secure Boot: disabled (setup)
  TPM2 Support: firmware only, driver unavailable
  Boot into FW: supported

Current Boot Loader:
      Product: barebox-2023.11.0-dirty
     Features: ✗ Boot counting
               ✗ Menu timeout control
               ✗ One-shot menu timeout control
               ✗ Default entry control
               ✗ One-shot entry control
               ✗ Support for XBOOTLDR partition
               ✗ Support for passing random seed to OS
               ✗ Load drop-in drivers
               ✗ Support Type #1 sort-key field
               ✗ Support @saved pseudo-entry
               ✓ Support Type #1 devicetree field
               ✗ Enroll SecureBoot keys
               ✗ Retain SHIM protocols
               ✗ Boot loader sets ESP information
[...]

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 common/efi/payload/init.c | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index 19be7ff07fb6..cfacdffa6761 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -36,6 +36,7 @@
 #include <libfile.h>
 #include <state.h>
 #include <bbu.h>
+#include <generated/utsrelease.h>
 
 efi_runtime_services_t *RT;
 efi_boot_services_t *BS;
@@ -322,13 +323,46 @@ static int efi_core_init(void)
 }
 core_initcall(efi_core_init);
 
+/* Features of the loader, i.e. systemd-boot, barebox (imported from systemd) */
+#define EFI_LOADER_FEATURE_CONFIG_TIMEOUT          (1LL << 0)
+#define EFI_LOADER_FEATURE_CONFIG_TIMEOUT_ONE_SHOT (1LL << 1)
+#define EFI_LOADER_FEATURE_ENTRY_DEFAULT           (1LL << 2)
+#define EFI_LOADER_FEATURE_ENTRY_ONESHOT           (1LL << 3)
+#define EFI_LOADER_FEATURE_BOOT_COUNTING           (1LL << 4)
+#define EFI_LOADER_FEATURE_XBOOTLDR                (1LL << 5)
+#define EFI_LOADER_FEATURE_RANDOM_SEED             (1LL << 6)
+#define EFI_LOADER_FEATURE_LOAD_DRIVER             (1LL << 7)
+#define EFI_LOADER_FEATURE_SORT_KEY                (1LL << 8)
+#define EFI_LOADER_FEATURE_SAVED_ENTRY             (1LL << 9)
+#define EFI_LOADER_FEATURE_DEVICETREE              (1LL << 10)
+#define EFI_LOADER_FEATURE_SECUREBOOT_ENROLL       (1LL << 11)
+#define EFI_LOADER_FEATURE_RETAIN_SHIM             (1LL << 12)
+
+
 static int efi_postcore_init(void)
 {
 	char *uuid;
+	static const uint64_t loader_features =
+		EFI_LOADER_FEATURE_DEVICETREE;
 
 	efi_set_variable_usec("LoaderTimeInitUSec", &efi_systemd_vendor_guid,
 			      get_time_ns()/1000);
 
+	efi_set_variable_printf("LoaderInfo", &efi_systemd_vendor_guid,
+			"barebox-" UTS_RELEASE);
+
+	efi_set_variable_printf("LoaderFirmwareInfo", &efi_systemd_vendor_guid,
+				"%ls %u.%02u", efi_sys_table->fw_vendor,
+				efi_sys_table->fw_revision >> 16,
+				efi_sys_table->fw_revision & 0xffff);
+
+	efi_set_variable_printf("LoaderFirmwareType", &efi_systemd_vendor_guid,
+				"UEFI %u.%02u", efi_sys_table->hdr.revision >> 16,
+				efi_sys_table->hdr.revision & 0xffff);
+
+	efi_set_variable_uint64_le("LoaderFeatures", &efi_systemd_vendor_guid,
+				   loader_features);
+
 	uuid = device_path_to_partuuid(device_path_from_handle(
 				       efi_loaded_image->device_handle));
 	if (uuid) {
-- 
2.39.2



