Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OyrYD-0003rd-Hx
	for barebox@lists.infradead.org; Thu, 23 Sep 2010 19:33:51 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 23 Sep 2010 21:32:20 +0200
Message-Id: <1285270340-23156-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1285270340-23156-1-git-send-email-plagnioj@jcrosoft.com>
References: <1285270340-23156-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/3 v2] image: factorise image printing contents
To: barebox@lists.infradead.org

before we duplicate it between command/bootm.c and scripts/mkimage.c

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
rebase against next
 commands/bootm.c  |   46 +--------------
 common/Makefile   |    2 +-
 common/image.c    |  175 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/image.h   |   10 +++-
 scripts/mkimage.c |   71 +---------------------
 5 files changed, 188 insertions(+), 116 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 98047cd..83d36d3 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -203,7 +203,7 @@ struct image_handle *map_image(const char *filename, int verify)
 		puts ("OK\n");
 	}
 
-	print_image_hdr(header);
+	image_print_contents(header);
 
 	close(fd);
 
@@ -451,50 +451,6 @@ BAREBOX_CMD(
 
 #endif	/* CONFIG_CMD_IMI */
 
-void
-print_image_hdr (image_header_t *hdr)
-{
-#if defined(CONFIG_CMD_DATE) || defined(CONFIG_TIMESTAMP)
-	time_t timestamp = (time_t)image_get_time(hdr);
-	struct rtc_time tm;
-#endif
-
-	printf ("   Image Name:   %.*s\n", IH_NMLEN, image_get_name(hdr));
-#if defined(CONFIG_CMD_DATE) || defined(CONFIG_TIMESTAMP)
-	to_tm (timestamp, &tm);
-	printf ("   Created:      %4d-%02d-%02d  %2d:%02d:%02d UTC\n",
-		tm.tm_year, tm.tm_mon, tm.tm_mday,
-		tm.tm_hour, tm.tm_min, tm.tm_sec);
-#endif	/* CONFIG_CMD_DATE, CONFIG_TIMESTAMP */
-#ifdef CONFIG_CMD_BOOTM_SHOW_TYPE
-	printf ("   Image Type:   %s %s %s (%s)\n",
-			image_get_arch_name(image_get_arch(hdr)),
-			image_get_os_name(image_get_os(hdr)),
-			image_get_type_name(image_get_type(hdr)),
-			image_get_comp_name(image_get_comp(hdr)));
-#endif
-	printf ("   Data Size:    %d Bytes = %s\n"
-		"   Load Address: %08x\n"
-		"   Entry Point:  %08x\n",
-			image_get_size(hdr),
-			size_human_readable(image_get_size(hdr)),
-			image_get_load(hdr),
-			image_get_ep(hdr));
-
-	if (image_check_type(hdr, IH_TYPE_MULTI)) {
-		int i;
-		uint32_t len;
-		uint32_t *len_ptr = (uint32_t *)((ulong)hdr + image_get_header_size());
-
-		puts ("   Contents:\n");
-		for (i=0; len_ptr[i]; ++i) {
-			len = ntohl(len_ptr[i]);
-			printf ("   Image %d: %8ld Bytes = %s", i, len,
-				size_human_readable (len));
-		}
-	}
-}
-
 #ifdef CONFIG_BZLIB
 void bz_internal_error(int errcode)
 {
diff --git a/common/Makefile b/common/Makefile
index 94b1387..e56dbc2 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -13,7 +13,7 @@ obj-$(CONFIG_CONSOLE_FULL) += console.o
 obj-$(CONFIG_CONSOLE_SIMPLE) += console_simple.o
 obj-$(CONFIG_DIGEST) += digest.o
 obj-y += env.o
-obj-$(CONFIG_CMD_BOOTM_SHOW_TYPE) += image.o
+obj-$(CONFIG_CMD_BOOTM) += image.o
 obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
diff --git a/common/image.c b/common/image.c
index 75346f5..fd57443 100644
--- a/common/image.c
+++ b/common/image.c
@@ -22,9 +22,14 @@
  */
 
 #ifdef __BAREBOX__
+#include <common.h>
 #include <image.h>
+#include <rtc.h>
+#else
+#include <time.h>
 #endif
 
+#if defined(CONFIG_CMD_BOOTM_SHOW_TYPE) || !defined(__BAREBOX__)
 typedef struct table_entry {
 	int	id;		/* as defined in image.h	*/
 	char	*sname;		/* short (input) name		*/
@@ -132,3 +137,173 @@ const char *image_get_comp_name(uint8_t comp)
 {
 	return get_table_entry_name(comp_name, "Unknown Compression", comp);
 }
+#endif
+
+/**
+ * image_multi_count - get component (sub-image) count
+ * @hdr: pointer to the header of the multi component image
+ *
+ * image_multi_count() returns number of components in a multi
+ * component image.
+ *
+ * Note: no checking of the image type is done, caller must pass
+ * a valid multi component image.
+ *
+ * returns:
+ *     number of components
+ */
+ulong image_multi_count(const image_header_t *hdr)
+{
+	ulong i, count = 0;
+	uint32_t *size;
+
+	/* get start of the image payload, which in case of multi
+	 * component images that points to a table of component sizes */
+	size = (uint32_t *)image_get_data (hdr);
+
+	/* count non empty slots */
+	for (i = 0; size[i]; ++i)
+		count++;
+
+	return count;
+}
+
+/**
+ * image_multi_getimg - get component data address and size
+ * @hdr: pointer to the header of the multi component image
+ * @idx: index of the requested component
+ * @data: pointer to a ulong variable, will hold component data address
+ * @len: pointer to a ulong variable, will hold component size
+ *
+ * image_multi_getimg() returns size and data address for the requested
+ * component in a multi component image.
+ *
+ * Note: no checking of the image type is done, caller must pass
+ * a valid multi component image.
+ *
+ * returns:
+ *     data address and size of the component, if idx is valid
+ *     0 in data and len, if idx is out of range
+ */
+void image_multi_getimg(const image_header_t *hdr, ulong idx,
+			ulong *data, ulong *len)
+{
+	int i;
+	uint32_t *size;
+	ulong offset, count, img_data;
+
+	/* get number of component */
+	count = image_multi_count(hdr);
+
+	/* get start of the image payload, which in case of multi
+	 * component images that points to a table of component sizes */
+	size = (uint32_t *)image_get_data(hdr);
+
+	/* get address of the proper component data start, which means
+	 * skipping sizes table (add 1 for last, null entry) */
+	img_data = image_get_data(hdr) + (count + 1) * sizeof (uint32_t);
+
+	if (idx < count) {
+		*len = uimage_to_cpu(size[idx]);
+		offset = 0;
+
+		/* go over all indices preceding requested component idx */
+		for (i = 0; i < idx; i++) {
+			/* add up i-th component size, rounding up to 4 bytes */
+			offset += (uimage_to_cpu(size[i]) + 3) & ~3 ;
+		}
+
+		/* calculate idx-th component data address */
+		*data = img_data + offset;
+	} else {
+		*len = 0;
+		*data = 0;
+	}
+}
+
+static void image_print_type(const image_header_t *hdr)
+{
+	const char *os, *arch, *type, *comp;
+
+	os = image_get_os_name(image_get_os(hdr));
+	arch = image_get_arch_name(image_get_arch(hdr));
+	type = image_get_type_name(image_get_type(hdr));
+	comp = image_get_comp_name(image_get_comp(hdr));
+
+	printf ("%s %s %s (%s)\n", arch, os, type, comp);
+}
+
+#if defined(CONFIG_TIMESTAMP) || defined(CONFIG_CMD_DATE) || !defined(__BAREBOX__)
+static void image_print_time(time_t timestamp)
+{
+#if defined(__BAREBOX__)
+	struct rtc_time tm;
+
+	to_tm(timestamp, &tm);
+	printf("%4d-%02d-%02d  %2d:%02d:%02d UTC\n",
+			tm.tm_year, tm.tm_mon, tm.tm_mday,
+			tm.tm_hour, tm.tm_min, tm.tm_sec);
+#else
+	printf("%s", ctime(&timestamp));
+#endif
+}
+#endif /* CONFIG_TIMESTAMP || CONFIG_CMD_DATE || !__BAREBOX__ */
+
+void image_print_size(uint32_t size)
+{
+#ifdef __BAREBOX__
+	printf("%d Bytes = %s\n", size, size_human_readable(size));
+#else
+	printf("%d Bytes = %.2f kB = %.2f MB\n",
+			size, (double)size / 1.024e3,
+			(double)size / 1.048576e6);
+#endif
+}
+
+void image_print_contents(const void *ptr)
+{
+	const image_header_t *hdr = (const image_header_t *)ptr;
+	const char *p;
+
+#ifdef __BAREBOX__
+	p = "   ";
+#else
+	p = "";
+#endif
+
+	printf("%sImage Name:   %.*s\n", p, IH_NMLEN, image_get_name(hdr));
+#if defined(CONFIG_TIMESTAMP) || defined(CONFIG_CMD_DATE) || !defined(__BAREBOX__)
+	printf("%sCreated:      ", p);
+	image_print_time((time_t)image_get_time(hdr));
+#endif
+	printf ("%sImage Type:   ", p);
+	image_print_type(hdr);
+	printf ("%sData Size:    ", p);
+	image_print_size(image_get_data_size(hdr));
+	printf ("%sLoad Address: %08x\n", p, image_get_load(hdr));
+	printf ("%sEntry Point:  %08x\n", p, image_get_ep(hdr));
+
+	if (image_check_type(hdr, IH_TYPE_MULTI) ||
+			image_check_type(hdr, IH_TYPE_SCRIPT)) {
+		int i;
+		ulong data, len;
+		ulong count = image_multi_count(hdr);
+
+		printf ("%sContents:\n", p);
+		for (i = 0; i < count; i++) {
+			image_multi_getimg(hdr, i, &data, &len);
+
+			printf("%s   Image %d: ", p, i);
+			image_print_size(len);
+
+			if (image_check_type(hdr, IH_TYPE_SCRIPT) && i > 0) {
+				/*
+				 * the user may need to know offsets
+				 * if planning to do something with
+				 * multiple files
+				 */
+				printf("%s    Offset = 0x%08lx\n", p, data);
+			}
+		}
+	}
+}
diff --git a/include/image.h b/include/image.h
index abe19cc..add5e02 100644
--- a/include/image.h
+++ b/include/image.h
@@ -373,7 +373,15 @@ static inline int image_check_target_arch(const image_header_t *hdr)
 
 	return 1;
 }
-#endif /* USE_HOSTCC */
+#endif
+
+ulong image_multi_count(const image_header_t *hdr);
+void image_multi_getimg(const image_header_t *hdr, ulong idx,
+			ulong *data, ulong *len);
+
+void image_print_size(uint32_t size);
+
+void image_print_contents(const void *ptr);
 
 /* commamds/bootm.c */
 void	print_image_hdr (image_header_t *hdr);
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index fef82c6..2698aa2 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -38,8 +38,6 @@ char *cmdname;
 
 static	void	copy_file (int, const char *, int);
 static	void	usage	(void);
-static	void	print_header (image_header_t *);
-static	void	print_type (image_header_t *);
 static	int	get_table_entry (table_entry_t *, char *, char *);
 static	int	get_arch(char *);
 static	int	get_comp(char *);
@@ -255,7 +253,7 @@ NXTARG:		;
 		}
 
 		/* for multi-file images we need the data part, too */
-		print_header ((image_header_t *)ptr);
+		image_print_contents((image_header_t *)ptr);
 
 		(void) munmap((void *)ptr, sbuf.st_size);
 		(void) close (ifd);
@@ -381,7 +379,7 @@ NXTARG:		;
 
 	image_set_hcrc(hdr, checksum);
 
-	print_header (hdr);
+	image_print_contents(hdr);
 
 	(void) munmap((void *)ptr, sbuf.st_size);
 
@@ -504,71 +502,6 @@ usage ()
 	exit (EXIT_FAILURE);
 }
 
