Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f177.google.com ([209.85.212.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P1WDe-000894-AT
	for barebox@lists.infradead.org; Fri, 01 Oct 2010 03:23:35 +0000
Received: by pxi4 with SMTP id 4so890447pxi.36
	for <barebox@lists.infradead.org>; Thu, 30 Sep 2010 20:23:33 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Fri,  1 Oct 2010 13:22:54 +1000
Message-Id: <1285903374-6825-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH] i2c-imx: wait for STOP before disabling controller
To: barebox@lists.infradead.org

Makes sure that the STOP condition is transmitted before the I2C
controller is disabled.
This fixes a problem where writing to an external EEPROM was not working
because the EEPROM waits until the STOP before initiating the write
internally.

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 drivers/i2c/i2c-imx.c |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/i2c-imx.c b/drivers/i2c/i2c-imx.c
index cc64d94..3e37441 100644
--- a/drivers/i2c/i2c-imx.c
+++ b/drivers/i2c/i2c-imx.c
@@ -265,7 +265,9 @@ static void i2c_imx_stop(struct i2c_adapter *adapter)
 		temp = readb(base + IMX_I2C_I2CR);
 		temp &= ~(I2CR_MSTA | I2CR_MTX);
 		writeb(temp, base + IMX_I2C_I2CR);
-		i2c_imx->stopped = 1;
+		/* wait for the stop condition to be send, otherwise the i2c 
+		 * controller is disabled before the STOP is sent completely */
+		i2c_imx->stopped = i2c_imx_bus_busy(adapter,0) ? 0 : 1;
 	}
 	if (cpu_is_mx1()) {
 		/*
@@ -275,11 +277,9 @@ static void i2c_imx_stop(struct i2c_adapter *adapter)
 		udelay(i2c_imx->disable_delay);
 	}
 
-	if (!i2c_imx->stopped)
-		i2c_imx_bus_busy(adapter, 0);
-
-	/* Disable I2C controller */
+	/* Disable I2C controller, and force our state to stopped */
 	writeb(0, base + IMX_I2C_I2CR);
+	i2c_imx->stopped = 1;
 }
 
 static void i2c_imx_set_clk(struct imx_i2c_struct *i2c_imx,
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
