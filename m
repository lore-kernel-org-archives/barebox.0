Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp18.mail.ru ([94.100.176.155])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhNh8-0003Bi-HM
 for barebox@lists.infradead.org; Tue, 28 May 2013 17:28:23 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue, 28 May 2013 21:27:56 +0400
Message-Id: <1369762076-7179-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: Using unsigned specifiers for unsigned arguments for
 printf
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/lib/bootm.c  | 2 +-
 arch/arm/lib/module.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index e7a0625..0d3b59e 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -326,7 +326,7 @@ static int aimage_load_resource(int fd, struct resource *r, void* buf, int ps)
 
 	ret = read_full(fd, buf, to_read);
 	if (ret < 0)
-		printf("could not read dummy %d\n", to_read);
+		printf("could not read dummy %u\n", to_read);
 
 	return ret;
 }
diff --git a/arch/arm/lib/module.c b/arch/arm/lib/module.c
index 643a8be..be7965d 100644
--- a/arch/arm/lib/module.c
+++ b/arch/arm/lib/module.c
@@ -34,7 +34,7 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 
 		offset = ELF32_R_SYM(rel->r_info);
 		if (offset < 0 || offset > (symsec->sh_size / sizeof(Elf32_Sym))) {
-			printf("%s: bad relocation, section %d reloc %d\n",
+			printf("%s: bad relocation, section %u reloc %u\n",
 				module->name, relindex, i);
 			return -ENOEXEC;
 		}
@@ -43,7 +43,7 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 
 		if (rel->r_offset < 0 || rel->r_offset > dstsec->sh_size - sizeof(u32)) {
 			printf("%s: out of bounds relocation, "
-				"section %d reloc %d offset %d size %d\n",
+				"section %u reloc %u offset %d size %d\n",
 				module->name, relindex, i, rel->r_offset,
 				dstsec->sh_size);
 			return -ENOEXEC;
@@ -68,7 +68,7 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
 			    offset <= (s32)0xfe000000 ||
 			    offset >= (s32)0x02000000) {
 				printf("%s: relocation out of range, section "
-				       "%d reloc %d sym '%s'\n", module->name,
+				       "%u reloc %u sym '%s'\n", module->name,
 				       relindex, i, strtab + sym->st_name);
 				return -ENOEXEC;
 			}
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
