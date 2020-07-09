Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jtY3H-0005Wm-2M
 for barebox@lists.infradead.org; Thu, 09 Jul 2020 15:01:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jul 2020 17:01:24 +0200
Message-Id: <20200709150124.30940-1-a.fatoum@pengutronix.de>
In-Reply-To: <20200709141931.GE15485@pengutronix.de>
References: <20200709141931.GE15485@pengutronix.de>
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
Subject: [PATCH v2] fixup! ARM: at91: add helpers for chain-loading barebox
 from SD-card
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

Drop no longer accurate comment. Use c99 designated initializers.
Don't force != 0 to 1.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/xload-mmc.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
index bc974b6446c7..42341fa54bcd 100644
--- a/arch/arm/mach-at91/xload-mmc.c
+++ b/arch/arm/mach-at91/xload-mmc.c
@@ -40,18 +40,19 @@ static const struct sdhci_instance {
 	u8 periph;
 	s8 pins[15];
 } sdhci_instances[] = {
-	[0] = { SAMA5D2_BASE_SDHC0, SAMA5D2_ID_SDMMC0, AT91_MUX_PERIPH_A,
-		{ 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 13, 10, 11, 12, -1 } },
-	[1] = { SAMA5D2_BASE_SDHC1, SAMA5D2_ID_SDMMC1, AT91_MUX_PERIPH_E,
-		{ 18, 19, 20, 21, 22, 28, 30, -1 } },
+	[0] = {
+		.base = SAMA5D2_BASE_SDHC0, .id = SAMA5D2_ID_SDMMC0, .periph = AT91_MUX_PERIPH_A,
+		.pins = { 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 13, 10, 11, 12, -1 }
+	},
+	[1] = {
+		.base = SAMA5D2_BASE_SDHC1, .id = SAMA5D2_ID_SDMMC1, .periph = AT91_MUX_PERIPH_E,
+		.pins = { 18, 19, 20, 21, 22, 28, 30, -1 }
+	},
 };
 
 /**
  * sama5d2_sdhci_start_image - Load and start an image from FAT-formatted SDHCI
  * @r4: value of r4 passed by BootROM
- *
- * Return: If successul, this function does not return. A negative error
- * code is returned when this function fails.
  */
 void __noreturn sama5d2_sdhci_start_image(u32 r4)
 {
@@ -61,7 +62,11 @@ void __noreturn sama5d2_sdhci_start_image(u32 r4)
 	const s8 *pin;
 	int ret;
 
-	instance = &sdhci_instances[!!sama5_bootsource_instance(r4)];
+	ret = sama5_bootsource_instance(r4);
+	if (ret > 1)
+		panic("Couldn't determine boot MCI instance\n");
+
+	instance = &sdhci_instances[ret];
 
 	sama5d2_pmc_enable_periph_clock(SAMA5D2_ID_PIOA);
 	for (pin = instance->pins; *pin >= 0; pin++) {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
