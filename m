Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCMhU-0004S5-Bx
 for barebox@lists.infradead.org; Wed, 17 Feb 2021 13:17:06 +0000
Date: Wed, 17 Feb 2021 14:17:02 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20210217131702.GD19583@pengutronix.de>
References: <1474779923.1916.1613564552090@office.mailbox.org>
 <20210217123517.GC19583@pengutronix.de>
 <635893483.2404.1613565899806@office.mailbox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <635893483.2404.1613565899806@office.mailbox.org>
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

On Wed, Feb 17, 2021 at 01:44:59PM +0100, barebox+mailing@cookiesoft.de wrote:
> Hey Sasha,
> 
> thanks for the answer.
> 
> > barebox doesn't support interrupts. LED blinking is done in pollers
> 
> That explains the obversation.
> 
> > add a ctrlc() call to your memtester code inside some loop.
> > That will cause the poller to run.
> 
> I'm not entirely sure, if I understand you correctly or you didn't understand me.
> 
> I use the memtest command[0] from barebox so there is nothing custom written or any loop that I can control.

Ok, somehow I thought you added some memtest code yourself. I was
mistaken.

> However, if I understand you correctly one could add the `ctrlc`
> command in all of these[1] three loops inside the
> `mem_test_moving_inversions` function. Is that correct? 

Yes, correct.

> Or is there an
> other way to not listen on ctrl+c but let the poller itself run?

You could add poller_call() directly. The idea of adding ctrlc() is just
that this way you could also make the memtest interruptible for the
user.

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
