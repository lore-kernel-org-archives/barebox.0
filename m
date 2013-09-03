Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f181.google.com ([209.85.216.181])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGgGe-0003rv-Rr
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 02:22:57 +0000
Received: by mail-qc0-f181.google.com with SMTP id q4so534201qcx.40
 for <barebox@lists.infradead.org>; Mon, 02 Sep 2013 19:22:35 -0700 (PDT)
From: Darren Garnier <dgarnier@reinrag.net>
Message-Id: <7CB5E6E6-CC40-418F-ADB6-766DEC5D180A@reinrag.net>
Date: Mon, 2 Sep 2013 22:22:34 -0400
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
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
Subject: [PATCH 2/4] AT91: move have_intensity_bit into board setup
To: barebox@lists.infradead.org

Signed-off-by: Darren Garnier <dgarnier@reinrag.net>
---
arch/arm/boards/at91sam9261ek/init.c     | 2 ++
arch/arm/mach-at91/at91sam9261_devices.c | 2 --
2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 00fc745..b420a48 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -223,6 +223,8 @@ static void ek_add_device_lcdc(void)

	if (machine_is_at91sam9g10ek())
		ek_lcdc_data.lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
+	else
+		ek_lcdc_data.has_intensity_bit = true;

	at91_add_device_lcdc(&ek_lcdc_data);
}
diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
index b522afb..ba52e56 100644
--- a/arch/arm/mach-at91/at91sam9261_devices.c
+++ b/arch/arm/mach-at91/at91sam9261_devices.c
@@ -218,8 +218,6 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data)
{
	BUG_ON(!data);

-	data->have_intensity_bit = true;
-
#if defined(CONFIG_FB_ATMEL_STN)
	at91_set_A_periph(AT91_PIN_PB0, 0);	/* LCDVSYNC */
	at91_set_A_periph(AT91_PIN_PB1, 0);	/* LCDHSYNC */
-- 
1.8.3.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
