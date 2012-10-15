Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNfeu-0004t1-TN
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 08:04:21 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1TNfes-0001Gr-1w
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 10:04:18 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1TNfer-0001He-Sr
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 10:04:17 +0200
Message-ID: <1350288257.3538.3.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 15 Oct 2012 10:04:17 +0200
In-Reply-To: <1350136162-22061-3-git-send-email-plagnioj@jcrosoft.com>
References: <20121013134622.GM13639@game.jcrosoft.org>
 <1350136162-22061-1-git-send-email-plagnioj@jcrosoft.com>
 <1350136162-22061-3-git-send-email-plagnioj@jcrosoft.com>
Mime-Version: 1.0
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
To: barebox@lists.infradead.org

On Sat, 2012-10-13 at 15:49 +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> +static const char * const wakeup_src_names[] = {
> +	[WAKEUP_UKWNOWN] = "unknown",
> +	[WAKEUP_POWER] = "power",
> +	[WAKEUP_RTC] = "rtc",
> +	[WAKEUP_TIMER] = "timer",
> +	[WAKEUP_USER] = "user",
> +	[WAKEUP_WOL] = "wakeup on lan",
> +};
> +
> +void set_wakeup_source(enum wakeup_src_type st)
> +{
> +	setenv("global.system.wakeup", wakeup_src_names[st]);
> +}
> +EXPORT_SYMBOL(set_reset_source);

The EXPORT_SYMBOL should be for _wakeup_ instead of _reset_.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
