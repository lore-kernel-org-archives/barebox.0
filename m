Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XvKWi-0007j2-BA
 for barebox@lists.infradead.org; Mon, 01 Dec 2014 06:32:05 +0000
Date: Mon, 1 Dec 2014 07:31:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141201063140.GB30369@pengutronix.de>
References: <1417180052-16824-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1417180052-16824-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] clocksource: dummy: don't show message on first cs read
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Nov 28, 2014 at 04:07:32PM +0300, Antony Pavlov wrote:
> In the commit
> 
>     commit 96cae61eba199b9c3f5451f293cf60db2b535164
>     Author: Sascha Hauer <s.hauer@pengutronix.de>
>     Date:   Tue Sep 30 08:25:55 2014 +0200
> 
>         clock: Add a variable with the first timestamp after startup
> 
>         For measuring the startup time it's useful to save the first
>         timestamp after the clocksource has been registered.
> 
> the behaviour of clocksource subsystem is changed: every registered
> clocksource is called at least once. So the dummy clocksource (if enabled)
> _ALWAYS_ prints a confusing 'Using dummy clocksource' warning.
> 
> This patch fixes the situation: now the 'Using dummy clocksource'
> warning is printed only if the dummy clocksource is called second time.

I don't like this very much. The dummy clocksource expects some certain
behaviour of the common clocksource code and works around this when it
changes. How about integrating the dummy clocksource into the core
instead, like

uint64_t get_time_ns(void)
{
	if (!current_clock)
		return dummy_counter++;

	...
}

Then add a initcall which warns later if we still don't have a valid
clocksource?

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
