Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XI5Kj-0005Mz-QJ
 for barebox@lists.infradead.org; Fri, 15 Aug 2014 00:25:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.mars-solutions.de (Postfix) with ESMTP id 569D5A04593
 for <barebox@lists.infradead.org>; Fri, 15 Aug 2014 02:11:29 +0200 (CEST)
Received: from mail.mars-solutions.de ([127.0.0.1])
 by localhost (mars-solutions.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-inabLSnAvD for <barebox@lists.infradead.org>;
 Fri, 15 Aug 2014 02:11:29 +0200 (CEST)
Received: from ws-apr.office.loc
 (HSI-KBW-37-49-65-173.hsi14.kabel-badenwuerttemberg.de [37.49.65.173])
 by mail.mars-solutions.de (Postfix) with ESMTP id A3B4BA04593
 for <barebox@lists.infradead.org>; Fri, 15 Aug 2014 02:11:28 +0200 (CEST)
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Fri, 15 Aug 2014 02:11:32 +0200
Message-Id: <1408061492-32718-1-git-send-email-apr@cn-eng.de>
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
Subject: [PATCH] scripts: gitignore: update based on Makefile
To: barebox@lists.infradead.org

Create up-to-date list of hostprogs and targetprogs based on Makefile.
Have this list sorted like the targets in the Makefile to ease maintenance.
Also move some leftovers from root .gitignore over here.

Signed-off-by: Andreas Pretzsch <apr@cn-eng.de>
---
patch relative to master as of 07.08.2014 (45615e3)

 .gitignore         |  3 ---
 scripts/.gitignore | 20 ++++++++++++--------
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/.gitignore b/.gitignore
index a62e08c..5d9157d 100644
--- a/.gitignore
+++ b/.gitignore
@@ -83,6 +83,3 @@ cscope.*
 
 # patches
 *.patch
-scripts/gen_netx_image
-scripts/s5p_cksum
-scripts/bareboxenv-target
diff --git a/scripts/.gitignore b/scripts/.gitignore
index fddc04b..1df04ba 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -1,17 +1,21 @@
-bareboxenv
 bin2c
+mkimage
 fix_size
-gen_netx_image
-kallsyms
+bareboxenv
+bareboxcrc32
 kernel-install
-kernel-install-target
+bareboximd
+kallsyms
 kwbimage
 kwboot
-mk-am35xx-spi-image
-mkimage
-mkublheader
+gen_netx_image
 omap_signGP
+mk-am3xxx-spi-image
+s5p_cksum
+mkublheader
 zynq_mkimage
 socfpga_mkimage
-bareboxcrc32
+bareboxenv-target
+kernel-install-target
 bareboxcrc32-target
+bareboximd-target
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
