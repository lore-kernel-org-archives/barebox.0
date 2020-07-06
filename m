Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsKZp-00018V-CH
 for barebox@lists.infradead.org; Mon, 06 Jul 2020 06:26:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jul 2020 08:26:02 +0200
Message-Id: <20200706062602.10602-1-a.fatoum@pengutronix.de>
In-Reply-To: <c9be71e8-1b06-7066-57e4-e86287b4e8f7@pengutronix.de>
References: <c9be71e8-1b06-7066-57e4-e86287b4e8f7@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: at91: add helpers for chain-loading barebox from
 SD-card
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Drop no longer accurate comment. Use c99 designated initializers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/xload-mmc.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-at91/xload-mmc.c b/arch/arm/mach-at91/xload-mmc.c
index bc974b6446c7..c031f94aeeef 100644
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
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
