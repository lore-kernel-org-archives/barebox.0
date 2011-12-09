Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYykR-0002wW-2G
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 11:36:15 +0000
Received: from mediacenter.hi.pengutronix.de ([2001:6f8:1178:2::65])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYykK-0002hr-TM
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:36:08 +0100
Received: from mgr by mediacenter.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1RYykK-0002O2-S9
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 12:36:08 +0100
Date: Fri, 9 Dec 2011 12:36:08 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
Message-ID: <20111209113608.GJ8203@pengutronix.de>
References: <1323187817-28668-5-git-send-email-m.grzeschik@pengutronix.de>
 <20111209112842.GF8203@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111209112842.GF8203@pengutronix.de>
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
Subject: Re: [PATCH v2] at91sam9260_devices: add flag to change ETX{2,3}
 pincfg on add_device_eth
To: barebox@lists.infradead.org

Hi,

On Fri, Dec 09, 2011 at 12:28:42PM +0100, Michael Grzeschik wrote:
> diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> index 546fe90..5e23688 100644
> --- a/arch/arm/mach-at91/include/mach/board.h
> +++ b/arch/arm/mach-at91/include/mach/board.h
> @@ -51,6 +51,7 @@ void at91_add_device_nand(struct atmel_nand_data *data);
>  #define AT91SAM_ETHER_MII		(0 << 0)
>  #define AT91SAM_ETHER_RMII		(1 << 0)
>  #define AT91SAM_ETHER_FORCE_LINK	(1 << 1)
> +#define AT91SAM_ETX2_ETX3_ALTERNATIVE	(2 << 0)
>  
>  struct at91_ether_platform_data {
>  	unsigned int flags;
> -- 
> 1.7.7.3

This Hunk was wrong and has already been fixed with commit e72399a

-#define AT91SAM_ETX2_ETX3_ALTERNATIVE  (2 << 0)
+#define AT91SAM_ETX2_ETX3_ALTERNATIVE  (1 << 2)

Regards,
Michael Grzeschik

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
