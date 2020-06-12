Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdqz-0006BD-Tp
 for barebox@lists.infradead.org; Fri, 12 Jun 2020 07:11:56 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri, 12 Jun 2020 09:10:33 +0200
Message-Id: <20200612071036.27864-6-cleger@kalray.eu>
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
Subject: [PATCH v6 5/8] common: elf: load elf directly from file
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <linux@rempel-privat.de>

Currently, elf file must be loaded into a buffer and then passed to
elf_load_image. This requires to copy the whole elf file before booting
it. This commit allows to pass the filename directly and will allocate
data only for the elf header (elf header + program headers). This will
then be used to load the elf data from the file without copying it in an
intermediate buffer. Elf segments are first parsed into a list and are
then loaded from the file in a second time.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/mips/lib/bootm.c |   9 +-
 common/elf.c          | 220 +++++++++++++++++++++++++++++++++++-------
 include/elf.h         |   6 +-
 3 files changed, 191 insertions(+), 44 deletions(-)

diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
index 5bb09cc2d..b07884ae0 100644
--- a/arch/mips/lib/bootm.c
+++ b/arch/mips/lib/bootm.c
@@ -47,14 +47,10 @@ static int do_bootm_elf(struct image_data *data)
 {
 	void (*entry)(int, void *);
 	struct elf_image *elf;
-	void *fdt, *buf;
+	void *fdt;
 	int ret = 0;
 
-	buf = read_file(data->os_file, NULL);
-	if (!buf)
-		return -EINVAL;
-
-	elf = elf_load_image(buf);
+	elf = elf_load_image(data->os_file);
 	if (IS_ERR(elf))
 		return PTR_ERR(elf);
 
@@ -82,7 +78,6 @@ static int do_bootm_elf(struct image_data *data)
 bootm_elf_done:
 	elf_release_image(elf);
 	free(fdt);
-	free(buf);
 
 	return ret;
 }
diff --git a/common/elf.c b/common/elf.c
index bd97858c8..1bcaafea7 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -5,15 +5,22 @@
 
 #include <common.h>
 #include <elf.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <libfile.h>
 #include <memory.h>
+#include <unistd.h>
+#include <linux/fs.h>
+#include <linux/list_sort.h>
 
 struct elf_section {
 	struct list_head list;
 	struct resource *r;
+	void *phdr;
 };
 
 static int elf_request_region(struct elf_image *elf, resource_size_t start,
-			      resource_size_t size)
+			      resource_size_t size, void *phdr)
 {
 	struct list_head *list = &elf->list;
 	struct resource *r_new;
@@ -30,6 +37,7 @@ static int elf_request_region(struct elf_image *elf, resource_size_t start,
 	}
 
 	r->r = r_new;
+	r->phdr = phdr;
 	list_add_tail(&r->list, list);
 
 	return 0;
@@ -42,13 +50,12 @@ static void elf_release_regions(struct elf_image *elf)
 
 	list_for_each_entry_safe(r, r_tmp, list, list) {
 		release_sdram_region(r->r);
+		list_del(&r->list);
 		free(r);
 	}
 }
 
