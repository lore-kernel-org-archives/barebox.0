Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh5Al-00038g-Nr
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 04:08:57 +0000
Received: by mail-pg1-x52f.google.com with SMTP id w7so2688187pgp.13
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 20:08:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 20:08:37 -0800
Message-Id: <20190109040837.18600-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] fixup! arm: fix no prototype for barebox_arm_reset_vector()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---

Sascha, hopefully fixup is enough, but let me know if you need me to
generate a standalone patch.

Thanks,
Andrey Smirnov

 arch/arm/include/asm/barebox-arm.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 312685486..ee18075bb 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -59,7 +59,6 @@ void setup_c(void);
 void relocate_to_current_adr(void);
 void relocate_to_adr(unsigned long target);
 void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
-void __naked __bare_init barebox_arm_reset_vector(void);
 
 struct barebox_arm_boarddata {
 #define BAREBOX_ARM_BOARDDATA_MAGIC	0xabe742c3
@@ -207,4 +206,6 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 #define NAKED
 #endif
 
+void NAKED __bare_init barebox_arm_reset_vector(void);
+
 #endif	/* _BAREBOX_ARM_H_ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
