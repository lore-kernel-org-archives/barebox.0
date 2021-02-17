Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCM37-00028l-4N
 for barebox@lists.infradead.org; Wed, 17 Feb 2021 12:35:21 +0000
Date: Wed, 17 Feb 2021 13:35:17 +0100
Message-ID: <20210217123517.GC19583@pengutronix.de>
References: <1474779923.1916.1613564552090@office.mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1474779923.1916.1613564552090@office.mailbox.org>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: Heartbeat LED during init script
To: barebox+mailing@cookiesoft.de
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Feb 17, 2021 at 01:22:32PM +0100, barebox+mailing@cookiesoft.de wrote:
> Hey everyone,
> 
> we use the barebox bootloader in on of our products.
> Because of some norms we need to make a memtest of the RAM. To do that, we use the provided memtest tool.
> So one of our our scripts is `/env/init/10-memtest`, which has just `memtest -tc` in it.
> 
> 
> The other script is `/env/init/05-heartbeat` which contains 
> 
> #!/bin/sh
> 
> led -b board-red 100 1000
> 
> So, at first the 05 script is executed, afterwards the memtest script.
> 
> The problem is, that during the memtest the led does not blink, but flashes red the whole time. After the memtest is done, the blinking is done perfectly fine, but not during the memtest.
> 
> I create a small video to showcase this exact problem: https://imgur.com/a/9sxHTcm
> 
> Can anybody tell me why the barebox isn't able to keep up with the blinking as well as how to mitigate that?

barebox doesn't support interrupts. LED blinking is done in pollers,
that are little function that run each time a timing related function is
called. What you can do is to add for example add a ctrlc() call to your
memtester code inside some loop. That will cause the poller to run.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
