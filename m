Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3jK-0004DU-1r
 for barebox@lists.infradead.org; Fri, 24 May 2019 06:31:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hU3jI-0004lQ-IM
 for barebox@lists.infradead.org; Fri, 24 May 2019 08:31:00 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hU3jH-0005BW-5C
 for barebox@lists.infradead.org; Fri, 24 May 2019 08:30:59 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 May 2019 08:30:56 +0200
Message-Id: <20190524063056.19353-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] ARM: at91: correct __iomem 'qualifier' placement
To: barebox@lists.infradead.org

__iomem applies to the pointee, not to the auto pointer
that points at it. Move the annotation to correct this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
There were only two instances of this and this is the patch
for the second one.

 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index 34b2eed057c0..496cf707014e 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -139,7 +139,7 @@ Banks [not SAM9G45] */
 #include <io.h>
 #include <mach/hardware.h>
 
-static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
+static inline u32 at91_get_ddram_size(void __iomem *base, bool is_nb)
 {
 	u32 cr;
 	u32 mdr;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
