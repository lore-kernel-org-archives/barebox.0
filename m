Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f177.google.com ([209.85.212.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1ODy0h-00078N-Np
	for barebox@lists.infradead.org; Mon, 17 May 2010 10:57:24 +0000
Received: by pxi1 with SMTP id 1so2546759pxi.36
	for <barebox@lists.infradead.org>; Mon, 17 May 2010 03:57:21 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
References: <4BEBD0FD.6090504@erwinrol.com>	<00b101caf30b$85b54640$911fd2c0$@cpdesign.com.au>	<4BECF779.50306@erwinrol.com>
	<20100517083633.GI31199@pengutronix.de>
In-Reply-To: <20100517083633.GI31199@pengutronix.de>
Date: Mon, 17 May 2010 20:57:18 +1000
Message-ID: <013001caf5af$ba7b5fd0$2f721f70$@cpdesign.com.au>
MIME-Version: 1.0
Content-language: en-au
Reply-To: marc@cpdesign.com.au
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
Subject: RE: Watchdog support
To: 'Sascha Hauer' <s.hauer@pengutronix.de>, 'Erwin Rol' <mailinglists@erwinrol.com>
Cc: barebox@lists.infradead.org

Hi,

> > Does barebox have a standard API to trigger and program a watchdog ?
> 
> No, we do not have this atm.
> 
> Are you looking for real watchdog support, i.e. 'reset watchdog when my
> system is in a sane state' or do you have a piece of hardware on which you
> have to reset the watchdog frequently because you can't disable it in
> software?
> 
> For the first case I propose a 'watchdog' command with an underlying
> reset_watchdog() function which resets the watchdog.

IMHO the use of 'reset' with watchdogs is ambiguous. Typically, the primary
use is to _prevent_ the watchdog from attacking you (the system resetting),
but sometimes it is also used to _cause_ the reset, so that the system
restarts properly. (suicide and resurrection. I suck at analogies.)
So, that said, I'd suggest watchdog_ping() or watchdog_feed() as functions
for the first usage, and save watchdog_reset() for the second. (or
watchdog_trigger_reset() etc)

Just my 0.02c. In the end, I don't think I'll be the one writing it, so I
won't be the one designing it. :)

> For the latter case you don't have another choice but to scatter the code
with
> RESET_WATCHDOG macros like U-Boot does.

Or put it in the timer interrupt :)
That was, of course, a joke.

Cheers
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
