Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCeF1-0005PH-GY
 for barebox@lists.infradead.org; Thu, 18 Feb 2021 08:00:52 +0000
Date: Thu, 18 Feb 2021 09:00:42 +0100 (CET)
From: Marcel Hellwig <barebox+mailing@cookiesoft.de>
Message-ID: <1708069310.14913.1613635242547@office.mailbox.org>
In-Reply-To: <20210217131702.GD19583@pengutronix.de>
References: <1474779923.1916.1613564552090@office.mailbox.org>
 <20210217123517.GC19583@pengutronix.de>
 <635893483.2404.1613565899806@office.mailbox.org>
 <20210217131702.GD19583@pengutronix.de>
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

I have a slight problem here:
This is what I think:

Because the memtest gets called in the init routine, the `ctrl` is completly ignored, at least I can't interrupt it nor the LED blinks.
But if I insert `poller_call`, the led blinks, but the memtest is painfully slow (like 10x slower at least).

I don't think that this will work for me, but I have to accept, that the LED doesn't blink while doing a memtest.

But an interruptable memtest would be nice at least for the user, so my patch I sent yesterday still remains ;)

Greetings,
Marcel

> Sascha Hauer <sha@pengutronix.de> hat am 17.02.2021 14:17 geschrieben:
> 
>  
> On Wed, Feb 17, 2021 at 01:44:59PM +0100, barebox+mailing@cookiesoft.de wrote:
> > Hey Sasha,
> > 
> > thanks for the answer.
> > 
> > > barebox doesn't support interrupts. LED blinking is done in pollers
> > 
> > That explains the obversation.
> > 
> > > add a ctrlc() call to your memtester code inside some loop.
> > > That will cause the poller to run.
> > 
> > I'm not entirely sure, if I understand you correctly or you didn't understand me.
> > 
> > I use the memtest command[0] from barebox so there is nothing custom written or any loop that I can control.
> 
> Ok, somehow I thought you added some memtest code yourself. I was
> mistaken.
> 
> > However, if I understand you correctly one could add the `ctrlc`
> > command in all of these[1] three loops inside the
> > `mem_test_moving_inversions` function. Is that correct? 
> 
> Yes, correct.
> 
> > Or is there an
> > other way to not listen on ctrl+c but let the poller itself run?
> 
> You could add poller_call() directly. The idea of adding ctrlc() is just
> that this way you could also make the memtest interruptible for the
> user.
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
