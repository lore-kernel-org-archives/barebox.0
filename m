Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OlHtT-0006I6-MK
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 08:51:40 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Tue, 17 Aug 2010 10:51:29 +0200
Message-Id: <1282035089-24448-3-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1282035089-24448-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1282035089-24448-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 2/2] at91rm9200: delete choice without type
To: barebox@lists.infradead.org

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/mach-at91rm9200/Kconfig |    6 ------
 1 files changed, 0 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-at91rm9200/Kconfig b/arch/arm/mach-at91rm9200/Kconfig
index c062097..51ea3a4 100644
--- a/arch/arm/mach-at91rm9200/Kconfig
+++ b/arch/arm/mach-at91rm9200/Kconfig
@@ -7,10 +7,4 @@ config BOARDINFO
 
 comment "Atmel AT91RM9200 System-on-Chip"
 
-choice
-
-	prompt "AT91RM9200 Board Type"
-
-endchoice
-
 endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
