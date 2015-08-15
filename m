Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x230.google.com ([2607:f8b0:4001:c06::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQdhq-0002GV-Sx
 for barebox@lists.infradead.org; Sat, 15 Aug 2015 15:49:15 +0000
Received: by iods203 with SMTP id s203so112198468iod.0
 for <barebox@lists.infradead.org>; Sat, 15 Aug 2015 08:48:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150815072543.GA11273@ravnborg.org>
References: <1439606751-15327-1-git-send-email-andrew.smirnov@gmail.com>
 <20150815072543.GA11273@ravnborg.org>
Date: Sat, 15 Aug 2015 08:48:54 -0700
Message-ID: <CAHQ1cqEciR5D_JzcCuC828uY6Ma2+wFCi9t75mQiqMpw1_C6Cw@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>
> This driver is only built for ARCH_IMX (which select COMMON_CLK)
> or two PowerPC variants.
>
> See following snip from Kconfig:
>
> config I2C_IMX
>         bool "MPC85xx/MPC5200/i.MX I2C Master driver"
>         depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX || ARCH_MPC5200
>
> How did you hit this bug in the first place?

I didn't really hit that bug. I was reading the source code of
i2c-imx.c to see an example of I2C controller driver and I noticed
inconsistency in how conditional compilation was applied.

>
> If there is a valid reason to use this driver for non COMMON_CLK
> case and not PowerPC then consider following approach.
> Here the iffeddery is kept at the definition of the function.

I like your approach better. I'll update the patch.

>
>         Sam
>
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 714e83c..9e2c810 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -337,7 +337,7 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
>         i2c_fsl->ifdr = fdr;
>         i2c_fsl->dfsrr = dfsr;
>  }
> -#else
> +#elif defined (COMMON_CLK)
>  static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
>                             unsigned int rate)
>  {
> @@ -374,6 +374,11 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
>         dev_dbg(&i2c_fsl->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
>                 __func__, i2c_clk_div[i][1], i2c_clk_div[i][0]);
>  }
> +#else
> +static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
> +                           unsigned int rate)
> +{
> +}
>  #endif
>
>  static int i2c_fsl_write(struct i2c_adapter *adapter, struct i2c_msg *msgs)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
