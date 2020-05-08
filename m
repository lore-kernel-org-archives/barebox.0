Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6Qf-0007vv-Dz
 for barebox@lists.infradead.org; Fri, 08 May 2020 17:04:55 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri,  8 May 2020 19:04:08 +0200
Message-Id: <20200508170411.26841-5-cleger@kalray.eu>
In-Reply-To: <20200508170411.26841-1-cleger@kalray.eu>
References: <20200508170411.26841-1-cleger@kalray.eu>
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
Subject: [PATCH v4 4/7] common: elf: add elf_open, elf_close and elf_load
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <o.rempel@pengutronix.de>

When loading an elf file from a mtd device, this allows to parse the
header and load only the needed data according to the elf size. Without
that support, loading a elf file from a /dev/mtd would try to read the
entire partition. Finally, split elf open and segment loading to allow
loading segment separately when using bootm_load_os.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/elf.c  | 104 ++++++++++++++++++++++++++++++++++++++++++++++++--
 include/elf.h |   8 ++++
 2 files changed, 109 insertions(+), 3 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index 5534632b2..949e953b0 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -5,7 +5,12 @@
 
 #include <common.h>
 #include <elf.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <libfile.h>
 #include <memory.h>
+#include <unistd.h>
+#include <linux/fs.h>
 
 struct elf_section {
 	struct list_head list;
@@ -85,8 +90,6 @@ static int load_elf_image_phdr(struct elf_image *elf)
 	void *phdr = (void *) (buf + elf_hdr_e_phoff(elf, buf));
 	int i, ret;
 
-	elf->entry = elf_hdr_e_entry(elf, buf);
-
 	for (i = 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
 		void *src = buf + elf_phdr_p_offset(elf, phdr);
 
@@ -121,11 +124,19 @@ static int elf_check_image(struct elf_image *elf)
 
 static int elf_check_init(struct elf_image *elf, void *buf)
 {
+	int ret;
+
 	elf->buf = buf;
 	elf->low_addr = (void *) (unsigned long) -1;
 	elf->high_addr = 0;
 
-	return elf_check_image(elf);
+	ret = elf_check_image(elf);
+	if (ret)
+		return ret;
+
+	elf->entry = elf_hdr_e_entry(elf, elf->buf);
+
+	return 0;
 }
 
 struct elf_image *elf_load_image(void *buf)
@@ -158,3 +169,90 @@ void elf_release_image(struct elf_image *elf)
 
 	free(elf);
 }
+
+int elf_load(struct elf_image *elf)
+{
+	int ret;
+
+	ret = load_elf_image_phdr(elf);
+	if (ret)
+		elf_release_regions(elf);
+
+	return ret;
+}
+
+static u64 elf_get_size(struct elf_image *elf)
+{
+	u64 sh_size = elf_hdr_e_shentsize(elf, elf->buf) *
+		      elf_hdr_e_shnum(elf, elf->buf);
+
+	/*
+	 * The section header table is located at the end of the elf file thus
+	 * we can take the offset and add the size of this table to obtain the
+	 * file size.
+	 */
+	return elf_hdr_e_shoff(elf, elf->buf) + sh_size;
+}
+
+struct elf_image *elf_open(const char *filename)
+{
+	int fd, ret;
+	u64 size;
+	struct elf64_hdr hdr;
+	struct elf_image *elf;
+	ssize_t read_ret;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		printf("could not open: %s\n", errno_str());
+		return ERR_PTR(-errno);
+	}
+
+	if (read(fd, &hdr, sizeof(hdr)) < 0) {
+		printf("could not read elf header: %s\n", errno_str());
+		ret = -errno;
+		goto err_close_fd;
+	}
+
+	elf = xzalloc(sizeof(*elf));
+
+	ret = elf_check_init(elf, &hdr);
+	if (ret) {
+		ret = -errno;
+		goto err_free_elf;
+	}
+
+	size = elf_get_size(elf);
+
+	elf->buf = malloc(size);
+	if (!elf->buf) {
+		ret = -ENOMEM;
+		goto err_free_elf;
+	}
+
+	lseek(fd, 0, SEEK_SET);
+
+	read_ret = read_full(fd, elf->buf, size);
+	if (read_ret < 0) {
+		printf("could not read elf file: %s\n", errno_str());
+		ret = -errno;
+		goto err_free_buf;
+	}
+
+	return elf;
+
+err_free_buf:
+	free(elf->buf);
+err_free_elf:
+	free(elf);
+err_close_fd:
+	close(fd);
+
+	return ERR_PTR(ret);
+}
+
+void elf_close(struct elf_image *elf)
+{
+	free(elf->buf);
+	elf_release_image(elf);
+}
diff --git a/include/elf.h b/include/elf.h
index 403412f3f..b36b917e5 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -416,6 +416,10 @@ static inline size_t elf_get_mem_size(struct elf_image *elf)
 struct elf_image *elf_load_image(void *buf);
 void elf_release_image(struct elf_image *elf);
 
+struct elf_image *elf_open(const char *filename);
+void elf_close(struct elf_image *elf);
+int elf_load(struct elf_image *elf);
+
 #define ELF_GET_FIELD(__s, __field, __type) \
 static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
 	if (elf->class == ELFCLASS32) \
@@ -427,6 +431,10 @@ static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
 ELF_GET_FIELD(hdr, e_entry, u64)
 ELF_GET_FIELD(hdr, e_phnum, u16)
 ELF_GET_FIELD(hdr, e_phoff, u64)
+ELF_GET_FIELD(hdr, e_shoff, u64)
+ELF_GET_FIELD(hdr, e_shentsize, u16)
+ELF_GET_FIELD(hdr, e_machine, u16)
+ELF_GET_FIELD(hdr, e_shnum, u16)
 ELF_GET_FIELD(hdr, e_type, u16)
 ELF_GET_FIELD(phdr, p_paddr, u64)
 ELF_GET_FIELD(phdr, p_filesz, u64)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
