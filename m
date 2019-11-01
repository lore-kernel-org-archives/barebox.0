Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQdAq-0005G8-AB
 for barebox@lists.infradead.org; Fri, 01 Nov 2019 20:05:33 +0000
Received: from astat.fritz.box (a89-183-34-18.net-htp.de [89.183.34.18])
 by lynxeye.de (Postfix) with ESMTPA id 27D21E7414D
 for <barebox@lists.infradead.org>; Fri,  1 Nov 2019 20:53:45 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  1 Nov 2019 20:53:37 +0100
Message-Id: <20191101195338.7597-1-dev@lynxeye.de>
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
Subject: [PATCH 1/2] ARM: pbl: keep __image_end section
To: barebox@lists.infradead.org

Not all architectures are referencing the image_end section from
code, in which case the linker is free to drop the section, which
then messes up the calculation of the _barebox_image_size linker
variable.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 01ed38449523..b593d0329a7b 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -114,7 +114,7 @@ SECTIONS
 	}
 	__piggydata_end = .;
 
-	.image_end : { *(.__image_end) }
+	.image_end : { KEEP(*(.__image_end)) }
 
 	pbl_image_size =  . - BASE;
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
