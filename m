Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3wje-0000jX-Aw
	for barebox@lists.infradead.org; Wed, 14 Sep 2011 21:11:10 +0000
Received: by mail-fx0-f49.google.com with SMTP id 7so2395376fxg.36
	for <barebox@lists.infradead.org>; Wed, 14 Sep 2011 14:11:10 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Wed, 14 Sep 2011 23:10:31 +0200
Message-Id: <1316034631-26970-2-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1316034631-26970-1-git-send-email-h.feurstein@gmail.com>
References: <1316034631-26970-1-git-send-email-h.feurstein@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] at91sam9260: remove remaining 'at91_clock_associate'
	function
To: barebox@lists.infradead.org

This fixes the following compile warning when MCI_ATMEL is selected:
  arch/arm/mach-at91/at91sam9260_devices.c: In function 'at91_add_device_mci':
  arch/arm/mach-at91/at91sam9260_devices.c:251:2: warning: implicit declaration of function 'at91_clock_associate'

Introduced in commit:
  "at91: swtich to clkdev" (ae19fe26cc230bc38238c2d66b8f464761286316)

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam9260_devices.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam9260_devices.c b/arch/arm/mach-at91/at91sam9260_devices.c
index 4540f4b..44d3f1e 100644
--- a/arch/arm/mach-at91/at91sam9260_devices.c
+++ b/arch/arm/mach-at91/at91sam9260_devices.c
@@ -248,7 +248,6 @@ void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data)
 
 	dev = add_generic_device("atmel_mci", 0, NULL, AT91SAM9260_BASE_MCI, SZ_16K,
 			   IORESOURCE_MEM, data);
-	at91_clock_associate("mci_clk", dev, "mci_clk");
 }
 #else
 void at91_add_device_mci(short mmc_id, struct atmel_mci_platform_data *data) {}
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
