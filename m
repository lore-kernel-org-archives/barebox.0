Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUCNM-0007yN-Gp
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:22:16 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 17 Sep 2014 18:21:28 +0800
Message-ID: <1410949295-30296-3-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH 2/9] ARM: atmel: sama5d3 is a family member of sama5
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

As the sama5d3 is a family member of sama5, so only check sama5
family.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/mach-at91/include/mach/cpu.h | 2 +-
 arch/arm/mach-at91/setup.c            | 2 +-
 arch/arm/mach-at91/soc.h              | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index 0e213ce..c38260f 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -26,7 +26,7 @@
 #define ARCH_ID_AT91SAM9G45ES	0x819b05a1	/* 9G45-ES (Engineering Sample) */
 #define ARCH_ID_AT91SAM9X5	0x819a05a0
 #define ARCH_ID_AT91SAM9N12	0x819a07a0
-#define ARCH_ID_SAMA5D3		0x8A5C07C0
+#define ARCH_ID_SAMA5		0x8A5C07C0
 
 #define ARCH_ID_AT91SAM9XE128	0x329973a0
 #define ARCH_ID_AT91SAM9XE256	0x329a93a0
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 076d081..80dc277 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -89,7 +89,7 @@ static void __init soc_detect(u32 dbgu_base)
 		at91_boot_soc = at91sam9n12_soc;
 		break;
 
-	case ARCH_ID_SAMA5D3:
+	case ARCH_ID_SAMA5:
 		at91_soc_initdata.type = AT91_SOC_SAMA5D3;
 		at91_boot_soc = at91sama5d3_soc;
 		break;
diff --git a/arch/arm/mach-at91/soc.h b/arch/arm/mach-at91/soc.h
index b2278a5..e548165 100644
--- a/arch/arm/mach-at91/soc.h
+++ b/arch/arm/mach-at91/soc.h
@@ -66,6 +66,6 @@ static inline int at91_soc_is_enabled(void)
 #define at91sam9n12_soc	at91_boot_soc
 #endif
 
-#if !defined(CONFIG_SOC_SAMA5)
+#if !defined(CONFIG_ARCH_SAMA5D3)
 #define at91sama5d3_soc	at91_boot_soc
 #endif
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
