Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsjh-0000H4-Tc
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 10:25:09 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Jul 2019 12:24:56 +0200
Message-Id: <20190712102457.15339-4-a.fatoum@pengutronix.de>
In-Reply-To: <20190712102457.15339-1-a.fatoum@pengutronix.de>
References: <20190712102457.15339-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: stm32mp: generate STM32 images
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

Both STM32MP BootROM and TF-A first stage expect subsequent bootloader
stages to feature a specific STM32 file header. Generate this image
type by default.

If for some reason, the image without stm32 header is required, the
start_stm32mp157c_dk2.pblb can be used.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.stm32mp | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index a0baad30c3ad..910e029a5b66 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -9,8 +9,11 @@
 $(obj)/%.stm32: $(obj)/% FORCE
 	$(call if_changed,stm32_image)
 
+STM32MP1_OPTS = -a 0xc0100000 -e 0xc0100000 -v1
+
 # --------------------------------------
 
 pblb-$(CONFIG_MACH_STM32MP157C_DK2) += start_stm32mp157c_dk2
-FILE_barebox-stm32mp157c-dk2.img = start_stm32mp157c_dk2.pblb
+FILE_barebox-stm32mp157c-dk2.img = start_stm32mp157c_dk2.pblb.stm32
+OPTS_start_stm32mp157c_dk2.pblb.stm32 = $(STM32MP1_OPTS)
 image-$(CONFIG_MACH_STM32MP157C_DK2) += barebox-stm32mp157c-dk2.img
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