-static void
-print_header (image_header_t *hdr)
-{
-	time_t timestamp;
-	uint32_t size;
-
-	timestamp = (time_t)image_get_time(hdr);
-	size = image_get_size(hdr);
-
-	printf ("Image Name:   %.*s\n", IH_NMLEN, image_get_name(hdr));
-	printf ("Created:      %s", ctime(&timestamp));
-	printf ("Image Type:   "); print_type(hdr);
-	printf ("Data Size:    %d Bytes = %.2f kB = %.2f MB\n",
-		size, (double)size / 1.024e3, (double)size / 1.048576e6 );
-	printf ("Load Address: 0x%08X\n", image_get_load(hdr));
-	printf ("Entry Point:  0x%08X\n", image_get_ep(hdr));
-
-	if (image_check_type(hdr, IH_TYPE_MULTI) ||
-	    image_check_type(hdr, IH_TYPE_SCRIPT)) {
-		int i, ptrs;
-		uint32_t pos;
-		uint32_t *len_ptr = (uint32_t *) (
-					(unsigned long)hdr + image_get_header_size()
-				);
-
-		/* determine number of images first (to calculate image offsets) */
-		for (i=0; len_ptr[i]; ++i)	/* null pointer terminates list */
-			;
-		ptrs = i;		/* null pointer terminates list */
-
-		pos = image_get_header_size() + ptrs * sizeof(long);
-		printf ("Contents:\n");
-		for (i=0; len_ptr[i]; ++i) {
-			size = ntohl(len_ptr[i]);
-
-			printf ("   Image %d: %8d Bytes = %4d kB = %d MB\n",
-				i, size, size>>10, size>>20);
-			if (image_check_type(hdr, IH_TYPE_SCRIPT) && i > 0) {
-				/*
-				 * the user may need to know offsets
-				 * if planning to do something with
-				 * multiple files
-				 */
-				printf ("    Offset = %08X\n", pos);
-			}
-			/* copy_file() will pad the first files to even word align */
-			size += 3;
-			size &= ~3;
-			pos += size;
-		}
-	}
-}
-
-
-static void
-print_type (image_header_t *hdr)
-{
-	printf ("%s %s %s (%s)\n",
-		image_get_arch_name(image_get_arch(hdr)),
-		image_get_os_name(image_get_os(hdr)),
-		image_get_type_name(image_get_type(hdr)),
-		image_get_comp_name(image_get_comp(hdr))
-	);
-}
-
 static int get_arch(char *name)
 {
 	return (get_table_entry(arch_name, "CPU", name));
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
