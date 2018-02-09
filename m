Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5F4-0007bK-3a
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:45:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:45:00 +0100
Message-Id: <20180209094500.29685-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] Makefile.lib: imx hab: fix hab files with embedded variables
To: Barebox List <barebox@lists.infradead.org>

From: Marc Kleine-Budde <mkl@pengutronix.de>

When passing variables this way, all embedded variables are expanded, so that
the path in the .config file can be kept relative.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/Makefile.lib | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index d202a7299c..932a779d6c 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -420,7 +420,12 @@ cmd_imximage_S_dcd=						\
 
 imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       -I $(srctree)/include -I $(srctree)/arch/arm/mach-imx/include \
-      -include include/generated/autoconf.h
+      -DCONFIG_HABV3_SRK_PEM=\"$(CONFIG_HABV3_SRK_PEM)\" \
+      -DCONFIG_HABV3_CSF_CRT_DER=\"$(CONFIG_HABV3_CSF_CRT_DER)\" \
+      -DCONFIG_HABV3_IMG_CRT_DER=\"$(CONFIG_HABV3_IMG_CRT_DER)\" \
+      -DCONFIG_HABV4_TABLE_BIN=\"$(CONFIG_HABV4_TABLE_BIN)\" \
+      -DCONFIG_HABV4_CSF_CRT_PEM=\"$(CONFIG_HABV4_CSF_CRT_PEM)\" \
+      -DCONFIG_HABV4_IMG_CRT_PEM=\"$(CONFIG_HABV4_IMG_CRT_PEM)\"
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
