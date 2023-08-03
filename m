Delivery-date: Thu, 03 Aug 2023 08:59:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRSIy-004gW4-QM
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 08:59:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRSIv-0007T4-SY
	for lore@pengutronix.de; Thu, 03 Aug 2023 08:59:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GQEXV/AxQYipj/670x4pI+h6i48edQd0kPE9bWRgdL8=; b=V0ONd006m6cKVZpxN6FqWtJuZG
	i/6FUO80mAmdBqmc+7abqLrE/gxGdrIAjez4KulKLmGGMfxRaEZNcH9uo9P40ltI0Qxzz95Iu+3/T
	vJxSnshWydJy1C2al8ao0yTxuiT4VND8ZFFJDpACpq8oTMVqPKfyJMkuGIGzj1Mf674gKMIoC5HQn
	kNgHMkt4SiG3Hg16IZSu7FBCJ24u8ohKDYJV7/zrm7C9LhHqjfNhZQE4yykLNVW4tqQfT4Hm1rZ//
	6XiRlJTmL/opKx7KE+nP1v9XWAkmGtdLltVgX5a+yRtPc+HADy0LwAtQTmduioSpfELSM7f+OQjkb
	Rit298jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRSHY-006of9-1J;
	Thu, 03 Aug 2023 06:58:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRSHT-006oeT-0h
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 06:57:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRSHP-0007NI-QX; Thu, 03 Aug 2023 08:57:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRSHP-000mTh-5n; Thu, 03 Aug 2023 08:57:51 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRSHO-00G3dC-8O; Thu, 03 Aug 2023 08:57:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 08:57:49 +0200
Message-Id: <20230803065749.3827198-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_235755_595366_C9D40D8F 
X-CRM114-Status: GOOD (  28.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Drop mkimage tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox sourcetree contains a very outdated U-Boot mkimage tool.
The only purpose of this tool is to create a uImage barebox image which
can be used to start barebox 2nd stage from U-Boot. There is also a Make
target for generating such an image. This however predates PBL support
and is incompatible with PBL enabled barebox builds.

As the barebox.uimage target is not very useful nowadays remove it.

A recent mkimage is availabe in most Linux distributions as a host tool,
so remove the outdated version from barebox as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile           |  16 -
 scripts/.gitignore |   1 -
 scripts/Makefile   |   1 -
 scripts/mkimage.c  | 776 ---------------------------------------------
 4 files changed, 794 deletions(-)
 delete mode 100644 scripts/mkimage.c

diff --git a/Makefile b/Makefile
index c9d8311357..1efe90f41c 100644
--- a/Makefile
+++ b/Makefile
@@ -940,22 +940,6 @@ endif
 
 PHONY += install
 
-# By default the uImage load address is 2MB below CONFIG_TEXT_BASE,
-# leaving space for the compressed PBL image at 1MB below CONFIG_TEXT_BASE.
-UIMAGE_BASE ?= $(shell printf "0x%08x" $$(($(CONFIG_TEXT_BASE) - 0x200000)))
-
-# For development provide a target which makes barebox loadable by an
-# unmodified u-boot
-quiet_cmd_barebox_mkimage = MKIMAGE $@
-      cmd_barebox_mkimage = $(srctree)/scripts/mkimage -A $(SRCARCH) -T firmware -C none \
-       -O barebox -a $(UIMAGE_BASE) -e $(UIMAGE_BASE) \
-       -n "barebox $(KERNELRELEASE)" -d $< $@
-
-# barebox.uimage is build from the raw barebox binary, without any other
-# headers.
-barebox.uimage: $(KBUILD_BINARY) FORCE
-	$(call if_changed,barebox_mkimage)
-
 # barebox image
 barebox: $(BAREBOX_LDS) $(BAREBOX_OBJS) $(kallsyms.o) FORCE
 	$(call if_changed_rule,barebox__)
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 3ca742ac6e..057fbc23d6 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -1,7 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 bin2c
-mkimage
 fix_size
 bareboxenv
 bareboxcrc32
diff --git a/scripts/Makefile b/scripts/Makefile
index 01b21a6169..678b6ef335 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -5,7 +5,6 @@
 # barebox for the build process.
 
 hostprogs-always-y					+= bin2c
-hostprogs-always-y					+= mkimage
 hostprogs-always-y					+= fix_size
 hostprogs-always-y					+= bareboxenv
 hostprogs-always-y					+= bareboxcrc32
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
deleted file mode 100644
index a76c061aee..0000000000
--- a/scripts/mkimage.c
+++ /dev/null
@@ -1,776 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2008 Semihalf
-// SPDX-FileCopyrightText: 2000-2004 DENX Software Engineering (Wolfgang Denk <wd@denx.de>)
-
-#include <sys/stat.h>
-#include <time.h>
-#include <unistd.h>
-
-#include "compiler.h"
-
-#include "../include/image.h"
-#include "../common/image.c"
-
-char *cmdname;
-
-#include "../crypto/crc32.c"
-
-//extern unsigned long crc32 (unsigned long crc, const char *buf, unsigned int len);
-
-static	void	copy_file (int, const char *, int);
-static	void	usage	(void);
-static	int	get_table_entry (table_entry_t *, char *, char *);
-static	int	get_arch(char *);
-static	int	get_comp(char *);
-static	int	get_os  (char *);
-static	int	get_type(char *);
-
-
-char	*datafile;
-char	*imagefile;
-
-int dflag    = 0;
-int eflag    = 0;
-int lflag    = 0;
-int vflag    = 0;
-int xflag    = 0;
-int opt_os   = IH_OS_LINUX;
-int opt_arch = IH_ARCH_PPC;
-int opt_type = IH_TYPE_KERNEL;
-int opt_comp = IH_COMP_GZIP;
-
-image_header_t header;
-image_header_t *hdr = &header;
-
-static inline uint32_t image_get_header_size(void)
-{
-	return sizeof(image_header_t);
-}
-
-#define image_get_hdr_u32(x)					\
-static inline uint32_t image_get_##x(const image_header_t *hdr)	\
-{								\
-	return uimage_to_cpu(hdr->ih_##x);			\
-}
-
-image_get_hdr_u32(magic);	/* image_get_magic */
-image_get_hdr_u32(hcrc);	/* image_get_hcrc */
-image_get_hdr_u32(time);	/* image_get_time */
-image_get_hdr_u32(size);	/* image_get_size */
-image_get_hdr_u32(load);	/* image_get_load */
-image_get_hdr_u32(ep);		/* image_get_ep */
-image_get_hdr_u32(dcrc);	/* image_get_dcrc */
-
-#define image_get_hdr_u8(x)					\
-static inline uint8_t image_get_##x(const image_header_t *hdr)	\
-{								\
-	return hdr->ih_##x;					\
-}
-image_get_hdr_u8(os);		/* image_get_os */
-image_get_hdr_u8(arch);		/* image_get_arch */
-image_get_hdr_u8(type);		/* image_get_type */
-image_get_hdr_u8(comp);		/* image_get_comp */
-
-static inline char *image_get_name(const image_header_t *hdr)
-{
-	return (char*)hdr->ih_name;
-}
-
-static inline uint32_t image_get_data_size(const image_header_t *hdr)
-{
-	return image_get_size(hdr);
-}
-
-/**
- * image_get_data - get image payload start address
- * @hdr: image header
- *
- * image_get_data() returns address of the image payload. For single
- * component images it is image data start. For multi component
- * images it points to the null terminated table of sub-images sizes.
- *
- * returns:
- *     image payload data start address
- */
-static inline ulong image_get_data(const image_header_t *hdr)
-{
-	return ((ulong)hdr + image_get_header_size());
-}
-
-static inline uint32_t image_get_image_size(const image_header_t *hdr)
-{
-	return (image_get_size(hdr) + image_get_header_size());
-}
-
-static inline ulong image_get_image_end(const image_header_t *hdr)
-{
-	return ((ulong)hdr + image_get_image_size(hdr));
-}
-
-#define image_set_hdr_u32(x)						\
-static inline void image_set_##x(image_header_t *hdr, uint32_t val)	\
-{									\
-	hdr->ih_##x = cpu_to_uimage(val);				\
-}
-
-image_set_hdr_u32(magic);	/* image_set_magic */
-image_set_hdr_u32(hcrc);	/* image_set_hcrc */
-image_set_hdr_u32(time);	/* image_set_time */
-image_set_hdr_u32(size);	/* image_set_size */
-image_set_hdr_u32(load);	/* image_set_load */
-image_set_hdr_u32(ep);		/* image_set_ep */
-image_set_hdr_u32(dcrc);	/* image_set_dcrc */
-
-#define image_set_hdr_u8(x)						\
-static inline void image_set_##x(image_header_t *hdr, uint8_t val)	\
-{									\
-	hdr->ih_##x = val;						\
-}
-
-image_set_hdr_u8(os);		/* image_set_os */
-image_set_hdr_u8(arch);		/* image_set_arch */
-image_set_hdr_u8(type);		/* image_set_type */
-image_set_hdr_u8(comp);		/* image_set_comp */
-
-static inline void image_set_name(image_header_t *hdr, const char *name)
-{
-	strncpy(image_get_name(hdr), name, IH_NMLEN - 1);
-}
-
-/**
- * image_multi_count - get component (sub-image) count
- * @hdr: pointer to the header of the multi component image
- *
- * image_multi_count() returns number of components in a multi
- * component image.
- *
- * Note: no checking of the image type is done, caller must pass
- * a valid multi component image.
- *
- * returns:
- *     number of components
- */
-static ulong image_multi_count(void *data)
-{
-	ulong i, count = 0;
-	uint32_t *size;
-
-	/* get start of the image payload, which in case of multi
-	 * component images that points to a table of component sizes */
-	size = (uint32_t *)data;
-
-	/* count non empty slots */
-	for (i = 0; size[i]; ++i)
-		count++;
-
-	return count;
-}
-
-/**
- * image_multi_getimg - get component data address and size
- * @hdr: pointer to the header of the multi component image
- * @idx: index of the requested component
- * @data: pointer to a ulong variable, will hold component data address
- * @len: pointer to a ulong variable, will hold component size
- *
- * image_multi_getimg() returns size and data address for the requested
- * component in a multi component image.
- *
- * Note: no checking of the image type is done, caller must pass
- * a valid multi component image.
- *
- * returns:
- *     data address and size of the component, if idx is valid
- *     0 in data and len, if idx is out of range
- */
-static void image_multi_getimg(void *data, ulong idx,
-			ulong *img_data, ulong *len)
-{
-	int i;
-	uint32_t *size;
-	ulong offset, count, tmp_img_data;
-
-	/* get number of component */
-	count = image_multi_count(data);
-
-	/* get start of the image payload, which in case of multi
-	 * component images that points to a table of component sizes */
-	size = (uint32_t *)data;
-
-	/* get address of the proper component data start, which means
-	 * skipping sizes table (add 1 for last, null entry) */
-	tmp_img_data = (ulong)data + (count + 1) * sizeof (uint32_t);
-
-	if (idx < count) {
-		*len = uimage_to_cpu(size[idx]);
-		offset = 0;
-
-		/* go over all indices preceding requested component idx */
-		for (i = 0; i < idx; i++) {
-			/* add up i-th component size, rounding up to 4 bytes */
-			offset += (uimage_to_cpu(size[i]) + 3) & ~3 ;
-		}
-
-		/* calculate idx-th component data address */
-		*img_data = tmp_img_data + offset;
-	} else {
-		*len = 0;
-		*img_data = 0;
-	}
-}
-
-static void image_print_type(const image_header_t *hdr)
-{
-	const char *os, *arch, *type, *comp;
-
-	os = image_get_os_name(image_get_os(hdr));
-	arch = image_get_arch_name(image_get_arch(hdr));
-	type = image_get_type_name(image_get_type(hdr));
-	comp = image_get_comp_name(image_get_comp(hdr));
-
-	printf ("%s %s %s (%s)\n", arch, os, type, comp);
-}
-
-static void image_print_time(time_t timestamp)
-{
-	printf("%s", ctime(&timestamp));
-}
-
-static void image_print_size(uint32_t size)
-{
-	printf("%d Bytes = %.2f kB = %.2f MB\n",
-			size, (double)size / 1.024e3,
-			(double)size / 1.048576e6);
-}
-
-static void image_print_contents(const image_header_t *hdr, void *data)
-{
-	int type;
-
-	printf("Image Name:   %.*s\n", IH_NMLEN, image_get_name(hdr));
-	printf("Created:      ");
-	image_print_time((time_t)image_get_time(hdr));
-	printf ("Image Type:   ");
-	image_print_type(hdr);
-	printf ("Data Size:    ");
-	image_print_size(image_get_data_size(hdr));
-	printf ("Load Address: %08x\n", image_get_load(hdr));
-	printf ("Entry Point:  %08x\n", image_get_ep(hdr));
-
-	type = image_get_type(hdr);
-	if (data && (type == IH_TYPE_MULTI || type == IH_TYPE_SCRIPT)) {
-		int i;
-		ulong img_data, len;
-		ulong count = image_multi_count(data);
-
-		printf ("Contents:\n");
-		for (i = 0; i < count; i++) {
-			image_multi_getimg(data, i, &img_data, &len);
-
-			printf("   Image %d: ", i);
-			image_print_size(len);
-
-			if (image_get_type(hdr) != IH_TYPE_SCRIPT && i > 0) {
-				/*
-				 * the user may need to know offsets
-				 * if planning to do something with
-				 * multiple files
-				 */
-				printf("    Offset = 0x%08lx\n", img_data);
-			}
-		}
-	}
-}
-
-int
-main (int argc, char **argv)
-{
-	int ifd;
-	uint32_t checksum;
-	uint32_t addr;
-	uint32_t ep;
-	struct stat sbuf;
-	char *ptr;
-	char *name = "";
-
-	cmdname = *argv;
-
-	addr = ep = 0;
-
-	while (--argc > 0 && **++argv == '-') {
-		while (*++*argv) {
-			switch (**argv) {
-			case 'l':
-				lflag = 1;
-				break;
-			case 'A':
-				if ((--argc <= 0) ||
-				    (opt_arch = get_arch(*++argv)) < 0)
-					usage ();
-				goto NXTARG;
-			case 'C':
-				if ((--argc <= 0) ||
-				    (opt_comp = get_comp(*++argv)) < 0)
-					usage ();
-				goto NXTARG;
-			case 'O':
-				if ((--argc <= 0) ||
-				    (opt_os = get_os(*++argv)) < 0)
-					usage ();
-				goto NXTARG;
-			case 'T':
-				if ((--argc <= 0) ||
-				    (opt_type = get_type(*++argv)) < 0)
-					usage ();
-				goto NXTARG;
-
-			case 'a':
-				if (--argc <= 0)
-					usage ();
-				addr = strtoul (*++argv, (char **)&ptr, 16);
-				if (*ptr) {
-					fprintf (stderr,
-						"%s: invalid load address %s\n",
-						cmdname, *argv);
-					exit (EXIT_FAILURE);
-				}
-				goto NXTARG;
-			case 'd':
-				if (--argc <= 0)
-					usage ();
-				datafile = *++argv;
-				dflag = 1;
-				goto NXTARG;
-			case 'e':
-				if (--argc <= 0)
-					usage ();
-				ep = strtoul (*++argv, (char **)&ptr, 16);
-				if (*ptr) {
-					fprintf (stderr,
-						"%s: invalid entry point %s\n",
-						cmdname, *argv);
-					exit (EXIT_FAILURE);
-				}
-				eflag = 1;
-				goto NXTARG;
-			case 'n':
-				if (--argc <= 0)
-					usage ();
-				name = *++argv;
-				goto NXTARG;
-			case 'v':
-				vflag++;
-				break;
-			case 'x':
-				xflag++;
-				break;
-			default:
-				usage ();
-			}
-		}
-NXTARG:		;
-	}
-
-	if ((argc != 1) || ((lflag ^ dflag) == 0))
-		usage();
-
-	if (!eflag) {
-		ep = addr;
-		/* If XIP, entry point must be after the barebox header */
-		if (xflag)
-			ep += sizeof(image_header_t);
-	}
-
-	/*
-	 * If XIP, ensure the entry point is equal to the load address plus
-	 * the size of the barebox header.
-	 */
-	if (xflag) {
-		if (ep != addr + sizeof(image_header_t)) {
-			fprintf (stderr,
-				"%s: For XIP, the entry point must be the load addr + %lu\n",
-				cmdname,
-				(unsigned long)sizeof(image_header_t));
-			exit (EXIT_FAILURE);
-		}
-	}
-
-	imagefile = *argv;
-
-	if (lflag) {
-		ifd = open(imagefile, O_RDONLY|O_BINARY);
-	} else {
-		ifd = open(imagefile, O_RDWR|O_CREAT|O_TRUNC|O_BINARY, 0666);
-	}
-
-	if (ifd < 0) {
-		fprintf (stderr, "%s: Can't open %s: %s\n",
-			cmdname, imagefile, strerror(errno));
-		exit (EXIT_FAILURE);
-	}
-
-	if (lflag) {
-		int len;
-		char *data;
-		/*
-		 * list header information of existing image
-		 */
-		if (fstat(ifd, &sbuf) < 0) {
-			fprintf (stderr, "%s: Can't stat %s: %s\n",
-				cmdname, imagefile, strerror(errno));
-			exit (EXIT_FAILURE);
-		}
-
-		if ((unsigned)sbuf.st_size < sizeof(image_header_t)) {
-			fprintf (stderr,
-				"%s: Bad size: \"%s\" is no valid image\n",
-				cmdname, imagefile);
-			exit (EXIT_FAILURE);
-		}
-
-		ptr = mmap(0, sbuf.st_size,
-					    PROT_READ, MAP_SHARED, ifd, 0);
-		if ((caddr_t)ptr == (caddr_t)-1) {
-			fprintf (stderr, "%s: Can't read %s: %s\n",
-				cmdname, imagefile, strerror(errno));
-			exit (EXIT_FAILURE);
-		}
-
-		/*
-		 * create copy of header so that we can blank out the
-		 * checksum field for checking - this can't be done
-		 * on the PROT_READ mapped data.
-		 */
-		memcpy (hdr, ptr, sizeof(image_header_t));
-
-		if (image_get_magic(hdr) != IH_MAGIC) {
-			fprintf (stderr,
-				"%s: Bad Magic Number: \"%s\" is no valid image\n",
-				cmdname, imagefile);
-			exit (EXIT_FAILURE);
-		}
-
-		data = (char *)hdr;
-		len  = image_get_header_size();
-
-		checksum = image_get_hcrc(hdr);
-		image_set_hcrc(hdr, 0);	/* clear for re-calculation */
-
-		if (crc32 (0, (unsigned char *)data, len) != checksum) {
-			fprintf (stderr,
-				"%s: ERROR: \"%s\" has bad header checksum!\n",
-				cmdname, imagefile);
-			exit (EXIT_FAILURE);
-		}
-
-		data = (char *)(ptr + image_get_header_size());
-		len  = sbuf.st_size - image_get_header_size() ;
-
-		if (crc32 (0, (unsigned char *)data, len) != image_get_dcrc(hdr)) {
-			fprintf (stderr,
-				"%s: ERROR: \"%s\" has corrupted data!\n",
-				cmdname, imagefile);
-			exit (EXIT_FAILURE);
-		}
-
-		/* for multi-file images we need the data part, too */
-		image_print_contents((image_header_t *)ptr,
-				     (void*)image_get_data((image_header_t *)ptr));
-
-		(void) munmap((void *)ptr, sbuf.st_size);
-		(void) close (ifd);
-
-		exit (EXIT_SUCCESS);
-	}
-
-	/*
-	 * Must be -w then:
-	 *
-	 * write dummy header, to be fixed later
-	 */
-	memset (hdr, 0, image_get_header_size());
-
-	if (write(ifd, hdr, image_get_header_size()) != image_get_header_size()) {
-		fprintf (stderr, "%s: Write error on %s: %s\n",
-			cmdname, imagefile, strerror(errno));
-		exit (EXIT_FAILURE);
-	}
-
-	if ((opt_type == IH_TYPE_MULTI) ||
-	    (opt_type == IH_TYPE_SCRIPT)) {
-		char *file = datafile;
-		uint32_t size;
-
-		for (;;) {
-			char *sep = NULL;
-
-			if (file) {
-				if ((sep = strchr(file, ':')) != NULL) {
-					*sep = '\0';
-				}
-
-				if (stat (file, &sbuf) < 0) {
-					fprintf (stderr, "%s: Can't stat %s: %s\n",
-						cmdname, file, strerror(errno));
-					exit (EXIT_FAILURE);
-				}
-				size = htonl(sbuf.st_size);
-			} else {
-				size = 0;
-			}
-
-			if (write(ifd, (char *)&size, sizeof(size)) != sizeof(size)) {
-				fprintf (stderr, "%s: Write error on %s: %s\n",
-					cmdname, imagefile, strerror(errno));
-				exit (EXIT_FAILURE);
-			}
-
-			if (!file) {
-				break;
-			}
-
-			if (sep) {
-				*sep = ':';
-				file = sep + 1;
-			} else {
-				file = NULL;
-			}
-		}
-
-		file = datafile;
-
-		for (;;) {
-			char *sep = strchr(file, ':');
-			if (sep) {
-				*sep = '\0';
-				copy_file (ifd, file, 1);
-				*sep++ = ':';
-				file = sep;
-			} else {
-				copy_file (ifd, file, 0);
-				break;
-			}
-		}
-	} else {
-		copy_file (ifd, datafile, 0);
-	}
-
-	/* We're a bit of paranoid */
-#if defined(_POSIX_SYNCHRONIZED_IO) && \
-   !defined(__sun__) && \
-   !defined(__FreeBSD__) && \
-   !defined(__OpenBSD__) && \
-   !defined(__APPLE__)
-	(void) fdatasync (ifd);
-#else
-	(void) fsync (ifd);
-#endif
-
-	if (fstat(ifd, &sbuf) < 0) {
-		fprintf (stderr, "%s: Can't stat %s: %s\n",
-			cmdname, imagefile, strerror(errno));
-		exit (EXIT_FAILURE);
-	}
-
-	ptr = mmap(0, sbuf.st_size,
-				    PROT_READ|PROT_WRITE, MAP_SHARED, ifd, 0);
-	if (ptr == MAP_FAILED) {
-		fprintf (stderr, "%s: Can't map %s: %s\n",
-			cmdname, imagefile, strerror(errno));
-		exit (EXIT_FAILURE);
-	}
-
-	hdr = (image_header_t *)ptr;
-
-	checksum = crc32 (0,
-			  (unsigned char *)(ptr + image_get_header_size()),
-			  sbuf.st_size - image_get_header_size()
-			 );
-
-	/* Build new header */
-	image_set_magic(hdr, IH_MAGIC);
-	image_set_time(hdr, sbuf.st_mtime);
-	image_set_size(hdr, sbuf.st_size - image_get_header_size());
-	image_set_load(hdr, addr);
-	image_set_ep(hdr, ep);
-	image_set_dcrc(hdr, checksum);
-	image_set_os(hdr, opt_os);
-	image_set_arch(hdr, opt_arch);
-	image_set_type(hdr, opt_type);
-	image_set_comp(hdr, opt_comp);
-
-	image_set_name(hdr, name);
-
-	checksum = crc32(0,(unsigned char *)hdr, image_get_header_size());
-
-	image_set_hcrc(hdr, checksum);
-
-	image_print_contents(hdr, (void*)image_get_data(hdr));
-
-	(void) munmap((void *)ptr, sbuf.st_size);
-
-	/* We're a bit of paranoid */
-#if defined(_POSIX_SYNCHRONIZED_IO) && \
-   !defined(__sun__) && \
-   !defined(__FreeBSD__) && \
-   !defined(__OpenBSD__) && \
-   !defined(__APPLE__)
-	(void) fdatasync (ifd);
-#else
-	(void) fsync (ifd);
-#endif
-
-	if (close(ifd)) {
-		fprintf (stderr, "%s: Write error on %s: %s\n",
-			cmdname, imagefile, strerror(errno));
-		exit (EXIT_FAILURE);
-	}
-
-	exit (EXIT_SUCCESS);
-}
-
-static void
-copy_file (int ifd, const char *datafile, int pad)
-{
-	int dfd;
-	struct stat sbuf;
-	unsigned char *ptr;
-	int tail;
-	int zero = 0;
-	int offset = 0;
-	int size;
-
-	if (vflag) {
-		fprintf (stderr, "Adding Image %s\n", datafile);
-	}
-
-	if ((dfd = open(datafile, O_RDONLY|O_BINARY)) < 0) {
-		fprintf (stderr, "%s: Can't open %s: %s\n",
-			cmdname, datafile, strerror(errno));
-		exit (EXIT_FAILURE);
-	}
-
-	if (fstat(dfd, &sbuf) < 0) {
-		fprintf (stderr, "%s: Can't stat %s: %s\n",
-			cmdname, datafile, strerror(errno));
-		exit (EXIT_FAILURE);
-	}
-
-	ptr = (unsigned char *)mmap(0, sbuf.st_size,
-				    PROT_READ, MAP_SHARED, dfd, 0);
-	if (ptr == (unsigned char *)MAP_FAILED) {
-		fprintf (stderr, "%s: Can't read %s: %s\n",
-			cmdname, datafile, strerror(errno));
-		exit (EXIT_FAILURE);
-	}
-
-	if (xflag) {
-		unsigned char *p = NULL;
-		/*
-		 * XIP: do not append the image_header_t at the
-		 * beginning of the file, but consume the space
-		 * reserved for it.
-		 */
-
-		if ((unsigned)sbuf.st_size < image_get_header_size()) {
-			fprintf (stderr,
-				"%s: Bad size: \"%s\" is too small for XIP\n",
-				cmdname, datafile);
-			exit (EXIT_FAILURE);
-		}
-
-		for (p = ptr; p < ptr + image_get_header_size(); p++) {
-			if ( *p != 0xff ) {
-				fprintf (stderr,
-					"%s: Bad file: \"%s\" has invalid buffer for XIP\n",
-					cmdname, datafile);
-				exit (EXIT_FAILURE);
-			}
-		}
-
-		offset = image_get_header_size();
-	}
-
-	size = sbuf.st_size - offset;
-	if (write(ifd, ptr + offset, size) != size) {
-		fprintf (stderr, "%s: Write error on %s: %s\n",
-			cmdname, imagefile, strerror(errno));
-		exit (EXIT_FAILURE);
-	}
-
-	if (pad && ((tail = size % 4) != 0)) {
-
-		if (write(ifd, (char *)&zero, 4-tail) != 4-tail) {
-			fprintf (stderr, "%s: Write error on %s: %s\n",
-				cmdname, imagefile, strerror(errno));
-			exit (EXIT_FAILURE);
-		}
-	}
-
-	(void) munmap((void *)ptr, sbuf.st_size);
-	(void) close (dfd);
-}
-
-void
-usage ()
-{
-	fprintf (stderr, "Usage: %s -l image\n"
-			 "          -l ==> list image header information\n"
-			 "       %s [-x] -A arch -O os -T type -C comp "
-			 "-a addr -e ep -n name -d data_file[:data_file...] image\n",
-		cmdname, cmdname);
-	fprintf (stderr, "          -A ==> set architecture to 'arch'\n"
-			 "          -O ==> set operating system to 'os'\n"
-			 "          -T ==> set image type to 'type'\n"
-			 "          -C ==> set compression type 'comp'\n"
-			 "          -a ==> set load address to 'addr' (hex)\n"
-			 "          -e ==> set entry point to 'ep' (hex)\n"
-			 "          -n ==> set image name to 'name'\n"
-			 "          -d ==> use image data from 'datafile'\n"
-			 "          -x ==> set XIP (execute in place)\n"
-		);
-	exit (EXIT_FAILURE);
-}
-
-static int get_arch(char *name)
-{
-	return (get_table_entry(arch_name, "CPU", name));
-}
-
-
-static int get_comp(char *name)
-{
-	return (get_table_entry(comp_name, "Compression", name));
-}
-
-
-static int get_os (char *name)
-{
-	return (get_table_entry(os_name, "OS", name));
-}
-
-
-static int get_type(char *name)
-{
-	return (get_table_entry(type_name, "Image", name));
-}
-
-static int get_table_entry (table_entry_t *table, char *msg, char *name)
-{
-	table_entry_t *t;
-	int first = 1;
-
-	for (t=table; t->id>=0; ++t) {
-		if (t->sname && strcasecmp(t->sname, name)==0)
-			return (t->id);
-	}
-	fprintf (stderr, "\nInvalid %s Type - valid names are", msg);
-	for (t=table; t->id>=0; ++t) {
-		if (t->sname == NULL)
-			continue;
-		fprintf (stderr, "%c %s", (first) ? ':' : ',', t->sname);
-		first = 0;
-	}
-	fprintf (stderr, "\n");
-	return (-1);
-}
-- 
2.39.2



