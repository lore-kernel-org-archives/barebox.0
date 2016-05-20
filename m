Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b3KFS-0005ne-SA
 for barebox@lists.infradead.org; Thu, 19 May 2016 09:28:09 +0000
Received: by mail-wm0-x244.google.com with SMTP id r12so19363811wme.0
 for <barebox@lists.infradead.org>; Thu, 19 May 2016 02:27:46 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Fri, 20 May 2016 03:11:09 +0200
Message-Id: <1463706669-39738-4-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1463706669-39738-1-git-send-email-poggi.raph@gmail.com>
References: <1463706669-39738-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 3/3] arm64: board: virt: set up mmu
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Enable mmu and set correct mapping for periph and flash memory ranges.

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm64/boards/virt/init.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boards/virt/init.c b/arch/arm64/boards/virt/init.c
index 81e742d..9626067 100644
--- a/arch/arm64/boards/virt/init.c
+++ b/arch/arm64/boards/virt/init.c
@@ -13,6 +13,7 @@
 #include <linux/sizes.h>
 #include <io.h>
 #include <globalvar.h>
+#include <asm/mmu.h>
 
 static int virt_mem_init(void)
 {
@@ -50,3 +51,17 @@ static int virt_core_init(void)
 	return 0;
 }
 postcore_initcall(virt_core_init);
+
+static int virt_mmu_enable(void)
+{
+	/* Mapping all periph range */
+	arch_remap_range(0x09000000, 0x01000000, PMD_SECT_DEF_CACHED);
+
+	/* Mapping all flash range */
+	arch_remap_range(0x00000000, 0x08000000, PMD_SECT_DEF_CACHED);
+
+	mmu_enable();
+
+	return 0;
+}
+postmmu_initcall(virt_mmu_enable);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
