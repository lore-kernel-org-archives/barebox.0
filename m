Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.246]
 helo=DVREDG02.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YJHQQ-0002mP-1t
 for barebox@lists.infradead.org; Thu, 05 Feb 2015 08:04:34 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Thu, 5 Feb 2015 16:04:05 +0800
Message-ID: <1423123445-29905-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] ARM: atmel: at91sam9n12: add subtype support
To: s.hauer@pengutronix.de, plagnioj@jcrosoft.com
Cc: barebox@lists.infradead.org

As the at91sam9n12 series includes at91sam9n12, at91sam9cn11,
at91sam9cn12. So, add subtype to distinguish them.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/mach-at91/include/mach/cpu.h |  7 +++++++
 arch/arm/mach-at91/setup.c            | 17 +++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/arch/arm/mach-at91/include/mach/cpu.h b/arch/arm/mach-at91/include/mach/cpu.h
index f684d32..def49dc 100644
--- a/arch/arm/mach-at91/include/mach/cpu.h
+++ b/arch/arm/mach-at91/include/mach/cpu.h
@@ -48,6 +48,10 @@
 #define ARCH_EXID_AT91SAM9G25	0x00000003
 #define ARCH_EXID_AT91SAM9X25	0x00000004
 
+#define ARCH_EXID_AT91SAM9N12	0x00000006
+#define ARCH_EXID_AT91SAM9CN11	0x00000009
+#define ARCH_EXID_AT91SAM9CN12	0x00000005
+
 #define ARCH_EXID_SAMA5D3	0x00004300
 #define ARCH_EXID_SAMA5D31	0x00444300
 #define ARCH_EXID_SAMA5D33	0x00414300
@@ -113,6 +117,9 @@ enum at91_soc_subtype {
 	AT91_SOC_SAM9G15, AT91_SOC_SAM9G35, AT91_SOC_SAM9X35,
 	AT91_SOC_SAM9G25, AT91_SOC_SAM9X25,
 
+	/* SAM9N12 */
+	AT91_SOC_SAM9CN11, AT91_SOC_SAM9CN12,
+
 	/* SAMA5D3 */
 	AT91_SOC_SAMA5D31, AT91_SOC_SAMA5D33, AT91_SOC_SAMA5D34,
 	AT91_SOC_SAMA5D35, AT91_SOC_SAMA5D36,
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 030b8a2..341979a 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -156,6 +156,20 @@ static void __init soc_detect(u32 dbgu_base)
 		}
 	}
 
+	if (at91_soc_initdata.type == AT91_SOC_SAM9N12) {
+		switch (at91_soc_initdata.exid) {
+		case ARCH_EXID_AT91SAM9N12:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9N12;
+			break;
+		case ARCH_EXID_AT91SAM9CN11:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9CN11;
+			break;
+		case ARCH_EXID_AT91SAM9CN12:
+			at91_soc_initdata.subtype = AT91_SOC_SAM9CN12;
+			break;
+		}
+	}
+
 	if (at91_soc_initdata.type == AT91_SOC_SAMA5D3) {
 		switch (at91_soc_initdata.exid) {
 		case ARCH_EXID_SAMA5D31:
@@ -229,6 +243,9 @@ static const char *soc_subtype_name[] = {
 	[AT91_SOC_SAM9X35]	= "at91sam9x35",
 	[AT91_SOC_SAM9G25]	= "at91sam9g25",
 	[AT91_SOC_SAM9X25]	= "at91sam9x25",
+	[AT91_SOC_SAM9N12]	= "at91sam9n12",
+	[AT91_SOC_SAM9CN11]	= "at91sam9cn11",
+	[AT91_SOC_SAM9CN12]	= "at91sam9cn12",
 	[AT91_SOC_SAMA5D31]	= "sama5d31",
 	[AT91_SOC_SAMA5D33]	= "sama5d33",
 	[AT91_SOC_SAMA5D34]	= "sama5d34",
-- 
2.3.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
