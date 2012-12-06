Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgYIu-0004zU-8f
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 10:03:40 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so4746129lbo.36
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2012 02:03:37 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Thu,  6 Dec 2012 11:03:34 +0100
Message-Id: <1354788214-11192-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH] at91sam9260ek: fix BOARDINFO text
To: barebox@lists.infradead.org

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
---
 arch/arm/mach-at91/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 3a985f7..3de6061 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -8,7 +8,7 @@ config ARCH_TEXT_BASE
 
 config BOARDINFO
 	default "Atmel at91rm9200-ek" if MACH_AT91RM9200EK
-	default "Atmel 91SAM9260-EK" if MACH_AT91SAM9260EK
+	default "Atmel at91sam9260-ek" if MACH_AT91SAM9260EK
 	default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
 	default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
 	default "Atmel at91sam9g10-ek" if MACH_AT91SAM9G10EK
-- 
1.8.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
