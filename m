Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTT2H-0006WU-Gj
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:25:14 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Fri, 28 Mar 2014 17:22:55 +0800
Message-ID: <1395998575-25170-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] ARM: at91: add sama5d36 SoC support
To: s.hauer@pengutronix.de, plagnioj@jcrosoft.com
Cc: barebox@lists.infradead.org

SAMA5D36 SoC is a sub type of SAMA5D3 which has two Ethernets

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
 arch/arm/mach-at91/include/mach/cpu.h | 5 ++++-
 arch/arm/mach-at91/sama5d3.c          | 6 ++++--
 arch/arm/mach-at91/setup.c            | 3 +++
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 7132489..0e213ce 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -52,6 +52,7 @@
 #define ARCH_EXID_SAMA5D33	0x00414300
 #define ARCH_EXID_SAMA5D34	0x00414301
 #define ARCH_EXID_SAMA5D35	0x00584300
+#define ARCH_EXID_SAMA5D36	0x00004301
 
 #define ARCH_FAMILY_AT91X92	0x09200000
 #define ARCH_FAMILY_AT91SAM9	0x01900000
@@ -104,7 +105,7 @@ enum at91_soc_subtype {
 
 	/* SAMA5D3 */
 	AT91_SOC_SAMA5D31, AT91_SOC_SAMA5D33, AT91_SOC_SAMA5D34,
-	AT91_SOC_SAMA5D35,
+	AT91_SOC_SAMA5D35, AT91_SOC_SAMA5D36,
 
 	/* Unknown subtype */
 	AT91_SOC_SUBTYPE_NONE
@@ -206,12 +207,14 @@ static inline int at91_soc_is_detected(void)
 #define cpu_is_sama5d33()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D33)
 #define cpu_is_sama5d34()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D34)
 #define cpu_is_sama5d35()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D35)
+#define cpu_is_sama5d36()	(at91_soc_initdata.subtype == AT91_SOC_SAMA5D36)
 #else
 #define cpu_is_sama5d3()	(0)
 #define cpu_is_sama5d31()	(0)
 #define cpu_is_sama5d33()	(0)
 #define cpu_is_sama5d34()	(0)
 #define cpu_is_sama5d35()	(0)
+#define cpu_is_sama5d36()	(0)
 #endif
 
 /*
diff --git a/arch/arm/mach-at91/sama5d3.c b/arch/arm/mach-at91/sama5d3.c
index 1bfae14..85efb2d 100644
--- a/arch/arm/mach-at91/sama5d3.c
+++ b/arch/arm/mach-at91/sama5d3.c
@@ -348,11 +348,13 @@ static void __init sama5d3_register_clocks(void)
 
 	if ( cpu_is_sama5d33()
 	|| cpu_is_sama5d34()
-	|| cpu_is_sama5d35() )
+	|| cpu_is_sama5d35()
+	|| cpu_is_sama5d36())
 		clk_register(&macb0_clk);
 
 	if ( cpu_is_sama5d31()
-	|| cpu_is_sama5d35() )
+	|| cpu_is_sama5d35()
+	|| cpu_is_sama5d36())
 		clk_register(&macb1_clk);
 
 	if (!cpu_is_sama5d35())
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 65d0588..7a7de98 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -162,6 +162,8 @@ static void __init soc_detect(u32 dbgu_base)
 			break;
 		case ARCH_EXID_SAMA5D35:
 			at91_soc_initdata.subtype = AT91_SOC_SAMA5D35;
+		case ARCH_EXID_SAMA5D36:
+			at91_soc_initdata.subtype = AT91_SOC_SAMA5D36;
 			break;
 		}
 	}
@@ -205,6 +207,7 @@ static const char *soc_subtype_name[] = {
 	[AT91_SOC_SAMA5D33]	= "sama5d33",
 	[AT91_SOC_SAMA5D34]	= "sama5d34",
 	[AT91_SOC_SAMA5D35]	= "sama5d35",
+	[AT91_SOC_SAMA5D36]	= "sama5d36",
 	[AT91_SOC_SUBTYPE_NONE]	= "Unknown"
 };
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
