Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvotf-0000gy-CI
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 19:48:14 +0000
Received: by mail-lf1-x141.google.com with SMTP id q12so13215025lfm.0
 for <barebox@lists.infradead.org>; Mon, 18 Feb 2019 11:48:10 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 18 Feb 2019 20:47:53 +0100
Message-Id: <20190218194759.9557-4-sam@ravnborg.org>
In-Reply-To: <20190218194759.9557-1-sam@ravnborg.org>
References: <20190218194759.9557-1-sam@ravnborg.org>
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
Subject: [PATCH v3 3/9] arm: at91: add SOC_SAMA5{D3,D4}
To: Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>, Ladislav Michl <ladis@linux-mips.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

This split allows us to distingush between the two SOC
types.
The SOC_SAMA5D3 and SOC_SAMA5D4 symbols will be used in
following patches.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Tested-by: Ladislav Michl <ladis@linux-mips.org>
---
 arch/arm/mach-at91/Kconfig | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index b101e61d2..a2737a367 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -57,6 +57,16 @@ config SOC_AT91SAM9
 config SOC_SAMA5
 	bool
 	select CPU_V7
+
+config SOC_SAMA5D3
+	bool
+	select SOC_SAMA5
+	select AT91SAM9_SMC
+	select CLOCKSOURCE_ATMEL_PIT
+
+config SOC_SAMA5D4
+	bool
+	select SOC_SAMA5
 	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
 
@@ -188,14 +198,14 @@ config ARCH_AT91SAM9N12
 
 config ARCH_SAMA5D3
 	bool "SAMA5D3x"
-	select SOC_SAMA5
+	select SOC_SAMA5D3
 	select HAVE_AT91_DBGU1
 	select HAS_MACB
 	select HAVE_MACH_ARM_HEAD
 
 config ARCH_SAMA5D4
 	bool "SAMA5D4"
-	select SOC_SAMA5
+	select SOC_SAMA5D4
 	select HAVE_AT91_DBGU2
 	select HAS_MACB
 	select HAVE_MACH_ARM_HEAD
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
