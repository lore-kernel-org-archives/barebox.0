Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsr82-00070a-AH
 for barebox@lists.infradead.org; Tue, 07 Jul 2020 17:11:35 +0000
References: <20200707160124.3188793-1-enrico.scholz@sigma-chemnitz.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9c7cf1e5-baf1-65b0-ddef-e651f6f21e2d@pengutronix.de>
Date: Tue, 7 Jul 2020 19:11:31 +0200
MIME-Version: 1.0
In-Reply-To: <20200707160124.3188793-1-enrico.scholz@sigma-chemnitz.de>
Content-Language: en-US
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
Subject: Re: [PATCH] net:fec: fixed unaligned access and stack corruption
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>, barebox@lists.infradead.org

On 7/7/20 6:01 PM, Enrico Scholz wrote:
> on 64 bit architectures, the 'enum fec_type' might not be aligned and
> large enough to hold a pointer.  

I am wondering if we couldn't just adopt the Linux prototype:
void *dev_get_drvdata(const struct device_d *dev);

and do away with the error code and most of the casts.
Users won't be able to differentiate between NULL from id table
and NULL due to lack of drvdata, but I don't think this is
that much of a downside, compared with not having casts obscure
the more common pitfall (besides fec_imx.c, lm75.c, apbh_dma.c and nand_mxs.c
are affected as well of which probably only the first is an issue.)

@Sascha, thoughts?

> When running barebox without MMU,
> this will crash like
> 
> | i.MX8MM unique ID: dab4b7491a2c4209
> | DABT (current EL) exception (ESR 0x96000061) at 0x00000000fffefeb4
> | elr: 00000000ffe14c28 lr : 00000000ffe196e0
> | x0 : 0000000000000002 x1 : 00000000fffefeb4
> | x2 : 00000000ffe91370 x3 : 00000000bfe1b6e8
> | x4 : 0000000000000000 x5 : 0000000011000000
> | ...
> | Call trace:
> | [<ffe14c28>] (dev_get_drvdata+0xc/0x30) from [<ffe1446c>] (device_probe+0x54/0xd0)
> | [<ffe1446c>] (device_probe+0x54/0xd0) from [<ffe14530>] (match+0x48/0x58)
> | [<ffe14530>] (match+0x48/0x58) from [<ffe14a64>] (register_driver+0xc0/0xd0)
> | [<ffe14a64>] (register_driver+0xc0/0xd0) from [<ffe01738>] (start_barebox+0x64/0x90)
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  drivers/net/fec_imx.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 772f930f0d08..30ee7841faba 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -739,14 +739,17 @@ static int fec_probe(struct device_d *dev)
>  	void *base;
>  	int ret;
>  	enum fec_type type;
> +	void const *type_v;
>  	int phy_reset;
>  	u32 msec = 1, phy_post_delay = 0;
>  	u32 reg;
>  
> -	ret = dev_get_drvdata(dev, (const void **)&type);
> +	ret = dev_get_drvdata(dev, &type_v);
>  	if (ret)
>  		return ret;
>  
> +	type = (uintptr_t)(type_v);
> +
>  	fec = xzalloc(sizeof(*fec));
>  	fec->type = type;
>  	fec->dev = dev;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
