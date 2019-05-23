Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpoy-00022q-M0
 for barebox@lists.infradead.org; Thu, 23 May 2019 15:39:58 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 May 2019 17:39:38 +0200
Message-Id: <20190523153943.7995-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190523153943.7995-1-a.fatoum@pengutronix.de>
References: <20190523153943.7995-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 4/9] ARM: at91: remove no-longer needed subarch #ifdefery
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

c16bcbc644 ("ARM: at91: remove unused defines") removed conflicting
definitions from the headers, so they can now be included all at
the same time. Do this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/hardware.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/hardware.h b/arch/arm/mach-at91/include/mach/hardware.h
index 58dc6edfa93f..21462030e98b 100644
--- a/arch/arm/mach-at91/include/mach/hardware.h
+++ b/arch/arm/mach-at91/include/mach/hardware.h
@@ -22,27 +22,15 @@
 /* sama5d4 */
 #define AT91_BASE_DBGU2	0xfc069000
 
-#if defined(CONFIG_ARCH_AT91RM9200)
 #include <mach/at91rm9200.h>
-#elif defined(CONFIG_ARCH_AT91SAM9260) || defined(CONFIG_ARCH_AT91SAM9G20)
 #include <mach/at91sam9260.h>
-#elif defined(CONFIG_ARCH_AT91SAM9261) || defined(CONFIG_ARCH_AT91SAM9G10)
 #include <mach/at91sam9261.h>
-#elif defined(CONFIG_ARCH_AT91SAM9263)
 #include <mach/at91sam9263.h>
-#elif defined(CONFIG_ARCH_AT91SAM9G45)
 #include <mach/at91sam9g45.h>
-#elif defined(CONFIG_ARCH_AT91SAM9N12)
 #include <mach/at91sam9n12.h>
-#elif defined(CONFIG_ARCH_AT91SAM9X5)
 #include <mach/at91sam9x5.h>
-#elif defined(CONFIG_ARCH_SAMA5D3)
 #include <mach/sama5d3.h>
-#elif defined(CONFIG_ARCH_SAMA5D4)
 #include <mach/sama5d4.h>
-#else
-#error "Unsupported AT91 processor"
-#endif
 
 /* External Memory Map */
 #define AT91_CHIPSELECT_0	0x10000000
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
