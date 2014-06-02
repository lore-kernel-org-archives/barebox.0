Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bn1lp0142.outbound.protection.outlook.com
 ([207.46.163.142] helo=na01-bn1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrStW-0002Ve-JB
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 14:07:23 +0000
From: Fabio Estevam <fabio.estevam@freescale.com>
Date: Mon, 2 Jun 2014 11:06:39 -0300
Message-ID: <1401717999-10752-1-git-send-email-fabio.estevam@freescale.com>
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
Subject: [PATCH v2] serial: imx: Fix buggy transmissions when baudrate
 mismatches
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@freescale.com>, barebox@lists.infradead.org

Bit 7 of UCR3 is described in the i.MX reference manuals (with the exception
of i.MX1) as follows:

ADNIMP: Autobaud Detection Not Improved-. Disables new features of
	autobaud detection (See Baud Rate Automatic Detection
	Protocol, for more details).

	0 Autobaud detection new features selected
	1 Keep old autobaud detection mechanism

The "new features" mechanism occasionally causes the receiver to get out of sync 
and continuously produces received characters of '0xff'.

In order to reproduce the problem:

$ cs0.baudrate=19200
- Change the terminal baudrate to 19200
- Type in the console and it should look good
- Change the terminal baudrate back to 115200
- Type 'b' in the console, then a stream of '0xff' is transmitted in loop

Setting the ADNIMP bit avoids the transmission of '0xff' in loop.

Also rename the bit definition as per the reference manual.

Tested on mx6q.

Based on a patch from Eric Nelson for U-boot.

Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
---
Changes since v1:
- Remove the extra hunk above the --- line.

 drivers/serial/serial_imx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e0bd185..cb10627 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -79,7 +79,7 @@
 #define  UCR3_DSR        (1<<10) /* Data set ready */
 #define  UCR3_DCD        (1<<9)  /* Data carrier detect */
 #define  UCR3_RI         (1<<8)  /* Ring indicator */
-#define  UCR3_TIMEOUTEN  (1<<7)  /* Timeout interrupt enable */
+#define  UCR3_ADNIMP     (1<<7)  /* Autobaud Detection Not Improved */
 #define  UCR3_RXDSEN	 (1<<6)  /* Receive status interrupt enable */
 #define  UCR3_AIRINTEN   (1<<5)  /* Async IR wake interrupt enable */
 #define  UCR3_AWAKEN	 (1<<4)  /* Async wake interrupt enable */
@@ -152,7 +152,7 @@ static struct imx_serial_devtype_data imx1_data = {
 
 static struct imx_serial_devtype_data imx21_data = {
 	.ucr1_val = 0,
-	.ucr3_val = 0x700 | UCR3_RXDMUXSEL,
+	.ucr3_val = 0x700 | UCR3_RXDMUXSEL | UCR3_ADNIMP,
 	.ucr4_val = UCR4_CTSTL_32,
 	.uts = 0xb4,
 	.onems = 0xb0,
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
