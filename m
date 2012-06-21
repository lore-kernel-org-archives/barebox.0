Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShcO7-0002a7-Iy
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 08:05:12 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 21 Jun 2012 12:05:03 +0400
Message-Id: <1340265903-16017-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1340265903-16017-1-git-send-email-shc_work@mail.ru>
References: <1340265903-16017-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] mx51-pdk: Move lowlevel_init before UART initialization
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 9ec331a..18c21ce 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -246,7 +246,6 @@ static int f3s_devices_init(void)
 	babbage_power_init();
 
 	console_flush();
-	imx51_init_lowlevel(800);
 	clock_notifier_call_chain();
 
 	imx51_iim_register_fec_ethaddr();
@@ -274,6 +273,8 @@ static int f3s_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
 
+	imx51_init_lowlevel(800);
+
 	imx51_add_uart0();
 
 	return 0;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
