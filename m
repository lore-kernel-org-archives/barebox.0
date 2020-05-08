Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6Qg-0007wx-NE
 for barebox@lists.infradead.org; Fri, 08 May 2020 17:04:56 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri,  8 May 2020 19:04:11 +0200
Message-Id: <20200508170411.26841-8-cleger@kalray.eu>
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
Subject: [PATCH v4 7/7] common: elf: remove elf_load_image/elf_release_image
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <o.rempel@pengutronix.de>

Since elf loading has been integrated in bootm using elf_open/elf_close,
remove these two functions which are now unused. Fix comment style
during this modification.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/elf.c  | 41 +++++++----------------------------------
 include/elf.h |  3 ---
 2 files changed, 7 insertions(+), 37 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index 949e953b0..3242788f0 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -94,8 +94,10 @@ static int load_elf_image_phdr(struct elf_image *elf)
 		void *src = buf + elf_phdr_p_offset(elf, phdr);
 
 		ret = load_elf_phdr_segment(elf, src, phdr);
-		/* in case of error elf_load_image() caller should clean up and
-		 * call elf_release_image() */
+		/*
+		 * in case of error elf_load() caller should clean up and
+		 * call elf_release_regions()
+		 */
 		if (ret)
 			return ret;
 
@@ -139,37 +141,6 @@ static int elf_check_init(struct elf_image *elf, void *buf)
 	return 0;
 }
 
-struct elf_image *elf_load_image(void *buf)
-{
-	struct elf_image *elf;
-	int ret;
-
-	elf = xzalloc(sizeof(*elf));
-
-	INIT_LIST_HEAD(&elf->list);
-
-	ret = elf_check_init(elf, buf);
-	if (ret) {
-		free(elf);
-		return ERR_PTR(ret);
-	}
-
-	ret = load_elf_image_phdr(elf);
-	if (ret) {
-		elf_release_image(elf);
-		return ERR_PTR(ret);
-	}
-
-	return elf;
-}
-
-void elf_release_image(struct elf_image *elf)
-{
-	elf_release_regions(elf);
-
-	free(elf);
-}
-
 int elf_load(struct elf_image *elf)
 {
 	int ret;
@@ -254,5 +225,7 @@ err_close_fd:
 void elf_close(struct elf_image *elf)
 {
 	free(elf->buf);
-	elf_release_image(elf);
+	elf_release_regions(elf);
+
+	free(elf);
 }
diff --git a/include/elf.h b/include/elf.h
index b36b917e5..75ee0c975 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -413,9 +413,6 @@ static inline size_t elf_get_mem_size(struct elf_image *elf)
 	return elf->high_addr - elf->low_addr;
 }
 
-struct elf_image *elf_load_image(void *buf);
-void elf_release_image(struct elf_image *elf);
-
 struct elf_image *elf_open(const char *filename);
 void elf_close(struct elf_image *elf);
 int elf_load(struct elf_image *elf);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
