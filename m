Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDSZc-0007GU-6m
 for barebox@lists.infradead.org; Wed, 02 Sep 2020 13:13:13 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  2 Sep 2020 15:13:06 +0200
Message-Id: <20200902131307.17613-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200902131307.17613-1-a.fatoum@pengutronix.de>
References: <20200902131307.17613-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 2/3] ARM: at91: fix link error when CONFIG_BOOTM=n
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

bootm-barebox.c understandably expects barebox bootm functionality to be
available. Don't build it if that's not the case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/Makefile b/arch/arm/mach-at91/Makefile
index ba46c1a16edb..9cfba28fa093 100644
--- a/arch/arm/mach-at91/Makefile
+++ b/arch/arm/mach-at91/Makefile
@@ -1,4 +1,4 @@
-obj-y += setup.o aic.o bootm-barebox.o
+obj-y += setup.o aic.o
 lwl-y += at91_pmc_ll.o ddramc_ll.o matrix.o
 lwl-$(CONFIG_CLOCKSOURCE_ATMEL_PIT) += early_udelay.o
 
@@ -9,6 +9,7 @@ endif
 obj-$(CONFIG_CMD_AT91_BOOT_TEST) += boot_test_cmd.o
 
 obj-$(CONFIG_AT91_BOOTSTRAP)	+= bootstrap.o
+obj-$(CONFIG_BOOTM) += bootm-barebox.o
 
 obj-y += at91sam9_reset.o
 obj-y += at91sam9g45_reset.o
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
