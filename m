Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyiqH-00047f-4q
	for barebox@lists.infradead.org; Thu, 23 Sep 2010 10:15:56 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 23 Sep 2010 12:14:25 +0200
Message-Id: <1285236866-3674-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285236866-3674-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285236866-3674-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] image: Replace direct header access with the API routines
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/armlinux.c            |    6 +-
 arch/blackfin/lib/blackfin_linux.c |    4 +-
 arch/m68k/lib/m68k-linuxboot.c     |    8 +-
 arch/ppc/lib/ppclinux.c            |    6 +-
 commands/bootm.c                   |   79 +++++++++--------
 include/image.h                    |  161 ++++++++++++++++++++++++++++++++++++
 scripts/mkimage.c                  |   85 ++++++++++---------
 7 files changed, 259 insertions(+), 90 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index b50d535..7c2cbf9 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -212,7 +212,7 @@ int do_bootm_linux(struct image_data *data)
 	void (*theKernel)(int zero, int arch, void *params);
 	image_header_t *os_header = &data->os->header;
 
-	if (os_header->ih_type == IH_TYPE_MULTI) {
+	if (image_check_type(os_header, IH_TYPE_MULTI)) {
 		printf("Multifile images not handled at the moment\n");
 		return -1;
 	}
@@ -227,14 +227,14 @@ int do_bootm_linux(struct image_data *data)
 		return -1;
 	}
 
-	theKernel = (void *)ntohl(os_header->ih_ep);
+	theKernel = (void *)image_get_ep(os_header);
 
 	debug("## Transferring control to Linux (at address 0x%p) ...\n",
 	       theKernel);
 
 	setup_tags();
 
-	if (relocate_image(data->os, (void *)ntohl(os_header->ih_load)))
+	if (relocate_image(data->os, (void *)image_get_load(os_header)))
 		return -1;
 
 	/* we assume that the kernel is in place */
diff --git a/arch/blackfin/lib/blackfin_linux.c b/arch/blackfin/lib/blackfin_linux.c
index ce5f3a5..eda3f4c 100644
--- a/arch/blackfin/lib/blackfin_linux.c
+++ b/arch/blackfin/lib/blackfin_linux.c
@@ -47,10 +47,10 @@ static int do_bootm_linux(struct image_data *idata)
 	struct image_handle *os_handle = idata->os;
 	image_header_t *os_header = &os_handle->header;
 
-	appl = (int (*)(char *))ntohl(os_header->ih_ep);
+	appl = (int (*)(char *))image_get_ep(os_header);
 	printf("Starting Kernel at 0x%08x\n", appl);
 
-	if (relocate_image(os_handle, (void *)ntohl(os_header->ih_load)))
+	if (relocate_image(os_handle, (void *)image_get_load(os_header)))
 		return -1;
 
 	icache_disable();
diff --git a/arch/m68k/lib/m68k-linuxboot.c b/arch/m68k/lib/m68k-linuxboot.c
index 417a8e0..e5e90a8 100644
--- a/arch/m68k/lib/m68k-linuxboot.c
+++ b/arch/m68k/lib/m68k-linuxboot.c
@@ -109,20 +109,20 @@ static int do_bootm_linux(struct image_data *data)
 	const char *commandline = getenv ("bootargs");
 	uint32_t loadaddr,loadsize;
 
