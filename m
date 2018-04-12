Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6UuB-0008VW-SQ
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 05:36:22 +0000
Received: by mail-lf0-x242.google.com with SMTP id v207-v6so5847027lfa.10
 for <barebox@lists.infradead.org>; Wed, 11 Apr 2018 22:36:09 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 12 Apr 2018 08:35:57 +0300
Message-Id: <20180412053559.30687-3-antonynpavlov@gmail.com>
In-Reply-To: <20180412053559.30687-1-antonynpavlov@gmail.com>
References: <20180412053559.30687-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/4] ARM: socfpga: boards: pll_config.h: remove duplicate
 macros
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/ebv-socrates/pll_config.h   | 6 ------
 arch/arm/boards/terasic-sockit/pll_config.h | 6 ------
 2 files changed, 12 deletions(-)

diff --git a/arch/arm/boards/ebv-socrates/pll_config.h b/arch/arm/boards/ebv-socrates/pll_config.h
index 083ebd4a87..e912912c9a 100644
--- a/arch/arm/boards/ebv-socrates/pll_config.h
+++ b/arch/arm/boards/ebv-socrates/pll_config.h
@@ -87,12 +87,6 @@
 #define CONFIG_HPS_CLK_MAINVCO_HZ (1600000000)
 #define CONFIG_HPS_CLK_PERVCO_HZ (1000000000)
 #define CONFIG_HPS_CLK_SDRVCO_HZ (666666666)
-#define CONFIG_HPS_CLK_OSC1_HZ (25000000)
-#define CONFIG_HPS_CLK_OSC2_HZ (25000000)
-#define CONFIG_HPS_CLK_F2S_SDR_REF_HZ (0)
-#define CONFIG_HPS_CLK_F2S_PER_REF_HZ (0)
-#define CONFIG_HPS_CLK_MAINVCO_HZ (1600000000)
-#define CONFIG_HPS_CLK_PERVCO_HZ (1000000000)
 #define CONFIG_HPS_CLK_EMAC0_HZ (1953125)
 #define CONFIG_HPS_CLK_EMAC1_HZ (250000000)
 #define CONFIG_HPS_CLK_USBCLK_HZ (200000000)
diff --git a/arch/arm/boards/terasic-sockit/pll_config.h b/arch/arm/boards/terasic-sockit/pll_config.h
index e064e2b2b2..ef4a59a611 100644
--- a/arch/arm/boards/terasic-sockit/pll_config.h
+++ b/arch/arm/boards/terasic-sockit/pll_config.h
@@ -87,12 +87,6 @@
 #define CONFIG_HPS_CLK_MAINVCO_HZ (1600000000)
 #define CONFIG_HPS_CLK_PERVCO_HZ (1000000000)
 #define CONFIG_HPS_CLK_SDRVCO_HZ (800000000)
-#define CONFIG_HPS_CLK_OSC1_HZ (25000000)
-#define CONFIG_HPS_CLK_OSC2_HZ (25000000)
-#define CONFIG_HPS_CLK_F2S_SDR_REF_HZ (0)
-#define CONFIG_HPS_CLK_F2S_PER_REF_HZ (0)
-#define CONFIG_HPS_CLK_MAINVCO_HZ (1600000000)
-#define CONFIG_HPS_CLK_PERVCO_HZ (1000000000)
 #define CONFIG_HPS_CLK_EMAC0_HZ (1953125)
 #define CONFIG_HPS_CLK_EMAC1_HZ (250000000)
 #define CONFIG_HPS_CLK_USBCLK_HZ (200000000)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
