Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout-p-202.mailbox.org ([80.241.56.172])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCMCY-0002eA-Kc
 for barebox@lists.infradead.org; Wed, 17 Feb 2021 12:45:08 +0000
Date: Wed, 17 Feb 2021 13:44:59 +0100 (CET)
From: barebox+mailing@cookiesoft.de
Message-ID: <635893483.2404.1613565899806@office.mailbox.org>
In-Reply-To: <20210217123517.GC19583@pengutronix.de>
References: <1474779923.1916.1613564552090@office.mailbox.org>
 <20210217123517.GC19583@pengutronix.de>
MIME-Version: 1.0
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
To: Sascha Hauer <sha@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hey Sasha,

thanks for the answer.

> barebox doesn't support interrupts. LED blinking is done in pollers

That explains the obversation.

> add a ctrlc() call to your memtester code inside some loop.
> That will cause the poller to run.

I'm not entirely sure, if I understand you correctly or you didn't understand me.

I use the memtest command[0] from barebox so there is nothing custom written or any loop that I can control.
However, if I understand you correctly one could add the `ctrlc` command in all of these[1] three loops inside the `mem_test_moving_inversions` function. Is that correct? Or is there an other way to not listen on ctrl+c but let the poller itself run?

Greetings,
Marcel

[0]: https://barebox.org/doc/latest/commands/mem/memtest.html
[1]: https://git.pengutronix.de/cgit/barebox/tree/common/memtest.c#n387

> Sascha Hauer <sha@pengutronix.de> hat am 17.02.2021 13:35 geschrieben:
> 
>  
> On Wed, Feb 17, 2021 at 01:22:32PM +0100, barebox+mailing@cookiesoft.de wrote:
> > Hey everyone,
> > 
> > we use the barebox bootloader in on of our products.
> > Because of some norms we need to make a memtest of the RAM. To do that, we use the provided memtest tool.
> > So one of our our scripts is `/env/init/10-memtest`, which has just `memtest -tc` in it.
> > 
> > 
> > The other script is `/env/init/05-heartbeat` which contains 
> > 
> > #!/bin/sh
> > 
> > led -b board-red 100 1000
> > 
> > So, at first the 05 script is executed, afterwards the memtest script.
> > 
> > The problem is, that during the memtest the led does not blink, but flashes red the whole time. After the memtest is done, the blinking is done perfectly fine, but not during the memtest.
> > 
> > I create a small video to showcase this exact problem: https://imgur.com/a/9sxHTcm
> > 
> > Can anybody tell me why the barebox isn't able to keep up with the blinking as well as how to mitigate that?
> 
> barebox doesn't support interrupts. LED blinking is done in pollers,
> that are little function that run each time a timing related function is
> called. What you can do is to add for example add a ctrlc() call to your
> memtester code inside some loop. That will cause the poller to run.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
