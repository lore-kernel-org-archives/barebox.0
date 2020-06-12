Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjdqv-00067u-VP
 for barebox@lists.infradead.org; Fri, 12 Jun 2020 07:11:51 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri, 12 Jun 2020 09:10:30 +0200
Message-Id: <20200612071036.27864-3-cleger@kalray.eu>
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
Subject: [PATCH v6 2/8] common: elf: fix warning on 32 bits architectures
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>, Oleksij Rempel <linux@rempel-privat.de>

When pointers are 32 bits wide and we cast a potentially 64 bits
value in it, the compiler will yield an error. Cast that value first
into a phys_addr_t to match the architecture pointer size and then
in a void *.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 common/elf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/elf.c b/common/elf.c
index d64de401c..55f5bc645 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -47,7 +47,7 @@ static void elf_release_regions(struct elf_image *elf)
 static int load_elf_phdr_segment(struct elf_image *elf, void *src,
 				 void *phdr)
 {
-	void *dst = (void *) elf_phdr_p_paddr(elf, phdr);
+	void *dst = (void *) (phys_addr_t) elf_phdr_p_paddr(elf, phdr);
 	int ret;
 	u64 p_filesz = elf_phdr_p_filesz(elf, phdr);
 	u64 p_memsz = elf_phdr_p_memsz(elf, phdr);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
