Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from wi-in-x022a.1e100.net ([2a00:1450:400c:c05::22a]
 helo=mail-wi0-x22a.google.com)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U52Ra-0004lA-Tj
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 23:05:52 +0000
Received: by mail-wi0-f170.google.com with SMTP id hm11so3917089wib.5
 for <barebox@lists.infradead.org>; Mon, 11 Feb 2013 15:05:46 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Tue, 12 Feb 2013 00:04:59 +0100
Message-Id: <1360623899-10059-3-git-send-email-vicencb@gmail.com>
In-Reply-To: <1360623899-10059-1-git-send-email-vicencb@gmail.com>
References: <1360623899-10059-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 2/2] DeviceTree: add support for initrd in the DT
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

Add the initrd start and end address to the DT, code comes from u-boot.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/lib/armlinux.c |  2 ++
 common/oftree.c         | 66 +++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h            |  8 ++++++
 3 files changed, 76 insertions(+)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 40a63ea..4dd84ed 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -266,6 +266,8 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 
 	if (oftree) {
 		printf("booting Linux kernel with devicetree\n");
+		fdt_initrd(oftree, initrd_address,
+			initrd_address + initrd_size, 1);
 		params = oftree;
 	} else {
 		setup_tags(initrd_address, initrd_size, swap);
diff --git a/common/oftree.c b/common/oftree.c
index 0df5209..6b20cdb 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -246,6 +246,72 @@ int fdt_get_path_or_create(struct fdt_header *fdt, const char *path)
 	return nodeoffset;
 }
 
+int fdt_initrd(void *fdt, ulong initrd_start, ulong initrd_end, int force)
+{
+	int nodeoffset;
+	int err, j, total;
+	u32 tmp;
+	const char *path;
+	uint64_t addr, size;
+
+	/* Find the "chosen" node */
+	nodeoffset = fdt_path_offset(fdt, "/chosen");
+
+	/* If there is no "chosen" node in the blob return */
+	if (nodeoffset < 0) {
+		printf("fdt_initrd: %s\n", fdt_strerror(nodeoffset));
+		return nodeoffset;
+	}
+
+	/* just return if initrd_start/end aren't valid */
+	if ((initrd_start == 0) || (initrd_end == 0))
+		return 0;
+
+	total = fdt_num_mem_rsv(fdt);
+
+	/*
+	 * Look for an existing entry and update it. If we don't find
+	 * the entry, we will j be the next available slot.
+	 */
+	for (j = 0; j < total; j++) {
+		err = fdt_get_mem_rsv(fdt, j, &addr, &size);
+		if (addr == initrd_start) {
+			fdt_del_mem_rsv(fdt, j);
+			break;
+		}
+	}
+
+	err = fdt_add_mem_rsv(fdt, initrd_start, initrd_end - initrd_start);
+	if (err < 0) {
+		printf("fdt_initrd: %s\n", fdt_strerror(err));
+		return err;
+	}
+
+	path = fdt_getprop(fdt, nodeoffset, "linux,initrd-start", NULL);
+	if (!path || force) {
+		tmp = __cpu_to_be32(initrd_start);
+		err = fdt_setprop(fdt, nodeoffset,
+			"linux,initrd-start", &tmp, sizeof(tmp));
+		if (err < 0) {
+			printf("WARNING: "
+				"could not set linux,initrd-start %s.\n",
+				fdt_strerror(err));
+			return err;
+		}
+		tmp = __cpu_to_be32(initrd_end);
+		err = fdt_setprop(fdt, nodeoffset,
+			"linux,initrd-end", &tmp, sizeof(tmp));
+		if (err < 0) {
+			printf("WARNING: could not set linux,initrd-end %s.\n",
+				fdt_strerror(err));
+
+			return err;
+		}
+	}
+
+	return 0;
+}
+
 static int of_fixup_bootargs(struct fdt_header *fdt)
 {
 	int nodeoffset;
diff --git a/include/of.h b/include/of.h
index d3a310f..d3aa982 100644
--- a/include/of.h
+++ b/include/of.h
@@ -18,6 +18,14 @@ void do_fixup_by_path(struct fdt_header *fdt, const char *path, const char *prop
 void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path, const char *prop,
 			  u32 val, int create);
 int fdt_get_path_or_create(struct fdt_header *fdt, const char *path);
+#ifdef CONFIG_FDT
+int fdt_initrd(void *fdt, ulong initrd_start, ulong initrd_end, int force);
+#else
+static inline int fdt_initrd(void *fdt, ulong start, ulong end, int force)
+{
+	return 0;
+}
+#endif
 
 #define OF_BAD_ADDR      ((u64)-1)
 
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
