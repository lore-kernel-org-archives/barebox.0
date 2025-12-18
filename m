Delivery-date: Thu, 18 Dec 2025 12:41:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCNd-00Cobc-2W
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:41:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCN4-0002Zm-8w
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:41:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SuhqUx33fLRN/j0CiJ+jVeRgDeyrSesEFBXGmfE/xNc=; b=LEyBvUnt82p8+GiDmJCEyTfVxf
	CmOXWt1xSmbYZyKoXzka4dV2+MqrsFMOc90FXhE4iiScP8ebmtiyaztGm40kSHQAPg5OioplBj6g7
	afJ19sqBkxIGUjy/RhGfObLA65Otiehk5nfmcYUfMeFepL5orbyjx/PcjZ2u/5VHz38Q/PKgfqduW
	QlOTe1UUcSo5LAwCIxbJIx/zJ1ebzZMy8RAxgOEl8vuBRyMJ5ApXT91lasJx672zQ2zbkWkWxqmQl
	71s5WVPIdi7RRPMg35JrH3qNe5MiCybQ+46JLuBpO0ZfEqFd643yZR6KB2iqIRMXFcP67mGd/huWH
	lYXzKZgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCKZ-00000008Lne-0GlW;
	Thu, 18 Dec 2025 11:38:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJi-00000008KYm-3X8N
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:37:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SuhqUx33fLRN/j0CiJ+jVeRgDeyrSesEFBXGmfE/xNc=; b=adnAaGEZYyLp2AQfmyBowWRv+p
	EeRmYNNbxjBLPo0Yg+pWZm7eOahj9NJeWmFjgRagfHq0/XMldB/pjR14ehG0A29OK6capkhkJFV6y
	l/1DqSmU95E4XvhAENNVoyG5QZz/hc9227ZmfRKnJ7+tI0ojcp03vkbbEaDLKgw5jbzO4IgRGGzYb
	SgKrYxjFsQwGiQAaP+GaNsUUjqno8NPXeTE6ltSBAIy02v1XP87KVR5SOxy2mEtsh4J4DAzCLOCNs
	j989768RkxUNBCN+I/SbiyKBYlCXzbqXWha3IxfpW8j9PE5ehil0reyPpbdSMSK41nICbUm8D7URF
	9zEaPwzA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBRz-00000008fRZ-0txx
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-0008Dg-Vk; Thu, 18 Dec 2025 12:36:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJN-006GwA-2Z;
	Thu, 18 Dec 2025 12:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw3-0000000AVre-40vs;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:39 +0100
Message-ID: <20251218111242.1527495-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104152_544335_714D69B5 
X-CRM114-Status: GOOD (  28.09  )
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
Subject: [PATCH v1 19/54] efi: loader: add support for runtime services before ExitBootServices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Before ExitBootServices, barebox is the main firmware running and
shutdown_barebox has not been called, so we can easily implement
services using normal functionality. Start by implementing the low
hanging fruits.

This will be further fleshed out in later commits.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Kconfig                       |   8 +
 efi/loader/Kconfig                |  20 ++
 efi/loader/Makefile               |   1 +
 efi/loader/boot.c                 |   6 +
 efi/loader/runtime.c              | 308 ++++++++++++++++++++++++++++++
 efi/runtime/Kconfig               |  44 +++++
 include/efi/loader.h              |   4 +
 include/efi/table/rt_properties.h |  30 +++
 8 files changed, 421 insertions(+)
 create mode 100644 efi/loader/runtime.c
 create mode 100644 efi/runtime/Kconfig
 create mode 100644 include/efi/table/rt_properties.h

diff --git a/efi/Kconfig b/efi/Kconfig
index 31fccaaa8640..792073a9ef24 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -29,6 +29,7 @@ config EFI_LOADER
 	bool "barebox as EFI loader (provider)"
 	depends on HAVE_EFI_LOADER
 	select EFI
+	select EFI_RUNTIME
 	select EFI_GUID
 	select EFI_DEVICEPATH
 	select CHARSET
@@ -46,6 +47,13 @@ if EFI_LOADER
 source "efi/loader/Kconfig"
 endif
 
+config EFI_RUNTIME
+	bool
+
+if EFI_RUNTIME
+source "efi/runtime/Kconfig"
+endif
+
 config EFI
 	bool
 
