Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5TzX-0004bj-1M
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 06:07:31 +0000
Date: Fri, 11 Jul 2014 08:07:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140711060707.GL23235@pengutronix.de>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
 <1404981199-21293-6-git-send-email-antonynpavlov@gmail.com>
 <20140710214547.GI23235@pengutronix.de>
 <20140711095936.afd2e87610ee74eb2921309f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140711095936.afd2e87610ee74eb2921309f@gmail.com>
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

On Fri, Jul 11, 2014 at 09:59:36AM +0400, Antony Pavlov wrote:
> On Thu, 10 Jul 2014 23:45:47 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > > +BAREBOX_CMD_START(hwclock)
> > > +	.cmd		= do_hwclock,
> > > +	BAREBOX_CMD_DESC("query or set the hardware clock (RTC)")
> > 
> > This initial version doesn't allow to set the time.
> 
> I have no idea about simple and elegant solution for setting clock :(
> 
> My hwclock man page show me an example:
> 
>  hwclock --set --date="2011-08-14 16:45:05"
> 
> I'll try to find some ready-to-use strptime-like function (e.g. in uClibc).

The format which the date man page describes as "coordinated universal
time" seems quite easy to parse. It's [MMDDhhmm[[CC]YY][.ss]], so
071107572014 for now.

> 
> Also there is no epoch handling.
> 
> May be it's better to drop hwclock clock setting in the inital rtc support series?

I think we should have set time support from the beginning. I mean
setting the time is an important part of testing the drivers before
merging them.

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
