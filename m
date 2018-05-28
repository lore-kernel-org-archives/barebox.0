Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNKdF-0007VJ-9V
 for barebox@lists.infradead.org; Mon, 28 May 2018 16:04:27 +0000
Date: Mon, 28 May 2018 18:04:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180528160412.sprzpllamhnxt7wb@pengutronix.de>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
 <20180526204451.16530-48-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180526204451.16530-48-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 47/48] ARM: i.MX8: Add i.MX8mq EVK support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, May 26, 2018 at 01:44:50PM -0700, Andrey Smirnov wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> +
> +#define reg32_write(a, v)	writel(v, a)
> +#define reg32_read(a)		readl(a)
> +
> +#define DDRC_DDR_SS_GPR0         0x3d000000
> +
> +#define DDRC_IPS_BASE_ADDR(X) (0x3d400000 + (X * 0x2000000))
> +#define DDRC_IPS_BASE_ADDR_0	0x3f400000
> +
> +#define DDRC_MSTR_0             0x3d400000
> +#define DDRC_STAT_0             0x3d400004
> +#define DDRC_MSTR1_0            0x3d400008
> +#define DDRC_MRCTRL0_0          0x3d400010

These are all i.MX8M register defines, right? They shouldn't live in the
board support.

> diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c b/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
> new file mode 100644
> index 000000000..81691b2fa
> --- /dev/null
> +void ddr_init(void)
> +{
> +	tmp=reg32_read(0x30360060);
> +	tmp &= ~0x10;
> +	reg32_write(0x30360060,tmp);
> +	do{
> +		tmp=reg32_read(0x30360060);
> +		if(tmp&0x80000000) break;
> +	}while(1);
> +	reg32_write(0x30391000,0x8f000006);
> +	reg32_write(0x3d400304,0x1);
> +	reg32_write(0x3d400030,0x1);

Do we need the defines anyway when the generated code uses raw adresses
and not the defines?

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