diff --git a/efi/loader/Kconfig b/efi/loader/Kconfig
index 43a80869cf8b..eaa5087b9ab8 100644
--- a/efi/loader/Kconfig
+++ b/efi/loader/Kconfig
@@ -9,3 +9,23 @@ config EFI_LOADER_DEBUG_SUPPORT
 	  Table and the EFI_SYSTEM_TABLE_POINTER which is used by the debug
 	  agent or an external debugger to determine loaded image information
 	  in a quiescent manner.
+
+menu "UEFI services"
+
+config EFI_LOADER_GET_TIME
+	bool "GetTime() runtime service"
+	depends on RTC_CLASS
+	default y
+	help
+	  Provide the GetTime() runtime service at boottime. This service
+	  can be used by an EFI application to read the real time clock.
+
+config EFI_LOADER_SET_TIME
+	bool "SetTime() runtime service"
+	depends on RTC_CLASS
+	default y
+	help
+	  Provide the SetTime() runtime service at boottime. This service
+	  can be used by an EFI application to adjust the real time clock.
+
+endmenu
diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index a25960b477db..92e4b51eb665 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -6,3 +6,4 @@ obj-y += table.o
 obj-y += devicepath.o
 obj-y += debug_support.o
 obj-y += boot.o
+obj-y += runtime.o
diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index 7d8e2914c3a0..1e2496f1ec53 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -3233,8 +3233,14 @@ efi_status_t efi_initialize_system_table(void)
 {
 	systab.boottime = &efi_boot_services;
 
+	/*
+	 * This will be overwritten dynamically at detach time.
+	 */
+	systab.runtime = &efi_runtime_services;
+
 	/* Set CRC32 field in table headers */
 	efi_update_table_header_crc32(&systab.hdr);
+	efi_update_table_header_crc32(&efi_runtime_services.hdr);
 	efi_update_table_header_crc32(&efi_boot_services.hdr);
 
 	if (IS_ENABLED(CONFIG_EFI_LOADER_DEBUG_SUPPORT)) {
diff --git a/efi/loader/runtime.c b/efi/loader/runtime.c
new file mode 100644
index 000000000000..76b9bc101a06
--- /dev/null
+++ b/efi/loader/runtime.c
@@ -0,0 +1,308 @@
+// SPDX-License-Identifier: GPL-2.0+
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/e9c34fab18a9a0022b36729afd8e262e062764e2/lib/efi_loader/efi_runtime.c
+/*
+ *  EFI application runtime services
+ *
+ *  Copyright (c) 2016 Alexander Graf
+ */
+
+#define pr_fmt(fmt) "efi-loader: runtime: " fmt
+
+#include <efi/loader.h>
+#include <efi/guid.h>
+#include <efi/error.h>
+#include <linux/printk.h>
+#include <barebox.h>
+#include <efi/loader/table.h>
+#include <efi/loader/trace.h>
+#include <efi/loader/event.h>
+#include <efi/mode.h>
+#include <efi/table/rt_properties.h>
+#include <poweroff.h>
+#include <restart.h>
+#include <linux/rtc.h>
+
+
+/*
+ * EFI runtime code lives in two stages. In the first stage, EFI loader and an
+ * EFI payload are running concurrently at the same time. In this mode, we can
+ * handle a good number of runtime callbacks
+ */
+
+#define CHECK_RT_FLAG(call) \
+	(IS_ENABLED(CONFIG_EFI_RUNTIME_##call) ? EFI_RT_SUPPORTED_##call : 0)
+
+/**
+ * efi_init_runtime_supported() - create runtime properties table
+ *
+ * Create a configuration table specifying which services are available at
+ * runtime.
+ *
+ * Return:	status code
+ */
+efi_status_t efi_init_runtime_supported(void)
+{
+	efi_status_t ret;
+	struct efi_rt_properties_table *rt_table;
+
+	ret = efi_allocate_pool(EFI_RUNTIME_SERVICES_DATA,
+				sizeof(struct efi_rt_properties_table),
+				(void **)&rt_table, "RtTable");
+	if (ret != EFI_SUCCESS)
+		return ret;
+
+	rt_table->version = EFI_RT_PROPERTIES_TABLE_VERSION;
+	rt_table->length = sizeof(struct efi_rt_properties_table);
+	rt_table->runtime_services_supported =
+		CHECK_RT_FLAG(GET_TIME) |
+		CHECK_RT_FLAG(SET_TIME) |
+		CHECK_RT_FLAG(GET_WAKEUP_TIME) |
+		CHECK_RT_FLAG(SET_WAKEUP_TIME) |
+		CHECK_RT_FLAG(GET_VARIABLE) |
+		CHECK_RT_FLAG(GET_NEXT_VARIABLE_NAME) |
+		CHECK_RT_FLAG(SET_VARIABLE) |
+		CHECK_RT_FLAG(SET_VIRTUAL_ADDRESS_MAP) |
+		CHECK_RT_FLAG(CONVERT_POINTER) |
+		CHECK_RT_FLAG(GET_NEXT_HIGH_MONOTONIC_COUNT) |
+		CHECK_RT_FLAG(RESET_SYSTEM) |
+		CHECK_RT_FLAG(UPDATE_CAPSULE) |
+		CHECK_RT_FLAG(QUERY_CAPSULE_CAPABILITIES) |
+		CHECK_RT_FLAG(QUERY_VARIABLE_INFO);
+
+	return efi_install_configuration_table(&efi_rt_properties_table_guid, rt_table);
+}
+
+/**
+ * efi_reset_system_boottime() - reset system at boot time
+ *
+ * This function implements the ResetSystem() runtime service before
+ * SetVirtualAddressMap() is called.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @reset_type:		type of reset to perform
+ * @reset_status:	status code for the reset
+ * @data_size:		size of reset_data
+ * @reset_data:		information about the reset
+ */
+static void EFIAPI efi_reset_system_boottime(
+			enum efi_reset_type reset_type,
+			efi_status_t reset_status,
+			size_t data_size, void *reset_data)
+{
+	struct efi_event *evt;
+
+	EFI_ENTRY("%d %lx %zx %p", reset_type, reset_status, data_size,
+		  reset_data);
+
+	/* Notify reset */
+	list_for_each_entry(evt, &efi_events, link) {
+		if (evt->group &&
+		    !efi_guidcmp(*evt->group,
+			     efi_guid_event_group_reset_system)) {
+			efi_signal_event(evt);
+			break;
+		}
+	}
+
+	switch (reset_type) {
+	case EFI_RESET_WARM:
+		restart_machine(RESTART_WARM);
+		break;
+	case EFI_RESET_COLD:
+	case EFI_RESET_PLATFORM_SPECIFIC:
+		restart_machine(0);
+		break;
+	case EFI_RESET_SHUTDOWN:
+		poweroff_machine(0);
+		break;
+	}
+
+	hang();
+}
+
+/**
+ * efi_get_time_boottime() - get current time at boot time
+ *
+ * This function implements the GetTime runtime service before
+ * SetVirtualAddressMap() is called.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @time:		pointer to structure to receive current time
+ * @capabilities:	pointer to structure to receive RTC properties
+ * Returns:		status code
+ */
+static efi_status_t EFIAPI efi_get_time_boottime(
+			struct efi_time *time,
+			struct efi_time_cap *capabilities)
+{
+	efi_status_t ret;
+	struct rtc_time tm;
+	struct rtc_device *rtc;
+
+	EFI_ENTRY("%p %p", time, capabilities);
+
+	if (!IS_ENABLED(CONFIG_EFI_LOADER_GET_TIME)) {
+		ret = EFI_UNSUPPORTED;
+		goto out;
+	}
+
+	if (!time) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	rtc = rtc_lookup("rtc0");
+	if (IS_ERR(rtc)) {
+		ret = EFI_UNSUPPORTED;
+		goto out;
+	}
+
+	if (rtc_read_time(rtc, &tm)) {
+		ret = EFI_DEVICE_ERROR;
+		goto out;
+	}
+
+	memset(time, 0, sizeof(*time));
+	time->year = tm.tm_year;
+	time->month = tm.tm_mon;
+	time->day = tm.tm_mday;
+	time->hour = tm.tm_hour;
+	time->minute = tm.tm_min;
+	time->second = tm.tm_sec;
+
+	if (tm.tm_isdst > 0)
+		time->daylight =
+			EFI_TIME_ADJUST_DAYLIGHT | EFI_TIME_IN_DAYLIGHT;
+	else if (!tm.tm_isdst)
+		time->daylight = EFI_TIME_ADJUST_DAYLIGHT;
+	else
+		time->daylight = 0;
+	time->timezone = EFI_UNSPECIFIED_TIMEZONE;
+
+	if (capabilities) {
+		/* Set reasonable dummy values */
+		capabilities->resolution = 1;		/* 1 Hz */
+		capabilities->accuracy = 100000000;	/* 100 ppm */
+		capabilities->sets_to_zero = false;
+	}
+
+	ret = EFI_SUCCESS;
+out:
+	return EFI_EXIT(ret);
+}
+
+
+/**
+ * efi_validate_time() - checks if timestamp is valid
+ *
+ * @time:	timestamp to validate
+ * Returns:	0 if timestamp is valid, 1 otherwise
+ */
+static int efi_validate_time(struct efi_time *time)
+{
+	return (!time ||
+		time->year < 1900 || time->year > 9999 ||
+		!time->month || time->month > 12 || !time->day ||
+		time->day > rtc_month_days(time->month - 1, time->year) ||
+		time->hour > 23 || time->minute > 59 || time->second > 59 ||
+		time->nanosecond > 999999999 ||
+		time->daylight &
+		~(EFI_TIME_IN_DAYLIGHT | EFI_TIME_ADJUST_DAYLIGHT) ||
+		((time->timezone < -1440 || time->timezone > 1440) &&
+		time->timezone != EFI_UNSPECIFIED_TIMEZONE));
+}
+
+/**
+ * efi_set_time_boottime() - set current time
+ *
+ * This function implements the SetTime() runtime service before
+ * SetVirtualAddressMap() is called.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * @time:		pointer to structure to with current time
+ * Returns:		status code
+ */
+static efi_status_t EFIAPI efi_set_time_boottime(struct efi_time *time)
+{
+	efi_status_t ret = EFI_SUCCESS;
+	struct rtc_time tm;
+	struct rtc_device *rtc;
+
+	if (!IS_ENABLED(CONFIG_EFI_LOADER_SET_TIME))
+		return EFI_EXIT(EFI_UNSUPPORTED);
+
+	EFI_ENTRY("%p", time);
+
+	if (efi_validate_time(time)) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	rtc = rtc_lookup("rtc0");
+	if (IS_ERR(rtc)) {
+		ret = EFI_UNSUPPORTED;
+		goto out;
+	}
+
+	memset(&tm, 0, sizeof(tm));
+	tm.tm_year = time->year;
+	tm.tm_mon = time->month;
+	tm.tm_mday = time->day;
+	tm.tm_hour = time->hour;
+	tm.tm_min = time->minute;
+	tm.tm_sec = time->second;
+
+	switch (time->daylight) {
+	case EFI_TIME_ADJUST_DAYLIGHT:
+		tm.tm_isdst = 0;
+		break;
+	case EFI_TIME_ADJUST_DAYLIGHT | EFI_TIME_IN_DAYLIGHT:
+		tm.tm_isdst = 1;
+		break;
+	default:
+		tm.tm_isdst = -1;
+		break;
+	}
+
+	/* Calculate day of week */
+	rtc_calc_weekday(&tm);
+
+	if (rtc_set_time(rtc, &tm))
+		ret = EFI_DEVICE_ERROR;
+out:
+	return EFI_EXIT(ret);
+}
+
+/*
+ * The implementation of these services depends on barebox still running,
+ * i.e. BS->ExitBootServices() was not yet called. When it's called,
+ * the runtime services will be replaced by the detached implementation,
+ * so we need not take any special consideration here.
+ */
+struct efi_runtime_services efi_runtime_services = {
+	.hdr = {
+		.signature = EFI_RUNTIME_SERVICES_SIGNATURE,
+		.revision = EFI_SPECIFICATION_VERSION,
+		.headersize = sizeof(struct efi_runtime_services),
+	},
+	.get_time = &efi_get_time_boottime,
+	.set_time = &efi_set_time_boottime,
+	.get_wakeup_time = (void *)efi_unimplemented,
+	.set_wakeup_time = (void *)efi_unimplemented,
+	.set_virtual_address_map = (void *)efi_unimplemented,
+	.convert_pointer = (void *)efi_unimplemented,
+	.get_variable = (void *)efi_unimplemented,
+	.get_next_variable = (void *)efi_unimplemented,
+	.set_variable = (void *)efi_unimplemented,
+	.get_next_high_mono_count = (void *)efi_unimplemented,
+	.reset_system = &efi_reset_system_boottime,
+	.update_capsule = (void *)efi_unimplemented,
+	.query_capsule_caps = (void *)efi_unimplemented,
+	.query_variable_info = (void *)efi_unimplemented,
+};
diff --git a/efi/runtime/Kconfig b/efi/runtime/Kconfig
new file mode 100644
index 000000000000..4506322305b9
--- /dev/null
+++ b/efi/runtime/Kconfig
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: GPL-2.0
+
+config EFI_RUNTIME_GET_TIME
+	bool
+
+config EFI_RUNTIME_SET_TIME
+	bool
+
+config EFI_RUNTIME_GET_WAKEUP_TIME
+	bool
+
+config EFI_RUNTIME_SET_WAKEUP_TIME
+	bool
+
+config EFI_RUNTIME_GET_VARIABLE
+	bool
+
+config EFI_RUNTIME_GET_NEXT_VARIABLE_NAME
+	bool
+
+config EFI_RUNTIME_SET_VARIABLE
+	bool
+
+config EFI_RUNTIME_SET_VIRTUAL_ADDRESS_MAP
+	bool
+
+config EFI_RUNTIME_CONVERT_POINTER
+	bool
+
+config EFI_RUNTIME_GET_NEXT_HIGH_MONOTONIC_COUNT
+	bool
+
+config EFI_RUNTIME_RESET_SYSTEM
+	def_bool y
+
+config EFI_RUNTIME_UPDATE_CAPSULE
+	bool
+
+config EFI_RUNTIME_QUERY_CAPSULE_CAPABILITIES
+	bool
+
+config EFI_RUNTIME_QUERY_VARIABLE_INFO
+	bool
+
diff --git a/include/efi/loader.h b/include/efi/loader.h
index 5b6b7d996de0..8a51cde0ee25 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -19,6 +19,7 @@ struct efi_table_hdr;
 /* Key identifying current memory map */
 extern efi_uintn_t efi_memory_map_key;
 
+extern struct efi_runtime_services efi_runtime_services;
 extern struct efi_system_table systab;
 
 /* Called by bootefi to initialize runtime */
@@ -52,6 +53,9 @@ efi_status_t efi_get_memory_map(efi_uintn_t *memory_map_size,
 				efi_uintn_t *descriptor_size,
 				uint32_t *descriptor_version);
 
+/* Indicate supported runtime services */
+efi_status_t efi_init_runtime_supported(void);
+
 /* Update CRC32 in table header */
 void efi_update_table_header_crc32(struct efi_table_hdr *table);
 
diff --git a/include/efi/table/rt_properties.h b/include/efi/table/rt_properties.h
new file mode 100644
index 000000000000..aec6777dbc45
--- /dev/null
+++ b/include/efi/table/rt_properties.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __EF_TABLE_RT_PROPERTIES_H_
+#define __EF_TABLE_RT_PROPERTIES_H_
+
+#include <linux/types.h>
+
+#define EFI_RT_SUPPORTED_GET_TIME			0x0001
+#define EFI_RT_SUPPORTED_SET_TIME			0x0002
+#define EFI_RT_SUPPORTED_GET_WAKEUP_TIME		0x0004
+#define EFI_RT_SUPPORTED_SET_WAKEUP_TIME		0x0008
+#define EFI_RT_SUPPORTED_GET_VARIABLE			0x0010
+#define EFI_RT_SUPPORTED_GET_NEXT_VARIABLE_NAME		0x0020
+#define EFI_RT_SUPPORTED_SET_VARIABLE			0x0040
+#define EFI_RT_SUPPORTED_SET_VIRTUAL_ADDRESS_MAP	0x0080
+#define EFI_RT_SUPPORTED_CONVERT_POINTER		0x0100
+#define EFI_RT_SUPPORTED_GET_NEXT_HIGH_MONOTONIC_COUNT	0x0200
+#define EFI_RT_SUPPORTED_RESET_SYSTEM			0x0400
+#define EFI_RT_SUPPORTED_UPDATE_CAPSULE			0x0800
+#define EFI_RT_SUPPORTED_QUERY_CAPSULE_CAPABILITIES	0x1000
+#define EFI_RT_SUPPORTED_QUERY_VARIABLE_INFO		0x2000
+
+#define EFI_RT_PROPERTIES_TABLE_VERSION	0x1
+
+struct efi_rt_properties_table {
+	u16 version;
+	u16 length;
+	u32 runtime_services_supported;
+};
+
+#endif
-- 
2.47.3



