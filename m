Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5MAL-0002af-TY
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 21:46:10 +0000
Date: Thu, 10 Jul 2014 23:45:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140710214547.GI23235@pengutronix.de>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
 <1404981199-21293-6-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404981199-21293-6-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 5/5] commands: add hwclock
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 10, 2014 at 12:33:19PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/Kconfig   |  8 ++++++++
>  commands/Makefile  |  1 +
>  commands/hwclock.c | 37 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 46 insertions(+)
> 
> diff --git a/commands/Kconfig b/commands/Kconfig
> index 61816f5..a594f7c 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1691,6 +1691,14 @@ config CMD_GPIO
>  
>  	  Usage: gpio_set_value GPIO VALUE
>  
> +config CMD_HWCLOCK
> +	bool
> +	depends on RTC_CLASS
> +	prompt "hwclock command"
> +	default y
> +	help
> +	  The lspci command allows to query or set the hardware clock (RTC).

lspci? ;)

> +static int do_hwclock(int argc, char *argv[])
> +{
> +	struct rtc_device *r;
> +	struct rtc_time tm;
> +	char *rtc_name;
> +
> +	rtc_name = "rtc0";
> +
> +	if (argc > 1)
> +		rtc_name = argv[1];
> +
> +	r = rtc_lookup(rtc_name);
> +	if (IS_ERR(r))
> +		return PTR_ERR(r);
> +
> +	rtc_read_time(r, &tm);
> +
> +	printf("%02d:%02d:%02d %02d-%02d-%04d\n",
> +		tm.tm_hour, tm.tm_min, tm.tm_sec,
> +		tm.tm_mday, tm.tm_mon, tm.tm_year);
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_START(hwclock)
> +	.cmd		= do_hwclock,
> +	BAREBOX_CMD_DESC("query or set the hardware clock (RTC)")

This initial version doesn't allow to set the time.

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
