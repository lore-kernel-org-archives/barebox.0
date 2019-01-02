Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gen5r-00038c-6J
 for barebox@lists.infradead.org; Wed, 02 Jan 2019 20:26:24 +0000
Received: by mail-lj1-x242.google.com with SMTP id c19-v6so28018486lja.5
 for <barebox@lists.infradead.org>; Wed, 02 Jan 2019 12:26:22 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed,  2 Jan 2019 21:26:09 +0100
Message-Id: <20190102202611.6530-2-sam@ravnborg.org>
In-Reply-To: <20190102202611.6530-1-sam@ravnborg.org>
References: <20190102202611.6530-1-sam@ravnborg.org>
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
Subject: [PATCH v1 1/3] arm: at91: fix clock to mci1 for at91sam9263
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

at91_add_device_mci() was missing configuration of PIOA6
when configuring mci1.
With this fix we can read data from SD card with at91sam9263ek,
when built without DT.
Building without a DT is required when we do a bootstrap build.

The other at91samxxx_devices was checked - only the 9263 was
missing the CLK configuration for mci1.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/at91sam9263_devices.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-at91/at91sam9263_devices.c b/arch/arm/mach-at91/at91sam9263_devices.c
index a67345f05..c7e4962a9 100644
--- a/arch/arm/mach-at91/at91sam9263_devices.c
+++ b/arch/arm/mach-at91/at91sam9263_devices.c
@@ -396,6 +396,9 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 	} else {			/* MCI1 */
 		start = AT91SAM9263_BASE_MCI1;
 
+		/* CLK */
+		at91_set_A_periph(AT91_PIN_PA6, 0);
+
 		if (data->slot_b) {
 			/* CMD */
 			at91_set_A_periph(AT91_PIN_PA21, 1);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
