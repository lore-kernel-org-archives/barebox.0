Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rb8ad-0004E2-BK
 for barebox@lists.infradead.org; Thu, 15 Dec 2011 10:31:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 Dec 2011 11:30:33 +0100
Message-Id: <1323945034-19687-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
References: <1323945034-19687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] move code now only used in mkimage to mkimage
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image.c    |  169 -------------------------------------
 include/image.h   |  103 -----------------------
 scripts/mkimage.c |  240 +++++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 240 insertions(+), 272 deletions(-)

diff --git a/common/image.c b/common/image.c
index 7a7c0df..e7d2242 100644
--- a/common/image.c
+++ b/common/image.c
@@ -144,172 +144,3 @@ const char *image_get_comp_name(uint8_t comp)
 	return get_table_entry_name(comp_name, "Unknown Compression", comp);
 }
 #endif
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
-ulong image_multi_count(void *data)
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
-void image_multi_getimg(void *data, ulong idx,
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
-#if defined(CONFIG_TIMESTAMP) || defined(CONFIG_CMD_DATE) || !defined(__BAREBOX__)
-static void image_print_time(time_t timestamp)
-{
-#if defined(__BAREBOX__)
-	struct rtc_time tm;
-
-	to_tm(timestamp, &tm);
-	printf("%4d-%02d-%02d  %2d:%02d:%02d UTC\n",
-			tm.tm_year, tm.tm_mon, tm.tm_mday,
-			tm.tm_hour, tm.tm_min, tm.tm_sec);
-#else
-	printf("%s", ctime(&timestamp));
-#endif
-}
-#endif /* CONFIG_TIMESTAMP || CONFIG_CMD_DATE || !__BAREBOX__ */
-
-void image_print_size(uint32_t size)
-{
-#ifdef __BAREBOX__
-	printf("%d Bytes = %s\n", size, size_human_readable(size));
-#else
-	printf("%d Bytes = %.2f kB = %.2f MB\n",
-			size, (double)size / 1.024e3,
-			(double)size / 1.048576e6);
-#endif
-}
-
-void image_print_contents(const image_header_t *hdr, void *data)
-{
-	const char *p;
-	int type;
-
-#ifdef __BAREBOX__
-	p = "   ";
-#else
-	p = "";
-#endif
-
-	printf("%sImage Name:   %.*s\n", p, IH_NMLEN, image_get_name(hdr));
-#if defined(CONFIG_TIMESTAMP) || defined(CONFIG_CMD_DATE) || !defined(__BAREBOX__)
-	printf("%sCreated:      ", p);
-	image_print_time((time_t)image_get_time(hdr));
-#endif
-	printf ("%sImage Type:   ", p);
-	image_print_type(hdr);
-	printf ("%sData Size:    ", p);
-	image_print_size(image_get_data_size(hdr));
-	printf ("%sLoad Address: %08x\n", p, image_get_load(hdr));
-	printf ("%sEntry Point:  %08x\n", p, image_get_ep(hdr));
-
-	type = image_get_type(hdr);
-	if (data && (type == IH_TYPE_MULTI || type == IH_TYPE_SCRIPT)) {
-		int i;
-		ulong img_data, len;
-		ulong count = image_multi_count(data);
-
-		printf ("%sContents:\n", p);
-		for (i = 0; i < count; i++) {
-			image_multi_getimg(data, i, &img_data, &len);
-
-			printf("%s   Image %d: ", p, i);
-			image_print_size(len);
-
-			if (image_get_type(hdr) != IH_TYPE_SCRIPT && i > 0) {
-				/*
-				 * the user may need to know offsets
-				 * if planning to do something with
-				 * multiple files
-				 */
-				printf("%s    Offset = 0x%08lx\n", p, img_data);
-			}
-		}
-	}
-}
diff --git a/include/image.h b/include/image.h
index 97de881..35ff01b 100644
--- a/include/image.h
+++ b/include/image.h
@@ -218,109 +218,6 @@ static inline const char *image_get_comp_name(uint8_t comp)
 #define uimage_to_cpu(x)		be32_to_cpu(x)
 #define cpu_to_uimage(x)		cpu_to_be32(x)
 
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
-	strncpy(image_get_name(hdr), name, IH_NMLEN);
-}
-
-ulong image_multi_count(void *data);
-void image_multi_getimg(void *data, ulong idx,
-			ulong *img_data, ulong *len);
-
-void image_print_size(uint32_t size);
-
-void image_print_contents(const image_header_t *hdr, void *data);
-
 struct uimage_handle_data {
 	size_t offset; /* offset in the image */
 	ulong len;
diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index b219cb8..64290cf 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -62,6 +62,246 @@ int opt_comp = IH_COMP_GZIP;
 image_header_t header;
 image_header_t *hdr = &header;
 
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
+static ulong image_multi_count(void *data)
+{
+	ulong i, count = 0;
+	uint32_t *size;
+
+	/* get start of the image payload, which in case of multi
+	 * component images that points to a table of component sizes */
+	size = (uint32_t *)data;
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
+static void image_multi_getimg(void *data, ulong idx,
+			ulong *img_data, ulong *len)
+{
+	int i;
+	uint32_t *size;
+	ulong offset, count, tmp_img_data;
+
+	/* get number of component */
+	count = image_multi_count(data);
+
+	/* get start of the image payload, which in case of multi
+	 * component images that points to a table of component sizes */
+	size = (uint32_t *)data;
+
+	/* get address of the proper component data start, which means
+	 * skipping sizes table (add 1 for last, null entry) */
+	tmp_img_data = (ulong)data + (count + 1) * sizeof (uint32_t);
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
+		*img_data = tmp_img_data + offset;
+	} else {
+		*len = 0;
+		*img_data = 0;
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
+static void image_print_time(time_t timestamp)
+{
+	printf("%s", ctime(&timestamp));
+}
+
+static void image_print_size(uint32_t size)
+{
+	printf("%d Bytes = %.2f kB = %.2f MB\n",
+			size, (double)size / 1.024e3,
+			(double)size / 1.048576e6);
+}
+
+static void image_print_contents(const image_header_t *hdr, void *data)
+{
+	int type;
+
+	printf("Image Name:   %.*s\n", IH_NMLEN, image_get_name(hdr));
+	printf("Created:      ");
+	image_print_time((time_t)image_get_time(hdr));
+	printf ("Image Type:   ");
+	image_print_type(hdr);
+	printf ("Data Size:    ");
+	image_print_size(image_get_data_size(hdr));
+	printf ("Load Address: %08x\n", image_get_load(hdr));
+	printf ("Entry Point:  %08x\n", image_get_ep(hdr));
+
+	type = image_get_type(hdr);
+	if (data && (type == IH_TYPE_MULTI || type == IH_TYPE_SCRIPT)) {
+		int i;
+		ulong img_data, len;
+		ulong count = image_multi_count(data);
+
+		printf ("Contents:\n");
+		for (i = 0; i < count; i++) {
+			image_multi_getimg(data, i, &img_data, &len);
+
+			printf("   Image %d: ", i);
+			image_print_size(len);
+
+			if (image_get_type(hdr) != IH_TYPE_SCRIPT && i > 0) {
+				/*
+				 * the user may need to know offsets
+				 * if planning to do something with
+				 * multiple files
+				 */
+				printf("    Offset = 0x%08lx\n", img_data);
+			}
+		}
+	}
+}
+
 int
 main (int argc, char **argv)
 {
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
