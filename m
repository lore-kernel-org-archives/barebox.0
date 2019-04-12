Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hErSm-0007Bv-KC
 for barebox@lists.infradead.org; Fri, 12 Apr 2019 08:23:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Apr 2019 10:23:06 +0200
Message-Id: <20190412082306.12716-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: Add missing quotes to HAB specific defines
To: Barebox List <barebox@lists.infradead.org>

The Freescale Code Signing Tool (cst) needs quotes around the filenames
passed in the csf file. Add these quotes when the CONFIG_HAB* variables
are passed from the command line.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index def9248841..7113928e4a 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -460,7 +460,7 @@ cmd_imximage_S_dcd=						\
 overwrite-hab-env = $(shell set -e; \
       test -n "$(CONFIG_HAB_CERTS_ENV)"; \
       test -n "$$$(1)"; \
-      echo -D$(1)=\"$(shell echo $$$(1))\")
+      echo -D$(1)=\\\"$(shell echo $$$(1))\\\")
 
 imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       -I $(srctree)/include -I $(srctree)/arch/arm/mach-imx/include \
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
