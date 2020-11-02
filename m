Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZWAT-0000Te-Cv
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 09:30:27 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  2 Nov 2020 10:30:01 +0100
Message-Id: <20201102093002.15851-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
References: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] mmu-early: remove OP-TEE from the MMU mapping
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Remove OP-TEE from the CACHED mapping to preserve the XN bit set in the
default mapping. This should ensure that the Cortex-A7 does not try to
speculate into secure world memory.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/mmu-early.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index b985aa455f..a480cd7707 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -3,6 +3,7 @@
 #include <errno.h>
 #include <linux/sizes.h>
 #include <asm/memory.h>
+#include <asm-generic/memory_layout.h>
 #include <asm/system.h>
 #include <asm/cache.h>
 #include <asm-generic/sections.h>
@@ -55,6 +56,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	 */
 	map_region((unsigned long)_stext, _etext - _stext, PMD_SECT_DEF_UNCACHED);
 
+	/* In case we might early load OP-TEE, remove it from the MMU mapping */
+	if(IS_ENABLED(CONFIG_PBL_OPTEE))
+		memsize -= OPTEE_SIZE;
+
 	/* maps main memory as cachable */
 	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
