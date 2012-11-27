Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TdRLU-0002Qk-04
 for barebox@lists.infradead.org; Tue, 27 Nov 2012 20:01:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Nov 2012 21:01:17 +0100
Message-Id: <1354046477-17530-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354046477-17530-1-git-send-email-s.hauer@pengutronix.de>
References: <1354046477-17530-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] serial i.MX: Make locally used variables static
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 694eac2..3f219ae 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -141,7 +141,7 @@ struct imx_serial_devtype_data {
 	u32 onems;
 };
 
-struct imx_serial_devtype_data imx1_data = {
+static struct imx_serial_devtype_data imx1_data = {
 	.ucr1_val = UCR1_UARTCLKEN,
 	.ucr3_val = 0,
 	.ucr4_val = UCR4_CTSTL_32 | UCR4_REF16,
@@ -149,7 +149,7 @@ struct imx_serial_devtype_data imx1_data = {
 	.onems = 0,
 };
 
-struct imx_serial_devtype_data imx21_data = {
+static struct imx_serial_devtype_data imx21_data = {
 	.ucr1_val = 0,
 	.ucr3_val = 0x700 | UCR3_RXDMUXSEL,
 	.ucr4_val = UCR4_CTSTL_32,
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
