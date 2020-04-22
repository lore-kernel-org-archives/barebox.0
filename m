Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRA0D-00032Y-0i
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:41:02 +0000
Date: Wed, 22 Apr 2020 09:40:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200422074059.GK1694@pengutronix.de>
References: <20200312083555.10793-1-s.hauer@pengutronix.de>
 <20200312083555.10793-20-s.hauer@pengutronix.de>
 <20200312223615.GA11963@emlix.com>
 <20200316080427.GL3335@pengutronix.de>
 <2e7c11ab-a83f-ba67-50f5-9e6b88b7595d@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2e7c11ab-a83f-ba67-50f5-9e6b88b7595d@emlix.com>
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

Hi Daniel,

On Tue, Apr 07, 2020 at 09:28:26PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 03/16/20 um 09:04 schrieb Sascha Hauer:
> > On Thu, Mar 12, 2020 at 11:36:15PM +0100, Daniel Gl=F6ckner wrote:
> >> On Thu, Mar 12, 2020 at 09:35:55AM +0100, Sascha Hauer wrote:
> >>> This adds a slice to each poller which is acquired before the poller =
is
> >>> executed. This allows us to run pollers inside of other pollers.
> >>
> >> ok, so in the UDP fastboot case there is now a poller that receives
> >> packets and a poller that executes commands and needs packets to
> >> be received to send more than one message. How do I make sure that
> >> the fastboot poller will never be called inside the net poller since
> >> that would cause a deadlock?
> [...]
> > I wonder if we need some idle slice, a slice that is locked once we are
> > outside of some idle loop (shell is waiting for input). In the end the
> > fastboot code may only call long running commands when the idle slice is
> > not locked.
> =

> RATP has a similar requirement and tries to fulfill it by calling
> barebox_ratp_command_run from within readline. I would also like to be
> able to run fastboot commands during console_countdown (fb_run_command
> already calls console_countdown_abort).
> =

> So how about calling slice_add and the initial slice_acquire for the idle
> slice within a pure_initcall and then temporarily dropping the acquired
> count inside readline and console_countdown? It should also be temporarily
> increased inside poller_call (after checking the poller's slice),
> execute_command, and binfmt_run in case someone wants to use the readline
> or timeout commands in code called from there.

Sounds good.

For the fastboot case the incoming commands will never be received in
the idle context, so we will have to queue the commands until we can
pick them up in the idle context. Well, a "queue" with one entry might
be enough already.

> =

> Btw., what are your plans for merging this patch set?

Before I merge this series want to have the idle slice issue solved. I
don't want to risk merging something that we have to completely
restructure soon.
Do you have any resources to look into the idle slice?

BTW I have just rebased the series on latest master. I already merged
some of the patches and there are some small merge conflicts. I'll
resend the remaining series in a moment.

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
