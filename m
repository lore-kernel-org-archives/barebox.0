Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3kn1-0000Up-QJ
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 10:02:40 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Feb 2013 14:02:14 +0400
Message-Id: <1360317743-25975-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
References: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 02/11] ARM: clps711x: Fix SDRAM setup comment
To: barebox@lists.infradead.org

We are set up maximum SDRAM size 64MB, so fix comment text.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-clps711x/lowlevel.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-clps711x/lowlevel.c b/arch/arm/mach-clps711x/lowlevel.c
index b4d1bf1..0249c60 100644
--- a/arch/arm/mach-clps711x/lowlevel.c
+++ b/arch/arm/mach-clps711x/lowlevel.c
@@ -49,7 +49,7 @@ void __naked __bare_init barebox_arm_reset_vector(void)
 	/* Setup Refresh Rate (64ms 8K Blocks) */
 	writel(SDRAM_REFRESH_RATE, SDRFPR);
 
-	/* Setup SDRAM (32MB, 16Bit*2, CAS=3) */
+	/* Setup SDRAM params (64MB, 16Bit*2, CAS=3) */
 	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
 	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
