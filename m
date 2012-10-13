Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TN6IX-0001Ku-R9
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 18:18:55 +0000
Date: Sat, 13 Oct 2012 20:18:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121013181849.GZ27665@pengutronix.de>
References: <20121013134622.GM13639@game.jcrosoft.org>
 <1350136162-22061-1-git-send-email-plagnioj@jcrosoft.com>
 <1350136162-22061-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350136162-22061-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/4] reset_resource: add wakeup source
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Oct 13, 2012 at 03:49:21PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This will allow to known the source of wakeup
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  common/reset_source.c  |   17 +++++++++++++++++
>  include/reset_source.h |   11 +++++++++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/common/reset_source.c b/common/reset_source.c
> index ec1afc0..4791d29 100644
> --- a/common/reset_source.c
> +++ b/common/reset_source.c
> @@ -34,11 +34,28 @@ void set_reset_source(enum reset_src_type st)
>  }
>  EXPORT_SYMBOL(set_reset_source);
>  
> +static const char * const wakeup_src_names[] = {
> +	[WAKEUP_UKWNOWN] = "unknown",
> +	[WAKEUP_POWER] = "power",
> +	[WAKEUP_RTC] = "rtc",
> +	[WAKEUP_TIMER] = "timer",
> +	[WAKEUP_USER] = "user",
> +	[WAKEUP_WOL] = "wakeup on lan",
> +};

I'm unsure we need a second array for this. I mean RTC can't be seen as
a reset source, but with a bit of good will the watchdog for example can
be seen as a wakeup source. We have:

	WAKEUP_POWER
	WAKEUP_RTC
	WAKEUP_TIMER
	WAKEUP_USER
	WAKEUP_WOL
	RESET_POWER
	RESET_RESET
	RESET_WATCHDOG
	RESET_WAKEUP
	RESET_JTAG

WAKEUP_POWER and RESET_POWER are duplicates, RESET_WAKEUP is just an
indicator that we should look into the WAKEUP_* array. The rest are all
mutually exclusive. So we would have:

	WAKEUP_POWER
	WAKEUP_RTC
	WAKEUP_TIMER
	WAKEUP_USER
	WAKEUP_WOL
	WAKEUP_RESET
	WAKEUP_WATCHDOG
	WAKEUP_JTAG

Wouldn't that be better?

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
