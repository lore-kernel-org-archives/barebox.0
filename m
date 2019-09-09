Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7GJR-000108-I8
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 09:50:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Sep 2019 11:50:18 +0200
Message-Id: <20190909095018.30609-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! common: add generic CONFIG_UBSAN plumbing
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

This fixes out of tree builds, which I inadvertently broke...

---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 5cab8d6c58ac..740075df04dc 100644
--- a/Makefile
+++ b/Makefile
@@ -491,7 +491,7 @@ CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 # change __FILE__ to the relative path from the srctree
 CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
 
-include scripts/Makefile.ubsan
+include $(srctree)/scripts/Makefile.ubsan
 
 # KBUILD_IMAGE: Default barebox image to build
 # Depending on the architecture, this can be either compressed or not.
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
