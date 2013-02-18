Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f175.google.com ([209.85.215.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7NUD-0001Ia-SX
 for barebox@lists.infradead.org; Mon, 18 Feb 2013 09:58:14 +0000
Received: by mail-ea0-f175.google.com with SMTP id d1so2191210eab.20
 for <barebox@lists.infradead.org>; Mon, 18 Feb 2013 01:58:11 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Mon, 18 Feb 2013 10:58:08 +0100
Message-Id: <1361181488-12901-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH] at91sam9260/9g20ek: use -EINVAL for invalid gpio on atmel_mci
To: barebox@lists.infradead.org

Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9260ek/init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
index 77ca6bb..dc2976a 100644
--- a/arch/arm/boards/at91sam9260ek/init.c
+++ b/arch/arm/boards/at91sam9260ek/init.c
@@ -156,6 +156,8 @@ static void at91sam9260ek_phy_reset(void)
 static struct atmel_mci_platform_data __initdata ek_mci_data = {
 	.bus_width	= 4,
 	.slot_b		= 1,
+	.detect_pin	= -EINVAL,
+	.wp_pin		= -EINVAL,
 };
 
 static void ek_usb_add_device_mci(void)
-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
