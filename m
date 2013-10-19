Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22f.google.com ([2a00:1450:4013:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVX7-0002nh-24
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:21:29 +0000
Received: by mail-ea0-f175.google.com with SMTP id m14so2547330eaj.20
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:21:06 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id b42sm17147502eem.9.2013.10.19.05.21.05
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:21:06 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:20:51 +0200
Message-Id: <1382185254-29183-5-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 06/10] ARM: bcm2835: register the clocksource device earlier
To: barebox@lists.infradead.org

RPi's mailbox driver is used early and it needs clock functions to
handle timeouts.

Register the driver straight after its clkdev.

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 arch/arm/mach-bcm2835/core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-bcm2835/core.c b/arch/arm/mach-bcm2835/core.c
index 6835960..cba7bf6 100644
--- a/arch/arm/mach-bcm2835/core.c
+++ b/arch/arm/mach-bcm2835/core.c
@@ -45,6 +45,8 @@ static int bcm2835_clk_init(void)
 	clk = clk_fixed("bcm2835-cs", 1 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "bcm2835-cs");
 
+	add_generic_device("bcm2835-cs", DEVICE_ID_SINGLE, NULL, BCM2835_ST_BASE, 0x1C, IORESOURCE_MEM, NULL);
+
 	return 0;
 }
 postcore_initcall(bcm2835_clk_init);
@@ -52,7 +54,6 @@ postcore_initcall(bcm2835_clk_init);
 static int bcm2835_dev_init(void)
 {
 	add_generic_device("bcm2835-gpio", 0, NULL, BCM2835_GPIO_BASE, 0xB0, IORESOURCE_MEM, NULL);
-	add_generic_device("bcm2835-cs", DEVICE_ID_SINGLE, NULL, BCM2835_ST_BASE, 0x1C, IORESOURCE_MEM, NULL);
 	add_generic_device("bcm2835_mci", 0, NULL, BCM2835_EMMC_BASE, 0xFC, IORESOURCE_MEM, NULL);
 	return 0;
 }
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
