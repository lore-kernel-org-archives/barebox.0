Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRX31-0001FB-QL
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 08:17:29 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Thu, 23 Apr 2020 10:17:09 +0200
Message-Id: <20200423081712.4022-5-cleger@kalray.eu>
In-Reply-To: <20200423081712.4022-1-cleger@kalray.eu>
References: <20200423081712.4022-1-cleger@kalray.eu>
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
Subject: [PATCH v2 4/6] common: elf: add elf_open and elf_close
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

When loading an elf file from a mtd device, this allows to parse the
header and load only the needed data according to the elf size. Without
that support, loading a elf file from a /dev/mtd would try to read the
entire partition.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/elf.c  | 83 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/elf.h |  7 +++++
 2 files changed, 90 insertions(+)

diff --git a/common/elf.c b/common/elf.c
index 5534632b2..291f883cb 100644
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
@@ -158,3 +163,81 @@ void elf_release_image(struct elf_image *elf)
 
 	free(elf);
 }
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
+	elf->buf = xmalloc(size);
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
+	ret = load_elf_image_phdr(elf);
+	if (ret)
+		goto err_release_elf;
+
+	return elf;
+
+err_release_elf:
+	elf_release_regions(elf);
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
index 403412f3f..e9fe977a2 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -416,6 +416,9 @@ static inline size_t elf_get_mem_size(struct elf_image *elf)
 struct elf_image *elf_load_image(void *buf);
 void elf_release_image(struct elf_image *elf);
 
+struct elf_image *elf_open(const char *filename);
+void elf_close(struct elf_image *elf);
+
 #define ELF_GET_FIELD(__s, __field, __type) \
 static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
 	if (elf->class == ELFCLASS32) \
@@ -427,6 +430,10 @@ static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
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
