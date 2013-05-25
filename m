Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgEaZ-0000h5-AN
 for barebox@lists.infradead.org; Sat, 25 May 2013 13:32:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 25 May 2013 15:32:21 +0200
Message-Id: <1369488741-4313-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369488741-4313-1-git-send-email-s.hauer@pengutronix.de>
References: <1369488741-4313-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: zynq: Add cmd to generate zynq image
To: barebox@lists.infradead.org

Add a command to generate the zynq image instead of generating it
directly. This causes a rebuild exactly when necessary and prints
a "ZYNQ-IMG" to the commandline during compilation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 9bfa2c7..90a4713 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -246,8 +246,11 @@ ifeq ($(CONFIG_OMAP_BUILD_SPI),y)
 KBUILD_IMAGE := barebox.spi
 endif
 
-barebox.zynq: $(KBUILD_BINARY)
-	$(Q)scripts/zynq_mkimage $< $@
+quiet_cmd_zynq_image = ZYNQ-IMG $@
+      cmd_zynq_image = scripts/zynq_mkimage $< $@
+
+barebox.zynq: $(KBUILD_BINARY) FORCE
+	$(call if_changed,zynq_image)
 
 ifeq ($(machine-y),zynq)
 KBUILD_IMAGE := barebox.zynq
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
