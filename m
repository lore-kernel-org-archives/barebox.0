Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFemO-0001ST-1y
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:44:34 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Thu, 16 Jul 2015 10:43:52 +0200
Message-Id: <1437036236-19096-4-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/7] efi: add support for initrd loading
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

The kernel EFI code can load the initrd from a path. However, that only
works if the initrd is in the EFI boot partition. With these changes, any
initrd accessible by barebox can be used.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi-image.c | 136 ++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 135 insertions(+), 1 deletion(-)

diff --git a/arch/efi/efi/efi-image.c b/arch/efi/efi/efi-image.c
index a36a38147657..f41322744bbc 100644
--- a/arch/efi/efi/efi-image.c
+++ b/arch/efi/efi/efi-image.c
@@ -37,6 +37,55 @@
 #include <mach/efi.h>
 #include <mach/efi-device.h>
 
+struct linux_kernel_header {
+	/* first sector of the image */
+	uint8_t code1[0x0020];
+	uint16_t cl_magic;		/**< Magic number 0xA33F */
+	uint16_t cl_offset;		/**< The offset of command line */
+	uint8_t code2[0x01F1 - 0x0020 - 2 - 2];
+	uint8_t setup_sects;		/**< The size of the setup in sectors */
+	uint16_t root_flags;		/**< If the root is mounted readonly */
+	uint16_t syssize;		/**< obsolete */
+	uint16_t swap_dev;		/**< obsolete */
+	uint16_t ram_size;		/**< obsolete */
+	uint16_t vid_mode;		/**< Video mode control */
+	uint16_t root_dev;		/**< Default root device number */
+	uint16_t boot_flag;		/**< 0xAA55 magic number */
+
+	/* second sector of the image */
+	uint16_t jump;			/**< Jump instruction (this is code!) */
+	uint32_t header;		/**< Magic signature "HdrS" */
+	uint16_t version;		/**< Boot protocol version supported */
+	uint32_t realmode_swtch;	/**< Boot loader hook */
+	uint16_t start_sys;		/**< The load-low segment (obsolete) */
+	uint16_t kernel_version;	/**< Points to kernel version string */
+	uint8_t type_of_loader;		/**< Boot loader identifier */
+	uint8_t loadflags;		/**< Boot protocol option flags */
+	uint16_t setup_move_size;	/**< Move to high memory size */
+	uint32_t code32_start;		/**< Boot loader hook */
+	uint32_t ramdisk_image;		/**< initrd load address */
+	uint32_t ramdisk_size;		/**< initrd size */
+	uint32_t bootsect_kludge;	/**< obsolete */
+	uint16_t heap_end_ptr;		/**< Free memory after setup end */
+	uint8_t ext_loader_ver;		/**< boot loader's extension of the version number */
+	uint8_t ext_loader_type;	/**< boot loader's extension of its type */
+	uint32_t cmd_line_ptr;		/**< Points to the kernel command line */
+	uint32_t initrd_addr_max;	/**< Highest address for initrd */
+	uint32_t kernel_alignment;	/**< Alignment unit required by the kernel */
+	uint8_t relocatable_kernel;	/** */
+	uint8_t min_alignment;		/** */
+	uint16_t xloadflags;		/** */
+	uint32_t cmdline_size;		/** */
+	uint32_t hardware_subarch;	/** */
+	uint64_t hardware_subarch_data;	/** */
+	uint32_t payload_offset;	/** */
+	uint32_t payload_length;	/** */
+	uint64_t setup_data;		/** */
+	uint64_t pref_address;		/** */
+	uint32_t init_size;		/** */
+	uint32_t handover_offset;	/** */
+} __attribute__ ((packed));
+
 int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
 		efi_handle_t *h)
 {
@@ -108,9 +157,94 @@ static int efi_execute_image(const char *file)
 	return -efi_errno(efiret);
 }
 
+#ifdef __x86_64__
+typedef void(*handover_fn)(void *image, efi_system_table_t *table,
+		struct linux_kernel_header *header);
+
+static inline void linux_efi_handover(efi_handle_t handle,
+		struct linux_kernel_header *header)
+{
+	handover_fn handover;
+
+	asm volatile ("cli");
+	handover = (handover_fn)((long)header->code32_start + 512 +
+				 header->handover_offset);
+	handover(handle, efi_sys_table, header);
+}
+#else
+typedef void(*handover_fn)(VOID *image, EFI_SYSTEM_TABLE *table,
+		struct SetupHeader *setup) __attribute__((regparm(0)));
+
+static inline void linux_efi_handover(efi_handle_t handle,
+		struct linux_kernel_header *header)
+{
+	handover_fn handover;
+
+	handover = (handover_fn)((long)header->code32_start +
+				 header->handover_offset);
+	handover(handle, efi_sys_table, header);
+}
+#endif
+
 static int do_bootm_efi(struct image_data *data)
 {
-	return efi_execute_image(data->os_file);
+	void *tmp;
+	void *initrd;
+	size_t size;
+	efi_handle_t handle;
+	int ret;
+	const char *options;
+	efi_loaded_image_t *loaded_image;
+	struct linux_kernel_header *image_header, *boot_header;
+
+	ret = efi_load_image(data->os_file, &loaded_image, &handle);
+	if (ret)
+		return ret;
+
+	image_header = (struct linux_kernel_header *)loaded_image->image_base;
+
+	if (image_header->boot_flag != 0xAA55 ||
+	    image_header->header != 0x53726448 ||
+	    image_header->version < 0x20b ||
+	    !image_header->relocatable_kernel) {
+		pr_err("Not a valid kernel image!\n");
+		BS->unload_image(handle);
+		return -EINVAL;
+	}
+
+	boot_header = xmalloc(0x4000);
+	memset(boot_header, 0, 0x4000);
+	memcpy(boot_header, image_header, sizeof(*image_header));
+
+	boot_header->type_of_loader = 0xff;
+
+	if (data->initrd_file) {
+		tmp = read_file(data->initrd_file, &size);
+		initrd = memalign(PAGE_SIZE, PAGE_ALIGN(size));
+		memcpy(initrd, tmp, size);
+		memset(initrd + size, 0, PAGE_ALIGN(size) - size);
+		free(tmp);
+		boot_header->ramdisk_image = (uint64_t)initrd;
+		boot_header->ramdisk_size = PAGE_ALIGN(size);
+	}
+
+	options = linux_bootargs_get();
+	boot_header->cmd_line_ptr = (uint64_t)options;
+	boot_header->cmdline_size = strlen(options);
+
+	boot_header->code32_start = (uint64_t)loaded_image->image_base +
+			(image_header->setup_sects+1) * 512;
+
+	if (bootm_verbose(data)) {
+		printf("\nStarting kernel at 0x%p", loaded_image->image_base);
+		if (data->initrd_file)
+			printf(", initrd at 0x%08x",
+			       boot_header->ramdisk_image);
+		printf("...\n");
+	}
+	linux_efi_handover(handle, boot_header);
+
+	return 0;
 }
 
 static struct image_handler efi_handle_tr = {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
