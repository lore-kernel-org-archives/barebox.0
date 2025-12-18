Delivery-date: Thu, 18 Dec 2025 12:41:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNm-00CocN-1I
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:41:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCN8-0002dp-PF
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:41:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=exbgZjoSZMkKePGYbrLWEZ8wYJeOpN4Y6qWA3JEc4Oo=; b=JOX1UeSy7XcFg32EI13nyXFSrm
	+sdctj01BCkXJOpQ3Q5w4f6Js3rnPN+wNVFfonvIjonS/BojbBkiFsTzF2ioZHAECOysd3s2YLQN8
	guJBcHD6NpNYE4jC2flRd453E3dqHMqUi9Zt5q9xY4jL7XNv0yK6xPraKPQFlB143oTg5p06uEEPb
	kGaLiXhPr9jBot0qFKe8XiDf3+50riOjRJmpiAO+5FCHYa51DR2Z3bGs6dlsvJTyjt2JpP1sKzJNV
	A3uNn6iG5mu3MiAwaDLYMEPAzmI8YntD6BkU8aHojnt5LlKOJcY/OLuXkKTP9dq6yIa/CU8VC5Em/
	HJamvpJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKN-00000008LY1-4Aqw;
	Thu, 18 Dec 2025 11:37:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJb-00000008KQb-2gUX
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=exbgZjoSZMkKePGYbrLWEZ8wYJeOpN4Y6qWA3JEc4Oo=; b=Ky4WRa5/x9FT+0tuNcuq/yHSyN
	dvHp3tgR5pDpw0hUVaRs9iYdfVjTO4FekwX/WF/ayjHfisCNkTDtWMlbl0PEbWXzh3+ww4ZjNB8GT
	lc+cctJaQ5Ia74kIs5jnef7j9H6znpUaa4dBSM0k2tMxq7HbcPUtK4WX97Our0jfddIj/enGZddkB
	CAKYEx/eQdIARocliRI41xOiRZInhJeksOtWeqh4W87PILYvuQ1VeXRNsVp+8P3+7hXHSccGwAPn0
	k20WiTWGusx/6nV+sd1n0EHK5HeZp5GKRKS9DzJ5RfiSsMx4JH7kYlMLQyQSaWLIkf4xKRCscupeb
	JVUeTFbQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS1-00000008fRe-2saL
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-0008EE-7b; Thu, 18 Dec 2025 12:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJO-006GwM-08;
	Thu, 18 Dec 2025 12:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-0vKO;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:06 +0100
Message-ID: <20251218111242.1527495-47-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104143_052612_47DED856 
X-CRM114-Status: GOOD (  25.90  )
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
Subject: [PATCH v1 46/54] efi: runtime: add EFI variable support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The in-memory EFI variable support in U-Boot is pretty self-contained,
so import it as-is to barebox. This is not power-fail safe and we'll
probably want to add StandAloneMM support for reliable use later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig.debug          |  16 ++
 efi/Makefile                  |   1 +
 efi/loader/Kconfig            |  29 +++
 efi/loader/Makefile           |   4 +
 efi/loader/efi_var_common.c   | 475 ++++++++++++++++++++++++++++++++++
 efi/loader/efi_var_file.c     | 203 +++++++++++++++
 efi/loader/efi_var_mem.c      |  80 ++++++
 efi/loader/efi_variable.c     | 214 +++++++++++++++
 efi/loader/protocols/disk.c   |  11 +
 efi/loader/runtime.c          |  10 +-
 efi/loader/setup.c            |   1 +
 efi/loader/variable.h         |  33 +++
 efi/runtime/Makefile          |  43 +++
 efi/runtime/common.h          |  35 +++
 efi/runtime/efi_var_mem.c     | 380 +++++++++++++++++++++++++++
 efi/runtime/efi_variable.c    | 211 +++++++++++++++
 include/efi/loader/variable.h | 153 +++++++++++
 include/efi/runtime.h         | 164 ++++++++++++
 include/efi/variable.h        |   7 +-
 19 files changed, 2065 insertions(+), 5 deletions(-)
 create mode 100644 efi/loader/efi_var_common.c
 create mode 100644 efi/loader/efi_var_file.c
 create mode 100644 efi/loader/efi_var_mem.c
 create mode 100644 efi/loader/efi_variable.c
 create mode 100644 efi/loader/variable.h
 create mode 100644 efi/runtime/Makefile
 create mode 100644 efi/runtime/common.h
 create mode 100644 efi/runtime/efi_var_mem.c
 create mode 100644 efi/runtime/efi_variable.c
 create mode 100644 include/efi/loader/variable.h
 create mode 100644 include/efi/runtime.h

diff --git a/common/Kconfig.debug b/common/Kconfig.debug
index 64127143a5d6..b307b84202a3 100644
--- a/common/Kconfig.debug
+++ b/common/Kconfig.debug
@@ -84,6 +84,22 @@ config DEBUG_EFI_LOADER_ENTRY
 	  If enabled, this will print whenever an EFI payload/app calls
 	  into barebox or is returned to before ExitBootServices.
 
+config DEBUG_EFI_RUNTIME_ENTRY
+	bool "Debug EFI runtime entry/exit"
+	depends on EFI_RUNTIME
+	depends on DEBUG_LL
+	help
+	  If enabled this will print whenever the operating system calls
+	  into barebox or is returned to after ExitBootServices.
+
+	  This requires DEBUG_LL support and board-specific setup, so
+	  any UART MMIO regions needed for the barebox runtime services
+	  are marked as such in the UEFI memory map.
+
+	  This option is most convenient to use with a second UART that
+	  the OS doesn't use, e.g. CONFIG_DEBUG_SEMIHOSTING when running
+	  under QEMU.
+
 config DMA_API_DEBUG
 	bool "Enable debugging of DMA-API usage"
 	depends on HAS_DMA
diff --git a/efi/Makefile b/efi/Makefile
index e0f6ac549009..7032e1fe1ded 100644
--- a/efi/Makefile
+++ b/efi/Makefile
@@ -2,6 +2,7 @@
 
 obj-$(CONFIG_EFI_PAYLOAD)	+= payload/
 obj-$(CONFIG_EFI_LOADER)	+= loader/
+obj-$(CONFIG_EFI_RUNTIME)	+= runtime/
 obj-$(CONFIG_EFI_GUID)		+= guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
 obj-y				+= errno.o handle.o efivar.o efivar-filename.o
diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
index ca0ec6b5010a..4a5e4c375fd4 100644
--- a/efi/loader/Kconfig
+++ b/efi/loader/Kconfig
@@ -21,6 +21,9 @@ config EFI_LOADER_DEBUG_SUPPORT
 	  agent or an external debugger to determine loaded image information
 	  in a quiescent manner.
 
+config EFI_LOADER_SECURE_BOOT
+	bool
+
 menu "UEFI services"
 
 config EFI_LOADER_GET_TIME
@@ -39,6 +42,32 @@ config EFI_LOADER_SET_TIME
 	  Provide the SetTime() runtime service at boottime. This service
 	  can be used by an EFI application to adjust the real time clock.
 
+choice
+	prompt "Store for non-volatile UEFI variables"
+	default EFI_VARIABLE_FILE_STORE
+	help
+	  Select where non-volatile UEFI variables shall be stored.
+
+config EFI_VARIABLE_FILE_STORE
+	bool "Store non-volatile UEFI variables as file"
+	depends on FS_FAT_WRITE
+	select EFI_RUNTIME_GET_VARIABLE
+	select EFI_RUNTIME_GET_NEXT_VARIABLE_NAME
+	select EFI_RUNTIME_QUERY_VARIABLE_INFO
+	help
+	  Select this option if you want non-volatile UEFI variables to be
+	  stored under the file name indicated by ${efi.vars.filestore}
+	  on the EFI system partition.
+
+config EFI_VARIABLE_NO_STORE
+	bool "Don't persist non-volatile UEFI variables"
+	help
+	  If you choose this option, non-volatile variables cannot be persisted.
+	  You could still provide non-volatile variables via the barebox
+	  environment.
+
+endchoice
+
 endmenu
 
 source "efi/loader/protocols/Kconfig"
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 2a78361e58d5..5fd74a2e0c42 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -15,3 +15,7 @@ obj-y += loadopts.o
 obj-$(CONFIG_BOOT) += bootesp.o
 obj-$(CONFIG_EFI_LOADER_BOOTMGR) += efibootmgr.o
 obj-$(CONFIG_BOOTM) += bootm.o
