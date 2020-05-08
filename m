Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6Qe-0007vt-Kq
 for barebox@lists.infradead.org; Fri, 08 May 2020 17:04:54 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri,  8 May 2020 19:04:07 +0200
Message-Id: <20200508170411.26841-4-cleger@kalray.eu>
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
Subject: [PATCH v4 3/7] common: elf: split init to be reused from other
 function
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <o.rempel@pengutronix.de>

New elf_open function will also need to initialize an elf file. Split
this to avoid missing members initialization.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/elf.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index 55f5bc645..5534632b2 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -119,6 +119,15 @@ static int elf_check_image(struct elf_image *elf)
 	return 0;
 }
 
+static int elf_check_init(struct elf_image *elf, void *buf)
+{
+	elf->buf = buf;
+	elf->low_addr = (void *) (unsigned long) -1;
+	elf->high_addr = 0;
+
+	return elf_check_image(elf);
+}
+
 struct elf_image *elf_load_image(void *buf)
 {
 	struct elf_image *elf;
@@ -128,13 +137,11 @@ struct elf_image *elf_load_image(void *buf)
 
 	INIT_LIST_HEAD(&elf->list);
 
-	elf->buf = buf;
-	elf->low_addr = (void *) (unsigned long) -1;
-	elf->high_addr = 0;
-
-	ret = elf_check_image(elf);
-	if (ret)
+	ret = elf_check_init(elf, buf);
+	if (ret) {
+		free(elf);
 		return ERR_PTR(ret);
+	}
 
 	ret = load_elf_image_phdr(elf);
 	if (ret) {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
