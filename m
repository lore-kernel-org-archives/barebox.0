Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwZm8-0002ww-IC
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 15:24:21 +0000
Received: by mail-lb0-f180.google.com with SMTP id o10so4708137lbi.25
 for <barebox@lists.infradead.org>; Tue, 09 Jul 2013 08:23:58 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Tue,  9 Jul 2013 21:23:17 +0600
Message-Id: <1373383397-13205-4-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1373383397-13205-1-git-send-email-agalakhov@gmail.com>
References: <1373383397-13205-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 3/3] friendlyarm-tiny210: add heartbeat LED
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 arch/arm/boards/friendlyarm-tiny210/tiny210.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/friendlyarm-tiny210/tiny210.c b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
index 18494b0..fb144f5 100644
--- a/arch/arm/boards/friendlyarm-tiny210/tiny210.c
+++ b/arch/arm/boards/friendlyarm-tiny210/tiny210.c
@@ -105,6 +105,8 @@ static int tiny210_devices_init(void)
 		led_gpio_register(&leds[i]);
 	}
 
+	led_set_trigger(LED_TRIGGER_HEARTBEAT, &leds[0].led);
+
 	armlinux_set_bootparams((void*)S3C_SDRAM_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI210);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
