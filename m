Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA1m-0007hR-7a
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:25:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:39 +0200
Message-Id: <20200915122539.18744-11-s.hauer@pengutronix.de>
In-Reply-To: <20200915122539.18744-1-s.hauer@pengutronix.de>
References: <20200915122539.18744-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/10] ARM: zync: Fix include path
To: Barebox List <barebox@lists.infradead.org>

When building out of tree we must explicitly include an absolute path
starting with $(srctree) as a relative path would be relative to
$(objtree).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.zynq | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile.zynq b/images/Makefile.zynq
index 062496ac7d..b00e748697 100644
--- a/images/Makefile.zynq
+++ b/images/Makefile.zynq
@@ -3,7 +3,7 @@
 #
 
 zynqcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
-                     -I arch/arm/mach-zynq/include
+                     -I $(srctree)/arch/arm/mach-zynq/include
 
 zynqcfg-tmp = $(subst $(comma),_,$(dot-target).zynqcfg.tmp)
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