-	if (os_header->ih_type == IH_TYPE_MULTI) {
+	if (image_check_type(os_header, IH_TYPE_MULTI)) {
 		printf("Multifile images not handled at the moment\n");
 		return -1;
 	}
 
 	printf("commandline: %s\n", commandline);
 
-	theKernel = (void (*)(int,int,uint))ntohl((os_header->ih_ep));
+	theKernel = (void (*)(int,int,uint))image_get_ep(os_header);
 
 	debug ("## Transferring control to Linux (at address %08lx) ...\n",
 	       (ulong) theKernel);
 
-	loadaddr = (uint32_t)ntohl(os_header->ih_load);
-	loadsize = (uint32_t)ntohl(os_header->ih_size);
+	loadaddr = (uint32_t)image_get_load(os_header);
+	loadsize = (uint32_t)image_get_size(os_header);
 	setup_boot_record( (char*)(loadaddr+loadsize),(char*)commandline);
 
 	if (relocate_image(data->os, (void *)loadaddr))
diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
index 35a9d31..5ee908d 100644
--- a/arch/ppc/lib/ppclinux.c
+++ b/arch/ppc/lib/ppclinux.c
@@ -45,7 +45,7 @@ static int do_bootm_linux(struct image_data *idata)
 	printf("entering %s: os_header: %p initrd_header: %p oftree: %s\n",
 			__FUNCTION__, os_header, initrd_header, idata->oftree);
 
-	if (os_header->ih_type == IH_TYPE_MULTI) {
+	if (image_check_type(os_header, IH_TYPE_MULTI)) {
 		unsigned long *data = (unsigned long *)(idata->os->data);
 		unsigned long len1 = 0, len2 = 0;
 
@@ -199,9 +199,9 @@ static int do_bootm_linux(struct image_data *idata)
 #endif /* CONFIG_MPC5xxx */
 	}
 
-	kernel = (void (*)(bd_t *, ulong, ulong, ulong, ulong))ntohl(os_header->ih_ep); /* FIXME */
+	kernel = (void (*)(bd_t *, ulong, ulong, ulong, ulong))image_get_ep(os_header); /* FIXME */
 
-	if (relocate_image(idata->os, (void *)ntohl(os_header->ih_load)))
+	if (relocate_image(idata->os, (void *)image_get_load(os_header)))
 		return -1;
 
 #if defined(CFG_INIT_RAM_LOCK) && !defined(CONFIG_E500)
diff --git a/commands/bootm.c b/commands/bootm.c
index 98de2e9..98047cd 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -98,19 +98,19 @@ fixup_silent_linux ()
 int relocate_image(struct image_handle *handle, void *load_address)
 {
 	image_header_t *hdr = &handle->header;
-	unsigned long len  = ntohl(hdr->ih_size);
+	unsigned long len  = image_get_size(hdr);
 	unsigned long data = (unsigned long)(handle->data);
 
 #if defined CONFIG_CMD_BOOTM_ZLIB || defined CONFIG_CMD_BOOTM_BZLIB
 	uint	unc_len = CFG_BOOTM_LEN;
 #endif
 
-	switch (hdr->ih_comp) {
+	switch (image_get_comp(hdr)) {
 	case IH_COMP_NONE:
-		if(ntohl(hdr->ih_load) == data) {
+		if(image_get_load(hdr) == data) {
 			printf ("   XIP ... ");
 		} else {
-			memmove ((void *) ntohl(hdr->ih_load), (uchar *)data, len);
+			memmove ((void *) image_get_load(hdr), (uchar *)data, len);
 		}
 		break;
 #ifdef CONFIG_CMD_BOOTM_ZLIB
@@ -137,7 +137,8 @@ int relocate_image(struct image_handle *handle, void *load_address)
 		break;
 #endif
 	default:
-		printf ("Unimplemented compression type %d\n", hdr->ih_comp);
+		printf("Unimplemented compression type %d\n",
+		       image_get_comp(hdr));
 		return -1;
 	}
 
@@ -161,24 +162,24 @@ struct image_handle *map_image(const char *filename, int verify)
 	handle = xzalloc(sizeof(struct image_handle));
 	header = &handle->header;
 
-	if (read(fd, header, sizeof(image_header_t)) < 0) {
+	if (read(fd, header, image_get_header_size()) < 0) {
 		printf("could not read: %s\n", errno_str());
 		goto err_out;
 	}
 
-	if (ntohl(header->ih_magic) != IH_MAGIC) {
+	if (image_check_magic(header)) {
 		puts ("Bad Magic Number\n");
 		goto err_out;
 	}
 
-	checksum = ntohl(header->ih_hcrc);
+	checksum = image_get_hcrc(header);
 	header->ih_hcrc = 0;
 
-	if (crc32 (0, (uchar *)header, sizeof(image_header_t)) != checksum) {
+	if (crc32 (0, (uchar *)header, image_get_header_size()) != checksum) {
 		puts ("Bad Header Checksum\n");
 		goto err_out;
 	}
-	len  = ntohl(header->ih_size);
+	len  = image_get_size(header);
 
 	handle->data = memmap(fd, PROT_READ);
 	if (handle->data == (void *)-1) {
@@ -189,12 +190,13 @@ struct image_handle *map_image(const char *filename, int verify)
 			goto err_out;
 		}
 	} else {
-		handle->data = (void *)((unsigned long)handle->data + sizeof(image_header_t));
+		handle->data = (void *)((unsigned long)handle->data +
+						       image_get_header_size());
 	}
 
 	if (verify) {
 		puts ("   Verifying Checksum ... ");
-		if (crc32 (0, handle->data, len) != ntohl(header->ih_dcrc)) {
+		if (crc32 (0, handle->data, len) != image_get_dcrc(header)) {
 			printf ("Bad Data CRC\n");
 			goto err_out;
 		}
@@ -330,8 +332,9 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 
 	os_header = &os_handle->header;
 
-	if (os_header->ih_arch != IH_ARCH)	{
-		printf ("Unsupported Architecture 0x%x\n", os_header->ih_arch);
+	if (image_check_arch(os_header, IH_ARCH)) {
+		printf("Unsupported Architecture 0x%x\n",
+		       image_get_arch(os_header));
 		goto err_out;
 	}
 
@@ -347,14 +350,15 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 
 	/* loop through the registered handlers */
 	list_for_each_entry(handler, &handler_list, list) {
-		if (handler->image_type == os_header->ih_os) {
+		if (image_check_os(os_header, handler->image_type)) {
 			handler->bootm(&data);
 			printf("handler returned!\n");
 			goto err_out;
 		}
 	}
 
-	printf("no image handler found for image type %d\n", os_header->ih_os);
+	printf("no image handler found for image type %d\n",
+	       image_get_os(os_header));
 
 err_out:
 	if (os_handle)
@@ -403,17 +407,17 @@ static int image_info (ulong addr)
 	printf ("\n## Checking Image at %08lx ...\n", addr);
 
 	/* Copy header so we can blank CRC field for re-calculation */
-	memmove (&header, (char *)addr, sizeof(image_header_t));
+	memmove (&header, (char *)addr, image_get_header_size());
 
-	if (ntohl(hdr->ih_magic) != IH_MAGIC) {
+	if (image_check_magic(hdr)) {
 		puts ("   Bad Magic Number\n");
 		return 1;
 	}
 
 	data = (ulong)&header;
-	len  = sizeof(image_header_t);
+	len  = image_get_header_size();
 
-	checksum = ntohl(hdr->ih_hcrc);
+	checksum = image_get_hcrc(hdr);
 	hdr->ih_hcrc = 0;
 
 	if (crc32 (0, (uchar *)data, len) != checksum) {
@@ -424,11 +428,11 @@ static int image_info (ulong addr)
 	/* for multi-file images we need the data part, too */
 	print_image_hdr ((image_header_t *)addr);
 
-	data = addr + sizeof(image_header_t);
-	len  = ntohl(hdr->ih_size);
+	data = addr + image_get_header_size();
+	len  = image_get_size(hdr);
 
 	puts ("   Verifying Checksum ... ");
-	if (crc32 (0, (uchar *)data, len) != ntohl(hdr->ih_dcrc)) {
+	if (crc32 (0, (uchar *)data, len) != image_get_dcrc(hdr)) {
 		puts ("   Bad Data CRC\n");
 		return 1;
 	}
@@ -451,11 +455,11 @@ void
 print_image_hdr (image_header_t *hdr)
 {
 #if defined(CONFIG_CMD_DATE) || defined(CONFIG_TIMESTAMP)
-	time_t timestamp = (time_t)ntohl(hdr->ih_time);
+	time_t timestamp = (time_t)image_get_time(hdr);
 	struct rtc_time tm;
 #endif
 
-	printf ("   Image Name:   %.*s\n", IH_NMLEN, hdr->ih_name);
+	printf ("   Image Name:   %.*s\n", IH_NMLEN, image_get_name(hdr));
 #if defined(CONFIG_CMD_DATE) || defined(CONFIG_TIMESTAMP)
 	to_tm (timestamp, &tm);
 	printf ("   Created:      %4d-%02d-%02d  %2d:%02d:%02d UTC\n",
@@ -464,26 +468,27 @@ print_image_hdr (image_header_t *hdr)
 #endif	/* CONFIG_CMD_DATE, CONFIG_TIMESTAMP */
 #ifdef CONFIG_CMD_BOOTM_SHOW_TYPE
 	printf ("   Image Type:   %s %s %s (%s)\n",
-			image_get_arch_name(hdr->ih_arch),
-			image_get_os_name(hdr->ih_os),
-			image_get_type_name(hdr->ih_type),
-			image_get_comp_name(hdr->ih_comp));
+			image_get_arch_name(image_get_arch(hdr)),
+			image_get_os_name(image_get_os(hdr)),
+			image_get_type_name(image_get_type(hdr)),
+			image_get_comp_name(image_get_comp(hdr)));
 #endif
 	printf ("   Data Size:    %d Bytes = %s\n"
 		"   Load Address: %08x\n"
 		"   Entry Point:  %08x\n",
-			ntohl(hdr->ih_size),
-			size_human_readable(ntohl(hdr->ih_size)),
-			ntohl(hdr->ih_load),
-			ntohl(hdr->ih_ep));
+			image_get_size(hdr),
+			size_human_readable(image_get_size(hdr)),
+			image_get_load(hdr),
+			image_get_ep(hdr));
 
-	if (hdr->ih_type == IH_TYPE_MULTI) {
+	if (image_check_type(hdr, IH_TYPE_MULTI)) {
 		int i;
-		ulong len;
-		ulong *len_ptr = (ulong *)((ulong)hdr + sizeof(image_header_t));
+		uint32_t len;
+		uint32_t *len_ptr = (uint32_t *)((ulong)hdr + image_get_header_size());
 
 		puts ("   Contents:\n");
-		for (i=0; (len = ntohl(*len_ptr)); ++i, ++len_ptr) {
+		for (i=0; len_ptr[i]; ++i) {
+			len = ntohl(len_ptr[i]);
 			printf ("   Image %d: %8ld Bytes = %s", i, len,
 				size_human_readable (len));
 		}
diff --git a/include/image.h b/include/image.h
index 185ba64..543204b 100644
--- a/include/image.h
+++ b/include/image.h
@@ -32,6 +32,11 @@
 #define __IMAGE_H__
 
 #include <linux/types.h>
+#ifdef __BAREBOX__
+#include <asm/byteorder.h>
+#include <stdio.h>
+#include <string.h>
+#endif
 
 /*
  * Operating System Codes
@@ -79,6 +84,7 @@
 #define IH_ARCH_NIOS2		15	/* Nios-II	*/
 #define IH_ARCH_BLACKFIN	16	/* Blackfin	*/
 #define IH_ARCH_AVR32		17	/* AVR32	*/
+#define IH_ARCH_LINUX		18	/* Linux	*/
 
 #if defined(__PPC__)
 #define IH_ARCH IH_ARCH_PPC
@@ -100,6 +106,8 @@
 #define IH_ARCH IH_ARCH_BLACKFIN
 #elif defined(__avr32__)
 #define IH_ARCH IH_ARCH_AVR32
+#elif defined(CONFIG_LINUX)
+#define IH_ARCH IH_ARCH_AVR32
 #endif
 
 /*
@@ -214,6 +222,159 @@ static inline const char *image_get_comp_name(uint8_t comp)
 }
 #endif
 
+#define uimage_to_cpu(x)		be32_to_cpu(x)
+#define cpu_to_uimage(x)		cpu_to_be32(x)
+
+static inline uint32_t image_get_header_size(void)
+{
+	return sizeof(image_header_t);
+}
+
+#define image_get_hdr_u32(x)					\
+static inline uint32_t image_get_##x(const image_header_t *hdr)	\
+{								\
+	return uimage_to_cpu(hdr->ih_##x);			\
+}
+
+image_get_hdr_u32(magic);	/* image_get_magic */
+image_get_hdr_u32(hcrc);	/* image_get_hcrc */
+image_get_hdr_u32(time);	/* image_get_time */
+image_get_hdr_u32(size);	/* image_get_size */
+image_get_hdr_u32(load);	/* image_get_load */
+image_get_hdr_u32(ep);		/* image_get_ep */
+image_get_hdr_u32(dcrc);	/* image_get_dcrc */
+
+#define image_get_hdr_u8(x)					\
+static inline uint8_t image_get_##x(const image_header_t *hdr)	\
+{								\
+	return hdr->ih_##x;					\
+}
+image_get_hdr_u8(os);		/* image_get_os */
+image_get_hdr_u8(arch);		/* image_get_arch */
+image_get_hdr_u8(type);		/* image_get_type */
+image_get_hdr_u8(comp);		/* image_get_comp */
+
+static inline char *image_get_name(const image_header_t *hdr)
+{
+	return (char*)hdr->ih_name;
+}
+
+static inline uint32_t image_get_data_size(const image_header_t *hdr)
+{
+	return image_get_size(hdr);
+}
+
+/**
+ * image_get_data - get image payload start address
+ * @hdr: image header
+ *
+ * image_get_data() returns address of the image payload. For single
+ * component images it is image data start. For multi component
+ * images it points to the null terminated table of sub-images sizes.
+ *
+ * returns:
+ *     image payload data start address
+ */
+static inline ulong image_get_data(const image_header_t *hdr)
+{
+	return ((ulong)hdr + image_get_header_size());
+}
+
+static inline uint32_t image_get_image_size(const image_header_t *hdr)
+{
+	return (image_get_size(hdr) + image_get_header_size());
+}
+
+static inline ulong image_get_image_end(const image_header_t *hdr)
+{
+	return ((ulong)hdr + image_get_image_size(hdr));
+}
+
+#define image_set_hdr_u32(x)						\
+static inline void image_set_##x(image_header_t *hdr, uint32_t val)	\
+{									\
+	hdr->ih_##x = cpu_to_uimage(val);				\
+}
+
+image_set_hdr_u32(magic);	/* image_set_magic */
+image_set_hdr_u32(hcrc);	/* image_set_hcrc */
+image_set_hdr_u32(time);	/* image_set_time */
+image_set_hdr_u32(size);	/* image_set_size */
+image_set_hdr_u32(load);	/* image_set_load */
+image_set_hdr_u32(ep);		/* image_set_ep */
+image_set_hdr_u32(dcrc);	/* image_set_dcrc */
+
+#define image_set_hdr_u8(x)						\
+static inline void image_set_##x(image_header_t *hdr, uint8_t val)	\
+{									\
+	hdr->ih_##x = val;						\
+}
+
+image_set_hdr_u8(os);		/* image_set_os */
+image_set_hdr_u8(arch);		/* image_set_arch */
+image_set_hdr_u8(type);		/* image_set_type */
+image_set_hdr_u8(comp);		/* image_set_comp */
+
+static inline void image_set_name(image_header_t *hdr, const char *name)
+{
+	strncpy(image_get_name(hdr), name, IH_NMLEN);
+}
+
+static inline int image_check_magic(const image_header_t *hdr)
+{
+	return (image_get_magic(hdr) == IH_MAGIC);
+}
+static inline int image_check_type(const image_header_t *hdr, uint8_t type)
+{
+	return (image_get_type(hdr) == type);
+}
+static inline int image_check_arch(const image_header_t *hdr, uint8_t arch)
+{
+	return (image_get_arch(hdr) == arch);
+}
+static inline int image_check_os(const image_header_t *hdr, uint8_t os)
+{
+	return (image_get_os(hdr) == os);
+}
+
+#ifdef __BAREBOX__
+static inline int image_check_target_arch(const image_header_t *hdr)
+{
+#if defined(__ARM__)
+	if (!image_check_arch(hdr, IH_ARCH_ARM))
+#elif defined(__avr32__)
+	if (!image_check_arch(hdr, IH_ARCH_AVR32))
+#elif defined(__bfin__)
+	if (!image_check_arch(hdr, IH_ARCH_BLACKFIN))
+#elif defined(__I386__)
+	if (!image_check_arch(hdr, IH_ARCH_I386))
+#elif defined(__M68K__)
+	if (!image_check_arch(hdr, IH_ARCH_M68K))
+#elif defined(__microblaze__)
+	if (!image_check_arch(hdr, IH_ARCH_MICROBLAZE))
+#elif defined(__mips__)
+	if (!image_check_arch(hdr, IH_ARCH_MIPS))
+#elif defined(__nios__)
+	if (!image_check_arch(hdr, IH_ARCH_NIOS))
+#elif defined(__nios2__)
+	if (!image_check_arch(hdr, IH_ARCH_NIOS2))
+#elif defined(__PPC__)
+	if (!image_check_arch(hdr, IH_ARCH_PPC))
+#elif defined(__sh__)
+	if (!image_check_arch(hdr, IH_ARCH_SH))
+#elif defined(__sparc__)
+	if (!image_check_arch(hdr, IH_ARCH_SPARC))
+#elif defined(CONFIG_LINUX)
+	if (!image_check_arch(hdr, IH_ARCH_LINUX))
+#else
+# error Unknown CPU type
+#endif
+		return 0;
+
+	return 1;
+}
+#endif /* USE_HOSTCC */
+
 /* commamds/bootm.c */
 void	print_image_hdr (image_header_t *hdr);
 
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index 8abd3ac..fef82c6 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -224,7 +224,7 @@ NXTARG:		;
 		 */
 		memcpy (hdr, ptr, sizeof(image_header_t));
 
-		if (ntohl(hdr->ih_magic) != IH_MAGIC) {
+		if (image_check_magic(hdr)) {
 			fprintf (stderr,
 				"%s: Bad Magic Number: \"%s\" is no valid image\n",
 				cmdname, imagefile);
@@ -232,10 +232,10 @@ NXTARG:		;
 		}
 
 		data = (char *)hdr;
-		len  = sizeof(image_header_t);
+		len  = image_get_header_size();
 
-		checksum = ntohl(hdr->ih_hcrc);
-		hdr->ih_hcrc = htonl(0);	/* clear for re-calculation */
+		checksum = image_get_hcrc(hdr);
+		image_set_hcrc(hdr, 0);	/* clear for re-calculation */
 
 		if (crc32 (0, (unsigned char *)data, len) != checksum) {
 			fprintf (stderr,
@@ -244,10 +244,10 @@ NXTARG:		;
 			exit (EXIT_FAILURE);
 		}
 
-		data = (char *)(ptr + sizeof(image_header_t));
-		len  = sbuf.st_size - sizeof(image_header_t) ;
+		data = (char *)(ptr + image_get_header_size());
+		len  = sbuf.st_size - image_get_header_size() ;
 
-		if (crc32 (0, (unsigned char *)data, len) != ntohl(hdr->ih_dcrc)) {
+		if (crc32 (0, (unsigned char *)data, len) != image_get_dcrc(hdr)) {
 			fprintf (stderr,
 				"%s: ERROR: \"%s\" has corrupted data!\n",
 				cmdname, imagefile);
@@ -268,15 +268,16 @@ NXTARG:		;
 	 *
 	 * write dummy header, to be fixed later
 	 */
-	memset (hdr, 0, sizeof(image_header_t));
+	memset (hdr, 0, image_get_header_size());
 
-	if (write(ifd, hdr, sizeof(image_header_t)) != sizeof(image_header_t)) {
+	if (write(ifd, hdr, image_get_header_size()) != image_get_header_size()) {
 		fprintf (stderr, "%s: Write error on %s: %s\n",
 			cmdname, imagefile, strerror(errno));
 		exit (EXIT_FAILURE);
 	}
 
-	if (opt_type == IH_TYPE_MULTI || opt_type == IH_TYPE_SCRIPT) {
+	if ((opt_type == IH_TYPE_MULTI) ||
+	    (opt_type == IH_TYPE_SCRIPT)) {
 		char *file = datafile;
 		uint32_t size;
 
@@ -358,27 +359,27 @@ NXTARG:		;
 	hdr = (image_header_t *)ptr;
 
 	checksum = crc32 (0,
-			  (unsigned char *)(ptr + sizeof(image_header_t)),
-			  sbuf.st_size - sizeof(image_header_t)
+			  (unsigned char *)(ptr + image_get_header_size()),
+			  sbuf.st_size - image_get_header_size()
 			 );
 
 	/* Build new header */
-	hdr->ih_magic = htonl(IH_MAGIC);
-	hdr->ih_time  = htonl(sbuf.st_mtime);
-	hdr->ih_size  = htonl(sbuf.st_size - sizeof(image_header_t));
-	hdr->ih_load  = htonl(addr);
-	hdr->ih_ep    = htonl(ep);
-	hdr->ih_dcrc  = htonl(checksum);
-	hdr->ih_os    = opt_os;
-	hdr->ih_arch  = opt_arch;
-	hdr->ih_type  = opt_type;
-	hdr->ih_comp  = opt_comp;
+	image_set_magic(hdr, IH_MAGIC);
+	image_set_time(hdr, sbuf.st_mtime);
+	image_set_size(hdr, sbuf.st_size - image_get_header_size());
+	image_set_load(hdr, addr);
+	image_set_ep(hdr, ep);
+	image_set_dcrc(hdr, checksum);
+	image_set_os(hdr, opt_os);
+	image_set_arch(hdr, opt_arch);
+	image_set_type(hdr, opt_type);
+	image_set_comp(hdr, opt_comp);
 
-	strncpy((char *)hdr->ih_name, name, IH_NMLEN);
+	image_set_name(hdr, name);
 
-	checksum = crc32(0,(unsigned char *)hdr,sizeof(image_header_t));
+	checksum = crc32(0,(unsigned char *)hdr, image_get_header_size());
 
-	hdr->ih_hcrc = htonl(checksum);
+	image_set_hcrc(hdr, checksum);
 
 	print_header (hdr);
 
@@ -443,14 +444,14 @@ copy_file (int ifd, const char *datafile, int pad)
 		 * reserved for it.
 		 */
 
-		if ((unsigned)sbuf.st_size < sizeof(image_header_t)) {
+		if ((unsigned)sbuf.st_size < image_get_header_size()) {
 			fprintf (stderr,
 				"%s: Bad size: \"%s\" is too small for XIP\n",
 				cmdname, datafile);
 			exit (EXIT_FAILURE);
 		}
 
-		for (p=ptr; p < ptr+sizeof(image_header_t); p++) {
+		for (p = ptr; p < ptr + image_get_header_size(); p++) {
 			if ( *p != 0xff ) {
 				fprintf (stderr,
 					"%s: Bad file: \"%s\" has invalid buffer for XIP\n",
@@ -459,7 +460,7 @@ copy_file (int ifd, const char *datafile, int pad)
 			}
 		}
 
-		offset = sizeof(image_header_t);
+		offset = image_get_header_size();
 	}
 
 	size = sbuf.st_size - offset;
@@ -509,22 +510,23 @@ print_header (image_header_t *hdr)
 	time_t timestamp;
 	uint32_t size;
 
-	timestamp = (time_t)ntohl(hdr->ih_time);
-	size = ntohl(hdr->ih_size);
+	timestamp = (time_t)image_get_time(hdr);
+	size = image_get_size(hdr);
 
-	printf ("Image Name:   %.*s\n", IH_NMLEN, hdr->ih_name);
+	printf ("Image Name:   %.*s\n", IH_NMLEN, image_get_name(hdr));
 	printf ("Created:      %s", ctime(&timestamp));
 	printf ("Image Type:   "); print_type(hdr);
 	printf ("Data Size:    %d Bytes = %.2f kB = %.2f MB\n",
 		size, (double)size / 1.024e3, (double)size / 1.048576e6 );
-	printf ("Load Address: 0x%08X\n", ntohl(hdr->ih_load));
-	printf ("Entry Point:  0x%08X\n", ntohl(hdr->ih_ep));
+	printf ("Load Address: 0x%08X\n", image_get_load(hdr));
+	printf ("Entry Point:  0x%08X\n", image_get_ep(hdr));
 
-	if (hdr->ih_type == IH_TYPE_MULTI || hdr->ih_type == IH_TYPE_SCRIPT) {
+	if (image_check_type(hdr, IH_TYPE_MULTI) ||
+	    image_check_type(hdr, IH_TYPE_SCRIPT)) {
 		int i, ptrs;
 		uint32_t pos;
 		uint32_t *len_ptr = (uint32_t *) (
-					(unsigned long)hdr + sizeof(image_header_t)
+					(unsigned long)hdr + image_get_header_size()
 				);
 
 		/* determine number of images first (to calculate image offsets) */
@@ -532,14 +534,14 @@ print_header (image_header_t *hdr)
 			;
 		ptrs = i;		/* null pointer terminates list */
 
-		pos = sizeof(image_header_t) + ptrs * sizeof(long);
+		pos = image_get_header_size() + ptrs * sizeof(long);
 		printf ("Contents:\n");
 		for (i=0; len_ptr[i]; ++i) {
 			size = ntohl(len_ptr[i]);
 
 			printf ("   Image %d: %8d Bytes = %4d kB = %d MB\n",
 				i, size, size>>10, size>>20);
-			if (hdr->ih_type == IH_TYPE_SCRIPT && i > 0) {
+			if (image_check_type(hdr, IH_TYPE_SCRIPT) && i > 0) {
 				/*
 				 * the user may need to know offsets
 				 * if planning to do something with
@@ -560,10 +562,11 @@ static void
 print_type (image_header_t *hdr)
 {
 	printf ("%s %s %s (%s)\n",
-		image_get_arch_name(hdr->ih_arch),
-		image_get_os_name(hdr->ih_os),
-		image_get_type_name(hdr->ih_type),
-		image_get_comp_name(hdr->ih_comp));
+		image_get_arch_name(image_get_arch(hdr)),
+		image_get_os_name(image_get_os(hdr)),
+		image_get_type_name(image_get_type(hdr)),
+		image_get_comp_name(image_get_comp(hdr))
+	);
 }
 
 static int get_arch(char *name)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
