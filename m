Delivery-date: Thu, 18 Dec 2025 12:40:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCMf-00CoUH-04
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:40:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLz-0001mA-IL
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:40:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R/2DIxpin+i9a9Z5MRKr329nWcmwzKpylpB8zG0/M8k=; b=Y2Jb9zqM85D6lTykBoDNGsaV2O
	M3hlNu0ja0Bu6KG3tgxvvhwLEen9/5OgkbJ4aZXPA07BDKrMTDv7IuXF6p8nYatLeDVowi6+jVZA/
	Te6hQwgMD70EuHY8OlH/sxT9MlCXCNQcp72DMYAYxRtc7a4rV7D3ILHru1COMIlsMCh1V8OPp+Dy9
	QGKx7jNZKY9eypebHwEmBZkr245oiO8dUvjOXTPHzPamTxOVYWAtF+p7XirmuXo8ecs61nxWBCa8A
	YWxKTKzwpEXHJ+6VimB9awWvqEfhRva2Pyn9EmVM0t3KpwOSX9Lu66DFM+wH8WVSXPaN6Yp1MWx5f
	vf7hBkmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCK2-00000008KvD-3WlB;
	Thu, 18 Dec 2025 11:37:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJX-00000008KN6-1JLF
	for barebox@bombadil.infradead.org;
	Thu, 18 Dec 2025 11:36:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=R/2DIxpin+i9a9Z5MRKr329nWcmwzKpylpB8zG0/M8k=; b=rdmktdK+e8GzMhdVGjp4RmzLB4
	wslvphafpqMeGmGjye3pbkEx7W/qtkLhar08buNqjkrbmg0lZdkn34tK284Rzr+dON+FANBj649Hl
	gdu7+lfFZQh/fnRjpz38S4aXxhd7sHBPmwtocvBd5AKvVz+NV5xauMIkV79OGmfWxLz8tTP6OP86n
	Zo0615p0n46IdE61vL2TPUNMpS4gEfYaXCD1SARZ5T29L63NhSSLiES5ROIGjwRccaUj+PMaEIvjA
	622dgeBpoP53fmqszVWyPboqySBmWgQb/c2bUL849GXCsmS8hnHIRbI4Paejzt5+sR7YgEVznMt7H
	qB4JjuNA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWBS0-00000008fRN-1bX1
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 10:41:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-0008B1-V0; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006GvO-2U;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-0imU;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:05 +0100
Message-ID: <20251218111242.1527495-46-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_104141_308524_F37E7638 
X-CRM114-Status: GOOD (  27.57  )
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
Subject: [PATCH v1 45/54] efi: loader: implement bootm handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As counterpart to the EFI-less bootm handlers for the different
architectures, define EFI-enabled variants that will initialize the EFI
loader support and load the PE by EFI means.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/Makefile |   1 +
 efi/loader/bootm.c  | 358 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 359 insertions(+)
 create mode 100644 efi/loader/bootm.c

diff --git a/efi/loader/Makefile b/efi/loader/Makefile
index 62483057b426..2a78361e58d5 100644
--- a/efi/loader/Makefile
+++ b/efi/loader/Makefile
@@ -14,3 +14,4 @@ obj-y += pe.o
 obj-y += loadopts.o
 obj-$(CONFIG_BOOT) += bootesp.o
 obj-$(CONFIG_EFI_LOADER_BOOTMGR) += efibootmgr.o
