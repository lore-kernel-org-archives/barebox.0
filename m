Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Htv-0007FH-V9
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 15:52:25 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  5 Sep 2012 17:52:10 +0200
Message-Id: <1346860337-777-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
References: <1346860337-777-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/8] Makefile: add target to produce a SPL compatible uimage
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 Makefile |   10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Makefile b/Makefile
index c6264d3..69e28e3 100644
--- a/Makefile
+++ b/Makefile
@@ -680,6 +680,16 @@ ifndef CONFIG_PBL_IMAGE
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 endif
 
+# For development provide a target which makes barebox loadable by an
+# unmodified u-boot
+quiet_cmd_barebox_mkimage = MKIMAGE $@
+      cmd_barebox_mkimage = $(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
+	-O barebox -a $(CONFIG_TEXT_BASE) -e $(CONFIG_TEXT_BASE) \
+	-n "barebox $(KERNELRELEASE)" -d $< $@
+
+barebox.img: barebox.bin FORCE
+	$(call if_changed,barebox_mkimage)
+
 ifdef CONFIG_X86
 barebox.S: barebox
 ifdef CONFIG_X86_HDBOOT
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
