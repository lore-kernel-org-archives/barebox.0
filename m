Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzAaN-00017D-2k
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 20:11:29 +0000
Received: by mail-wg0-f52.google.com with SMTP id b13so6969522wgh.35
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 13:11:05 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 23 Jun 2014 22:10:53 +0200
Message-Id: <1403554262-12777-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403554262-12777-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 02/11] ARM: mvebu: sort pbl image target by board
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This reorders images/Makefile.mvebu targets by board to ease integration
of new boards.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 images/Makefile.mvebu | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index fe92cc2f5839..8559556e203c 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -11,16 +11,16 @@ $(obj)/%.kwbuartimg: $(obj)/% FORCE
 
 board = $(srctree)/arch/$(ARCH)/boards
 
+KWBOPTS = -c -d 0x1000000 -e 0x1000000
+
 # ----------------------- Dove 88AP510 based boards ---------------------------
-SOLIDRUN_CUBOX_KWBOPTS = -c -i $(board)/solidrun-cubox/kwbimage.cfg -d 0x1000000 -e 0x1000000
-pblx-$(CONFIG_MACH_SOLIDRUN_CUBOX) += start_solidrun_cubox
+SOLIDRUN_CUBOX_KWBOPTS = ${KWBOPTS} -i $(board)/solidrun-cubox/kwbimage.cfg
 OPTS_start_solidrun_cubox.pblx.kwbimg = $(SOLIDRUN_CUBOX_KWBOPTS)
-FILE_barebox-solidrun-cubox.img = start_solidrun_cubox.pblx.kwbimg
-image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox.img
-
 OPTS_start_solidrun_cubox.pblx.kwbuartimg = -m uart $(SOLIDRUN_CUBOX_KWBOPTS)
+FILE_barebox-solidrun-cubox.img	= start_solidrun_cubox.pblx.kwbimg
 FILE_barebox-solidrun-cubox-uart.img = start_solidrun_cubox.pblx.kwbuartimg
-image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-uart.img
-
 FILE_barebox-solidrun-cubox-2nd.img = start_solidrun_cubox.pblx
+pblx-$(CONFIG_MACH_SOLIDRUN_CUBOX) += start_solidrun_cubox
+image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox.img
+image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-uart.img
 image-$(CONFIG_MACH_SOLIDRUN_CUBOX) += barebox-solidrun-cubox-2nd.img
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
