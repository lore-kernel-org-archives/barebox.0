Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXgoe-0000Pc-H5
 for barebox@lists.infradead.org; Wed, 28 Oct 2020 08:28:21 +0000
Date: Wed, 28 Oct 2020 09:28:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201028082819.GW26805@pengutronix.de>
References: <20201027065244.29961-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027065244.29961-1-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: CCMX51: Add new module ID variant
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Oct 27, 2020 at 09:52:44AM +0300, Alexander Shiyan wrote:
> This adds support for Digi ConnectCore module variant 0x15
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/ccxmx51/ccxmx51.c | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
> index 13fba51fe..09437b047 100644
> --- a/arch/arm/boards/ccxmx51/ccxmx51.c
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.c
> @@ -31,7 +31,7 @@ static const struct ccxmx_ident {
>  	unsigned char	eth1:1;
>  	unsigned char	wless:1;
>  	unsigned char	accel:1;
> -} *ccxmx_id, ccxmx51_ids[] = {
> +} ccxmx51_ids[] = {
>  	[0x00] = { NULL /* Unknown */,					0,       0,   0, 0, 0, 0 },
>  	[0x01] = { NULL /* Not supported */,				0,       0,   0, 0, 0, 0 },
>  	[0x02] = { "i.MX515@800MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M, 800, 1, 1, 1, 1 },
> @@ -52,7 +52,9 @@ static const struct ccxmx_ident {
>  	[0x11] = { "i.MX515@800MHz, PHY, Accel",			SZ_128M, 800, 1, 0, 0, 1 },
>  	[0x12] = { "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_512M, 600, 1, 0, 1, 1 },
>  	[0x13] = { "i.MX515@800MHz, PHY, Accel",			SZ_512M, 800, 1, 0, 0, 1 },
> -};
> +	[0x14] = { NULL,						0,       0,   0, 0, 0, 0 },
> +	[0x15] = { "i.MX515@600MHz, PHY, Accel",			SZ_512M, 600, 1, 0, 0, 1 },
> +}, *ccxmx_id = &ccxmx51_ids[0];
>  
>  static u32 boardserial;
>  
> @@ -228,13 +230,18 @@ static __init int ccxmx51_init(void)
>  {
>  	char manloc = 'N';
>  	u8 hwid[6];
> +	int ret;
>  
>  	if (!ccxmx51_is_compatible())
>  		return 0;
>  
> -	if ((imx_iim_read(1, 9, hwid, sizeof(hwid)) != sizeof(hwid)) ||
> -	    (hwid[0] < 0x02) || (hwid[0] >= ARRAY_SIZE(ccxmx51_ids))) {
> -		printf("Unknown board variant (0x%02x). System halted.\n", hwid[0]);
> +	ret = imx_iim_read(1, 9, hwid, sizeof(hwid));
> +	if ((ret == sizeof(hwid)) && (hwid[0] < ARRAY_SIZE(ccxmx51_ids)))
> +		ccxmx_id = &ccxmx51_ids[hwid[0]];
> +
> +	if (!ccxmx_id->mem_sz) {
> +		printf("Unknown/unsupported board variant (0x%02x).\n"
> +		       "System halted.\n", hwid[0]);
>  		hang();
>  	}
>  
> -- 
> 2.26.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
