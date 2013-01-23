Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TxurR-0008FS-Ta
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 07:35:07 +0000
Date: Wed, 23 Jan 2013 08:35:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130123073504.GR1906@pengutronix.de>
References: <1358852915-17983-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1358852915-17983-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/5] ARM: ccmx51: Remove SDRAM size settings
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Tue, Jan 22, 2013 at 03:08:31PM +0400, Alexander Shiyan wrote:
> This patch removes SDRAM memory size setting from board due
> to auto detect last one by ESDCTL.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/ccxmx51/ccxmx51.c |   42 +++++++++++++++++-------------------
>  arch/arm/boards/ccxmx51/ccxmx51.h |    1 -
>  2 files changed, 20 insertions(+), 23 deletions(-)
> 
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
> index b3173a4..acd2aef 100644
> --- a/arch/arm/boards/ccxmx51/ccxmx51.c
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.c
> @@ -50,26 +50,26 @@
>  #include "ccxmx51.h"
>  
>  static struct ccxmx51_ident ccxmx51_ids[] = {
> -/* 0x00 */	{ "Unknown",						0,       0, 0, 0, 0 },
> -/* 0x01 */	{ "Not supported",					0,       0, 0, 0, 0 },
> -/* 0x02 */	{ "i.MX515@800MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M, 0, 1, 1, 1 },
> -/* 0x03 */	{ "i.MX515@800MHz, PHY, Ext. Eth, Accel",		SZ_512M, 0, 1, 1, 0 },
> -/* 0x04 */	{ "i.MX515@600MHz, Wireless, PHY, Ext. Eth, Accel",	SZ_512M, 1, 1, 1, 1 },
> -/* 0x05 */	{ "i.MX515@600MHz, PHY, Ext. Eth, Accel",		SZ_512M, 1, 1, 1, 0 },
> -/* 0x06 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 0, 1, 0, 1 },
> -/* 0x07 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_512M, 0, 1, 0, 0 },
> -/* 0x08 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_256M, 0, 1, 0, 1 },
> -/* 0x09 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_256M, 0, 1, 0, 0 },
> -/* 0x0a */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_256M, 1, 1, 0, 1 },
> -/* 0x0b */	{ "i.MX515@600MHz, PHY, Accel",				SZ_256M, 1, 1, 0, 0 },
> -/* 0x0c */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_128M, 0, 1, 0, 1 },
> -/* 0x0d */	{ "i.MX512@800MHz",					SZ_128M, 0, 0, 0, 0 },
> -/* 0x0e */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		SZ_512M, 0, 1, 0, 1 },
> -/* 0x0f */	{ "i.MX515@600MHz, PHY, Accel",				SZ_128M, 1, 1, 0, 0 },
> -/* 0x10 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_128M, 1, 1, 0, 1 },
> -/* 0x11 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_128M, 0, 1, 0, 0 },
> -/* 0x12 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		SZ_512M, 1, 1, 0, 1 },
> -/* 0x13 */	{ "i.MX515@800MHz, PHY, Accel",				SZ_512M, 0, 1, 0, 0 },
> +/* 0x00 */	{ "Unknown",						0, 0, 0, 0 },
> +/* 0x01 */	{ "Not supported",					0, 0, 0, 0 },
> +/* 0x02 */	{ "i.MX515@800MHz, Wireless, PHY, Ext. Eth, Accel",	0, 1, 1, 1 },
> +/* 0x03 */	{ "i.MX515@800MHz, PHY, Ext. Eth, Accel",		0, 1, 1, 0 },
> +/* 0x04 */	{ "i.MX515@600MHz, Wireless, PHY, Ext. Eth, Accel",	1, 1, 1, 1 },
> +/* 0x05 */	{ "i.MX515@600MHz, PHY, Ext. Eth, Accel",		1, 1, 1, 0 },
> +/* 0x06 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		0, 1, 0, 1 },
> +/* 0x07 */	{ "i.MX515@800MHz, PHY, Accel",				0, 1, 0, 0 },
> +/* 0x08 */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		0, 1, 0, 1 },
> +/* 0x09 */	{ "i.MX515@800MHz, PHY, Accel",				0, 1, 0, 0 },
> +/* 0x0a */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		1, 1, 0, 1 },
> +/* 0x0b */	{ "i.MX515@600MHz, PHY, Accel",				1, 1, 0, 0 },
> +/* 0x0c */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		0, 1, 0, 1 },
> +/* 0x0d */	{ "i.MX512@800MHz",					0, 0, 0, 0 },
> +/* 0x0e */	{ "i.MX515@800MHz, Wireless, PHY, Accel",		0, 1, 0, 1 },
> +/* 0x0f */	{ "i.MX515@600MHz, PHY, Accel",				1, 1, 0, 0 },
> +/* 0x10 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		1, 1, 0, 1 },
> +/* 0x11 */	{ "i.MX515@800MHz, PHY, Accel",				0, 1, 0, 0 },
> +/* 0x12 */	{ "i.MX515@600MHz, Wireless, PHY, Accel",		1, 1, 0, 1 },
> +/* 0x13 */	{ "i.MX515@800MHz, PHY, Accel",				0, 1, 0, 0 },
>  };
>  
>  struct ccxmx51_ident *ccxmx51_id;
> @@ -408,8 +408,6 @@ static int ccxmx51_devices_init(void)
>  			break;
>  		}
>  		printf("Module Serial : %c%d\n", manloc, ((hwid[2] & 0x3f) << 24) | (hwid[3] << 16) | (hwid[4] << 8) | hwid[5]);
> -		if ((ccxmx51_id->mem_sz - SZ_128M) > 0)
> -			arm_add_mem_device("ram1", MX51_CSD0_BASE_ADDR + SZ_128M, ccxmx51_id->mem_sz - SZ_128M);
>  	}
>  
>  	imx51_add_uart1();
> diff --git a/arch/arm/boards/ccxmx51/ccxmx51.h b/arch/arm/boards/ccxmx51/ccxmx51.h
> index 3feacac..ef40b7f 100644
> --- a/arch/arm/boards/ccxmx51/ccxmx51.h
> +++ b/arch/arm/boards/ccxmx51/ccxmx51.h
> @@ -23,7 +23,6 @@ struct ccxmx51_hwid {
>  
>  struct ccxmx51_ident {
>  	const char	*id_string;
> -	const int	mem_sz;
>  	const char	industrial;
>  	const char	eth0;
>  	const char	eth1;
> -- 
> 1.7.3.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
