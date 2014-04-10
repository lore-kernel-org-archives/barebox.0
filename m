Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WY8Hy-0002js-O8
 for barebox@lists.infradead.org; Thu, 10 Apr 2014 06:16:44 +0000
Date: Thu, 10 Apr 2014 08:16:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140410061620.GL27055@pengutronix.de>
References: <3C20140403064122.GC17250@pengutronix.de>
 <1397045518-27913-1-git-send-email-u.bely@sam-solutions.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1397045518-27913-1-git-send-email-u.bely@sam-solutions.net>
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
Subject: Re: [PATCH] imx6: ocotp: Add On-Chip OTP registers write support
To: Uladzimir Bely <u.bely@sam-solutions.net>
Cc: barebox@lists.infradead.org

Hello Uladzimir,

> +	struct cdev cdev;
> +	void __iomem *base;
> +};
> +
> +struct ocotp_regs {
> +	u32 ctrl;
> +	u32 ctrl_set;
> +	u32 ctrl_clr;
> +	u32 ctrl_tog;
> +	u32 timing;
> +	u32 rsvd0[3];
> +	u32 data;
> +	u32 rsvd1[3];
> +	u32 read_ctrl;
> +	u32 rsvd2[3];
> +	u32 fuse_data;
> +};
> +
> +static int imx6_ocotp_set_timing(void)
> +{
> +	u32 clk_rate;
> +	u32 relax, strobe_read, strobe_prog;
> +	u32 timing;
> +	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;

You're still using MX6_OCOTP_BASE_ADDR. All functions in this driver need a struct
ocotp_priv * as argument. Then use priv->base for getting the ocotp base
address.

> +static int imx6_ocotp_wait_busy(u32 flags)
> +{
> +	int count;
> +	u32 cf;
> +	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;
> +
> +	for (count = 10000; count >= 0; count--) {
> +		cf = (1 << OCOTP_CTRL_BUSY) | (1 << OCOTP_CTRL_ERROR) | flags;
> +		cf &= readl(&otp->ctrl);
> +		if (!cf)
> +			break;
> +	}

No counting loop please. grep for is_timeout in the barebox code for
examples how to program timeout loops.

> +
> +	if (count < 0) {
> +		printf("ERROR: otp_wait_busy timeout. 0x%X\n", cf);
> +		/* Clear ERROR bit, BUSY bit will be cleared by controller */
> +		writel(1 << OCOTP_CTRL_ERROR, &otp->ctrl_clr);
> +		return -EBUSY;
> +	}

count will never be smaller than 0.

> +int imx6_ocotp_read_one_u32(u32 index, u32 *pdata)
> +{
> +	int ret;
> +	struct ocotp_regs *otp = (struct ocotp_regs *)MX6_OCOTP_BASE_ADDR;
> +
> +	ret = imx6_ocotp_prepare();
> +	if (ret) {
> +		printf("ERROR: read preparation failed\n");

Driver should always use dev_err and friends for printing messages.
Also, it often helps printing the actual error number aswell, because
that's the next thing people want to know when they get an error.

> @@ -74,12 +360,30 @@ static int imx_ocotp_probe(struct device_d *dev)
>  {
>  	void __iomem *base;
>  
> +	struct ocotp_priv *priv;
> +	struct cdev *cdev;
> +	int ret = 0;
> +

Add the following line to arch/arm/mach-imx/clk-imx6.c:

clkdev_add_physbase(clks[ipg], MX6_OCOTP_BASE_ADDR, NULL);

And then in this function do a:

	priv->clk = clk_get(dev, NULL);

ocotp_priv needs a struct clk *clk member. You have to pass a pointer to
this around to the function using it.

>  	base = dev_request_mem_region(dev, 0);
>  	if (!base)
>  		return -EBUSY;
>  
>  	imx_ocotp_init_dt(dev, base);
>  
> +	priv = xzalloc(sizeof(*priv));
> +
> +	priv->base	= base;
> +	cdev		= &priv->cdev;
> +	cdev->dev	= dev;
> +	cdev->ops	= &imx6_ocotp_ops;
> +	cdev->priv	= priv;
> +	cdev->size	= 32;
> +	cdev->name	= asprintf("imx-ocotp");
> +	if (cdev->name == NULL)
> +		return -ENOMEM;
> +
> +	ret = devfs_create(cdev);

return ret.

> +
>  	return 0;
>  }
>  
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 1e07b5b..560e426 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -733,6 +733,16 @@ config CMD_MIITOOL
>  	  detailed MII status information, such as MII capabilities,
>  	  current advertising mode, and link partner capabilities.
>  
> +config CMD_OCOTPTOOL
> +	bool
> +	depends on IMX_OCOTP
> +	prompt "ocotptool"
> +	help
> +	  The ocotptool command allows to read and write to i.MX6 On-Chip
> +	  OTP registers from barebox shell. Usage:
> +		"ocotptool read mac" to read MAC
> +		"ocotptool blow mac xx:xx:xx:xx:xx:xx" to write MAC

As suggested in my last mail:

Do we need this tool at all? We can add a .macaddr parameter to the
ocotp device using dev_add_param_mac() (This function is new and
currently only in the -next branch)

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
