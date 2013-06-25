Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPR9-0000IC-WE
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Jun 2013 11:20:47 +0200
Message-Id: <1372152052-5463-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
References: <1372152052-5463-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] ARM: i.MX: Add multi images support Makefile
To: barebox@lists.infradead.org

This adds images/Makefile.imx which will contain the i.MX
specific image generation snippets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile     |  2 ++
 images/Makefile.imx | 10 ++++++++++
 2 files changed, 12 insertions(+)
 create mode 100644 images/Makefile.imx

diff --git a/images/Makefile b/images/Makefile
index fe1f77d..925a987 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -106,6 +106,8 @@ $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(call if_changed,shipped)
 
+include $(srctree)/images/Makefile.imx
+
 targets += $(image-y) pbl.lds barebox.x barebox.z
 targets += $(patsubst %,%.pblx,$(pblx-y))
 targets += $(patsubst %,%.pblb,$(pblx-y))
diff --git a/images/Makefile.imx b/images/Makefile.imx
new file mode 100644
index 0000000..cd7b610
--- /dev/null
+++ b/images/Makefile.imx
@@ -0,0 +1,10 @@
+#
+# barebox image generation Makefile for i.MX images
+#
+
+# %.imximg - convert into i.MX image
+# ----------------------------------------------------------------
+$(obj)/%.imximg: $(obj)/% FORCE
+	$(call if_changed,imx_image)
+
+board = $(srctree)/arch/$(ARCH)/boards
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
