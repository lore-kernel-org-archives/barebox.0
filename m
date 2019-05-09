Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOmdb-0005hs-Ip
 for barebox@lists.infradead.org; Thu, 09 May 2019 17:15:21 +0000
Date: Thu, 9 May 2019 19:15:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190509171517.eprn3vtmli7vccsb@pengutronix.de>
References: <20190509064200.14871-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509064200.14871-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands/hwclock: align -n option help
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 09, 2019 at 09:42:00AM +0300, Antony Pavlov wrote:
> Help string for hwclock -n option isn't aligned:
> 
>   barebox@barebox sandbox:/ help hwclock
> 
>   hwclock - query or set the hardware clock (RTC)
> 
>   Options:
>           -f NAME                         RTC device name (default rtc0)
>           -e VARNAME                      store RTC readout into variable VARNAME
>           -n NTPSERVER            set RTC from NTP server
>           -s ccyymmddHHMM[.SS]            set time
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/hwclock.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/hwclock.c b/commands/hwclock.c
> index 5073618675..1b5c2cd100 100644
> --- a/commands/hwclock.c
> +++ b/commands/hwclock.c
> @@ -175,7 +175,7 @@ BAREBOX_CMD_HELP_START(hwclock)
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-f NAME\t\t\t", "RTC device name (default rtc0)")
>  BAREBOX_CMD_HELP_OPT ("-e VARNAME\t\t", "store RTC readout into variable VARNAME")
> -BAREBOX_CMD_HELP_OPT ("-n NTPSERVER\t", "set RTC from NTP server")
> +BAREBOX_CMD_HELP_OPT ("-n NTPSERVER\t\t", "set RTC from NTP server")
>  BAREBOX_CMD_HELP_OPT ("-s ccyymmddHHMM[.SS]\t", "set time")
>  BAREBOX_CMD_HELP_END
>  
> -- 
> 2.20.1
> 
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
