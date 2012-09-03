Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8V6h-0001IS-IV
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 11:46:22 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon,  3 Sep 2012 13:45:58 +0200
Message-Id: <1346672765-16162-4-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 03/10] Makefile: add target to produce a SPL compatible uimage
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 Makefile |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Makefile b/Makefile
index 969afbb..243a689 100644
--- a/Makefile
+++ b/Makefile
@@ -673,6 +673,11 @@ barebox.bin: barebox FORCE
 	$(call if_changed,objcopy)
 	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 
+barebox.img: barebox.bin
+	$(srctree)/scripts/mkimage -A $(ARCH) -T firmware -C none \
+	-O barebox -a $(CONFIG_TEXT_BASE) -e $(CONFIG_TEXT_BASE) \
+	-n "barebox $(KERNELRELEASE)" -d $< $@
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
