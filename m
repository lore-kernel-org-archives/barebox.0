Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkjf-0003Kn-Tk
 for barebox@lists.infradead.org; Mon, 16 Mar 2020 08:04:33 +0000
Date: Mon, 16 Mar 2020 09:04:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200316080427.GL3335@pengutronix.de>
References: <20200312083555.10793-1-s.hauer@pengutronix.de>
 <20200312083555.10793-20-s.hauer@pengutronix.de>
 <20200312223615.GA11963@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312223615.GA11963@emlix.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 19/19] poller: Allow to run pollers inside of pollers
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

On Thu, Mar 12, 2020 at 11:36:15PM +0100, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> On Thu, Mar 12, 2020 at 09:35:55AM +0100, Sascha Hauer wrote:
> > This adds a slice to each poller which is acquired before the poller is
> > executed. This allows us to run pollers inside of other pollers.
> =

> ok, so in the UDP fastboot case there is now a poller that receives
> packets and a poller that executes commands and needs packets to
> be received to send more than one message. How do I make sure that
> the fastboot poller will never be called inside the net poller since
> that would cause a deadlock?
> =

> My initial idea was to keep the poller_active variable and increase
> it for each poller execution level. The fastboot poller could then
> return immediately when it is called from within any other poller.
> =

> Another possible solution could be to add a dependency on the net
> poller slice to the fastboot poller slice. Then the net poller
> can execute from within the fastboot poller, but not the other way
> around. A similar dependency would have to be added for the watchdog
> poller_async and the poller that will be introduced for sending
> keep-alives.
> =

> The first solution should be easier to implement and would have
> the benefit that all resources are available when a fastboot command
> executes.

I wonder if we need some idle slice, a slice that is locked once we are
outside of some idle loop (shell is waiting for input). In the end the
fastboot code may only call long running commands when the idle slice is
not locked.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
