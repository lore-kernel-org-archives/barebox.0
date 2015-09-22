Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeW95-0007M7-5J
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 22:34:43 +0000
Received: by lacao8 with SMTP id ao8so7432959lac.3
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 15:34:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 23 Sep 2015 01:34:08 +0300
Message-Id: <1442961253-24762-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
References: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/6] MIPS: ath79: use gpiolib
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index aeb5c04..a2d443f 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -68,6 +68,7 @@ config MACH_MIPS_ATH79
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
 	select OFTREE
+	select GPIOLIB
 
 config MACH_MIPS_BCM47XX
 	bool "Broadcom BCM47xx-based boards"
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
