Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJh9z-0000Oq-2A
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:51:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Nov 2018 16:50:53 +0100
Message-Id: <20181105155113.3434-3-s.hauer@pengutronix.de>
In-Reply-To: <20181105155113.3434-1-s.hauer@pengutronix.de>
References: <20181105155113.3434-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/22] ARM: at91: remove unused CONSISTENT_DMA_SIZE defines
To: Barebox List <barebox@lists.infradead.org>

CONSISTENT_DMA_SIZE is unused, remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/include/mach/at91sam9g45.h | 2 --
 arch/arm/mach-at91/include/mach/at91sam9n12.h | 2 --
 arch/arm/mach-at91/include/mach/at91sam9x5.h  | 2 --
 3 files changed, 6 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam9g45.h b/arch/arm/mach-at91/include/mach/at91sam9g45.h
index 591ea9fedd..7faa435b83 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9g45.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9g45.h
@@ -153,8 +153,6 @@
 
 #define CONFIG_DRAM_BASE	AT91_CHIPSELECT_6
 
-#define CONSISTENT_DMA_SIZE	SZ_4M
-
 /*
  * Cpu Name
  */
diff --git a/arch/arm/mach-at91/include/mach/at91sam9n12.h b/arch/arm/mach-at91/include/mach/at91sam9n12.h
index 5693402935..cbb4f81da8 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9n12.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9n12.h
@@ -145,6 +145,4 @@
 
 #define CONFIG_DRAM_BASE	AT91_CHIPSELECT_1
 
-#define CONSISTENT_DMA_SIZE	(14 * SZ_1M)
-
 #endif
diff --git a/arch/arm/mach-at91/include/mach/at91sam9x5.h b/arch/arm/mach-at91/include/mach/at91sam9x5.h
index 47f88fb15c..0c26eab7e6 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9x5.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9x5.h
@@ -152,6 +152,4 @@
 #define AT91SAM9X5_OHCI_BASE	0x00600000	/* USB Host controller (OHCI) */
 #define AT91SAM9X5_EHCI_BASE	0x00700000	/* USB Host controller (EHCI) */
 
-#define CONSISTENT_DMA_SIZE	SZ_4M
-
 #endif
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
