Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StCKZ-0002ZX-7j
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 06:41:24 +0000
Date: Mon, 23 Jul 2012 08:41:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723064121.GW30009@pengutronix.de>
References: <1342812585-22017-1-git-send-email-jbe@pengutronix.de>
 <1342812585-22017-8-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342812585-22017-8-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 7/9] Samsung/serial: move the decision about an improved
 UART into Kconfig
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jul 20, 2012 at 09:29:43PM +0200, Juergen Beisert wrote:
> More or less just cosmetic (removing ifdefs!).
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> ---
>  arch/arm/mach-samsung/Kconfig                     |    5 +++++
>  arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h |    5 +++--
>  drivers/serial/serial_s3c.c                       |   16 ++++++++--------
>  3 files changed, 16 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/mach-samsung/Kconfig b/arch/arm/mach-samsung/Kconfig
> index c60f5ed..37d1aa3 100644
> --- a/arch/arm/mach-samsung/Kconfig
> +++ b/arch/arm/mach-samsung/Kconfig
> @@ -18,6 +18,9 @@ config ARCH_BAREBOX_MAX_BARE_INIT_SIZE
>  	hex
>  	default 0x1ff0 if ARCH_S5PCxx
>  
> +config SAMSUNG_IMPROVED_UART
> +	bool

This is a Samsung UART specific define, so it should be in
drivers/serial/Kconfig and be renamed to
DRIVER_SERIAL_S3C_IMPROVED.

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