+obj-y += efi_var_common.o
+obj-y += efi_variable.o
+obj-y += efi_var_mem.o
+obj-y += efi_var_file.o
diff --git a/efi/loader/efi_var_common.c b/efi/loader/efi_var_common.c
new file mode 100644
index 000000000000..bd5af007ed9c
--- /dev/null
+++ b/efi/loader/efi_var_common.c
@@ -0,0 +1,475 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/e9c34fab18a9a0022b36729afd8e262e062764e2/lib/efi_loader/efi_var_common.c
+/*
+ * UEFI runtime variable services
+ *
+ * Copyright (c) 2020, Heinrich Schuchardt <xypron.glpk@gmx.de>
+ * Copyright (c) 2020 Linaro Limited, Author: AKASHI Takahiro
+ */
+
+#define pr_fmt(fmt) "efi-loader: efibootmgr: " fmt
+
+#include <linux/kernel.h>
+#include <efi/loader/variable.h>
+#include <efi/loader/trace.h>
+#include <efi/variable.h>
+#include <efi/runtime.h>
+#include <efi/error.h>
+#include <efi/guid.h>
+#include <efi/variable.h>
+#include <stdlib.h>
+#include <crc.h>
+
+#include "variable.h"
+
+enum efi_secure_mode {
+	EFI_MODE_SETUP,
+	EFI_MODE_USER,
+	EFI_MODE_AUDIT,
+	EFI_MODE_DEPLOYED,
+};
+
+struct efi_auth_var_name_type {
+	const u16 *name;
+	const efi_guid_t *guid;
+	const enum efi_auth_var_type type;
+};
+
+static const struct efi_auth_var_name_type name_type[] = {
+	{u"PK", &efi_global_variable_guid, EFI_AUTH_VAR_PK},
+	{u"KEK", &efi_global_variable_guid, EFI_AUTH_VAR_KEK},
+	{u"db",  &efi_guid_image_security_database, EFI_AUTH_VAR_DB},
+	{u"dbx",  &efi_guid_image_security_database, EFI_AUTH_VAR_DBX},
+	{u"dbt",  &efi_guid_image_security_database, EFI_AUTH_VAR_DBT},
+	{u"dbr",  &efi_guid_image_security_database, EFI_AUTH_VAR_DBR},
+	{u"AuditMode", &efi_global_variable_guid, EFI_AUTH_MODE},
+	{u"DeployedMode", &efi_global_variable_guid, EFI_AUTH_MODE},
+};
+
+static bool efi_secure_boot;
+static enum efi_secure_mode efi_secure_mode;
+
+/**
+ * efi_get_variable_boot() - retrieve value of a UEFI variable
+ *
+ * This function implements the GetVariable runtime service.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @variable_name:	name of the variable
+ * @vendor:		vendor GUID
+ * @attributes:		attributes of the variable
+ * @data_size:		size of the buffer to which the variable value is copied
+ * @data:		buffer to which the variable value is copied
+ * Return:		status code
+ */
+efi_status_t EFIAPI efi_get_variable_boot(u16 *variable_name,
+					  const efi_guid_t *vendor, u32 *attributes,
+					  efi_uintn_t *data_size, void *data)
+{
+	efi_status_t ret;
+
+	EFI_ENTRY("\"%ls\" %pUs %p %p %p", variable_name, vendor, attributes,
+		  data_size, data);
+
+	ret = efi_get_variable_int(variable_name, vendor, attributes,
+				   data_size, data, NULL);
+
+	/* Remove EFI_VARIABLE_READ_ONLY flag */
+	if (attributes)
+		*attributes &= EFI_VARIABLE_MASK;
+
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_set_variable_boot() - set value of a UEFI variable
+ *
+ * This function implements the SetVariable runtime service.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @variable_name:	name of the variable
+ * @vendor:		vendor GUID
+ * @attributes:		attributes of the variable
+ * @data_size:		size of the buffer with the variable value
+ * @data:		buffer with the variable value
+ * Return:		status code
+ */
+efi_status_t EFIAPI efi_set_variable_boot(u16 *variable_name,
+					  const efi_guid_t *vendor, u32 attributes,
+					  efi_uintn_t data_size, const void *data)
+{
+	efi_status_t ret;
+
+	EFI_ENTRY("\"%ls\" %pUs %x %zu %p", variable_name, vendor, attributes,
+		  data_size, data);
+
+	/* Make sure that the EFI_VARIABLE_READ_ONLY flag is not set */
+	if (attributes & ~EFI_VARIABLE_MASK)
+		ret = EFI_INVALID_PARAMETER;
+	else
+		ret = efi_set_variable_int(variable_name, vendor, attributes,
+					   data_size, data, true);
+
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_get_next_variable_name_boot() - enumerate the current variable names
+ *
+ * @variable_name_size:	size of variable_name buffer in byte
+ * @variable_name:	name of uefi variable's name in u16
+ * @vendor:		vendor's guid
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * Return: status code
+ */
+efi_status_t EFIAPI efi_get_next_variable_name_boot(efi_uintn_t *variable_name_size,
+						    u16 *variable_name,
+						    efi_guid_t *vendor)
+{
+	efi_status_t ret;
+
+	EFI_ENTRY("%p \"%ls\" %pUs", variable_name_size, variable_name, vendor);
+
+	ret = efi_get_next_variable_name_int(variable_name_size, variable_name,
+					     vendor);
+
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_query_variable_info_boot() - get information about EFI variables
+ *
+ * This function implements the QueryVariableInfo() runtime service.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @attributes:				bitmask to select variables to be
+ *					queried
+ * @maximum_variable_storage_size:	maximum size of storage area for the
+ *					selected variable types
+ * @remaining_variable_storage_size:	remaining size of storage are for the
+ *					selected variable types
+ * @maximum_variable_size:		maximum size of a variable of the
+ *					selected type
+ * Returns:				status code
+ */
+efi_status_t EFIAPI efi_query_variable_info_boot(
+			u32 attributes, u64 *maximum_variable_storage_size,
+			u64 *remaining_variable_storage_size,
+			u64 *maximum_variable_size)
+{
+	efi_status_t ret;
+
+	EFI_ENTRY("%x %p %p %p", attributes, maximum_variable_storage_size,
+		  remaining_variable_storage_size, maximum_variable_size);
+
+	ret = efi_query_variable_info_int(attributes,
+					  maximum_variable_storage_size,
+					  remaining_variable_storage_size,
+					  maximum_variable_size);
+
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_set_secure_state - modify secure boot state variables
+ * @secure_boot:	value of SecureBoot
+ * @setup_mode:		value of SetupMode
+ * @audit_mode:		value of AuditMode
+ * @deployed_mode:	value of DeployedMode
+ *
+ * Modify secure boot status related variables as indicated.
+ *
+ * Return:		status code
+ */
+static efi_status_t efi_set_secure_state(u8 secure_boot, u8 setup_mode,
+					 u8 audit_mode, u8 deployed_mode)
+{
+	efi_status_t ret;
+	const u32 attributes_ro = EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				  EFI_VARIABLE_RUNTIME_ACCESS |
+				  EFI_VARIABLE_READ_ONLY;
+	const u32 attributes_rw = EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				  EFI_VARIABLE_RUNTIME_ACCESS;
+
+	efi_secure_boot = secure_boot;
+
+	ret = efi_set_variable_int(u"SecureBoot", &efi_global_variable_guid,
+				   attributes_ro, sizeof(secure_boot),
+				   &secure_boot, false);
+	if (ret != EFI_SUCCESS)
+		goto err;
+
+	ret = efi_set_variable_int(u"SetupMode", &efi_global_variable_guid,
+				   attributes_ro, sizeof(setup_mode),
+				   &setup_mode, false);
+	if (ret != EFI_SUCCESS)
+		goto err;
+
+	ret = efi_set_variable_int(u"AuditMode", &efi_global_variable_guid,
+				   audit_mode || setup_mode ?
+				   attributes_ro : attributes_rw,
+				   sizeof(audit_mode), &audit_mode, false);
+	if (ret != EFI_SUCCESS)
+		goto err;
+
+	ret = efi_set_variable_int(u"DeployedMode",
+				   &efi_global_variable_guid,
+				   audit_mode || deployed_mode || setup_mode ?
+				   attributes_ro : attributes_rw,
+				   sizeof(deployed_mode), &deployed_mode,
+				   false);
+err:
+	return ret;
+}
+
+/**
+ * efi_transfer_secure_state - handle a secure boot state transition
+ * @mode:	new state
+ *
+ * Depending on @mode, secure boot related variables are updated.
+ * Those variables are *read-only* for users, efi_set_variable_int()
+ * is called here.
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_transfer_secure_state(enum efi_secure_mode mode)
+{
+	efi_status_t ret;
+
+	EFI_PRINT("Switching secure state from %d to %d\n", efi_secure_mode,
+		  mode);
+
+	if (mode == EFI_MODE_DEPLOYED) {
+		ret = efi_set_secure_state(1, 0, 0, 1);
+		if (ret != EFI_SUCCESS)
+			goto err;
+	} else if (mode == EFI_MODE_AUDIT) {
+		ret = efi_set_variable_int(u"PK", &efi_global_variable_guid,
+					   EFI_VARIABLE_BOOTSERVICE_ACCESS |
+					   EFI_VARIABLE_RUNTIME_ACCESS,
+					   0, NULL, false);
+		if (ret != EFI_SUCCESS)
+			goto err;
+
+		ret = efi_set_secure_state(0, 1, 1, 0);
+		if (ret != EFI_SUCCESS)
+			goto err;
+	} else if (mode == EFI_MODE_USER) {
+		ret = efi_set_secure_state(1, 0, 0, 0);
+		if (ret != EFI_SUCCESS)
+			goto err;
+	} else if (mode == EFI_MODE_SETUP) {
+		ret = efi_set_secure_state(0, 1, 0, 0);
+		if (ret != EFI_SUCCESS)
+			goto err;
+	} else {
+		return EFI_INVALID_PARAMETER;
+	}
+
+	efi_secure_mode = mode;
+
+	return EFI_SUCCESS;
+
+err:
+	/* TODO: What action should be taken here? */
+	pr_err("Secure state transition failed\n");
+	return ret;
+}
+
+efi_status_t efi_init_secure_state(void)
+{
+	enum efi_secure_mode mode;
+	u8 efi_vendor_keys = 0;
+	efi_uintn_t size;
+	efi_status_t ret;
+	u8 deployed_mode = 0;
+	u8 audit_mode = 0;
+	u8 setup_mode = 1;
+
+	if (IS_ENABLED(CONFIG_EFI_LOADER_SECURE_BOOT)) {
+		size = sizeof(deployed_mode);
+		ret = efi_get_variable_int(u"DeployedMode", &efi_global_variable_guid,
+					   NULL, &size, &deployed_mode, NULL);
+		size = sizeof(audit_mode);
+		ret = efi_get_variable_int(u"AuditMode", &efi_global_variable_guid,
+					   NULL, &size, &audit_mode, NULL);
+		size = 0;
+		ret = efi_get_variable_int(u"PK", &efi_global_variable_guid,
+					   NULL, &size, NULL, NULL);
+		if (ret == EFI_BUFFER_TOO_SMALL) {
+			setup_mode = 0;
+			audit_mode = 0;
+		} else {
+			setup_mode = 1;
+			deployed_mode = 0;
+		}
+	}
+	if (deployed_mode)
+		mode = EFI_MODE_DEPLOYED;
+	else if (audit_mode)
+		mode = EFI_MODE_AUDIT;
+	else if (setup_mode)
+		mode = EFI_MODE_SETUP;
+	else
+		mode = EFI_MODE_USER;
+
+	ret = efi_transfer_secure_state(mode);
+	if (ret != EFI_SUCCESS)
+		return ret;
+
+	/* As we do not provide vendor keys this variable is always 0. */
+	ret = efi_set_variable_int(u"VendorKeys",
+				   &efi_global_variable_guid,
+				   EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				   EFI_VARIABLE_RUNTIME_ACCESS |
+				   EFI_VARIABLE_READ_ONLY,
+				   sizeof(efi_vendor_keys),
+				   &efi_vendor_keys, false);
+	return ret;
+}
+
+/**
+ * efi_secure_boot_enabled - return if secure boot is enabled or not
+ *
+ * Return:	true if enabled, false if disabled
+ */
+bool efi_secure_boot_enabled(void)
+{
+	return efi_secure_boot;
+}
+
+enum efi_auth_var_type efi_auth_var_get_type(const u16 *name,
+					     const efi_guid_t *guid)
+{
+	for (size_t i = 0; i < ARRAY_SIZE(name_type); ++i) {
+		if (!wcscmp(name, name_type[i].name) &&
+		    !efi_guidcmp(*guid, *name_type[i].guid))
+			return name_type[i].type;
+	}
+	return EFI_AUTH_VAR_NONE;
+}
+
+const efi_guid_t *efi_auth_var_get_guid(const u16 *name)
+{
+	for (size_t i = 0; i < ARRAY_SIZE(name_type); ++i) {
+		if (!wcscmp(name, name_type[i].name))
+			return name_type[i].guid;
+	}
+	return &efi_global_variable_guid;
+}
+
+/**
+ * efi_get_var() - read value of an EFI variable
+ *
+ * @name:	variable name
+ * @start:	vendor GUID
+ * @size:	size of allocated buffer
+ *
+ * Return:	buffer with variable data or NULL
+ */
+void *efi_get_var(const u16 *name, const efi_guid_t *vendor, efi_uintn_t *size)
+{
+	efi_status_t ret;
+	void *buf = NULL;
+
+	*size = 0;
+	ret = efi_get_variable_int(name, vendor, NULL, size, buf, NULL);
+	if (ret == EFI_BUFFER_TOO_SMALL) {
+		buf = malloc(*size);
+		if (!buf)
+			return NULL;
+		ret = efi_get_variable_int(name, vendor, NULL, size, buf, NULL);
+	}
+
+	if (ret != EFI_SUCCESS) {
+		free(buf);
+		*size = 0;
+		return NULL;
+	}
+
+	return buf;
+}
+
+/**
+ * efi_var_collect() - Copy EFI variables matching attributes mask
+ *
+ * @bufp:	buffer containing variable collection
+ * @lenp:	buffer length
+ * @attr_mask:	mask of matched attributes
+ *
+ * Return:	Status code
+ */
+efi_status_t __maybe_unused efi_var_collect(struct efi_var_file **bufp, loff_t *lenp,
+					    u32 check_attr_mask)
+{
+	unsigned len;
+	struct efi_var_file *buf;
+	struct efi_var_entry *var, *old_var;
+	size_t old_var_name_length = 2;
+
+	efi_var_buf_get(&len);
+
+	*bufp = NULL; /* Avoid double free() */
+	buf = calloc(1, len);
+	if (!buf)
+		return EFI_OUT_OF_RESOURCES;
+	var = buf->var;
+	old_var = var;
+	for (;;) {
+		efi_uintn_t data_length, var_name_length;
+		u8 *data;
+		efi_status_t ret;
+
+		if ((uintptr_t)buf + len <=
+		    (uintptr_t)var->name + old_var_name_length)
+			return EFI_BUFFER_TOO_SMALL;
+
+		var_name_length = (uintptr_t)buf + len - (uintptr_t)var->name;
+		memcpy(var->name, old_var->name, old_var_name_length);
+		var->guid = old_var->guid;
+		ret = efi_get_next_variable_name_int(
+				&var_name_length, var->name, &var->guid);
+		if (ret == EFI_NOT_FOUND)
+			break;
+		if (ret != EFI_SUCCESS) {
+			free(buf);
+			return ret;
+		}
+		old_var_name_length = var_name_length;
+		old_var = var;
+
+		data = (u8 *)var->name + old_var_name_length;
+		data_length = (uintptr_t)buf + len - (uintptr_t)data;
+		ret = efi_get_variable_int(var->name, &var->guid,
+					   &var->attr, &data_length, data,
+					   &var->time);
+		if (ret != EFI_SUCCESS) {
+			free(buf);
+			return ret;
+		}
+		if ((var->attr & check_attr_mask) == check_attr_mask) {
+			var->length = data_length;
+			var = (struct efi_var_entry *)ALIGN((uintptr_t)data + data_length, 8);
+		}
+	}
+
+	buf->reserved = 0;
+	buf->magic = EFI_VAR_FILE_MAGIC;
+	len = (uintptr_t)var - (uintptr_t)buf;
+	buf->crc32 = crc32(0, (u8 *)buf->var,
+			   len - sizeof(struct efi_var_file));
+	buf->length = len;
+	*bufp = buf;
+	*lenp = len;
+
+	return EFI_SUCCESS;
+}
diff --git a/efi/loader/efi_var_file.c b/efi/loader/efi_var_file.c
new file mode 100644
index 000000000000..08a5c172cced
--- /dev/null
+++ b/efi/loader/efi_var_file.c
@@ -0,0 +1,203 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/bc4fe5666dae6ab01a433970c3f5e6eb4833ebe7/lib/efi_loader/efi_var_file.c
+/*
+ * File interface for UEFI variables
+ *
+ * Copyright (c) 2020, Heinrich Schuchardt
+ */
+
+#define pr_fmt(fmt) "efi-loader: var-file: " fmt
+
+#include <linux/kernel.h>
+#include <efi/loader.h>
+#include <efi/mode.h>
+#include <efi/loader/variable.h>
+#include <efi/variable.h>
+#include <efi/runtime.h>
+#include <efi/error.h>
+#include <efi/guid.h>
+#include <stdlib.h>
+#include <crc.h>
+#include <fs.h>
+#include <libfile.h>
+#include <string.h>
+#include <globalvar.h>
+#include <magicvar.h>
+
+#include "variable.h"
+
+/* Filename within ESP to save/restore EFI variables from
+ * when CONFIG_EFI_VARIABLE_FILE_STORE=y
+ */
+char *efi_var_file_name;
+
+/**
+ * efi_var_to_file() - save non-volatile variables as file
+ *
+ * File indiciated by efi_var_file_name with EFI variables is
+ * created on the EFI system partion.
+ *
+ * Return:	status code
+ */
+efi_status_t efi_var_to_file(void)
+{
+	efi_status_t efiret;
+	struct efi_var_file *buf;
+	loff_t len;
+	int err, fd, dirfd;
+	static bool once;
+
+	if (!IS_ENABLED(CONFIG_EFI_VARIABLE_FILE_STORE))
+		return EFI_SUCCESS;
+
+	efiret = efi_var_collect(&buf, &len, EFI_VARIABLE_NON_VOLATILE);
+	if (efiret != EFI_SUCCESS) {
+		err = ENOMEM;
+		goto error;
+	}
+
+	dirfd = efiloader_esp_mount_dir();
+	if (dirfd < 0) {
+		if (!once) {
+			pr_warn("Cannot persist EFI variables without system partition\n");
+			once = true;
+		}
+		efiret = EFI_NO_MEDIA;
+		err = dirfd;
+		goto out;
+	}
+
+	// TODO: replace with rename
+	fd = openat(dirfd, efi_var_file_name, O_WRONLY | O_TRUNC | O_CREAT);
+	if (fd < 0) {
+		efiret = EFI_DEVICE_ERROR;
+		err = fd;
+		goto error;
+	}
+
+	err = write_full(fd, buf, len);
+
+	close(fd);
+
+	if (err < 0) {
+		efiret = EFI_DEVICE_ERROR;
+		goto error;
+	}
+
+	return 0;
+
+error:
+	if (efiret != EFI_SUCCESS)
+		pr_err("Failed to persist EFI variables %pe\n", ERR_PTR(err));
+
+out:
+	free(buf);
+	return efiret;
+}
+
+static efi_status_t efi_var_restore(struct efi_var_file *buf, bool safe)
+{
+	struct efi_var_entry *var, *last_var;
+	u16 *data;
+	efi_status_t ret;
+
+	if (buf->reserved || buf->magic != EFI_VAR_FILE_MAGIC ||
+	    buf->crc32 != crc32(0, (u8 *)buf->var,
+				buf->length - sizeof(struct efi_var_file))) {
+		pr_err("Invalid EFI variables file\n");
+		return EFI_INVALID_PARAMETER;
+	}
+
+	last_var = (struct efi_var_entry *)((u8 *)buf + buf->length);
+	for (var = buf->var; var < last_var;
+	     var = (struct efi_var_entry *)
+		   ALIGN((uintptr_t)data + var->length, 8)) {
+
+		data = var->name + wcslen(var->name) + 1;
+
+		/*
+		 * Secure boot related and volatile variables shall only be
+		 * restored from the preseed, but we didn't implement this yet.
+		 */
+		if (!safe &&
+		    (efi_auth_var_get_type(var->name, &var->guid) !=
+		     EFI_AUTH_VAR_NONE ||
+		     !efi_guidcmp(var->guid, shim_lock_guid) ||
+		     !(var->attr & EFI_VARIABLE_NON_VOLATILE)))
+			continue;
+		if (!var->length)
+			continue;
+		if (efi_var_mem_find(&var->guid, var->name, NULL))
+			continue;
+		ret = efi_var_mem_ins(var->name, &var->guid, var->attr,
+				      var->length, data, 0, NULL,
+				      var->time);
+		if (ret != EFI_SUCCESS)
+			pr_err("Failed to set EFI variable %ls\n", var->name);
+	}
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_var_from_file() - read variables from file
+ *
+ * Specified file is read from the EFI system partitions and the variables
+ * stored in the file are created.
+ *
+ * On first boot the file may not exist yet. This is why we must
+ * return EFI_SUCCESS in this case.
+ *
+ * If the variable file is corrupted, e.g. incorrect CRC32, we do not want to
+ * stop the boot process. We deliberately return EFI_SUCCESS in this case, too.
+ *
+ * @dirfd	directory fd
+ * @filename	name of the file to load variables from
+ * Return:	status code
+ */
+efi_status_t efi_var_from_file(int dirfd, const char *filename)
+{
+	struct efi_var_file *buf;
+	efi_status_t ret;
+	size_t len;
+	int fd;
+
+	fd = openat(dirfd, filename, O_RDONLY);
+	if (fd < 0)
+		return EFI_NOT_FOUND;
+
+	buf = read_fd(fd, &len);
+
+	close(fd);
+
+	if (!buf || len < sizeof(struct efi_var_file)) {
+		ret = EFI_NOT_FOUND;
+		goto error;
+	}
+
+	if (buf->length != len || efi_var_restore(buf, false) != EFI_SUCCESS) {
+		ret = EFI_CRC_ERROR;
+		goto error;
+	}
+
+	return EFI_SUCCESS;
+error:
+	free(buf);
+	return ret;
+}
+static int efi_init_var_params(void)
+{
+	if (efi_is_payload())
+		return 0;
+
+	/* Not 8.3, but brboxefi.var looks just too ugly */
+	efi_var_file_name = xstrdup("barebox.efivars");
+	dev_add_param_string(&efidev, "vars.filestore", NULL, NULL,
+			     &efi_var_file_name, NULL);
+
+
+	return 0;
+}
+late_initcall(efi_init_var_params);
+
+BAREBOX_MAGICVAR(efi.vars.filestore,
+		 "efiloader: Name of file within ESP to store variables to (WARNING: Not power-fail safe!)");
diff --git a/efi/loader/efi_var_mem.c b/efi/loader/efi_var_mem.c
new file mode 100644
index 000000000000..d2c89d4b0851
--- /dev/null
+++ b/efi/loader/efi_var_mem.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/530e869ff89d9575103637af201fe97864d4f577/lib/efi_loader/efi_var_mem.c
+/*
+ * File interface for UEFI variables
+ *
+ * Copyright (c) 2020, Heinrich Schuchardt
+ */
+
+#define pr_fmt(fmt) "efi-loader: variable-mem: " fmt
+
+#include <linux/kernel.h>
+#include <linux/sizes.h>
+#include <efi/loader/variable.h>
+#include <efi/runtime.h>
+#include <efi/mode.h>
+#include <efi/services.h>
+#include <efi/loader.h>
+#include <efi/variable.h>
+#include <efi/error.h>
+#include <param.h>
+#include <magicvar.h>
+
+static unsigned efi_var_buf_size = SZ_128K;
+
+efi_status_t efi_var_mem_init(void)
+{
+	struct efi_var_file *efi_var_buf;
+	u64 memory;
+	efi_status_t ret;
+
+	ret = efi_allocate_pages(EFI_ALLOCATE_ANY_PAGES,
+				 EFI_RUNTIME_SERVICES_DATA,
+				 efi_size_in_pages(efi_var_buf_size),
+				 &memory, "vars");
+	if (ret != EFI_SUCCESS)
+		return ret;
+	efi_var_buf = (struct efi_var_file *)(uintptr_t)memory;
+	memset(efi_var_buf, 0,  efi_var_buf_size);
+	efi_var_buf->magic = EFI_VAR_FILE_MAGIC;
+	efi_var_buf->length = (uintptr_t)efi_var_buf->var -
+			      (uintptr_t)efi_var_buf;
+
+	/* we would have to register EFI_EVT_SIGNAL_VIRTUAL_ADDRESS_CHANGE otherwise */
+	static_assert(!IS_ENABLED(EFI_RUNTIME_SET_VIRTUAL_ADDRESS_MAP));
+
+	efi_var_buf_set(efi_var_buf, efi_var_buf_size);
+
+	return EFI_SUCCESS;
+}
+
+void efi_var_buf_update(struct efi_var_file *var_buf)
+{
+	unsigned len;
+	struct efi_var_file *dst = efi_var_buf_get(&len);
+
+	memcpy(dst, var_buf, len);
+}
+
+static int efi_var_buf_size_set(struct param_d *param, void *priv)
+{
+	if (!efi_var_buf_size || efi_var_buf_size % EFI_PAGE_SIZE)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int efi_init_var_params(void)
+{
+	if (efi_is_payload())
+		return 0;
+
+	dev_add_param_uint32(&efidev, "vars.bufsize", efi_var_buf_size_set, NULL,
+			     &efi_var_buf_size, "%u", NULL);
+
+	return 0;
+}
+late_initcall(efi_init_var_params);
+
+BAREBOX_MAGICVAR(efi.vars.bufsize,
+		 "efiloader: Size in bytes of the memory area reserved for keeping UEFI variables");
diff --git a/efi/loader/efi_variable.c b/efi/loader/efi_variable.c
new file mode 100644
index 000000000000..e5b03c26edd0
--- /dev/null
+++ b/efi/loader/efi_variable.c
@@ -0,0 +1,214 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/58d825fb18053ec7e432de7bbb70a452b9228076/lib/efi_loader/efi_variable.c
+/*
+ * UEFI runtime variable services
+ *
+ * Copyright (c) 2017 Rob Clark
+ */
+
+#define pr_fmt(fmt) "efi-loader: variable: " fmt
+
+#include <linux/kernel.h>
+#include <efi/loader.h>
+#include <efi/error.h>
+#include <efi/variable.h>
+#include <efi/runtime.h>
+#include <efi/loader/trace.h>
+#include <efi/loader/variable.h>
+#include <stdlib.h>
+#include <crc.h>
+#include <fcntl.h>
+
+#include "variable.h"
+
+/* Initial set of efi variables. This is not written back and
+ * usually from barebox' built-in env
+ */
+#define BAREBOX_ENV_INIT_EFIVARS	"/env/data/init.efivars"
+
+/**
+ * efi_variable_authenticate - authenticate a variable
+ * @variable:	Variable name in u16
+ * @vendor:	Guid of variable
+ * @data_size:	Size of @data
+ * @data:	Pointer to variable's value
+ * @given_attr:	Attributes to be given at SetVariable()
+ * @env_attr:	Attributes that an existing variable holds
+ * @time:	signed time that an existing variable holds
+ *
+ *
+ * Return:	success as variable auth is not yet supported
+ */
+static efi_status_t efi_variable_authenticate(const u16 *variable,
+					      const efi_guid_t *vendor,
+					      efi_uintn_t *data_size,
+					      const void **data, u32 given_attr,
+					      u32 *env_attr, u64 *time)
+{
+	return EFI_SUCCESS;
+}
+
+efi_status_t efi_set_variable_int(const u16 *variable_name,
+				  const efi_guid_t *vendor,
+				  u32 attributes, efi_uintn_t data_size,
+				  const void *data, bool ro_check)
+{
+	struct efi_var_entry *var;
+	efi_uintn_t ret;
+	bool append, delete;
+	u64 time = 0;
+	enum efi_auth_var_type var_type;
+
+	ret = efi_setvariable_allowed(variable_name, vendor, attributes, data_size,
+				  data);
+	if (ret != EFI_SUCCESS)
+		return ret;
+
+	/* check if a variable exists */
+	var = efi_var_mem_find(vendor, variable_name, NULL);
+	append = !!(attributes & EFI_VARIABLE_APPEND_WRITE);
+	delete = !append && (!data_size || !attributes);
+
+	/* check attributes */
+	var_type = efi_auth_var_get_type(variable_name, vendor);
+	if (var) {
+		if (ro_check && (var->attr & EFI_VARIABLE_READ_ONLY))
+			return EFI_WRITE_PROTECTED;
+
+		if (var_type >= EFI_AUTH_VAR_PK)
+			return EFI_WRITE_PROTECTED;
+
+		/* attributes won't be changed */
+		if (!delete &&
+		    ((ro_check && var->attr != (attributes & ~EFI_VARIABLE_APPEND_WRITE)) ||
+		     (!ro_check && ((var->attr & ~EFI_VARIABLE_READ_ONLY)
+				    != (attributes & ~EFI_VARIABLE_READ_ONLY))))) {
+			return EFI_INVALID_PARAMETER;
+		}
+		time = var->time;
+	} else {
+		/*
+		 * UEFI specification does not clearly describe the expected
+		 * behavior of append write with data size 0, we follow
+		 * the EDK II reference implementation.
+		 */
+		if (append && !data_size)
+			return EFI_SUCCESS;
+
+		/*
+		 * EFI_VARIABLE_APPEND_WRITE to non-existent variable is accepted
+		 * and new variable is created in EDK II reference implementation.
+		 * We follow it and only check the deletion here.
+		 */
+		if (delete)
+			/* Trying to delete a non-existent variable. */
+			return EFI_NOT_FOUND;
+	}
+
+	if (var_type >= EFI_AUTH_VAR_PK) {
+		/* authentication is mandatory */
+		if (!(attributes &
+		      EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS)) {
+			EFI_PRINT("%ls: TIME_BASED_AUTHENTICATED_WRITE_ACCESS required\n",
+				  variable_name);
+			return EFI_INVALID_PARAMETER;
+		}
+	}
+
+	/* authenticate a variable */
+	if (IS_ENABLED(CONFIG_EFI_LOADER_SECURE_BOOT)) {
+		if (attributes &
+		    EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS) {
+			u32 env_attr;
+
+			ret = efi_variable_authenticate(variable_name, vendor,
+							&data_size, &data,
+							attributes, &env_attr,
+							&time);
+			if (ret != EFI_SUCCESS)
+				return ret;
+
+			/* last chance to check for delete */
+			if (!data_size)
+				delete = true;
+		}
+	} else {
+		if (attributes &
+		    EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS) {
+			EFI_PRINT("Secure boot is not configured\n");
+			return EFI_INVALID_PARAMETER;
+		}
+	}
+
+	if (delete) {
+		/* EFI_NOT_FOUND has been handled before */
+		attributes = var->attr;
+		ret = EFI_SUCCESS;
+	} else if (append && var) {
+		/*
+		 * data is appended if EFI_VARIABLE_APPEND_WRITE is set and
+		 * variable exists.
+		 */
+		u16 *old_data = var->name;
+
+		for (; *old_data; ++old_data)
+			;
+		++old_data;
+		ret = efi_var_mem_ins(variable_name, vendor,
+				      attributes & ~EFI_VARIABLE_APPEND_WRITE,
+				      var->length, old_data, data_size, data,
+				      time);
+	} else {
+		ret = efi_var_mem_ins(variable_name, vendor, attributes,
+				      data_size, data, 0, NULL, time);
+	}
+
+	if (ret != EFI_SUCCESS)
+		return ret;
+
+	efi_var_mem_del(var);
+
+	if (var_type == EFI_AUTH_VAR_PK)
+		ret = efi_init_secure_state();
+	else
+		ret = EFI_SUCCESS;
+
+	/*
+	 * Write non-volatile EFI variables to file
+	 * TODO: check if a value change has occured to avoid superfluous writes
+	 */
+	if (attributes & EFI_VARIABLE_NON_VOLATILE)
+		efi_var_to_file();
+
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_init_variables() - initialize variable services
+ *
+ * Return:	status code
+ */
+static efi_status_t efi_init_variables(void *data)
+{
+	efi_status_t ret;
+
+	ret = efi_var_mem_init();
+	if (ret != EFI_SUCCESS)
+		return ret;
+
+	ret = efi_var_from_file(AT_FDCWD, BAREBOX_ENV_INIT_EFIVARS);
+	if (ret != EFI_SUCCESS && ret != EFI_NOT_FOUND) {
+		pr_err(BAREBOX_ENV_INIT_EFIVARS
+		       " : Invalid EFI variables file (%lx)\n", ret);
+		return ret;
+	}
+
+	return efi_init_secure_state();
+}
+
+static int efi_variables_init(void)
+{
+	efi_register_deferred_init(efi_init_variables, NULL);
+	return 0;
+}
+postcore_initcall(efi_variables_init);
diff --git a/efi/loader/protocols/disk.c b/efi/loader/protocols/disk.c
index cb1771e0cf99..835dee4e2e26 100644
--- a/efi/loader/protocols/disk.c
+++ b/efi/loader/protocols/disk.c
@@ -16,6 +16,7 @@
 #include <efi/loader/object.h>
 #include <efi/loader/devicepath.h>
 #include <efi/loader/file.h>
+#include <efi/loader/variable.h>
 #include <efi/loader/trace.h>
 #include <efi/partition.h>
 #include <malloc.h>
@@ -390,6 +391,16 @@ static efi_status_t efi_disk_register(void *data)
 
 	symlink_esp();
 
+	if (IS_ENABLED(CONFIG_EFI_VARIABLE_FILE_STORE) && efi_var_file_name) {
+		int dirfd = efiloader_esp_mount_dir();
+		if (dirfd >= 0) {
+			ret = efi_var_from_file(dirfd, efi_var_file_name);
+			if (ret != EFI_SUCCESS && ret != EFI_NOT_FOUND)
+				pr_warn("Failed to load /esp/%s: %lx\n",
+					efi_var_file_name, ret);
+		}
+	}
+
 	return EFI_SUCCESS;
 }
 
diff --git a/efi/loader/runtime.c b/efi/loader/runtime.c
index 76b9bc101a06..b46c85eeaa7b 100644
--- a/efi/loader/runtime.c
+++ b/efi/loader/runtime.c
@@ -22,6 +22,8 @@
 #include <restart.h>
 #include <linux/rtc.h>
 
+#include "variable.h"
+
 
 /*
  * EFI runtime code lives in two stages. In the first stage, EFI loader and an
@@ -297,12 +299,12 @@ struct efi_runtime_services efi_runtime_services = {
 	.set_wakeup_time = (void *)efi_unimplemented,
 	.set_virtual_address_map = (void *)efi_unimplemented,
 	.convert_pointer = (void *)efi_unimplemented,
-	.get_variable = (void *)efi_unimplemented,
-	.get_next_variable = (void *)efi_unimplemented,
-	.set_variable = (void *)efi_unimplemented,
+	.get_variable = efi_get_variable_boot,
+	.get_next_variable = efi_get_next_variable_name_boot,
+	.set_variable = efi_set_variable_boot,
 	.get_next_high_mono_count = (void *)efi_unimplemented,
 	.reset_system = &efi_reset_system_boottime,
 	.update_capsule = (void *)efi_unimplemented,
 	.query_capsule_caps = (void *)efi_unimplemented,
-	.query_variable_info = (void *)efi_unimplemented,
+	.query_variable_info = efi_query_variable_info_boot,
 };
diff --git a/efi/loader/setup.c b/efi/loader/setup.c
index 87b7d3a68dc8..a24d3044afdc 100644
--- a/efi/loader/setup.c
+++ b/efi/loader/setup.c
@@ -11,6 +11,7 @@
 
 #include <linux/printk.h>
 #include <linux/array_size.h>
+#include <linux/sizes.h>
 #include <driver.h>
 #include <string.h>
 #include <magicvar.h>
diff --git a/efi/loader/variable.h b/efi/loader/variable.h
new file mode 100644
index 000000000000..3710be84a2d1
--- /dev/null
+++ b/efi/loader/variable.h
@@ -0,0 +1,33 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#include <efi/types.h>
+#include <efi/error.h>
+
+efi_status_t EFIAPI efi_get_variable_boot(u16 *variable_name,
+					  const efi_guid_t *vendor, u32 *attributes,
+					  efi_uintn_t *data_size, void *data);
+
+efi_status_t EFIAPI efi_set_variable_boot(u16 *variable_name,
+					  const efi_guid_t *vendor, u32 attributes,
+					  efi_uintn_t data_size, const void *data);
+
+efi_status_t EFIAPI efi_get_next_variable_name_boot(efi_uintn_t *variable_name_size,
+						    u16 *variable_name,
+						    efi_guid_t *vendor);
+
+efi_status_t EFIAPI efi_query_variable_info_boot(
+			u32 attributes, u64 *maximum_variable_storage_size,
+			u64 *remaining_variable_storage_size,
+			u64 *maximum_variable_size);
+
+efi_status_t efi_init_secure_state(void);
+
+bool efi_secure_boot_enabled(void);
+
+void *efi_get_var(const u16 *name, const efi_guid_t *vendor, efi_uintn_t *size);
+
+struct efi_var_file;
+
+efi_status_t efi_var_collect(struct efi_var_file **bufp, loff_t *lenp,
+			     u32 check_attr_mask);
+
+efi_status_t efi_var_to_file(void);
diff --git a/efi/runtime/Makefile b/efi/runtime/Makefile
new file mode 100644
index 000000000000..90ed3ef454be
--- /dev/null
+++ b/efi/runtime/Makefile
@@ -0,0 +1,43 @@
+# SPDX-License-Identifier: GPL-2.0
+
+lib-y += efi_var_mem.o efi_variable.o
+
+KASAN_SANITIZE := n
+UBSAN_SANITIZE := n
+
+KBUILD_CFLAGS += $(picflags-y) -include $(srctree)/efi/runtime/common.h
+
+# Even when -mbranch-protection=none is set, Clang will generate a
+# .note.gnu.property for code-less object files (like lib/ctype.c),
+# so work around this by explicitly removing the unwanted section.
+# https://bugs.llvm.org/show_bug.cgi?id=46480
+EFIRTCP_FLAGS-y	+= --remove-section=.note.gnu.property
+
+# Cover compiler-generaed symbols like __func__ as well
+EFIRTCP_FLAGS-y	+= --prefix-alloc-sections .efi_runtime
+
+EFIRTCP_FLAGS-y	+= --redefine-sym memset=__pi_memset \
+		   --redefine-sym memcpy=__pi_memcpy \
+		   --redefine-sym memmove=__pi_memmove \
+		   --redefine-sym crc32=__pi_crc32
+
+#
+# Strip debug sections and some other sections that may legally contain
+# absolute relocations, so that we can inspect the remaining sections for
+# such relocations. If none are found, regenerate the output object, but
+# this time, use objcopy and leave all sections in place.
+#
+quiet_cmd_efirtcopy = EFIRTCP $@
+      cmd_efirtcopy =							\
+	$(STRIP) --strip-debug -o $@ $<;				\
+	if [ -n "$(EFIRTCP_RELOC-y)" ] && \
+	    $(OBJDUMP) -r $@ | grep $(EFIRTCP_RELOC-y); then		\
+		echo "$@: absolute symbol references not allowed in the EFI runtime" >&2; \
+		/bin/false;						\
+	fi;								\
+	$(OBJCOPY) $(EFIRTCP_FLAGS-y) $< $@
+
+$(obj)/%.efirt.o: $(obj)/%.o FORCE
+	$(call if_changed,efirtcopy)
+
+obj-y := $(patsubst %.o,%.efirt.o,$(lib-y))
diff --git a/efi/runtime/common.h b/efi/runtime/common.h
new file mode 100644
index 000000000000..c3d147ebe0a7
--- /dev/null
+++ b/efi/runtime/common.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __EFI_RUNTME_H_
+#define __EFI_RUNTME_H_
+
+/* For potential use in headers */
+#define __EFI_RUNTIME__
+
+/* We use objcopy(1) to prefix, so avoid double prefixing here */
+#define __efi_runtime
+#define __efi_runtime_data
+#define __efi_runtime_rodata
+#define EFI_RUNTIME_SECTION(sect) sect
+
+#ifdef CONFIG_DEBUG_EFI_RUNTIME_ENTRY
+#include <debug_ll.h>
+
+#define EFI_ENTRY(wstr, ...)	do {	\
+	puts_ll(__func__);		\
+	puts_ll("(");			\
+	putws_ll(wstr ?: L"<NULL>");	\
+	puts_ll(")");			\
+} while (0)
+#define EFI_EXIT(ret)		({	\
+	puts_ll("\t= ");		\
+	puthex_ll((ulong)ret);		\
+	puts_ll("\n");			\
+	(ret);				\
+})
+#else
+#define EFI_ENTRY(...)		(void)0
+#define EFI_EXIT(ret)		({ ret; })
+#endif /* CONFIG_DEBUG_EFI_RUNTIME_ENTRY */
+
+#endif
diff --git a/efi/runtime/efi_var_mem.c b/efi/runtime/efi_var_mem.c
new file mode 100644
index 000000000000..83b5c53b063b
--- /dev/null
+++ b/efi/runtime/efi_var_mem.c
@@ -0,0 +1,380 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/530e869ff89d9575103637af201fe97864d4f577/lib/efi_loader/efi_var_mem.c
+/*
+ * File interface for UEFI variables
+ *
+ * Copyright (c) 2020, Heinrich Schuchardt
+ */
+
+#include <linux/kernel.h>
+#include <efi/loader.h>
+#include <efi/loader/variable.h>
+#include <efi/variable.h>
+#include <efi/runtime.h>
+#include <efi/error.h>
+#include <charset.h>
+#include <crc.h>
+
+#define efi_memcpy_runtime	memcpy
+
+/*
+ * Below variables must be static to avoid referencing them via the global
+ * offset table (section .got). The GOT is neither mapped as
+ * EfiRuntimeServicesData nor do we support its relocation during
+ * SetVirtualAddressMap().
+ *
+ * TODO: We probably want some vDSO-like mechanism.
+ */
+static struct efi_var_file __efi_runtime_data *efi_var_buf;
+static unsigned __efi_runtime_data efi_var_buf_rtsize;
+static struct efi_var_entry __efi_runtime_data *efi_current_var;
+static const u16 __efi_runtime_rodata vtf[] = u"VarToFile";
+
+__efi_runtime void efi_var_buf_set(struct efi_var_file *buf, unsigned size)
+{
+	efi_var_buf = buf;
+	efi_var_buf_rtsize = size;
+}
+
+__efi_runtime struct efi_var_file *efi_var_buf_get(unsigned *size)
+{
+	if (size)
+		*size = efi_var_buf_rtsize;
+	return efi_var_buf;
+}
+
+/**
+ * efi_var_mem_compare() - compare GUID and name with a variable
+ *
+ * @var:	variable to compare
+ * @guid:	GUID to compare
+ * @name:	variable name to compare
+ * @next:	pointer to next variable
+ * Return:	true if match
+ */
+static bool __efi_runtime
+efi_var_mem_compare(struct efi_var_entry *var, const efi_guid_t *guid,
+		    const u16 *name, struct efi_var_entry **next)
+{
+	int i;
+	u8 *guid1, *guid2;
+	const u16 *data, *var_name;
+	bool match = true;
+
+	for (guid1 = (u8 *)&var->guid, guid2 = (u8 *)guid, i = 0;
+	     i < sizeof(efi_guid_t) && match; ++i)
+		match = (guid1[i] == guid2[i]);
+
+	for (data = var->name, var_name = name;; ++data) {
+		if (match)
+			match = (*data == *var_name);
+		if (!*data)
+			break;
+		if (*var_name)
+			++var_name;
+	}
+
+	++data;
+
+	if (next)
+		*next = (struct efi_var_entry *)
+			ALIGN((uintptr_t)data + var->length, 8);
+
+	if (match)
+		efi_current_var = var;
+
+	return match;
+}
+
+/**
+ * efi_var_entry_len() - Get the entry len including headers & name
+ *
+ * @var:	pointer to variable start
+ *
+ * Return:	8-byte aligned variable entry length
+ */
+
+static u32 __efi_runtime efi_var_entry_len(struct efi_var_entry *var)
+{
+	if (!var)
+		return 0;
+
+	return ALIGN((sizeof(u16) * (u16_strlen(var->name) + 1)) +
+		     var->length + sizeof(*var), 8);
+}
+
+struct efi_var_entry __efi_runtime
+*efi_var_mem_find(const efi_guid_t *guid, const u16 *name,
+		  struct efi_var_entry **next)
+{
+	struct efi_var_entry *var, *last;
+
+	last = (struct efi_var_entry *)
+	       ((uintptr_t)efi_var_buf + efi_var_buf->length);
+
+	if (!*name) {
+		if (next) {
+			*next = efi_var_buf->var;
+			if (*next >= last)
+				*next = NULL;
+		}
+		return NULL;
+	}
+	if (efi_current_var &&
+	    efi_var_mem_compare(efi_current_var, guid, name, next)) {
+		if (next && *next >= last)
+			*next = NULL;
+		return efi_current_var;
+	}
+
+	var = efi_var_buf->var;
+	if (var < last) {
+		for (; var;) {
+			struct efi_var_entry *pos;
+			bool match;
+
+			match = efi_var_mem_compare(var, guid, name, &pos);
+			if (pos >= last)
+				pos = NULL;
+			if (match) {
+				if (next)
+					*next = pos;
+				return var;
+			}
+			var = pos;
+		}
+	}
+	if (next)
+		*next = NULL;
+	return NULL;
+}
+
+void __efi_runtime efi_var_mem_del(struct efi_var_entry *var)
+{
+	u16 *data;
+	struct efi_var_entry *next, *last;
+
+	if (!var)
+		return;
+
+	last = (struct efi_var_entry *)
+	       ((uintptr_t)efi_var_buf + efi_var_buf->length);
+	if (var <= efi_current_var)
+		efi_current_var = NULL;
+
+	for (data = var->name; *data; ++data)
+		;
+	++data;
+	next = (struct efi_var_entry *)
+	       ALIGN((uintptr_t)data + var->length, 8);
+	efi_var_buf->length -= (uintptr_t)next - (uintptr_t)var;
+
+	/* efi_memcpy_runtime() can be used because next >= var. */
+	efi_memcpy_runtime(var, next, (uintptr_t)last - (uintptr_t)next);
+	efi_var_buf->crc32 = crc32(0, (u8 *)efi_var_buf->var,
+				   efi_var_buf->length -
+				   sizeof(struct efi_var_file));
+}
+
+efi_status_t __efi_runtime efi_var_mem_ins(
+				const u16 *variable_name,
+				const efi_guid_t *vendor, u32 attributes,
+				const efi_uintn_t size1, const void *data1,
+				const efi_uintn_t size2, const void *data2,
+				const u64 time)
+{
+	u16 *data;
+	struct efi_var_entry *var;
+	u32 var_name_len;
+
+	var = (struct efi_var_entry *)
+	      ((uintptr_t)efi_var_buf + efi_var_buf->length);
+	var_name_len = u16_strlen(variable_name) + 1;
+	data = var->name + var_name_len;
+
+	if ((uintptr_t)data - (uintptr_t)efi_var_buf + size1 + size2 >
+	    efi_var_buf_rtsize)
+		return EFI_OUT_OF_RESOURCES;
+
+	var->attr = attributes;
+	var->length = size1 + size2;
+	var->time = time;
+
+	efi_memcpy_runtime(&var->guid, vendor, sizeof(efi_guid_t));
+	efi_memcpy_runtime(var->name, variable_name,
+			   sizeof(u16) * var_name_len);
+	efi_memcpy_runtime(data, data1, size1);
+	efi_memcpy_runtime((u8 *)data + size1, data2, size2);
+
+	var = (struct efi_var_entry *)
+	      ALIGN((uintptr_t)data + var->length, 8);
+	efi_var_buf->length = (uintptr_t)var - (uintptr_t)efi_var_buf;
+	efi_var_buf->crc32 = crc32(0, (u8 *)efi_var_buf->var,
+				   efi_var_buf->length -
+				   sizeof(struct efi_var_file));
+
+	return EFI_SUCCESS;
+}
+
+u64 __efi_runtime efi_var_mem_free(void)
+{
+	if (efi_var_buf->length + sizeof(struct efi_var_entry) >=
+	    efi_var_buf_rtsize)
+		return 0;
+
+	return efi_var_buf_rtsize - efi_var_buf->length -
+	       sizeof(struct efi_var_entry);
+}
+
+/**
+ * efi_var_collect_mem() - Copy EFI variables matching attributes mask from
+ *                         efi_var_buf
+ *
+ * @buf:	buffer containing variable collection
+ * @lenp:	buffer length
+ * @mask:	mask of matched attributes
+ *
+ * Return:	Status code
+ */
+static efi_status_t __efi_runtime
+efi_var_collect_mem(struct efi_var_file *buf, efi_uintn_t *lenp, u32 mask)
+{
+	static struct efi_var_file __efi_runtime_data hdr = {
+		.magic = EFI_VAR_FILE_MAGIC,
+	};
+	struct efi_var_entry *last, *var, *var_to;
+
+	hdr.length = sizeof(struct efi_var_file);
+
+	var = efi_var_buf->var;
+	last = (struct efi_var_entry *)
+	       ((uintptr_t)efi_var_buf + efi_var_buf->length);
+	if (buf)
+		var_to = buf->var;
+
+	while (var < last) {
+		u32 len = efi_var_entry_len(var);
+
+		if ((var->attr & mask) != mask) {
+			var = (void *)((uintptr_t)var + len);
+			continue;
+		}
+
+		hdr.length += len;
+
+		if (buf && hdr.length <= *lenp) {
+			efi_memcpy_runtime(var_to, var, len);
+			var_to = (void *)var_to + len;
+		}
+		var = (void *)var + len;
+	}
+
+	if (!buf && hdr.length <= *lenp) {
+		*lenp = hdr.length;
+		return EFI_INVALID_PARAMETER;
+	}
+
+	if (!buf || hdr.length > *lenp) {
+		*lenp = hdr.length;
+		return EFI_BUFFER_TOO_SMALL;
+	}
+	hdr.crc32 = crc32(0, (u8 *)buf->var,
+			  hdr.length - sizeof(struct efi_var_file));
+
+	efi_memcpy_runtime(buf, &hdr, sizeof(hdr));
+	*lenp = hdr.length;
+
+	return EFI_SUCCESS;
+}
+
+efi_status_t __efi_runtime
+efi_get_variable_mem(const u16 *variable_name, const efi_guid_t *vendor,
+		     u32 *attributes, efi_uintn_t *data_size, void *data,
+		     u64 *timep, u32 mask)
+{
+	efi_uintn_t old_size;
+	struct efi_var_entry *var;
+	u16 *pdata;
+
+	if (!variable_name || !vendor || !data_size)
+		return EFI_INVALID_PARAMETER;
+	var = efi_var_mem_find(vendor, variable_name, NULL);
+	if (!var)
+		return EFI_NOT_FOUND;
+
+	/*
+	 * This function is used at runtime to dump EFI variables.
+	 * The memory backend we keep around has BS-only variables as
+	 * well. At runtime we filter them here
+	 */
+	if (mask && !((var->attr & mask) == mask))
+		return EFI_NOT_FOUND;
+
+	if (attributes)
+		*attributes = var->attr;
+	if (timep)
+		*timep = var->time;
+
+	if (!u16_strcmp(variable_name, vtf))
+		return efi_var_collect_mem(data, data_size, EFI_VARIABLE_NON_VOLATILE);
+
+	old_size = *data_size;
+	*data_size = var->length;
+	if (old_size < var->length)
+		return EFI_BUFFER_TOO_SMALL;
+
+	if (!data)
+		return EFI_INVALID_PARAMETER;
+
+	for (pdata = var->name; *pdata; ++pdata)
+		;
+	++pdata;
+
+	efi_memcpy_runtime(data, pdata, var->length);
+
+	return EFI_SUCCESS;
+}
+
+efi_status_t __efi_runtime
+efi_get_next_variable_name_mem(efi_uintn_t *variable_name_size,
+			       u16 *variable_name, efi_guid_t *vendor,
+			       u32 mask)
+{
+	struct efi_var_entry *var;
+	efi_uintn_t len, old_size;
+	u16 *pdata;
+
+	if (!variable_name_size || !variable_name || !vendor)
+		return EFI_INVALID_PARAMETER;
+
+skip:
+	len = *variable_name_size >> 1;
+	if (u16_strnlen(variable_name, len) == len)
+		return EFI_INVALID_PARAMETER;
+
+	if (!efi_var_mem_find(vendor, variable_name, &var) && *variable_name)
+		return EFI_INVALID_PARAMETER;
+
+	if (!var)
+		return EFI_NOT_FOUND;
+
+	for (pdata = var->name; *pdata; ++pdata)
+		;
+	++pdata;
+
+	old_size = *variable_name_size;
+	*variable_name_size = (uintptr_t)pdata - (uintptr_t)var->name;
+
+	if (old_size < *variable_name_size)
+		return EFI_BUFFER_TOO_SMALL;
+
+	efi_memcpy_runtime(variable_name, var->name, *variable_name_size);
+	efi_memcpy_runtime(vendor, &var->guid, sizeof(efi_guid_t));
+
+	if (mask && !((var->attr & mask) == mask)) {
+		*variable_name_size = old_size;
+		goto skip;
+	}
+
+	return EFI_SUCCESS;
+}
diff --git a/efi/runtime/efi_variable.c b/efi/runtime/efi_variable.c
new file mode 100644
index 000000000000..5dc10846f5d3
--- /dev/null
+++ b/efi/runtime/efi_variable.c
@@ -0,0 +1,211 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/58d825fb18053ec7e432de7bbb70a452b9228076/lib/efi_loader/efi_variable.c
+/*
+ * UEFI runtime variable services
+ *
+ * Copyright (c) 2017 Rob Clark
+ */
+
+#include <linux/kernel.h>
+#include <efi/loader/variable.h>
+#include <efi/services.h>
+#include <efi/variable.h>
+#include <efi/loader.h>
+#include <efi/error.h>
+#include <efi/runtime.h>
+#include <charset.h>
+#include <stdlib.h>
+
+efi_status_t __efi_runtime
+efi_get_variable_int(const u16 *variable_name, const efi_guid_t *vendor,
+		     u32 *attributes, efi_uintn_t *data_size, void *data,
+		     u64 *timep)
+{
+	return efi_get_variable_mem(variable_name, vendor, attributes, data_size,
+				    data, timep, 0);
+}
+
+efi_status_t __efi_runtime
+efi_get_next_variable_name_int(efi_uintn_t *variable_name_size,
+			       u16 *variable_name, efi_guid_t *vendor)
+{
+	return efi_get_next_variable_name_mem(variable_name_size, variable_name,
+					      vendor, 0);
+}
+
+/**
+ * efi_setvariable_allowed() - checks defined by the UEFI spec for setvariable
+ *
+ * @variable_name:	name of the variable
+ * @vendor:		vendor GUID
+ * @attributes:		attributes of the variable
+ * @data_size:		size of the buffer with the variable value
+ * @data:		buffer with the variable value
+ * Return:		status code
+ */
+efi_status_t __efi_runtime
+efi_setvariable_allowed(const u16 *variable_name, const efi_guid_t *vendor,
+		    u32 attributes, efi_uintn_t data_size, const void *data)
+{
+	if (!variable_name || !*variable_name || !vendor)
+		return EFI_INVALID_PARAMETER;
+
+	if (data_size && !data)
+		return EFI_INVALID_PARAMETER;
+
+	/*
+	 * EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS is deprecated.
+	 * We don't support EFI_VARIABLE_ENHANCED_AUTHENTICATED_ACCESS.
+	 */
+	if (attributes & (EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS | \
+			  EFI_VARIABLE_ENHANCED_AUTHENTICATED_ACCESS))
+		return EFI_UNSUPPORTED;
+
+	/* Make sure if runtime bit is set, boot service bit is set also */
+	if ((attributes &
+	     (EFI_VARIABLE_RUNTIME_ACCESS | EFI_VARIABLE_BOOTSERVICE_ACCESS)) ==
+	    EFI_VARIABLE_RUNTIME_ACCESS)
+		return EFI_INVALID_PARAMETER;
+
+	/* only EFI_VARIABLE_NON_VOLATILE attribute is invalid */
+	if ((attributes & EFI_VARIABLE_MASK) == EFI_VARIABLE_NON_VOLATILE)
+		return EFI_INVALID_PARAMETER;
+
+	/* Make sure HR is set with NV, BS and RT */
+	if (attributes & EFI_VARIABLE_HARDWARE_ERROR_RECORD &&
+	    (!(attributes & EFI_VARIABLE_NON_VOLATILE) ||
+	     !(attributes & EFI_VARIABLE_RUNTIME_ACCESS) ||
+	     !(attributes & EFI_VARIABLE_BOOTSERVICE_ACCESS)))
+		return EFI_INVALID_PARAMETER;
+
+	return EFI_SUCCESS;
+}
+
+efi_status_t __efi_runtime
+efi_query_variable_info_int(u32 attributes,
+			    u64 *maximum_variable_storage_size,
+			    u64 *remaining_variable_storage_size,
+			    u64 *maximum_variable_size)
+{
+	unsigned size;
+
+	if (!maximum_variable_storage_size ||
+	    !remaining_variable_storage_size ||
+	    !maximum_variable_size || !attributes)
+		return EFI_INVALID_PARAMETER;
+
+	/* EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS is deprecated */
+	if ((attributes & EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS) ||
+	    ((attributes & EFI_VARIABLE_MASK) == 0))
+		return EFI_UNSUPPORTED;
+
+	if ((attributes & EFI_VARIABLE_MASK) == EFI_VARIABLE_NON_VOLATILE)
+		return EFI_INVALID_PARAMETER;
+
+	/* Make sure if runtime bit is set, boot service bit is set also. */
+	if ((attributes &
+	     (EFI_VARIABLE_RUNTIME_ACCESS | EFI_VARIABLE_BOOTSERVICE_ACCESS)) ==
+	    EFI_VARIABLE_RUNTIME_ACCESS)
+		return EFI_INVALID_PARAMETER;
+
+	if (attributes & ~EFI_VARIABLE_MASK)
+		return EFI_INVALID_PARAMETER;
+
+	efi_var_buf_get(&size);
+
+	*maximum_variable_storage_size = size - sizeof(struct efi_var_file);
+	*remaining_variable_storage_size = efi_var_mem_free();
+	*maximum_variable_size = size - sizeof(struct efi_var_file) -
+				 sizeof(struct efi_var_entry);
+	return EFI_SUCCESS;
+}
+
+/**
+ * efirt_set_variable() - runtime implementation of SetVariable()
+ *
+ * @variable_name:	name of the variable
+ * @vendor:		vendor GUID
+ * @attributes:		attributes of the variable
+ * @data_size:		size of the buffer with the variable value
+ * @data:		buffer with the variable value
+ * Return:		status code
+ */
+efi_status_t __efi_runtime EFIAPI
+efirt_set_variable(u16 *variable_name, const efi_guid_t *vendor,
+		   u32 attributes, efi_uintn_t data_size,
+		   const void *data)
+{
+	struct efi_var_entry *var;
+	efi_uintn_t ret;
+	bool append, delete;
+	u64 time = 0;
+
+	if (!IS_ENABLED(CONFIG_EFI_RT_VOLATILE_STORE))
+		return EFI_UNSUPPORTED;
+
+	/*
+	 * Authenticated variables are not supported. The EFI spec
+	 * in §32.3.6 requires keys to be stored in non-volatile storage which
+	 * is tamper and delete resistant.
+	 * The rest of the checks are in efi_setvariable_allowed()
+	 */
+	if (attributes & EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS)
+		return EFI_INVALID_PARAMETER;
+
+	ret = efi_setvariable_allowed(variable_name, vendor, attributes, data_size,
+				      data);
+	if (ret != EFI_SUCCESS)
+		return ret;
+
+	/* check if a variable exists */
+	var = efi_var_mem_find(vendor, variable_name, NULL);
+	append = !!(attributes & EFI_VARIABLE_APPEND_WRITE);
+	attributes &= ~EFI_VARIABLE_APPEND_WRITE;
+	delete = !append && (!data_size || !attributes);
+
+	/* BS only variables are hidden deny writing them */
+	if (!delete && !(attributes & EFI_VARIABLE_RUNTIME_ACCESS))
+		return EFI_INVALID_PARAMETER;
+
+	if (var) {
+		if (var->attr & EFI_VARIABLE_READ_ONLY ||
+		    !(var->attr & EFI_VARIABLE_NON_VOLATILE))
+			return EFI_WRITE_PROTECTED;
+
+		/* attributes won't be changed */
+		if (!delete && (((var->attr & ~EFI_VARIABLE_READ_ONLY) !=
+		    (attributes & ~EFI_VARIABLE_READ_ONLY))))
+			return EFI_INVALID_PARAMETER;
+		time = var->time;
+	} else {
+		if (!(attributes & EFI_VARIABLE_NON_VOLATILE))
+			return EFI_INVALID_PARAMETER;
+		if (append && !data_size)
+			return EFI_SUCCESS;
+		if (delete)
+			return EFI_NOT_FOUND;
+	}
+
+	if (delete) {
+		/* EFI_NOT_FOUND has been handled before */
+		attributes = var->attr;
+		ret = EFI_SUCCESS;
+	} else if (append && var) {
+		u16 *old_data = (void *)((uintptr_t)var->name +
+			sizeof(u16) * (u16_strlen(var->name) + 1));
+
+		ret = efi_var_mem_ins(variable_name, vendor, attributes,
+				      var->length, old_data, data_size, data,
+				      time);
+	} else {
+		ret = efi_var_mem_ins(variable_name, vendor, attributes,
+				      data_size, data, 0, NULL, time);
+	}
+
+	if (ret != EFI_SUCCESS)
+		return ret;
+	/* We are always inserting new variables, get rid of the old copy */
+	efi_var_mem_del(var);
+
+	return EFI_SUCCESS;
+}
diff --git a/include/efi/loader/variable.h b/include/efi/loader/variable.h
new file mode 100644
index 000000000000..2f0038d8350c
--- /dev/null
+++ b/include/efi/loader/variable.h
@@ -0,0 +1,153 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/89d911e386cc439c68ab961e76937c377e7d7127/include/efi_variable.h */
+
+#ifndef _EFI_LOADER_VARIABLE_H
+#define _EFI_LOADER_VARIABLE_H
+
+#include <efi/types.h>
+#include <efi/error.h>
+
+#define EFI_VARIABLE_READ_ONLY 0x80000000
+
+enum efi_auth_var_type {
+	EFI_AUTH_VAR_NONE = 0,
+	EFI_AUTH_MODE,
+	EFI_AUTH_VAR_PK,
+	EFI_AUTH_VAR_KEK,
+	EFI_AUTH_VAR_DB,
+	EFI_AUTH_VAR_DBX,
+	EFI_AUTH_VAR_DBT,
+	EFI_AUTH_VAR_DBR,
+};
+
+/**
+ * efi_auth_var_get_type() - convert variable name and guid to enum
+ *
+ * @name:	name of UEFI variable
+ * @guid:	guid of UEFI variable
+ * Return:	identifier for authentication related variables
+ */
+enum efi_auth_var_type efi_auth_var_get_type(const u16 *name,
+					     const efi_guid_t *guid);
+
+/**
+ * efi_auth_var_get_guid() - get the predefined GUID for a variable name
+ *
+ * @name:	name of UEFI variable
+ * Return:	guid of UEFI variable
+ */
+const efi_guid_t *efi_auth_var_get_guid(const u16 *name);
+
+/**
+ * efi_var_mem_init() - set-up variable list
+ *
+ * Return:	status code
+ */
+efi_status_t efi_var_mem_init(void);
+
+/**
+ * efi_get_next_variable_name_mem() - Runtime common code across efi variable
+ *                                    implementations for GetNextVariable()
+ *                                    from the cached memory copy
+ *
+ * @variable_name_size:	size of variable_name buffer in bytes
+ * @variable_name:	name of uefi variable's name in u16
+ * @mask:		bitmask with required attributes of variables to be collected.
+ *                      variables are only collected if all of the required
+ *                      attributes match. Use 0 to skip matching
+ * @vendor:		vendor's guid
+ *
+ * Return: status code
+ */
+efi_status_t __efi_runtime
+efi_get_next_variable_name_mem(efi_uintn_t *variable_name_size, u16 *variable_name,
+			       efi_guid_t *vendor, u32 mask);
+/**
+ * efi_get_variable_mem() - Runtime common code across efi variable
+ *                          implementations for GetVariable() from
+ *                          the cached memory copy
+ *
+ * @variable_name:	name of the variable
+ * @vendor:		vendor GUID
+ * @attributes:		attributes of the variable
+ * @data_size:		size of the buffer to which the variable value is copied
+ * @data:		buffer to which the variable value is copied
+ * @timep:		authentication time (seconds since start of epoch)
+ * @mask:		bitmask with required attributes of variables to be collected.
+ *                      variables are only collected if all of the required
+ *                      attributes match. Use 0 to skip matching
+ * Return:		status code
+ */
+efi_status_t __efi_runtime
+efi_get_variable_mem(const u16 *variable_name, const efi_guid_t *vendor,
+		     u32 *attributes, efi_uintn_t *data_size, void *data,
+		     u64 *timep, u32 mask);
+
+/*
+ * This constant identifies the file format for storing UEFI variables in
+ * struct efi_var_file.
+ */
+#define EFI_VAR_FILE_MAGIC 0x0161566966456255 /* UbEfiVa, version 1 */
+
+/**
+ * struct efi_var_entry - UEFI variable file entry
+ *
+ * @length:	length of enty, multiple of 8
+ * @attr:	variable attributes
+ * @time:	authentication time (seconds since start of epoch)
+ * @guid:	vendor GUID
+ * @name:	UTF16 variable name
+ */
+struct efi_var_entry {
+	u32 length;
+	u32 attr;
+	u64 time;
+	efi_guid_t guid;
+	u16 name[];
+};
+
+/**
+ * struct efi_var_file - file for storing UEFI variables
+ *
+ * @reserved:	unused, may be overwritten by memory probing
+ * @magic:	identifies file format, takes value %EFI_VAR_FILE_MAGIC
+ * @length:	length including header
+ * @crc32:	CRC32 without header
+ * @var:	variables
+ */
+struct efi_var_file {
+	u64 reserved;
+	u64 magic;
+	u32 length;
+	u32 crc32;
+	struct efi_var_entry var[];
+};
+
+/**
+ * efi_var_buf_update() - udpate memory buffer for variables
+ *
+ * @var_buf:	source buffer
+ *
+ * This function copies to the memory buffer for UEFI variables. Call this
+ * function in ExitBootServices() if memory backed variables are only used
+ * at runtime to fill the buffer.
+ */
+void efi_var_buf_update(struct efi_var_file *var_buf);
+
+/* The name within the ESP of the file used to store barebox' EFI variables */
+extern char *efi_var_file_name;
+
+/**
+ * efi_var_from_file() - read variables from file
+ *
+ * File ubootefi.var is read from the EFI system partitions and the variables
+ * stored in the file are created.
+ *
+ * In case the file does not exist yet or a variable cannot be set EFI_SUCCESS
+ * is returned.
+ *
+ * Return:	status code
+ */
+efi_status_t efi_var_from_file(int dirfd, const char *filename);
+
+#endif
diff --git a/include/efi/runtime.h b/include/efi/runtime.h
new file mode 100644
index 000000000000..d7f4f4264106
--- /dev/null
+++ b/include/efi/runtime.h
@@ -0,0 +1,164 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/* SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/89d911e386cc439c68ab961e76937c377e7d7127/include/efi_variable.h */
+/*
+ * Copyright (c) 2020, Heinrich Schuchardt <xypron.glpk@gmx.de>
+ */
+#ifndef _EFI_RUNTIME_H
+#define _EFI_RUNTIME_H
+
+#include <efi/types.h>
+
+#define EFI_VARIABLE_READ_ONLY 0x80000000
+
+/**
+ * efi_get_variable_int() - retrieve value of a UEFI variable
+ *
+ * @variable_name:	name of the variable
+ * @vendor:		vendor GUID
+ * @attributes:		attributes of the variable
+ * @data_size:		size of the buffer to which the variable value is copied
+ * @data:		buffer to which the variable value is copied
+ * @timep:		authentication time (seconds since start of epoch)
+ * Return:		status code
+ */
+efi_status_t __efi_runtime
+efi_get_variable_int(const u16 *variable_name,
+		     const efi_guid_t *vendor,
+		     u32 *attributes, efi_uintn_t *data_size,
+		     void *data, u64 *timep);
+
+/**
+ * efi_set_variable_int() - set value of a UEFI variable
+ *
+ * @variable_name:	name of the variable
+ * @vendor:		vendor GUID
+ * @attributes:		attributes of the variable
+ * @data_size:		size of the buffer with the variable value
+ * @data:		buffer with the variable value
+ * @ro_check:		check the read only read only bit in attributes
+ * Return:		status code
+ */
+efi_status_t efi_set_variable_int(const u16 *variable_name,
+				  const efi_guid_t *vendor,
+				  u32 attributes, efi_uintn_t data_size,
+				  const void *data, bool ro_check);
+
+/**
+ * efi_query_variable_info_int() - get information about EFI variables
+ *
+ * This function implements the QueryVariableInfo() runtime service.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @attributes:				bitmask to select variables to be
+ *					queried
+ * @maximum_variable_storage_size:	maximum size of storage area for the
+ *					selected variable types
+ * @remaining_variable_storage_size:	remaining size of storage are for the
+ *					selected variable types
+ * @maximum_variable_size:		maximum size of a variable of the
+ *					selected type
+ * Returns:				status code
+ */
+efi_status_t __efi_runtime
+efi_query_variable_info_int(u32 attributes,
+			    u64 *maximum_variable_storage_size,
+			    u64 *remaining_variable_storage_size,
+			    u64 *maximum_variable_size);
+
+/**
+ * efi_setvariable_allowed() - checks defined by the UEFI spec for setvariable
+ *
+ * @variable_name:	name of the variable
+ * @vendor:		vendor GUID
+ * @attributes:		attributes of the variable
+ * @data_size:		size of the buffer with the variable value
+ * @data:		buffer with the variable value
+ * Return:		status code
+ */
+efi_status_t __efi_runtime
+efi_setvariable_allowed(const u16 *variable_name, const efi_guid_t *vendor,
+			u32 attributes, efi_uintn_t data_size, const void *data);
+
+
+efi_status_t __efi_runtime EFIAPI
+efirt_set_variable(u16 *variable_name, const efi_guid_t *vendor,
+		   u32 attributes, efi_uintn_t data_size,
+		   const void *data);
+
+/**
+ * efi_var_mem_find() - find a variable in the list
+ *
+ * @guid:	GUID of the variable
+ * @name:	name of the variable
+ * @next:	on exit pointer to the next variable after the found one
+ * Return:	found variable
+ */
+struct efi_var_entry *efi_var_mem_find(const efi_guid_t *guid, const u16 *name,
+				       struct efi_var_entry **next);
+
+/**
+ * efi_var_mem_ins() - append a variable to the list of variables
+ *
+ * The variable is appended without checking if a variable of the same name
+ * already exists. The two data buffers are concatenated.
+ *
+ * @variable_name:	variable name
+ * @vendor:		GUID
+ * @attributes:		variable attributes
+ * @size1:		size of the first data buffer
+ * @data1:		first data buffer
+ * @size2:		size of the second data field
+ * @data2:		second data buffer
+ * @time:		time of authentication (as seconds since start of epoch)
+ * Result:		status code
+ */
+efi_status_t __efi_runtime
+efi_var_mem_ins(const u16 *variable_name,
+		const efi_guid_t *vendor, u32 attributes,
+		const efi_uintn_t size1, const void *data1,
+		const efi_uintn_t size2, const void *data2,
+		const u64 time);
+
+/**
+ * efi_get_next_variable_name_int() - enumerate the current variable names
+ *
+ * @variable_name_size:	size of variable_name buffer in byte
+ * @variable_name:	name of uefi variable's name in u16
+ * @vendor:		vendor's guid
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * Return: status code
+ */
+efi_status_t __efi_runtime
+efi_get_next_variable_name_int(efi_uintn_t *variable_name_size,
+			       u16 *variable_name,
+			       efi_guid_t *vendor);
+
+/**
+ * efi_var_mem_del() - delete a variable from the list of variables
+ *
+ * @var:	variable to delete
+ */
+void __efi_runtime efi_var_mem_del(struct efi_var_entry *var);
+
+/**
+ * efi_var_mem_free() - determine free memory for variables
+ *
+ * Return:	maximum data size plus variable name size
+ */
+u64 __efi_runtime efi_var_mem_free(void);
+
+struct efi_var_file;
+extern __efi_runtime void efi_var_buf_set(struct efi_var_file *buf, unsigned size);
+extern __efi_runtime struct efi_var_file *efi_var_buf_get(unsigned *size);
+
+struct efi_system_table;
+void __efi_runtime efirt_trace_init(void *_ring);
+void efi_runtime_prep(void);
+void __efi_runtime efi_runtime_detach(struct efi_system_table *systab);
+
+#endif
diff --git a/include/efi/variable.h b/include/efi/variable.h
index 53f465117cd5..12c39ef592a8 100644
--- a/include/efi/variable.h
+++ b/include/efi/variable.h
@@ -15,6 +15,10 @@
 #define EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS 0x0000000000000010
 #define EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS 0x0000000000000020
 #define EFI_VARIABLE_APPEND_WRITE	0x0000000000000040
+#define EFI_VARIABLE_ENHANCED_AUTHENTICATED_ACCESS	0x00000080
+
+#define EFI_VARIABLE_ACCESSIBLE(attrs) \
+	((attrs) & (EFI_VARIABLE_BOOTSERVICE_ACCESS | EFI_VARIABLE_RUNTIME_ACCESS))
 
 #define EFI_VARIABLE_MASK 	(EFI_VARIABLE_NON_VOLATILE | \
 				EFI_VARIABLE_BOOTSERVICE_ACCESS | \
@@ -22,7 +26,8 @@
 				EFI_VARIABLE_HARDWARE_ERROR_RECORD | \
 				EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS | \
 				EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS | \
-				EFI_VARIABLE_APPEND_WRITE)
+				EFI_VARIABLE_APPEND_WRITE | \
+				EFI_VARIABLE_ENHANCED_AUTHENTICATED_ACCESS)
 /*
  * Length of a GUID string (strlen("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"))
  * not including trailing NUL
-- 
2.47.3



