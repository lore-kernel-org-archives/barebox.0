Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfRj4-0006by-NR
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 08:50:07 +0000
Date: Mon, 3 Dec 2012 09:50:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121203085005.GF10369@pengutronix.de>
References: <201211301214.05014.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201211301214.05014.jbe@pengutronix.de>
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
Subject: Re: [Patch] ARM/MXS/i.MX28: distinguish POR and wake-up event
 correctly
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 30, 2012 at 12:14:04PM +0100, Juergen Beisert wrote:
> When the built-in RTC in the i.MX28 is programmed to wake-up the SoC, the RTC
> reports two events: RST and WAKE. RST is okay in this case, because the PMIC
> was really powered down. But the real event is the WAKE from the RTC and
> should have precedence over the RST event. So, report the WAKE event for this
> special case.
> 
> Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

Applied, thanks

Sascha

> 
> diff --git a/drivers/watchdog/im28wd.c b/drivers/watchdog/im28wd.c
> index ca32a72..bc19369 100644
> --- a/drivers/watchdog/im28wd.c
> +++ b/drivers/watchdog/im28wd.c
> @@ -82,6 +82,17 @@ static void __maybe_unused imx28_detect_reset_source(const struct imx28_wd *p)
>  	if (reg & MXS_RTC_PERSISTENT0_EXT_RST) {
>  		writel(MXS_RTC_PERSISTENT0_EXT_RST,
>  			p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
> +		/*
> +		 * if the RTC has woken up the SoC, additionally the ALARM_WAKE
> +		 * bit is set. This bit should have precedence, because it
> +		 * reports the real event, why we are here.
> +		 */
> +		if (reg & MXS_RTC_PERSISTENT0_ALARM_WAKE) {
> +			writel(MXS_RTC_PERSISTENT0_ALARM_WAKE,
> +				p->regs + MXS_RTC_PERSISTENT0 + MXS_RTC_CLR_ADDR);
> +			set_reset_source(RESET_WKE);
> +			return;
> +		}
>  		set_reset_source(RESET_POR);
>  		return;
>  	}
> 
> 
> -- 
> Pengutronix e.K.                              | Juergen Beisert             |
> Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |
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
