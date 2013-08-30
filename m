Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VFNif-0004pD-0P
 for barebox@lists.infradead.org; Fri, 30 Aug 2013 12:22:29 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 58AD2BF0E7
 for <barebox@lists.infradead.org>; Fri, 30 Aug 2013 14:13:19 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 30 Aug 2013 14:22:05 +0200
Message-Id: <1377865325-12249-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] i2c-omap: fix am33xx fclk_rate
To: barebox@lists.infradead.org

commit f64ed12b change the clock accidentally from 48000 to 96000.
Revert this change.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/i2c/busses/i2c-omap.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
index b2a74c0..c38f669 100644
--- a/drivers/i2c/busses/i2c-omap.c
+++ b/drivers/i2c/busses/i2c-omap.c
@@ -259,7 +259,7 @@ static struct omap_i2c_driver_data omap4_data = {
 static struct omap_i2c_driver_data am33xx_data = {
 	.flags =	OMAP_I2C_FLAG_RESET_REGS_POSTIDLE |
 			OMAP_I2C_FLAG_BUS_SHIFT_NONE,
-	.fclk_rate =	96000,
+	.fclk_rate =	48000,
 	.regs =		(u8 *) omap4_reg_map,
 };
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
