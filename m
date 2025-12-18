Delivery-date: Thu, 18 Dec 2025 12:38:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKu-00CoMC-2T
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKR-0000e3-8l
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IUrBdob8+aGKOt1+8LNioBtNWHgGDpjefQxxGSXNaPU=; b=TGDDOLkdyzGSxiTfTUgYctlRuB
	PL66v2boRZY+48yTpYmyuH370L6XMuwxeeODCKOgX+thk8LLAANGBfNP6VMWqjOvffxXva0QLYEnQ
	lh6b/wnKXYc7pzFU115EBSTcjeMIFg9+zk0jtq88aeJSJKKkuDG6IFyG4bdRSzZZOZqy2UFSnTfyI
	IRqPgPS1WJCgD9T8c85iGG4xI6B8SFZ5RALcHEJJAEvZbA4eH2GvCknA2H/UdOgnisjRrqOM6SeNT
	AOx2CTDraALsKWp706cN/BF2QhwArOLFJi7RdFTZYYgk8dYFeNmvJzva2d1uz4ipWXltx19EWOfiO
	9sh3Vvmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJU-00000008KKf-2zo8;
	Thu, 18 Dec 2025 11:36:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KBB-2C4T
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-00088T-0M; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-006Guc-2X;
	Thu, 18 Dec 2025 12:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-1zmW;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:11 +0100
Message-ID: <20251218111242.1527495-52-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_569673_A8AC5E95 
X-CRM114-Status: GOOD (  17.64  )
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
Subject: [PATCH v1 51/54] efi: loader: CONFIG_EFI_RT_VOLATILE_STORE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If we store EFI variables on ESP during boottime, we need cooperation
from the OS to write that file to implement SetVariable.

Populate the necessary options to allow efivar(1) to read a dump
of the variables after writing them and then persist them to ESP.

Note that this violates the EFI spec and it's not power-fail safe, but
it's an ok fallback for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Kconfig        | 18 ++++++++++++++
 efi/loader/efi_var_file.c | 51 +++++++++++++++++++++++++++++++++++++++
 efi/loader/runtime.c      |  4 +++
 efi/loader/variable.h     |  2 ++
 4 files changed, 75 insertions(+)

diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
index 4a5e4c375fd4..5692e54ebe01 100644
--- a/efi/loader/Kconfig
+++ b/efi/loader/Kconfig
@@ -68,6 +68,24 @@ config EFI_VARIABLE_NO_STORE
 
 endchoice
 
+config EFI_RT_VOLATILE_STORE
+	bool "Allow variable runtime services in volatile storage (e.g RAM)"
+	depends on EFI_VARIABLE_FILE_STORE
+	select EFI_RUNTIME_SET_VARIABLE
+	default y
+	help
+	  When EFI variables are stored on file we don't allow SetVariableRT,
+	  since the OS doesn't know how to write that file. At the same time
+	  we copy runtime variables in DRAM and support GetVariableRT
+
+	  Enable this option to allow SetVariableRT on the RAM backend of
+	  the EFI variable storage. The OS will be responsible for syncing
+	  the RAM contents to the file, otherwise any changes made during
+	  runtime won't persist reboots.
+	  Authenticated variables are not supported. Note that this will
+	  violate the EFI spec since writing auth variables will return
+	  EFI_INVALID_PARAMETER
+
 endmenu
 
 source "efi/loader/protocols/Kconfig"
diff --git a/efi/loader/efi_var_file.c b/efi/loader/efi_var_file.c
index 08a5c172cced..652354693ae7 100644
--- a/efi/loader/efi_var_file.c
+++ b/efi/loader/efi_var_file.c
@@ -184,6 +184,57 @@ efi_status_t efi_var_from_file(int dirfd, const char *filename)
 	free(buf);
 	return ret;
 }
+
+// SPDX-SnippetBegin
+// SPDX-Snippet-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/e9c34fab18a9a0022b36729afd8e262e062764e2/lib/efi_loader/efi_runtime.c
+
+efi_status_t efi_init_runtime_variable_supported(void)
+{
+	u8 s = 0;
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_EFI_RT_VOLATILE_STORE))
+		return EFI_SUCCESS;
+
+	ret = efi_set_variable_int(u"RTStorageVolatile",
+				   &efi_file_store_vars_guid,
+				   EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				   EFI_VARIABLE_RUNTIME_ACCESS |
+				   EFI_VARIABLE_READ_ONLY,
+				   strlen(efi_var_file_name) + 1,
+				   efi_var_file_name, false);
+	if (ret != EFI_SUCCESS) {
+		pr_err("Failed to set RTStorageVolatile\n");
+		return ret;
+	}
+	/*
+	 * This variable needs to be visible so users can read it,
+	 * but the real contents are going to be filled during
+	 * GetVariable
+	 */
+	ret = efi_set_variable_int(u"VarToFile",
+				   &efi_file_store_vars_guid,
+				   EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				   EFI_VARIABLE_RUNTIME_ACCESS |
+				   EFI_VARIABLE_READ_ONLY,
+				   sizeof(s),
+				   &s, false);
+	if (ret != EFI_SUCCESS) {
+		pr_err("Failed to set VarToFile\n");
+		efi_set_variable_int(u"RTStorageVolatile",
+				     &efi_file_store_vars_guid,
+				     EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				     EFI_VARIABLE_RUNTIME_ACCESS |
+				     EFI_VARIABLE_READ_ONLY,
+				     0, NULL, false);
+		return ret;
+	}
+
+	return EFI_SUCCESS;
+}
+
+// SPDX-SnippetEnd
+
 static int efi_init_var_params(void)
 {
 	if (efi_is_payload())
diff --git a/efi/loader/runtime.c b/efi/loader/runtime.c
index b46c85eeaa7b..4b3cb6df1350 100644
--- a/efi/loader/runtime.c
+++ b/efi/loader/runtime.c
@@ -71,6 +71,10 @@ efi_status_t efi_init_runtime_supported(void)
 		CHECK_RT_FLAG(QUERY_CAPSULE_CAPABILITIES) |
 		CHECK_RT_FLAG(QUERY_VARIABLE_INFO);
 
+	ret = efi_init_runtime_variable_supported();
+	if (ret != EFI_SUCCESS)
+		return ret;
+
 	return efi_install_configuration_table(&efi_rt_properties_table_guid, rt_table);
 }
 
diff --git a/efi/loader/variable.h b/efi/loader/variable.h
index 3710be84a2d1..775bd11dc450 100644
--- a/efi/loader/variable.h
+++ b/efi/loader/variable.h
@@ -2,6 +2,8 @@
 #include <efi/types.h>
 #include <efi/error.h>
 
+efi_status_t efi_init_runtime_variable_supported(void);
+
 efi_status_t EFIAPI efi_get_variable_boot(u16 *variable_name,
 					  const efi_guid_t *vendor, u32 *attributes,
 					  efi_uintn_t *data_size, void *data);
-- 
2.47.3



