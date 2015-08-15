Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQVr4-0005r8-3h
 for barebox@lists.infradead.org; Sat, 15 Aug 2015 07:26:15 +0000
Date: Sat, 15 Aug 2015 09:25:43 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20150815072543.GA11273@ravnborg.org>
References: <1439606751-15327-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439606751-15327-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] i2c-imx: Add missing preporcessor directives
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 14, 2015 at 07:45:51PM -0700, Andrey Smirnov wrote:
> On non-PowerPC platforms call to i2c_fsl_set_clk() will try to obtain
> I2C clock freqency from i2c_fsl->clk, however that field would not be
> initialized if CONFIG_COMMON_CLK is not set. This patch add
> conditional compilation directives to make sure that i2c_fsl_set_clk()
> is not called if CONFIG_COMMON_CLK is not set.

This driver is only built for ARCH_IMX (which select COMMON_CLK)
or two PowerPC variants.

See following snip from Kconfig:

config I2C_IMX
        bool "MPC85xx/MPC5200/i.MX I2C Master driver"
        depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX || ARCH_MPC5200

How did you hit this bug in the first place?

If there is a valid reason to use this driver for non COMMON_CLK
case and not PowerPC then consider following approach.
Here the iffeddery is kept at the definition of the function.

	Sam

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 714e83c..9e2c810 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -337,7 +337,7 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 	i2c_fsl->ifdr = fdr;
 	i2c_fsl->dfsrr = dfsr;
 }
-#else
+#elif defined (COMMON_CLK)
 static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 			    unsigned int rate)
 {
@@ -374,6 +374,11 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 	dev_dbg(&i2c_fsl->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
 		__func__, i2c_clk_div[i][1], i2c_clk_div[i][0]);
 }
+#else
+static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
+			    unsigned int rate)
+{
+}
 #endif
 
 static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
