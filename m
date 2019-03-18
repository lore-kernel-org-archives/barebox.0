Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oKX-0001mo-K3
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:13:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:13:10 +0100
Message-Id: <20190318091310.11035-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Revert "fix zbarebox linking with new ld"
To: Barebox List <barebox@lists.infradead.org>

--no-dynamic-linker is already added just a few lines below, do not add
the option twice. This option also needs to be embedded in a test if
the linker supports this option which we already have in the other place
adding this option.

This reverts commit 25de30638a2859f9e07c61821cdc71906b7169b8.
---
 arch/arm/pbl/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 2c28f56034..5d7e85b373 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -31,7 +31,7 @@ $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
 	$(call if_changed,disasm)
 
 PBL_CPPFLAGS		+= -fdata-sections -ffunction-sections
-LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map --gc-sections --no-dynamic-linker
+LDFLAGS_zbarebox	:= -Map $(obj)/zbarebox.map --gc-sections
 ifdef CONFIG_PBL_RELOCATABLE
 LDFLAGS_zbarebox += -pie
 else
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
