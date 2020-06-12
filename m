Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdr0-0006Bv-62
 for barebox@lists.infradead.org; Fri, 12 Jun 2020 07:11:56 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri, 12 Jun 2020 09:10:34 +0200
Message-Id: <20200612071036.27864-7-cleger@kalray.eu>
In-Reply-To: <20200612071036.27864-1-cleger@kalray.eu>
References: <20200612071036.27864-1-cleger@kalray.eu>
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
Subject: [PATCH v6 6/8] common: elf: add elf_open, elf_close and elf_load
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <linux@rempel-privat.de>

In order to integrate elf loading into bootm command, split elf opening
from elf loading.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/mips/lib/bootm.c |  8 ++++++--
 common/elf.c          | 20 +++++++-------------
 include/elf.h         |  5 +++--
 3 files changed, 16 insertions(+), 17 deletions(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index b07884ae0..8e16994b6 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -50,10 +50,14 @@ static int do_bootm_elf(struct image_data *data)
 	void *fdt;
 	int ret = 0;
 
-	elf = elf_load_image(data->os_file);
+	elf = elf_open(data->os_file);
 	if (IS_ERR(elf))
 		return PTR_ERR(elf);
 
+	ret = elf_load(elf);
+	if (ret)
+		goto bootm_elf_done;
+
 	fdt = bootm_get_devicetree(data);
 	if (IS_ERR(fdt)) {
 		ret = PTR_ERR(fdt);
@@ -76,7 +80,7 @@ static int do_bootm_elf(struct image_data *data)
 	ret = -EINVAL;
 
 bootm_elf_done:
-	elf_release_image(elf);
+	elf_close(elf);
 	free(fdt);
 
 	return ret;
diff --git a/common/elf.c b/common/elf.c
index 1bcaafea7..af22be37e 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -285,23 +285,17 @@ err_free_elf:
 	return ERR_PTR(ret);
 }
 
-struct elf_image *elf_load_image(const char *filename)
+struct elf_image *elf_open(const char *filename)
 {
-	int ret;
-	struct elf_image *elf;
-
-	elf = elf_check_init(filename);
-	if (IS_ERR(elf))
-		return elf;
-
-	ret = load_elf_image_segments(elf);
-	if (ret)
-		return ERR_PTR(ret);
+	return elf_check_init(filename);
+}
 
-	return elf;
+int elf_load(struct elf_image *elf)
+{
+	return load_elf_image_segments(elf);
 }
 
-void elf_release_image(struct elf_image *elf)
+void elf_close(struct elf_image *elf)
 {
 	elf_release_regions(elf);
 
diff --git a/include/elf.h b/include/elf.h
index f1a80a20a..7970fd2c9 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -414,8 +414,9 @@ static inline size_t elf_get_mem_size(struct elf_image *elf)
 	return elf->high_addr - elf->low_addr;
 }
 
-struct elf_image *elf_load_image(const char *filename);
-void elf_release_image(struct elf_image *elf);
+struct elf_image *elf_open(const char *filename);
+void elf_close(struct elf_image *elf);
+int elf_load(struct elf_image *elf);
 
 #define ELF_GET_FIELD(__s, __field, __type) \
 static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