-
-static int load_elf_phdr_segment(struct elf_image *elf, void *src,
-				 void *phdr)
+static int request_elf_segment(struct elf_image *elf, void *phdr)
 {
 	void *dst = (void *) (phys_addr_t) elf_phdr_p_paddr(elf, phdr);
 	int ret;
@@ -67,59 +74,127 @@ static int load_elf_phdr_segment(struct elf_image *elf, void *src,
 	if (dst + p_memsz > elf->high_addr)
 		elf->high_addr = dst + p_memsz;
 
-	pr_debug("Loading phdr to 0x%p (%llu bytes)\n", dst, p_filesz);
+	pr_debug("Requesting segment 0x%p (%llu bytes)\n", dst, p_filesz);
 
-	ret = elf_request_region(elf, (resource_size_t)dst, p_filesz);
+	ret = elf_request_region(elf, (resource_size_t)dst, p_filesz, phdr);
 	if (ret)
 		return ret;
 
-	memcpy(dst, src, p_filesz);
+	return 0;
+}
+
+static int elf_section_cmp(void *priv, struct list_head *a, struct list_head *b)
+{
+	struct elf_image *elf = priv;
+	struct elf_section *elf_a, *elf_b;
+
+	if (a == b)
+		return 0;
+
+	elf_a = list_entry(a, struct elf_section, list);
+	elf_b = list_entry(b, struct elf_section, list);
+
+	return elf_phdr_p_offset(elf, elf_a->phdr) >
+	       elf_phdr_p_offset(elf, elf_b->phdr);
+}
+
+static int load_elf_to_memory(struct elf_image *elf)
+{
+	void *dst;
+	int ret, fd;
+	u64 p_filesz, p_memsz, p_offset;
+	struct elf_section *r;
+	struct list_head *list = &elf->list;
+
+	fd = open(elf->filename, O_RDONLY);
+	if (fd < 0) {
+		pr_err("could not open: %s\n", errno_str());
+		return -errno;
+	}
 
-	if (p_filesz < p_memsz)
-		memset(dst + p_filesz, 0x00,
-		       p_memsz - p_filesz);
+	list_for_each_entry(r, list, list) {
+		p_offset = elf_phdr_p_offset(elf, r->phdr);
+		p_filesz = elf_phdr_p_filesz(elf, r->phdr);
+		p_memsz = elf_phdr_p_memsz(elf, r->phdr);
+		dst = (void *) (phys_addr_t) elf_phdr_p_paddr(elf, r->phdr);
+
+		ret = lseek(fd, p_offset, SEEK_SET);
+		if (ret == -1) {
+			pr_err("lseek at offset 0x%llx failed\n", p_offset);
+			close(fd);
+			return ret;
+		}
+
+		pr_debug("Loading phdr offset 0x%llx to 0x%p (%llu bytes)\n",
+			 p_offset, dst, p_filesz);
+
+		if (read_full(fd, dst, p_filesz) < 0) {
+			pr_err("could not read elf segment: %s\n",
+			       errno_str());
+			close(fd);
+			return -errno;
+		}
+
+		if (p_filesz < p_memsz)
+			memset(dst + p_filesz, 0x00, p_memsz - p_filesz);
+	}
+
+	close(fd);
 
 	return 0;
 }
 
-static int load_elf_image_phdr(struct elf_image *elf)
+static int load_elf_image_segments(struct elf_image *elf)
 {
-	void *buf = elf->buf;
+	void *buf = elf->hdr_buf;
 	void *phdr = (void *) (buf + elf_hdr_e_phoff(elf, buf));
 	int i, ret;
 
-	elf->entry = elf_hdr_e_entry(elf, buf);
+	/* File as already been loaded */
+	if (!list_empty(&elf->list))
+		return -EINVAL;
 
 	for (i = 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
-		void *src = buf + elf_phdr_p_offset(elf, phdr);
-
-		ret = load_elf_phdr_segment(elf, src, phdr);
-		/* in case of error elf_load_image() caller should clean up and
-		 * call elf_release_image() */
+		ret = request_elf_segment(elf, phdr);
 		if (ret)
-			return ret;
+			goto elf_release_regions;
 
 		phdr += elf_size_of_phdr(elf);
 	}
 
+	/*
+	 * Sort the list to avoid doing backward lseek while loading the elf
+	 * segments from file to memory(some filesystems don't support it)
+	 */
+	list_sort(elf, &elf->list, elf_section_cmp);
+
+	ret = load_elf_to_memory(elf);
+	if (ret)
+		goto elf_release_regions;
+
 	return 0;
+
+elf_release_regions:
+	elf_release_regions(elf);
+
+	return ret;
 }
 
-static int elf_check_image(struct elf_image *elf)
+static int elf_check_image(struct elf_image *elf, void *buf)
 {
-	if (strncmp(elf->buf, ELFMAG, SELFMAG)) {
+	if (strncmp(buf, ELFMAG, SELFMAG)) {
 		pr_err("ELF magic not found.\n");
 		return -EINVAL;
 	}
 
-	elf->class = ((char *) elf->buf)[EI_CLASS];
+	elf->class = ((char *) buf)[EI_CLASS];
 
-	if (elf_hdr_e_type(elf, elf->buf) != ET_EXEC) {
+	if (elf_hdr_e_type(elf, buf) != ET_EXEC) {
 		pr_err("Non EXEC ELF image.\n");
 		return -ENOEXEC;
 	}
 
-	if (!elf_hdr_e_phnum(elf, elf->buf)) {
+	if (!elf_hdr_e_phnum(elf, buf)) {
 		pr_err("No phdr found.\n");
 		return -ENOEXEC;
 	}
@@ -127,29 +202,102 @@ static int elf_check_image(struct elf_image *elf)
 	return 0;
 }
 
-struct elf_image *elf_load_image(void *buf)
+static struct elf_image *elf_check_init(const char *filename)
 {
+	int ret, fd;
+	int hdr_size;
+	struct elf64_hdr hdr;
 	struct elf_image *elf;
-	int ret;
 
-	elf = xzalloc(sizeof(*elf));
+	elf = calloc(1, sizeof(*elf));
+	if (!elf)
+		return ERR_PTR(-ENOMEM);
 
 	INIT_LIST_HEAD(&elf->list);
-
-	elf->buf = buf;
 	elf->low_addr = (void *) (unsigned long) -1;
 	elf->high_addr = 0;
 
-	ret = elf_check_image(elf);
+	/* First pass is to read elf header only */
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		pr_err("could not open: %s\n", errno_str());
+		ret = -errno;
+		goto err_free_elf;
+	}
+
+	if (read_full(fd, &hdr, sizeof(hdr)) < 0) {
+		pr_err("could not read elf header: %s\n", errno_str());
+		close(fd);
+		ret = -errno;
+		goto err_free_elf;
+	}
+	close(fd);
+
+	ret = elf_check_image(elf, &hdr);
 	if (ret)
-		return ERR_PTR(ret);
+		goto err_free_elf;
 
-	ret = load_elf_image_phdr(elf);
-	if (ret) {
-		elf_release_image(elf);
-		return ERR_PTR(ret);
+	hdr_size = elf_hdr_e_phoff(elf, &hdr) +
+		   elf_hdr_e_phnum(elf, &hdr) *
+		   elf_hdr_e_phentsize(elf, &hdr);
+
+	/* Second pass is to read the whole elf header and program headers */
+	elf->hdr_buf = malloc(hdr_size);
+	if (!elf->hdr_buf) {
+		ret = -ENOMEM;
+		goto err_free_elf;
+	}
+
+	/*
+	 * We must open the file again since some fs (tftp) do not support
+	 * backward lseek operations
+	 */
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		pr_err("could not open: %s\n", errno_str());
+		ret = -errno;
+		goto err_free_hdr_buf;
+	}
+
+	if (read_full(fd, elf->hdr_buf, hdr_size) < 0) {
+		pr_err("could not read elf program headers: %s\n", errno_str());
+		ret = -errno;
+		close(fd);
+		goto err_free_hdr_buf;
+	}
+	close(fd);
+
+	elf->filename = strdup(filename);
+	if (!elf->filename) {
+		ret = -ENOMEM;
+		goto err_free_hdr_buf;
 	}
 
+	elf->entry = elf_hdr_e_entry(elf, elf->hdr_buf);
+
+	return elf;
+
+err_free_hdr_buf:
+	free(elf->hdr_buf);
+err_free_elf:
+	free(elf);
+
+	return ERR_PTR(ret);
+}
+
+struct elf_image *elf_load_image(const char *filename)
+{
+	int ret;
+	struct elf_image *elf;
+
+	elf = elf_check_init(filename);
+	if (IS_ERR(elf))
+		return elf;
+
+	ret = load_elf_image_segments(elf);
+	if (ret)
+		return ERR_PTR(ret);
+
 	return elf;
 }
 
@@ -157,5 +305,7 @@ void elf_release_image(struct elf_image *elf)
 {
 	elf_release_regions(elf);
 
+	free(elf->hdr_buf);
+	free(elf->filename);
 	free(elf);
 }
diff --git a/include/elf.h b/include/elf.h
index 403412f3f..f1a80a20a 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -405,7 +405,8 @@ struct elf_image {
 	u64 entry;
 	void *low_addr;
 	void *high_addr;
-	void *buf;
+	void *hdr_buf;
+	char *filename;
 };
 
 static inline size_t elf_get_mem_size(struct elf_image *elf)
@@ -413,7 +414,7 @@ static inline size_t elf_get_mem_size(struct elf_image *elf)
 	return elf->high_addr - elf->low_addr;
 }
 
-struct elf_image *elf_load_image(void *buf);
+struct elf_image *elf_load_image(const char *filename);
 void elf_release_image(struct elf_image *elf);
 
 #define ELF_GET_FIELD(__s, __field, __type) \
@@ -427,6 +428,7 @@ static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
 ELF_GET_FIELD(hdr, e_entry, u64)
 ELF_GET_FIELD(hdr, e_phnum, u16)
 ELF_GET_FIELD(hdr, e_phoff, u64)
+ELF_GET_FIELD(hdr, e_phentsize, u16)
 ELF_GET_FIELD(hdr, e_type, u16)
 ELF_GET_FIELD(phdr, p_paddr, u64)
 ELF_GET_FIELD(phdr, p_filesz, u64)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
