Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsHT-0004yf-0f
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 19:06:05 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jun 2019 21:05:59 +0200
Message-Id: <20190603190559.16715-7-a.fatoum@pengutronix.de>
In-Reply-To: <20190603190559.16715-1-a.fatoum@pengutronix.de>
References: <20190603190559.16715-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: stm32mp: add entry point, not point.pblb to pblb-y
To: barebox@lists.infradead.org

Other images/Makefile.${arch}s, e.g. images/Makefile.imx, populate
pblp-* with the entry points to build, not the pbl file that's
generated. Adjust the images/Makefile.stm32mp  to do the same.

Cc: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.stm32mp | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index d26231cd92d1..c49b1d72b788 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -3,6 +3,6 @@
 # barebox image generation Makefile for STMicroelectronics MP1
 #
 
-pblb-$(CONFIG_MACH_STM32MP157C_DK2) += start_stm32mp157c_dk2.pblb
+pblb-$(CONFIG_MACH_STM32MP157C_DK2) += start_stm32mp157c_dk2
 FILE_barebox-stm32mp157c-dk2.img = start_stm32mp157c_dk2.pblb
 image-$(CONFIG_MACH_STM32MP157C_DK2) += barebox-stm32mp157c-dk2.img
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
