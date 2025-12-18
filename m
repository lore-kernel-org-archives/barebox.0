Delivery-date: Thu, 18 Dec 2025 12:38:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKl-00CoLM-2S
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKK-0000Zd-LO
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=72m8HS0bEafmbawqrH66QO4QOMJAr1pteteLsCVf9JQ=; b=nu200s6//lu3HtJf2vyFY9EU6U
	bIZvVX6Wf5RzMCnE6p3JIRUH7YbHDwFpvpNKfrdYqv9LMmhW7fm0s44epcD+XVr3QNzbbGSslBFLD
	lN2IIlq1F78XfYYNcc7Tg5d0xmuC6H4igSdG7NejvDxPsbMLt1tjJ3OXVDsHRVXOCbdmAHcFzX3fW
	SfHq4r0UkRNoPNAMk9MgsQ6q5iodxtuOhdb+AK9GKOgr8NJDXNLfheH7Qi7XWoiAZ4yEmFA6TE5bF
	0G+e5d7pLXgXt4gF43nXRbC/Y0OKBOX+RObAuvmNdVl/872UX3h2E1RA2dCukLAW0jpm74sdX+bId
	3Kdfdpkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJT-00000008KJY-3T2H;
	Thu, 18 Dec 2025 11:36:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KBD-2civ
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-00088v-5O; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-006Guk-34;
	Thu, 18 Dec 2025 12:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-1ast;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:09 +0100
Message-ID: <20251218111242.1527495-50-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_819255_28C08077 
X-CRM114-Status: GOOD (  21.35  )
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
Subject: [PATCH v1 49/54] efi: runtime: add runtime service support after ExitBootServices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Before supporting ExitBootServices, we need the runtime service table to
be located completely in the .efi_runtime section and not reference
anything outside.

This is easiest by just maintaining a second runtime-only EFI runtime
service table, so do just that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig       |   1 +
 efi/runtime/Makefile   |   1 +
 efi/runtime/services.c | 303 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 305 insertions(+)
 create mode 100644 efi/runtime/services.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ae3de9504a9b..5123e9b1402c 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -317,6 +317,7 @@ config AEABI
 config AAPCS64
 	bool "Observe ARM64 Procedure Call Standard" if COMPILE_TEST
 	depends on CPU_V8
+	default EFI_RUNTIME
 	help
 	  This option instructs barebox to observe the AAPCS64 for
 	  interoperability with other firmware.
diff --git a/efi/runtime/Makefile b/efi/runtime/Makefile
index 90ed3ef454be..a9af06de60ab 100644
--- a/efi/runtime/Makefile
+++ b/efi/runtime/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 
+lib-y += services.o
 lib-y += efi_var_mem.o efi_variable.o
 
 KASAN_SANITIZE := n
