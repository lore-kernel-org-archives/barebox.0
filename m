Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oz88y-0007VU-42
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 13:16:53 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1Oz88w-00016U-H7
	for barebox@lists.infradead.org; Fri, 24 Sep 2010 15:16:50 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 24 Sep 2010 15:15:27 +0200
References: <201009241455.13828.jbe@pengutronix.de>
In-Reply-To: <201009241455.13828.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201009241515.27635.jbe@pengutronix.de>
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
Subject: Re: [PATCH] Fix watchdog's register size for the i.MX27 CPU
To: barebox@lists.infradead.org

Juergen Beisert wrote:
> commit adbc97930ed1e2259f779732540583cbef810d68
> Author: Juergen Beisert <jbe@pengutronix.de>
> Date:   Fri Sep 24 14:51:42 2010 +0200
>
>     Fix watchdog's register size for the i.MX27 CPU
>
>     The watchdog registers on the i.MX27 CPU are 16 bit registers. This
> patch just fixes the access macros.
>
>     Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
>
> diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h
> b/arch/arm/mach-imx/include/mach/imx27-regs.h
> index 8d0bcda..d95379c 100644
> --- a/arch/arm/mach-imx/include/mach/imx27-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
> @@ -83,9 +83,9 @@
>  #include "esdctl.h"
>
>  /* Watchdog Registers*/
> -#define WCR  __REG(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
> -#define WSR  __REG(IMX_WDT_BASE + 0x04) /* Watchdog Service Register */
> -#define WSTR __REG(IMX_WDT_BASE + 0x08) /* Watchdog Status Register  */
> +#define WCR  __REG16(IMX_WDT_BASE + 0x00) /* Watchdog Control Register */
> +#define WSR  __REG16(IMX_WDT_BASE + 0x04) /* Watchdog Service Register */
> +#define WSTR __REG16(IMX_WDT_BASE + 0x08) /* Watchdog Status Register  */
>
>  /* important definition of some bits of WCR */
>  #define WCR_WDE 0x04

Ups, sorry incomplete. Also the offsets must be changeed. Will resend.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
