Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhFVK-00080E-Js
 for barebox@lists.infradead.org; Tue, 28 May 2013 08:43:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 May 2013 10:43:17 +0200
Message-Id: <1369730597-13477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: pbl: Always call pbl make
To: barebox@lists.infradead.org

We always must decend into the pbl build. Otherwise it doesn't get
rebuilt if only sourcefiles from the pbl are changed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 90a4713..8f0d23e 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -257,7 +257,7 @@ KBUILD_IMAGE := barebox.zynq
 endif
 
 pbl := arch/arm/pbl
-$(pbl)/zbarebox.S $(pbl)/zbarebox.bin $(pbl)/zbarebox: barebox.bin
+$(pbl)/zbarebox.S $(pbl)/zbarebox.bin $(pbl)/zbarebox: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=$(pbl) $@
 
 archclean:
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
