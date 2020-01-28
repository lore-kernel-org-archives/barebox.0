Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwNRH-0001nr-B4
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 09:45:44 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 28 Jan 2020 10:44:56 +0100
Message-Id: <20200128094456.711520-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: add optee early loading function
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

---
 arch/arm/include/asm/barebox-arm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 8b2ecd9ab2..599852d644 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -119,7 +119,7 @@ void *barebox_arm_boot_dtb(void);
 static inline unsigned long arm_mem_stack_top(unsigned long membase,
 					      unsigned long endmem)
 {
-	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
+	if (IS_ENABLED(CONFIG_BOOTM_OPTEE) || IS_ENABLED(CONFIG_PBL_OPTEE))
 		endmem -= OPTEE_SIZE;
 
 	return endmem - SZ_64K;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