+obj-$(CONFIG_BOOTM) += bootm.o
diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
new file mode 100644
index 000000000000..dffe53bcf9c8
--- /dev/null
+++ b/efi/loader/bootm.c
@@ -0,0 +1,358 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://github.com/u-boot/u-boot/blob/162a6b3df349295bf766c1d128d71b4547e8d56e/lib/efi_loader/efi_helper.c
+/*
+ * Copyright (c) 2016 Alexander Graf
+ */
+#define pr_fmt(fmt) "efi-loader: bootm: " fmt
+
+#include <clock.h>
+#include <linux/sizes.h>
+#include <memory.h>
+#include <command.h>
+#include <magicvar.h>
+#include <init.h>
+#include <driver.h>
+#include <io.h>
+#include <bootargs.h>
+#include <malloc.h>
+#include <string.h>
+#include <linux/err.h>
+#include <fs.h>
+#include <filetype.h>
+#include <libfile.h>
+#include <bootm.h>
+#include <wchar.h>
+#include <efi/mode.h>
+#include <efi/loader.h>
+#include <efi/loader/object.h>
+#include <efi/loader/option.h>
+#include <efi/loader/table.h>
+#include <efi/loader/devicepath.h>
+#include <efi/loader/image.h>
+#include <efi/loader/event.h>
+#include <efi/guid.h>
+#include <efi/services.h>
+#include <efi/error.h>
+#include <efi/initrd.h>
+#include <efi/devicepath.h>
+
+/**
+ * copy_fdt() - Copy the device tree to a new location available to EFI
+ *
+ * The FDT is copied to a suitable location within the EFI memory map.
+ * Additional 12 KiB are added to the space in case the device tree needs to be
+ * expanded later with fdt_open_into().
+ *
+ * @fdtp:	On entry a pointer to the flattened device tree.
+ *		On exit a pointer to the copy of the flattened device tree.
+ *		FDT start
+ * Return:	status code
+ */
+static efi_status_t copy_fdt(void **fdtp)
+{
+	efi_status_t efiret;
+	void *fdt, *new_fdt;
+	static u64 new_fdt_addr;
+	static efi_uintn_t fdt_pages;
+	size_t fdt_size;
+
+	/*
+	 * Remove the configuration table that might already be
+	 * installed, ignoring EFI_NOT_FOUND if no device-tree
+	 * is installed
+	 */
+	efi_install_configuration_table(&efi_fdt_guid, NULL);
+
+	if (new_fdt_addr) {
+		pr_debug("%s: Found allocated memory at %#llx, with %#zx pages\n",
+			  __func__, new_fdt_addr, fdt_pages);
+
+		efiret = efi_free_pages(new_fdt_addr, fdt_pages);
+		if (efiret != EFI_SUCCESS)
+			pr_err("Unable to free up existing FDT memory region\n");
+
+		new_fdt_addr = 0;
+		fdt_pages = 0;
+	}
+
+	/*
+	 * Give us at least 12 KiB of breathing room in case the device tree
+	 * needs to be expanded later.
+	 */
+	fdt = *fdtp;
+	fdt_pages = efi_size_in_pages(fdt_totalsize(fdt) + 0x3000);
+	fdt_size = fdt_pages << EFI_PAGE_SHIFT;
+
+	/*
+	 * Safe fdt location is at 127 MiB.
+	 * On the sandbox convert from the sandbox address space.
+	 */
+	efiret = efi_allocate_pages(EFI_ALLOCATE_ANY_PAGES,
+				 EFI_ACPI_RECLAIM_MEMORY, fdt_pages,
+				 &new_fdt_addr, "FDT");
+	if (efiret != EFI_SUCCESS) {
+		pr_err("Failed to reserve space for FDT\n");
+		goto done;
+	}
+
+	new_fdt = (void *)(uintptr_t)new_fdt_addr;
+	memcpy(new_fdt, fdt, fdt_totalsize(fdt));
+	fdt_set_totalsize(new_fdt, fdt_size);
+
+	*fdtp = new_fdt;
+
+done:
+	return efiret;
+}
+
+/**
+ * efi_install_fdt() - install device tree
+ *
+ * If fdt is not NULL, the device tree located at that memory
+ * address will will be installed as configuration table, otherwise the device
+ * tree located at the address indicated by environment variable fdt_addr or as
+ * fallback fdtcontroladdr will be used.
+ *
+ * On architectures using ACPI tables device trees shall not be installed as
+ * configuration table.
+ *
+ * @fdt:	address of device tree
+ *		the hardware device tree as indicated by environment variable
+ *		fdt_addr or as fallback the internal device tree as indicated by
+ *		the environment variable fdtcontroladdr
+ * Return:	status code
+ */
+static efi_status_t efi_install_fdt(void *fdt)
+{
+	/*
+	 * The EBBR spec requires that we have either an FDT or an ACPI table
+	 * but not both.
+	 */
+	efi_status_t ret;
+
+	/* Install device tree */
+	if (fdt_check_header(fdt)) {
+		pr_err("invalid device tree\n");
+		return EFI_LOAD_ERROR;
+	}
+
+	/* Prepare device tree for payload */
+	ret = copy_fdt(&fdt);
+	if (ret) {
+		pr_err("out of memory\n");
+		return EFI_OUT_OF_RESOURCES;
+	}
+
+	/* Install device tree as UEFI table */
+	ret = efi_install_configuration_table(&efi_fdt_guid, fdt);
+	if (ret != EFI_SUCCESS) {
+		pr_err("failed to install device tree\n");
+		return ret;
+	}
+
+	return EFI_SUCCESS;
+}
+
+/**
+ * efi_install_initrd() - install initrd
+ *
+ * Install the initrd located at @initrd using the EFI_LOAD_FILE2
+ * protocol.
+ *
+ * @initrd:	address of initrd or NULL if none is provided
+ * @initrd_sz:	size of initrd
+ * Return:	status code
+ */
+static efi_status_t efi_install_initrd(struct image_data *data,
+				       struct resource *source)
+{
+	const struct resource *initrd_res;
+	unsigned long initrd_start;
+
+	if (!IS_ENABLED(CONFIG_BOOTM_INITRD))
+		return EFI_SUCCESS;
+
+	if (UIMAGE_IS_ADDRESS_VALID(data->initrd_address))
+		initrd_start = data->initrd_address;
+	else
+		initrd_start = EFI_PAGE_ALIGN(source->end + 1);
+
+	initrd_res = bootm_load_initrd(data, initrd_start);
+	if (IS_ERR(initrd_res))
+		return PTR_ERR(initrd_res);
+	if (initrd_res)
+		efi_initrd_register((void *)initrd_res->start,
+				    resource_size(initrd_res));
+
+	return EFI_SUCCESS;
+}
+
+static int efi_loader_bootm(struct image_data *data)
+{
+	resource_size_t start, end;
+	void *load_option = NULL;
+	u32 load_option_size = 0;
+	efi_handle_t handle;
+	struct efi_device_path *file_path = NULL;
+	struct resource *source;
+	struct efi_event *evt;
+	size_t exit_data_size = 0;
+	u16 *exit_data = NULL;
+	efi_status_t efiret;
+	int ret = 0;
+	void *fdt;
+	int flags = 0;
+
+	memory_bank_first_find_space(&start, &end);
+	data->os_address = start;
+
+	source = file_to_sdram(data->os_file, data->os_address, MEMTYPE_LOADER_CODE);
+	if (!source)
+		return -EINVAL;
+
+	if (filetype_is_linux_efi_image(data->os_type)) {
+		const char *options;
+
+		options = linux_bootargs_get();
+		if (options) {
+			load_option = xstrdup_char_to_wchar(options);
+			load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
+		}
+	}
+
+	file_path = efi_dp_from_file(AT_FDCWD, data->os_file);
+
+	pr_info("Loading %pD\n", file_path);
+
+	/* Initialize EFI drivers */
+	efiret = efi_init_obj_list();
+	if (efiret) {
+		pr_err("Cannot initialize UEFI sub-system: %pe\n",
+			ERR_PTR(-efi_errno(ret)));
+		goto out;
+	}
+
+	ret = -EINVAL;
+
+	fdt = bootm_get_devicetree(data);
+	if (IS_ERR(fdt))
+		return PTR_ERR(fdt);
+	if (fdt) {
+		ret = efi_install_fdt(fdt);
+		if (ret)
+			return ret;
+	}
+
+	efiret = efi_install_initrd(data, source);
+	if(efiret != EFI_SUCCESS)
+		goto out;
+
+	if (data->verbose >= 1)
+		flags |= EFI_VERBOSE_RUN;
+	if (data->dryrun)
+		flags |= EFI_DRYRUN;
+
+	efiret = efiloader_load_image(false, efi_root, file_path,
+				(void *)source->start,
+				resource_size(source), &handle);
+	if (efiret != EFI_SUCCESS) {
+		pr_err("Loading image failed\n");
+		goto out;
+	}
+
+	efiret = efi_set_load_options(handle, load_option_size, load_option);
+	if (efiret)
+		goto out;
+
+	/* On ARM, PBL should have already moved us into EL2 here, so
+	 * no need to switch modes
+	 */
+
+	/*
+	 * The UEFI standard requires that the watchdog timer is set to five
+	 * minutes when invoking an EFI boot option.
+	 *
+	 * Unified Extensible Firmware Interface (UEFI), version 2.7 Errata A
+	 * 7.5. Miscellaneous Boot Services - EFI_BOOT_SERVICES.SetWatchdogTimer
+	 */
+	ret = efi_set_watchdog(300);
+	if (ret != EFI_SUCCESS) {
+		pr_err("failed to set watchdog timer\n");
+		goto out;
+	}
+
+	/* Call our payload! */
+	ret = __efi_start_image(handle, &exit_data_size, &exit_data, flags);
+	if (ret != EFI_SUCCESS) {
+		pr_err("## Application failed, r = %lu\n",
+			ret & ~EFI_ERROR_MASK);
+		if (exit_data) {
+			pr_err("## %ls\n", exit_data);
+			efi_free_pool(exit_data);
+		}
+	}
+
+	/* Notify EFI_EVENT_GROUP_RETURN_TO_EFIBOOTMGR event group. */
+	list_for_each_entry(evt, &efi_events, link) {
+		if (evt->group &&
+		    !efi_guidcmp(*evt->group,
+				 efi_guid_event_group_return_to_efibootmgr)) {
+			efi_signal_event(evt);
+			systab.boottime->close_event(evt);
+			break;
+		}
+	}
+
+	/* Control is returned to us, disable EFI watchdog */
+	efi_set_watchdog(0);
+
+	return ret;
+
+out:
+	efi_initrd_unregister();
+	efi_install_configuration_table(&efi_fdt_guid, NULL);
+	efi_free_pool(file_path);
+	free(load_option);
+	release_sdram_region(source);
+
+	return ret ?: -efi_errno(efiret);
+}
+
+static struct image_handler riscv_linux_efi_handler = {
+	.name = "RISC-V Linux/EFI image",
+	.bootm = efi_loader_bootm,
+	.check_image = bootm_efi_check_image,
+	.filetype = filetype_riscv_efi_linux_image,
+};
+
+static struct image_handler aarch64_linux_efi_handler = {
+	.name = "ARM aarch64 Linux/EFI image",
+	.bootm = efi_loader_bootm,
+	.check_image = bootm_efi_check_image,
+	.filetype = filetype_arm64_efi_linux_image,
+};
+
+static struct image_handler arm32_linux_efi_handler = {
+	.name = "ARM arm32 Linux/EFI image",
+	.bootm = efi_loader_bootm,
+	.check_image = bootm_efi_check_image,
+	.filetype = filetype_arm_efi_zimage,
+};
+
+static struct image_handler efi_image_loader = {
+	.name = "EFI Application",
+	.bootm = efi_loader_bootm,
+	.filetype = filetype_exe,
+};
+
+static int efiloader_bootm_register(void)
+{
+	if (IS_ENABLED(CONFIG_ARM32))
+		register_image_handler(&arm32_linux_efi_handler);
+	if (IS_ENABLED(CONFIG_ARM64))
+		register_image_handler(&aarch64_linux_efi_handler);
+	if (IS_ENABLED(CONFIG_RISCV))
+		register_image_handler(&riscv_linux_efi_handler);
+	return register_image_handler(&efi_image_loader);
+}
+late_initcall(efiloader_bootm_register);
-- 
2.47.3



