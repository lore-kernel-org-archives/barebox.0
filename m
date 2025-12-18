Delivery-date: Thu, 18 Dec 2025 12:38:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCLC-00CoNO-36
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:38:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKd-0000ll-3l
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:38:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3uZmR+QcTMjq6GDqyZm89OboJ9ST+CZNIT7yf6991hg=; b=UKtGCm7dTQ+UgCpjrJbawh9nJi
	iOBIGv/u6KAmFGIUR4GmZmkobVDNkRoASPYKVe14UVaPTTY3/mguQfESgBkBG5EZRk9HzLGcZPoE7
	M8zXbF9o8Zye6/NwfjFa0DVYJwajSiMKMcPTNtiaL5MoNmPuih8U/Oe4x7um5l38dEE99APQR2Kwx
	MGjqjvWtZ6PmVtKF6+NgkgG7OhuoE9w7Yew0OH4DqXklSKuuBPn/fFUWD3Fqk/pLQooNtqxt3cMtV
	QmtmjTPMatLBX826UcUtA4cN6yCIn/scoS+YuCpeEkviixFQt1J2cjHZb0Tr45h6W/ma4afaf1qnf
	30EYIX1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJT-00000008KIj-09lj;
	Thu, 18 Dec 2025 11:36:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KB6-0zaM
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-00087V-J2; Thu, 18 Dec 2025 12:36:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJL-006GuJ-1F;
	Thu, 18 Dec 2025 12:36:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw4-0000000AVre-1DAj;
	Thu, 18 Dec 2025 12:12:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:37:46 +0100
