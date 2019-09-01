Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4QY9-0001id-OU
 for barebox@lists.infradead.org; Sun, 01 Sep 2019 14:09:51 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Sun,  1 Sep 2019 16:09:08 +0200
Message-Id: <20190901140908.17966-1-cleger@kalray.eu>
In-Reply-To: <20190327074851.jva5cfg2jnbvfviq@pengutronix.de>
References: <20190327074851.jva5cfg2jnbvfviq@pengutronix.de>
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
Subject: [PATCH v3] elf: add 64 bits elf loading support
To: Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Clement Leger <cleger@kalray.eu>

From: Clement Leger <clement.leger@kalray.eu>

This patch add elf64 loading support to the elf loader. Since
elf32 and elf64 uses completely different types, to avoid copying all
the code and simply replace elf32 with elf64, use a macro which will
return the appropriate field for each type of header. This macro
generates getter for elf structures according to the class of the loaded
elf.
All direct elf struct dereference are then replaced by call to generated
functions. THis allows to keep a common loader code even if types are
different.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
V3: 
- Compiled on ARM with 32bit toolchain (no warning)
- Add Signed-off-by.

 common/elf.c  | 45 +++++++++++++++++++++++----------------------
 include/elf.h | 29 ++++++++++++++++++++++++++++-
 2 files changed, 51 insertions(+), 23 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index 8edf38856..4733accb0 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -45,29 +45,31 @@ static void elf_release_regions(struct elf_image *elf)
 
 
 static int load_elf_phdr_segment(struct elf_image *elf, void *src,
-				 Elf32_Phdr *phdr)
+				 void *phdr)
 {
-	void *dst = (void *)phdr->p_paddr;
+	void *dst = (void *) elf_phdr_p_paddr(elf, phdr);
 	int ret;
+	u64 p_filesz = elf_phdr_p_filesz(elf, phdr);
+	u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
 
 	/* we care only about PT_LOAD segments */
-	if (phdr->p_type != PT_LOAD)
+	if (elf_phdr_p_type(elf, phdr) != PT_LOAD)
 		return 0;
 
-	if (!phdr->p_filesz)
+	if (!p_filesz)
 		return 0;
 
-	pr_debug("Loading phdr to 0x%p (%i bytes)\n", dst, phdr->p_filesz);
+	pr_debug("Loading phdr to 0x%p (%llu bytes)\n", dst, p_filesz);
 
-	ret = elf_request_region(elf, (resource_size_t)dst, phdr->p_filesz);
+	ret = elf_request_region(elf, (resource_size_t)dst, p_filesz);
 	if (ret)
 		return ret;
 
-	memcpy(dst, src, phdr->p_filesz);
+	memcpy(dst, src, p_filesz);
 
-	if (phdr->p_filesz < phdr->p_memsz)
-		memset(dst + phdr->p_filesz, 0x00,
-		       phdr->p_memsz - phdr->p_filesz);
+	if (p_filesz < p_memsz)
+		memset(dst + p_filesz, 0x00,
+		       p_memsz - p_filesz);
 
 	return 0;
 }
@@ -75,14 +77,13 @@ static int load_elf_phdr_segment(struct elf_image *elf, void *src,
 static int load_elf_image_phdr(struct elf_image *elf)
 {
 	void *buf = elf->buf;
-	Elf32_Ehdr *ehdr = buf;
-	Elf32_Phdr *phdr = (Elf32_Phdr *)(buf + ehdr->e_phoff);
+	void *phdr = (void *) (buf + elf_hdr_e_phoff(elf, buf));
 	int i, ret;
 
-	elf->entry = ehdr->e_entry;
+	elf->entry = elf_hdr_e_entry(elf, buf);
 
-	for (i = 0; i < ehdr->e_phnum; ++i) {
-		void *src = buf + phdr->p_offset;
+	for (i = 0; i < elf_hdr_e_phnum(elf, buf) ; ++i) {
+		void *src = buf + elf_phdr_p_offset(elf, phdr);
 
 		ret = load_elf_phdr_segment(elf, src, phdr);
 		/* in case of error elf_load_image() caller should clean up and
@@ -90,22 +91,22 @@ static int load_elf_image_phdr(struct elf_image *elf)
 		if (ret)
 			return ret;
 
-		++phdr;
+		phdr += elf_size_of_phdr(elf);
 	}
 
 	return 0;
 }
 
-static int elf_check_image(void *buf)
+static int elf_check_image(struct elf_image *elf)
 {
-	Elf32_Ehdr *ehdr = (Elf32_Ehdr *)buf;
-
-	if (strncmp(buf, ELFMAG, SELFMAG)) {
+	if (strncmp(elf->buf, ELFMAG, SELFMAG)) {
 		pr_err("ELF magic not found.\n");
 		return -EINVAL;
 	}
 
-	if (ehdr->e_type != ET_EXEC) {
+	elf->class = ((char *) elf->buf)[EI_CLASS];
+
+	if (elf_hdr_e_type(elf, elf->buf) != ET_EXEC) {
 		pr_err("Non EXEC ELF image.\n");
 		return -ENOEXEC;
 	}
@@ -124,7 +125,7 @@ struct elf_image *elf_load_image(void *buf)
 
 	elf->buf = buf;
 
-	ret = elf_check_image(buf);
+	ret = elf_check_image(elf);
 	if (ret)
 		return ERR_PTR(ret);
 
diff --git a/include/elf.h b/include/elf.h
index 92c8d9c12..633f4992d 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -400,11 +400,38 @@ static inline void arch_write_notes(struct file *file) { }
 
 struct elf_image {
 	struct list_head list;
-	unsigned long entry;
+	u8 class;
+	u64 entry;
 	void *buf;
 };
 
 struct elf_image *elf_load_image(void *buf);
 void elf_release_image(struct elf_image *elf);
 
+#define ELF_GET_FIELD(__s, __field, __type) \
+static inline __type elf_##__s##_##__field(struct elf_image *elf, void *arg) { \
+	if (elf->class == ELFCLASS32) \
+		return (__type) ((struct elf32_##__s *) arg)->__field; \
+	else \
+		return (__type) ((struct elf64_##__s *) arg)->__field; \
+}
+
+ELF_GET_FIELD(hdr, e_entry, u64)
+ELF_GET_FIELD(hdr, e_phnum, u16)
+ELF_GET_FIELD(hdr, e_phoff, u64)
+ELF_GET_FIELD(hdr, e_type, u16)
+ELF_GET_FIELD(phdr, p_paddr, u64)
+ELF_GET_FIELD(phdr, p_filesz, u64)
+ELF_GET_FIELD(phdr, p_memsz, u64)
+ELF_GET_FIELD(phdr, p_type, u32)
+ELF_GET_FIELD(phdr, p_offset, u64)
+
+static inline unsigned long elf_size_of_phdr(struct elf_image *elf)
+{
+	if (elf->class == ELFCLASS32)
+		return sizeof(Elf32_Phdr);
+	else
+		return sizeof(Elf64_Phdr);
+}
+
 #endif /* _LINUX_ELF_H */
-- 
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
