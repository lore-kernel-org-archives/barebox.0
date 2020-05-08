Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6Qd-0007vr-P6
 for barebox@lists.infradead.org; Fri, 08 May 2020 17:04:53 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri,  8 May 2020 19:04:05 +0200
Message-Id: <20200508170411.26841-2-cleger@kalray.eu>
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
Subject: [PATCH v4 1/7] common: elf: add computation of elf boundaries
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <o.rempel@pengutronix.de>

In order to correctly load an initrd or a device tree after an elf file,
we need to know its boundaries. This commit adds support for that and
allow the bootm implementations to use it for memory loading.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/elf.c  | 7 +++++++
 include/elf.h | 7 +++++++
 2 files changed, 14 insertions(+)

diff --git a/common/elf.c b/common/elf.c
index 4733accb0..d64de401c 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -59,6 +59,11 @@ static int load_elf_phdr_segment(struct elf_image *elf, void *src,
 	if (!p_filesz)
 		return 0;
 
+	if (dst < elf->low_addr)
+		elf->low_addr = dst;
+	if (dst + p_memsz > elf->high_addr)
+		elf->high_addr = dst + p_memsz;
+
 	pr_debug("Loading phdr to 0x%p (%llu bytes)\n", dst, p_filesz);
 
 	ret = elf_request_region(elf, (resource_size_t)dst, p_filesz);
@@ -124,6 +129,8 @@ struct elf_image *elf_load_image(void *buf)
 	INIT_LIST_HEAD(&elf->list);
 
 	elf->buf = buf;
+	elf->low_addr = (void *) (unsigned long) -1;
+	elf->high_addr = 0;
 
 	ret = elf_check_image(elf);
 	if (ret)
diff --git a/include/elf.h b/include/elf.h
index 113728f08..403412f3f 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -403,9 +403,16 @@ struct elf_image {
 	struct list_head list;
 	u8 class;
 	u64 entry;
+	void *low_addr;
+	void *high_addr;
 	void *buf;
 };
 
+static inline size_t elf_get_mem_size(struct elf_image *elf)
+{
+	return elf->high_addr - elf->low_addr;
+}
+
 struct elf_image *elf_load_image(void *buf);
 void elf_release_image(struct elf_image *elf);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
