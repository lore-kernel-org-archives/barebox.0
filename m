Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqNGt-0005a1-6I
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 20:54:28 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Tue, 30 Jun 2020 22:53:44 +0200
Message-Id: <20200630205344.27786-1-cleger@kalray.eu>
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
Subject: [PATCH] kvx: remove duplicated dtb symbols
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

dtb symbols (__dtb_start, __dtb_end) are already defined using
RO_DATA_SECTION. This duplicated dtb section is a leftover used by
Kalray internal tools to patch the dtb when loading the elf on a
target. Remove it to keep only one symbol definition.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 arch/kvx/cpu/barebox.lds.S | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/kvx/cpu/barebox.lds.S b/arch/kvx/cpu/barebox.lds.S
index bf92564cf..77ebaf0ae 100644
--- a/arch/kvx/cpu/barebox.lds.S
+++ b/arch/kvx/cpu/barebox.lds.S
@@ -10,8 +10,6 @@
 OUTPUT_FORMAT("elf64-kvx")
 OUTPUT_ARCH("kvx:kv3-1:64")
 
-#define DTB_DEFAULT_SIZE	(24 * 1024)
-
 SECTIONS
 {
 	. = CONFIG_ARCH_TEXT_BASE;
@@ -54,13 +52,6 @@ SECTIONS
 		RO_DATA_SECTION
 	}
 
-	.dtb ALIGN(16):
-	{
-		__dtb_start = .;
-		. += DTB_DEFAULT_SIZE;
-		__dtb_end = .;
-	}
-
 	_etext = .; /* End of text and rodata section */
 
 	.data ALIGN(4): {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