diff --git a/efi/runtime/services.c b/efi/runtime/services.c
new file mode 100644
index 000000000000..11a1c5cb6cb6
--- /dev/null
+++ b/efi/runtime/services.c
@@ -0,0 +1,303 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// SPDX-FileCopyrightText: 2022 Ahmad Fatoum <a.fatoum@pengutronix.de>
+/*
+ *  EFI application runtime services - detached callbacks after
+ *  boot services have been exited.
+ */
+
+/* LSP-Workaround as our compile_commands.json target doesn't handle lib-y yet */
+#include "common.h"
+
+#include <efi/loader.h>
+#include <efi/runtime.h>
+#include <efi/loader/variable.h>
+#include <efi/variable.h>
+#include <efi/error.h>
+#include <generated/version.h>
+#include <poweroff.h>
+#include <restart.h>
+#include <barebox.h>
+#include <debug_ll.h>
+
+/**
+ * efirt_unimplemented() - replacement macro, returns EFI_UNSUPPORTED
+ *
+ * This macro is used after SetVirtualAddressMap() to be called as replacement
+ * for services that are not available anymore due to constraints of the barebox
+ * implementation.
+ *
+ * Return:	EFI_UNSUPPORTED
+ */
+#define efirt_unimplemented() ({	\
+	EFI_ENTRY(L"");			\
+	EFI_EXIT(EFI_UNSUPPORTED);	\
+})
+
+/**
+ * efirt_reset_system() - reset system at runtime
+ *
+ * This function implements the ResetSystem() runtime service after
+ * SetVirtualAddressMap() is called. As this placeholder cannot reset the
+ * system it simply return to the caller.
+ *
+ * Boards may override the helpers below to implement reset functionality.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @reset_type:		type of reset to perform
+ * @reset_status:	status code for the reset
+ * @data_size:		size of reset_data
+ * @reset_data:		information about the reset
+ */
+static void EFIAPI efirt_reset_system(enum efi_reset_type reset_type,
+				    efi_status_t reset_status,
+				    size_t data_size, void *reset_data)
+{
+	switch (reset_type) {
+	case EFI_RESET_WARM:
+		EFI_ENTRY(L"warm");
+		rt_restart_machine(RESTART_WARM);
+		break;
+	case EFI_RESET_COLD:
+		EFI_ENTRY(L"cold");
+		rt_restart_machine(0);
+		break;
+	case EFI_RESET_PLATFORM_SPECIFIC:
+		EFI_ENTRY(L"platform");
+		rt_restart_machine(0);
+		break;
+	case EFI_RESET_SHUTDOWN:
+		EFI_ENTRY(L"shutdown");
+		rt_poweroff_machine(0);
+		break;
+	}
+
+	__hang();
+}
+
+/**
+ * efirt_get_time() - get current time
+ *
+ * This function implements the GetTime runtime service after
+ * SetVirtualAddressMap() is called. As the barebox driver are not available
+ * anymore only an error code is returned.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @time:		pointer to structure to receive current time
+ * @capabilities:	pointer to structure to receive RTC properties
+ * Returns:		status code
+ */
+static efi_status_t EFIAPI efirt_get_time(
+			struct efi_time *time,
+			struct efi_time_cap *capabilities)
+{
+	return efirt_unimplemented();
+}
+
+/**
+ * efirt_set_time() - set current time
+ *
+ * This function implements the SetTime runtime service after
+ * SetVirtualAddressMap() is called. As the barebox driver are not available
+ * anymore only an error code is returned.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @time:		pointer to structure to with current time
+ * Returns:		status code
+ */
+static efi_status_t EFIAPI efirt_set_time(struct efi_time *time)
+{
+	return efirt_unimplemented();
+}
+
+/**
+ * efirt_update_capsule_unsupported() - process information from operating system
+ *
+ * This function implements the UpdateCapsule() runtime service.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @capsule_header_array:	pointer to array of virtual pointers
+ * @capsule_count:		number of pointers in capsule_header_array
+ * @scatter_gather_list:	pointer to array of physical pointers
+ * Returns:			status code
+ */
+static efi_status_t EFIAPI efirt_update_capsule_unsupported(
+			struct efi_capsule_header **capsule_header_array,
+			size_t capsule_count,
+			u64 scatter_gather_list)
+{
+	return efirt_unimplemented();
+}
+
+/**
+ * efirt_query_capsule_caps_unsupported() - check if capsule is supported
+ *
+ * This function implements the QueryCapsuleCapabilities() runtime service.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @capsule_header_array:	pointer to array of virtual pointers
+ * @capsule_count:		number of pointers in capsule_header_array
+ * @maximum_capsule_size:	maximum capsule size
+ * @reset_type:			type of reset needed for capsule update
+ * Returns:			status code
+ */
+static efi_status_t EFIAPI efirt_query_capsule_caps_unsupported(
+			struct efi_capsule_header **capsule_header_array,
+			size_t capsule_count,
+			u64 *maximum_capsule_size,
+			u32 *reset_type)
+{
+	return efirt_unimplemented();
+}
+
+static efi_status_t EFIAPI efirt_get_wakeup_time(char *enabled, char *pending,
+					       struct efi_time *time)
+{
+	return efirt_unimplemented();
+}
+
+static efi_status_t EFIAPI efirt_set_wakeup_time(char enabled,
+						 struct efi_time *time)
+{
+	return efirt_unimplemented();
+}
+
+static efi_status_t EFIAPI efirt_set_virtual_address_map(size_t memory_map_size,
+							 size_t descriptor_size,
+							 uint32_t descriptor_version,
+							 struct efi_memory_desc *virtmap)
+{
+	return efirt_unimplemented();
+}
+
+static efi_status_t EFIAPI efirt_convert_pointer(unsigned long dbg, void **address)
+{
+	return efirt_unimplemented();
+}
+
+static efi_status_t EFIAPI
+efirt_get_variable(u16 *variable_name, const efi_guid_t *guid,
+		   u32 *attributes, efi_uintn_t *data_size, void *data)
+{
+	efi_status_t ret;
+
+	EFI_ENTRY(variable_name);
+
+	ret = efi_get_variable_mem(variable_name, guid, attributes, data_size,
+				   data, NULL, EFI_VARIABLE_RUNTIME_ACCESS);
+
+	/* Remove EFI_VARIABLE_READ_ONLY flag */
+	if (attributes)
+		*attributes &= EFI_VARIABLE_MASK;
+
+	return EFI_EXIT(ret);
+}
+
+static efi_status_t EFIAPI
+efirt_get_next_variable_name(efi_uintn_t *variable_name_size,
+			     u16 *variable_name, efi_guid_t *guid)
+{
+	efi_status_t ret;
+
+	EFI_ENTRY(variable_name);
+
+	ret = efi_get_next_variable_name_mem(variable_name_size, variable_name,
+					      guid, EFI_VARIABLE_RUNTIME_ACCESS);
+
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efirt_query_variable_info_runtime() - runtime implementation of
+ *				         QueryVariableInfo()
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
+static efi_status_t EFIAPI
+efirt_query_variable_info(u32 attributes,
+			  u64 *maximum_variable_storage_size,
+			  u64 *remaining_variable_storage_size,
+			  u64 *maximum_variable_size)
+{
+	efi_status_t ret;
+
+	EFI_ENTRY(L"");
+
+	if (!(attributes & EFI_VARIABLE_RUNTIME_ACCESS))
+		return EFI_INVALID_PARAMETER;
+	if ((attributes & (EFI_VARIABLE_AUTHENTICATED_WRITE_ACCESS |
+			   EFI_VARIABLE_TIME_BASED_AUTHENTICATED_WRITE_ACCESS |
+			   EFI_VARIABLE_ENHANCED_AUTHENTICATED_ACCESS)))
+		return EFI_UNSUPPORTED;
+
+	ret = efi_query_variable_info_int(attributes,
+					  maximum_variable_storage_size,
+					  remaining_variable_storage_size,
+					  maximum_variable_size);
+
+	return EFI_EXIT(ret);
+}
+
+static efi_status_t EFIAPI efirt_get_next_high_mono_count(uint32_t *high_count)
+{
+	return efirt_unimplemented();
+}
+
+static struct efi_runtime_services efi_runtime_services_detached = {
+	.hdr = {
+		.signature = EFI_RUNTIME_SERVICES_SIGNATURE,
+		.revision = EFI_SPECIFICATION_VERSION,
+		.headersize = sizeof(struct efi_runtime_services),
+	},
+	.get_time = efirt_get_time,
+	.set_time = efirt_set_time,
+	.get_wakeup_time = efirt_get_wakeup_time,
+	.set_wakeup_time = efirt_set_wakeup_time,
+	.set_virtual_address_map = efirt_set_virtual_address_map,
+	.convert_pointer = efirt_convert_pointer,
+	.get_variable = efirt_get_variable,
+	.get_next_variable = efirt_get_next_variable_name,
+	.set_variable = efirt_set_variable,
+	.get_next_high_mono_count = efirt_get_next_high_mono_count,
+	.reset_system = efirt_reset_system,
+	.update_capsule = efirt_update_capsule_unsupported,
+	.query_capsule_caps = efirt_query_capsule_caps_unsupported,
+	.query_variable_info = efirt_query_variable_info,
+};
+
+void efi_runtime_detach(struct efi_system_table *systab)
+{
+	/* Disable boot time services */
+	systab->con_in_handle = NULL;
+	systab->con_in = NULL;
+	systab->con_out_handle = NULL;
+	systab->con_out = NULL;
+	systab->stderr_handle = NULL;
+	systab->std_err = NULL;
+	systab->boottime = NULL;
+
+	systab->runtime = &efi_runtime_services_detached;
+
+	/* Recalculate CRC32 */
+	efi_update_table_header_crc32(&systab->hdr);
+	efi_update_table_header_crc32(&systab->runtime->hdr);
+
+	puts_ll("detached\n");
+}
-- 
2.47.3



