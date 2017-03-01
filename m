Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj5IN-00048N-8z
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 14:32:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1cj5I1-0005ON-Qv
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:31:37 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Mar 2017 15:31:30 +0100
Message-Id: <20170301143137.11570-2-l.stach@pengutronix.de>
In-Reply-To: <20170301143137.11570-1-l.stach@pengutronix.de>
References: <20170301143137.11570-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/9] ARM: rpi: move model detection before console init
To: barebox@lists.infradead.org

This way we can print the correct model in the Barebox banner.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 7441c06437dd..db9af2be4245 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -278,7 +278,7 @@ static int rpi_mem_init(void)
 }
 mem_initcall(rpi_mem_init);
 
-static int rpi_console_init(void)
+static int rpi_postcore_init(void)
 {
 	rpi_get_board_rev();
 	barebox_set_hostname("rpi");
@@ -286,7 +286,7 @@ static int rpi_console_init(void)
 	bcm2835_register_uart();
 	return 0;
 }
-console_initcall(rpi_console_init);
+postcore_initcall(rpi_postcore_init);
 
 static int rpi_clock_init(void)
 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
