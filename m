Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wzfnf-0005vb-5G
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 05:31:15 +0000
Received: by mail-la0-f44.google.com with SMTP id ty20so360601lab.17
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 22:30:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 25 Jun 2014 09:30:44 +0400
Message-Id: <1403674244-12140-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: mach-ath79: drop extra 'select HAVE_CLK'
To: barebox@lists.infradead.org

We already have 'select COMMON_CLK' so 'select HAVE_CLK'
is redundant.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 9a240b7..dcd0e58 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -61,7 +61,6 @@ config MACH_MIPS_ATH79
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select CSRC_R4K_LIB
 	select HAS_DEBUG_LL
-	select HAVE_CLK
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