Message-ID: <20251218111242.1527495-27-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_611664_CD4D2FF4 
X-CRM114-Status: GOOD (  28.62  )
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
Subject: [PATCH v1 26/54] efi: loader: boot: implement LoadImage BootService
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We now have everything in place, so we can actually start images like
the barebox EFI payload itself, even if ExitBootServices is not yet
supported.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/boot.c    | 591 ++++++++++++++++++++++++++++++++++++++++++-
 include/efi/loader.h |   4 +
 2 files changed, 591 insertions(+), 4 deletions(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index 263165135944..2d208c4cafbd 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -20,6 +20,8 @@
 #include <efi/loader/devicepath.h>
 #include <efi/loader/debug.h>
 #include <efi/loader/image.h>
+#include <efi/loader/file.h>
+#include <efi/loader/pe.h>
 #include <efi/protocol/file.h>
 #include <efi/guid.h>
 #include <efi/error.h>
@@ -58,6 +60,9 @@ static bool timers_enabled = true;
 /* List of all events registered by RegisterProtocolNotify() */
 static LIST_HEAD(efi_register_notify_events);
 
+/* Handle of the currently executing image */
+static efi_handle_t current_image;
+
 efi_status_t efi_uninstall_protocol
 		(efi_handle_t handle, const efi_guid_t *protocol,
 		 void *protocol_interface, bool preserve);
@@ -1652,6 +1657,88 @@ EFIAPI efi_install_configuration_table_ext(const efi_guid_t *guid,
 	return EFI_EXIT(efi_install_configuration_table(guid, table));
 }
 
+/**
+ * efi_setup_loaded_image() - initialize a loaded image
+ *
+ * Initialize a loaded_image_info and loaded_image_info object with correct
+ * protocols, boot-device, etc.
+ *
+ * In case of an error \*handle_ptr and \*info_ptr are set to NULL and an error
+ * code is returned.
+ *
+ * @device_path:	device path of the loaded image
+ * @file_path:		file path of the loaded image
+ * @handle_ptr:		handle of the loaded image
+ * @info_ptr:		loaded image protocol
+ * Return:		status code
+ */
+static efi_status_t efi_setup_loaded_image(struct efi_device_path *device_path,
+					   struct efi_device_path *file_path,
+					   struct efi_loaded_image_obj **handle_ptr,
+					   struct efi_loaded_image **info_ptr)
+{
+	efi_status_t ret;
+	struct efi_loaded_image *info = NULL;
+	struct efi_loaded_image_obj *obj = NULL;
+	struct efi_device_path *dp;
+
+	/* In case of EFI_OUT_OF_RESOURCES avoid illegal free by caller. */
+	*handle_ptr = NULL;
+	*info_ptr = NULL;
+
+	info = calloc(1, sizeof(*info));
+	if (!info)
+		return EFI_OUT_OF_RESOURCES;
+	obj = calloc(1, sizeof(*obj));
+	if (!obj) {
+		free(info);
+		return EFI_OUT_OF_RESOURCES;
+	}
+	obj->header.type = EFI_OBJECT_TYPE_LOADED_IMAGE;
+
+	/* Add internal object to object list */
+	efi_add_handle(&obj->header);
+
+	info->revision = EFI_LOADED_IMAGE_PROTOCOL_REVISION;
+	info->file_path = file_path;
+	info->system_table = &systab;
+
+	if (device_path) {
+		info->device_handle = efi_dp_find_obj(device_path, NULL, NULL);
+
+		dp = efi_dp_concat(device_path, file_path, 0);
+		if (!dp) {
+			ret = EFI_OUT_OF_RESOURCES;
+			goto failure;
+		}
+	} else {
+		dp = NULL;
+	}
+	ret = efi_add_protocol(&obj->header,
+			       &efi_loaded_image_device_path_guid, dp);
+	if (ret != EFI_SUCCESS)
+		goto failure;
+
+	/*
+	 * When asking for the loaded_image interface, just
+	 * return handle which points to loaded_image_info
+	 */
+	ret = efi_add_protocol(&obj->header,
+			       &efi_loaded_image_protocol_guid, info);
+	if (ret != EFI_SUCCESS)
+		goto failure;
+
+	*info_ptr = info;
+	*handle_ptr = obj;
+
+	return ret;
+failure:
+	pr_err("Failure to install protocols for loaded image\n");
+	efi_delete_handle(&obj->header);
+	free(info);
+	return ret;
+}
+
 /**
  * efi_locate_device_path() - Get the device path and handle of an device
  *                            implementing a protocol
@@ -1733,6 +1820,216 @@ static efi_status_t EFIAPI efi_locate_device_path(const efi_guid_t *protocol,
 	return EFI_EXIT2(ret, *device_path);
 }
 
+/**
+ * efi_load_image_from_file() - load an image from file system
+ *
+ * Read a file into a buffer allocated as EFI_BOOT_SERVICES_DATA. It is the
+ * callers obligation to update the memory type as needed.
+ *
+ * @file_path:		the path of the image to load
+ * @buffer:		buffer containing the loaded image
+ * @size:		size of the loaded image
+ * Return:		status code
+ */
+static
+efi_status_t efi_load_image_from_file(struct efi_device_path *file_path,
+				      void **buffer, efi_uintn_t *size)
+{
+	struct efi_file_handle *f;
+	efi_status_t ret;
+	u64 addr;
+	efi_uintn_t bs;
+
+	/* Open file */
+	f = efi_file_from_path(file_path);
+	if (!f)
+		return EFI_NOT_FOUND;
+
+	ret = efi_file_size(f, &bs);
+	if (ret != EFI_SUCCESS)
+		goto error;
+
+	/*
+	 * When reading the file we do not yet know if it contains an
+	 * application, a boottime driver, or a runtime driver. So here we
+	 * allocate a buffer as EFI_BOOT_SERVICES_DATA. The caller has to
+	 * update the reservation according to the image type.
+	 */
+	ret = efi_allocate_pages(EFI_ALLOCATE_ANY_PAGES,
+				 EFI_BOOT_SERVICES_DATA,
+				 efi_size_in_pages(bs), &addr,
+				 "loadimage");
+	if (ret != EFI_SUCCESS) {
+		ret = EFI_OUT_OF_RESOURCES;
+		goto error;
+	}
+
+	/* Read file */
+	EFI_CALL(ret = f->read(f, &bs, (void *)(uintptr_t)addr));
+	if (ret != EFI_SUCCESS)
+		efi_free_pages(addr, efi_size_in_pages(bs));
+	*buffer = (void *)(uintptr_t)addr;
+	*size = bs;
+error:
+	EFI_CALL(f->close(f));
+	return ret;
+}
+
+/**
+ * efi_load_image_from_path() - load an image using a file path
+ *
+ * Read a file into a buffer allocated as EFI_BOOT_SERVICES_DATA. It is the
+ * callers obligation to update the memory type as needed.
+ *
+ * @boot_policy:	true for request originating from the boot manager
+ * @file_path:		the path of the image to load
+ * @buffer:		buffer containing the loaded image
+ * @size:		size of the loaded image
+ * Return:		status code
+ */
+static
+efi_status_t efi_load_image_from_path(bool boot_policy,
+				      struct efi_device_path *file_path,
+				      void **buffer, efi_uintn_t *size)
+{
+	efi_handle_t device;
+	efi_status_t ret;
+	struct efi_device_path *dp, *rem;
+	struct efi_load_file_protocol *load_file_protocol = NULL;
+	efi_uintn_t buffer_size;
+	uint64_t addr, pages;
+	const efi_guid_t *guid;
+	struct efi_handler *handler;
+
+	/* In case of failure nothing is returned */
+	*buffer = NULL;
+	*size = 0;
+
+	dp = file_path;
+	device = efi_dp_find_obj(dp, NULL, &rem);
+	ret = efi_search_protocol(device, &efi_simple_file_system_protocol_guid,
+				  NULL);
+	if (ret == EFI_SUCCESS)
+		return efi_load_image_from_file(file_path, buffer, size);
+
+	ret = efi_search_protocol(device, &efi_load_file_protocol_guid, NULL);
+	if (ret == EFI_SUCCESS) {
+		guid = &efi_load_file_protocol_guid;
+	} else if (!boot_policy) {
+		guid = &efi_load_file2_protocol_guid;
+		ret = efi_search_protocol(device, guid, NULL);
+	}
+	if (ret != EFI_SUCCESS)
+		return EFI_NOT_FOUND;
+	ret = efi_search_protocol(device, guid, &handler);
+	if (ret != EFI_SUCCESS)
+		return EFI_NOT_FOUND;
+	buffer_size = 0;
+	load_file_protocol = handler->protocol_interface;
+	ret = EFI_CALL(load_file_protocol->load_file(
+					load_file_protocol, rem, boot_policy,
+					&buffer_size, NULL));
+	if (ret != EFI_BUFFER_TOO_SMALL)
+		goto out;
+	pages = efi_size_in_pages(buffer_size);
+	ret = efi_allocate_pages(EFI_ALLOCATE_ANY_PAGES, EFI_BOOT_SERVICES_DATA,
+				 pages, &addr, "loadimage");
+	if (ret != EFI_SUCCESS) {
+		ret = EFI_OUT_OF_RESOURCES;
+		goto out;
+	}
+	ret = EFI_CALL(load_file_protocol->load_file(
+					load_file_protocol, rem, boot_policy,
+					&buffer_size, (void *)(uintptr_t)addr));
+	if (ret != EFI_SUCCESS)
+		efi_free_pages(addr, pages);
+out:
+	efi_close_protocol(device, guid, efi_root, NULL);
+	if (ret == EFI_SUCCESS) {
+		*buffer = (void *)(uintptr_t)addr;
+		*size = buffer_size;
+	}
+
+	return ret;
+}
+
+/**
+ * efiloader_load_image() - load an EFI image into memory
+ * @boot_policy:   true for request originating from the boot manager
+ * @parent_image:  the caller's image handle
+ * @file_path:     the path of the image to load
+ * @source_buffer: memory location from which the image is installed
+ * @source_size:   size of the memory area from which the image is installed
+ * @image_handle:  handle for the newly installed image
+ *
+ * This function implements the LoadImage service.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification
+ * for details.
+ *
+ * Return: status code
+ */
+efi_status_t EFIAPI efiloader_load_image(bool boot_policy,
+				   efi_handle_t parent_image,
+				   struct efi_device_path *file_path,
+				   void *source_buffer,
+				   efi_uintn_t source_size,
+				   efi_handle_t *image_handle)
+{
+	struct efi_device_path *dp, *fp;
+	struct efi_loaded_image *info = NULL;
+	struct efi_loaded_image_obj **image_obj =
+		(struct efi_loaded_image_obj **)image_handle;
+	efi_status_t ret;
+	void *dest_buffer;
+
+	EFI_ENTRY("%d, %p, %pD, %p, %zu, %p", boot_policy, parent_image,
+		  file_path, source_buffer, source_size, image_handle);
+
+	if (!image_handle || (!source_buffer && !file_path) ||
+	    !efi_search_obj(parent_image) ||
+	    /* The parent image handle must refer to a loaded image */
+	    !parent_image->type) {
+		ret = EFI_INVALID_PARAMETER;
+		goto error;
+	}
+
+	if (!source_buffer) {
+		ret = efi_load_image_from_path(boot_policy, file_path,
+					       &dest_buffer, &source_size);
+		if (ret != EFI_SUCCESS)
+			goto error;
+	} else {
+		dest_buffer = source_buffer;
+	}
+	/* split file_path which contains both the device and file parts */
+	efi_dp_split_file_path(file_path, &dp, &fp);
+	ret = efi_setup_loaded_image(dp, fp, image_obj, &info);
+	if (ret == EFI_SUCCESS)
+		ret = efi_load_pe(*image_obj, dest_buffer, source_size, info);
+	if (!source_buffer)
+		/* Release buffer to which file was loaded */
+		efi_free_pages((uintptr_t)dest_buffer,
+			       efi_size_in_pages(source_size));
+	if (ret == EFI_SUCCESS || ret == EFI_SECURITY_VIOLATION) {
+		info->system_table = &systab;
+		info->parent_handle = parent_image;
+	} else {
+		/* The image is invalid. Release all associated resources. */
+		efi_delete_handle(*image_handle);
+		*image_handle = NULL;
+		free(info);
+	}
+
+	if (IS_ENABLED(CONFIG_EFI_LOADER_DEBUG_SUPPORT) && *image_handle)
+		efi_core_new_debug_image_info_entry(EFI_DEBUG_IMAGE_INFO_TYPE_NORMAL,
+						    info,
+						    *image_handle);
+
+error:
+	return EFI_EXIT2(ret, *image_handle);
+}
+
 /**
  * efi_exit_boot_services() - stop all boot services
  * @image_handle: handle of the loaded image
@@ -2666,6 +2963,104 @@ static efi_status_t EFIAPI efi_open_protocol
 	return EFI_EXIT(r);
 }
 
+/**
+ * __efi_start_image() - call the entry point of an image
+ * @image_handle:   handle of the image
+ * @exit_data_size: size of the buffer
+ * @exit_data:      buffer to receive the exit data of the called image
+ * @flags:          boot flags
+ *
+ * This function implements the StartImage service.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * Return: status code
+ */
+efi_status_t __efi_start_image(efi_handle_t image_handle,
+			       efi_uintn_t *exit_data_size,
+			       u16 **exit_data, int flags)
+{
+	struct efi_loaded_image_obj *image_obj =
+		(struct efi_loaded_image_obj *)image_handle;
+	efi_status_t ret;
+	struct efi_loaded_image *info;
+	efi_handle_t parent_image = current_image;
+	efi_status_t exit_status;
+	struct jmp_buf_data exit_jmp;
+	EFIAPI efi_status_t (*entry)(efi_handle_t image_handle,
+				     struct efi_system_table *st);
+
+	if (!efi_search_obj(image_handle))
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	/* Check parameters */
+	if (image_obj->header.type != EFI_OBJECT_TYPE_LOADED_IMAGE)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	ret = EFI_CALL(efi_open_protocol(image_handle, &efi_loaded_image_protocol_guid,
+					 (void **)&info, NULL, NULL,
+					 EFI_OPEN_PROTOCOL_GET_PROTOCOL));
+	if (ret != EFI_SUCCESS)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	image_obj->exit_data_size = exit_data_size;
+	image_obj->exit_data = exit_data;
+	image_obj->exit_status = &exit_status;
+	image_obj->exit_jmp = &exit_jmp;
+
+	/* call the image! */
+	if (setjmp(&exit_jmp)) {
+		/*
+		 * We called the entry point of the child image with EFI_CALL
+		 * in the lines below. The child image called the Exit() boot
+		 * service efi_exit() which executed the long jump that brought
+		 * us to the current line. This implies that the second half
+		 * of the EFI_CALL macro has not been executed.
+		 */
+		/*
+		 * To get ready to call EFI_EXIT below we have to execute the
+		 * missed out steps of EFI_CALL.
+		 */
+		EFI_RETURN(exit_status);
+
+		current_image = parent_image;
+
+		return EFI_EXIT(exit_status);
+	}
+
+	current_image = image_handle;
+	image_obj->header.type = EFI_OBJECT_TYPE_STARTED_IMAGE;
+
+	if (flags & EFI_DRYRUN) {
+		pr_info("Dryrun. Aborted\n");
+		ret = EFI_SUCCESS;
+		goto exit;
+	}
+
+	entry = image_obj->entry;
+
+	pr_info("Starting EFI payload at %p\n", entry);
+
+	// FIXME: we need the below if we enable CONFIG_ARM_MMU_PERMISSIONS...
+	// remap_range(info->image_base, info->image_size, MAP_ARCH(2));
+	sync_caches_for_execution();
+
+	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
+			      ktime_to_us(ktime_get()));
+
+	ret = EFI_CALL(entry(image_handle, &systab));
+
+exit:
+	/*
+	 * Control is returned from a started UEFI image either by calling
+	 * Exit() (where exit data can be provided) or by simply returning from
+	 * the entry point. In the latter case call Exit() on behalf of the
+	 * image.
+	 */
+	return EFI_CALL(systab.boottime->exit(image_handle, ret, 0, NULL));
+}
+
 /**
  * efi_start_image() - call the entry point of an image
  * @image_handle:   handle of the image
@@ -2685,7 +3080,54 @@ static efi_status_t EFIAPI efi_start_image(efi_handle_t image_handle,
 {
 	EFI_ENTRY("%p, %p, %p", image_handle, exit_data_size, exit_data);
 
-	return EFI_EXIT(EFI_UNSUPPORTED);
+	return __efi_start_image(image_handle, exit_data_size, exit_data, 0);
+}
+
+/**
+ * efi_delete_image() - delete loaded image from memory)
+ *
+ * @image_obj:			handle of the loaded image
+ * @loaded_image_protocol:	loaded image protocol
+ */
+static efi_status_t efi_delete_image
+			(struct efi_loaded_image_obj *image_obj,
+			 struct efi_loaded_image *loaded_image_protocol)
+{
+	struct efi_object *efiobj;
+	efi_status_t r, ret = EFI_SUCCESS;
+
+close_next:
+	list_for_each_entry(efiobj, &efi_obj_list, link) {
+		struct efi_handler *protocol;
+
+		list_for_each_entry(protocol, &efiobj->protocols, link) {
+			struct efi_open_protocol_info_item *info;
+
+			list_for_each_entry(info, &protocol->open_infos, link) {
+				if (info->info.agent_handle !=
+				    (efi_handle_t)image_obj)
+					continue;
+				r = efi_close_protocol(
+						efiobj, &protocol->guid,
+						info->info.agent_handle,
+						info->info.controller_handle);
+				if (r !=  EFI_SUCCESS)
+					ret = r;
+				/*
+				 * Closing protocols may results in further
+				 * items being deleted. To play it safe loop
+				 * over all elements again.
+				 */
+				goto close_next;
+			}
+		}
+	}
+
+	efi_free_pages((uintptr_t)loaded_image_protocol->image_base,
+		       efi_size_in_pages(loaded_image_protocol->image_size));
+	efi_delete_handle(&image_obj->header);
+
+	return ret;
 }
 
 /**
@@ -2701,7 +3143,87 @@ static efi_status_t EFIAPI efi_start_image(efi_handle_t image_handle,
  */
 static efi_status_t EFIAPI efi_unload_image(efi_handle_t image_handle)
 {
-	return EFI_EXIT(EFI_UNSUPPORTED);
+	efi_status_t ret = EFI_SUCCESS;
+	struct efi_object *efiobj;
+	struct efi_loaded_image *loaded_image_protocol;
+
+	EFI_ENTRY("%p", image_handle);
+
+	efiobj = efi_search_obj(image_handle);
+	if (!efiobj) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+	/* Find the loaded image protocol */
+	ret = EFI_CALL(efi_open_protocol(image_handle, &efi_loaded_image_protocol_guid,
+					 (void **)&loaded_image_protocol,
+					 NULL, NULL,
+					 EFI_OPEN_PROTOCOL_GET_PROTOCOL));
+	if (ret != EFI_SUCCESS) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	if (IS_ENABLED(CONFIG_EFI_LOADER_DEBUG_SUPPORT))
+		efi_core_remove_debug_image_info_entry(image_handle);
+
+	switch (efiobj->type) {
+	case EFI_OBJECT_TYPE_STARTED_IMAGE:
+		/* Call the unload function */
+		if (!loaded_image_protocol->unload) {
+			ret = EFI_UNSUPPORTED;
+			goto out;
+		}
+		ret = EFI_CALL(loaded_image_protocol->unload(image_handle));
+		if (ret != EFI_SUCCESS)
+			goto out;
+		break;
+	case EFI_OBJECT_TYPE_LOADED_IMAGE:
+		break;
+	default:
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+	efi_delete_image((struct efi_loaded_image_obj *)efiobj,
+			 loaded_image_protocol);
+out:
+	return EFI_EXIT(ret);
+}
+
+/**
+ * efi_update_exit_data() - fill exit data parameters of StartImage()
+ *
+ * @image_obj:		image handle
+ * @exit_data_size:	size of the exit data buffer
+ * @exit_data:		buffer with data returned by UEFI payload
+ * Return:		status code
+ */
+static efi_status_t efi_update_exit_data(struct efi_loaded_image_obj *image_obj,
+					 efi_uintn_t exit_data_size,
+					 u16 *exit_data)
+{
+	efi_status_t ret;
+
+	/*
+	 * If exit_data is not provided to StartImage(), exit_data_size must be
+	 * ignored.
+	 */
+	if (!image_obj->exit_data)
+		return EFI_SUCCESS;
+	if (image_obj->exit_data_size)
+		*image_obj->exit_data_size = exit_data_size;
+	if (exit_data_size && exit_data) {
+		ret = efi_allocate_pool(EFI_BOOT_SERVICES_DATA,
+					exit_data_size,
+					(void **)image_obj->exit_data,
+					"exitdata");
+		if (ret != EFI_SUCCESS)
+			return ret;
+		memcpy(*image_obj->exit_data, exit_data, exit_data_size);
+	} else {
+		image_obj->exit_data = NULL;
+	}
+	return EFI_SUCCESS;
 }
 
 /**
@@ -2723,10 +3245,71 @@ static efi_status_t EFIAPI efi_exit(efi_handle_t image_handle,
 				    efi_uintn_t exit_data_size,
 				    u16 *exit_data)
 {
+	/*
+	 * TODO: We should call the unload procedure of the loaded
+	 *	 image protocol.
+	 */
+	efi_status_t ret;
+	struct efi_loaded_image *loaded_image_protocol;
+	struct efi_loaded_image_obj *image_obj =
+		(struct efi_loaded_image_obj *)image_handle;
+	struct jmp_buf_data *exit_jmp;
+
 	EFI_ENTRY("%p, %ld, %zu, %p", image_handle, exit_status,
 		  exit_data_size, exit_data);
 
-	return EFI_EXIT(EFI_UNSUPPORTED);
+	/* Check parameters */
+	ret = EFI_CALL(efi_open_protocol(image_handle, &efi_loaded_image_protocol_guid,
+					 (void **)&loaded_image_protocol,
+					 NULL, NULL,
+					 EFI_OPEN_PROTOCOL_GET_PROTOCOL));
+	if (ret != EFI_SUCCESS) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	/* Unloading of unstarted images */
+	switch (image_obj->header.type) {
+	case EFI_OBJECT_TYPE_STARTED_IMAGE:
+		break;
+	case EFI_OBJECT_TYPE_LOADED_IMAGE:
+		efi_delete_image(image_obj, loaded_image_protocol);
+		ret = EFI_SUCCESS;
+		goto out;
+	default:
+		/* Handle does not refer to loaded image */
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+	/* A started image can only be unloaded it is the last one started. */
+	if (image_handle != current_image) {
+		ret = EFI_INVALID_PARAMETER;
+		goto out;
+	}
+
+	/* Exit data is only foreseen in case of failure. */
+	if (exit_status != EFI_SUCCESS) {
+		ret = efi_update_exit_data(image_obj, exit_data_size,
+					   exit_data);
+		/* Exiting has priority. Don't return error to caller. */
+		if (ret != EFI_SUCCESS)
+			EFI_PRINT("%s: out of memory\n", __func__);
+	}
+	/* efi_delete_image() frees image_obj. Copy before the call. */
+	exit_jmp = image_obj->exit_jmp;
+	*image_obj->exit_status = exit_status;
+	if (image_obj->image_type == IMAGE_SUBSYSTEM_EFI_APPLICATION ||
+	    exit_status != EFI_SUCCESS)
+		efi_delete_image(image_obj, loaded_image_protocol);
+
+	/* Make sure entry/exit counts for EFI world cross-overs match */
+	EFI_EXIT(exit_status);
+
+	longjmp(exit_jmp, 1);
+
+	panic("EFI application exited");
+out:
+	return EFI_EXIT(ret);
 }
 
 /**
@@ -3170,7 +3753,7 @@ static struct efi_boot_services efi_boot_services = {
 	.locate_handle = efi_locate_handle_ext,
 	.locate_device_path = efi_locate_device_path,
 	.install_configuration_table = efi_install_configuration_table_ext,
-	.load_image = (void *)efi_unimplemented,
+	.load_image = efiloader_load_image,
 	.start_image = efi_start_image,
 	.exit = efi_exit,
 	.unload_image = efi_unload_image,
diff --git a/include/efi/loader.h b/include/efi/loader.h
index 466541c1e2b5..74d177568353 100644
--- a/include/efi/loader.h
+++ b/include/efi/loader.h
@@ -29,6 +29,10 @@ efi_status_t efi_initialize_system_table(void);
 /* Called by efi_set_watchdog_timer to reset the timer */
 efi_status_t efi_set_watchdog(unsigned long timeout);
 
+efi_status_t __efi_start_image(efi_handle_t image_handle,
+			       efi_uintn_t *exit_data_size,
+			       u16 **exit_data, int flags);
+
 /* Allocate boot service data pool memory */
 void *efi_alloc(size_t len, const char *name);
 /* Reallocate boot service data pool memory */
-- 
2.47.3



