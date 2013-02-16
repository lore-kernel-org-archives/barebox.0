Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6mMU-0006Nk-8L
 for barebox@lists.infradead.org; Sat, 16 Feb 2013 18:19:47 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 1CB5CFFA7C8
 for <barebox@lists.infradead.org>; Sat, 16 Feb 2013 19:35:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 16 Feb 2013 19:18:39 +0100
Message-Id: <1361038719-25530-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] of: add do_fixup_by_compatible with u32 and string version
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/oftree.c |   27 +++++++++++++++++++++++++++
 include/of.h    |    6 ++++++
 2 files changed, 33 insertions(+)

diff --git a/common/oftree.c b/common/oftree.c
index 6b20cdb..82e5ddd 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -229,6 +229,33 @@ void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path,
 	do_fixup_by_path(fdt, path, prop, &val, sizeof(val), create);
 }
 
+void do_fixup_by_compatible(struct fdt_header *fdt, const char *compatible,
+			const char *prop, const void *val, int len, int create)
+{
+	int off = -1;
+
+	off = fdt_node_offset_by_compatible(fdt, -1, compatible);
+	while (off != -FDT_ERR_NOTFOUND) {
+		if (create || (fdt_get_property(fdt, off, prop, 0) != NULL))
+			fdt_setprop(fdt, off, prop, val, len);
+		off = fdt_node_offset_by_compatible(fdt, off, compatible);
+	}
+}
+
+void do_fixup_by_compatible_u32(struct fdt_header *fdt, const char *compatible,
+				const char *prop, u32 val, int create)
+{
+	val = cpu_to_fdt32(val);
+	do_fixup_by_compatible(fdt, compatible, prop, &val, 4, create);
+}
+
+void do_fixup_by_compatible_string(struct fdt_header *fdt, const char *compatible,
+				const char *prop, const char *val, int create)
+{
+	do_fixup_by_compatible(fdt, compatible, prop, val, strlen(val) + 1,
+				create);
+}
+
 int fdt_get_path_or_create(struct fdt_header *fdt, const char *path)
 {
 	int nodeoffset;
diff --git a/include/of.h b/include/of.h
index 4dc5b6c..95d9702 100644
--- a/include/of.h
+++ b/include/of.h
@@ -17,6 +17,12 @@ void do_fixup_by_path(struct fdt_header *fdt, const char *path, const char *prop
 		      const void *val, int len, int create);
 void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path, const char *prop,
 			  u32 val, int create);
+void do_fixup_by_compatible(struct fdt_header *fdt, const char *compatible,
+			const char *prop, const void *val, int len, int create);
+void do_fixup_by_compatible_u32(struct fdt_header *fdt, const char *compatible,
+				const char *prop, u32 val, int create);
+void do_fixup_by_compatible_string(struct fdt_header *fdt, const char *compatible,
+				const char *prop, const char *val, int create);
 int fdt_get_path_or_create(struct fdt_header *fdt, const char *path);
 #ifdef CONFIG_FDT
 int fdt_initrd(void *fdt, ulong initrd_start, ulong initrd_end, int force);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
