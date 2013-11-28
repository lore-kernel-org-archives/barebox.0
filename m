Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vlvtu-0003Mr-9Z
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 07:20:39 +0000
Date: Thu, 28 Nov 2013 08:20:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131128072013.GA24559@pengutronix.de>
References: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
 <20131127130236.GX24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D34677B@AUTOSERVER1.auto.local>
 <20131127211531.49e08d7f@e6520eb>
 <20131127205422.GY24559@pengutronix.de>
 <20131128041646.GA317@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131128041646.GA317@omega>
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
Subject: Re: Barebox on Karo TX25
To: Alexander Aring <alex.aring@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Nov 28, 2013 at 05:16:46AM +0100, Alexander Aring wrote:
> Hi Sascha,
> =

> On Wed, Nov 27, 2013 at 09:54:22PM +0100, Sascha Hauer wrote:
> > On Wed, Nov 27, 2013 at 09:15:31PM +0100, Eric B=E9nard wrote:
> > > Hi John,
> > > =

> > > Le Wed, 27 Nov 2013 19:45:09 +0000,
> > > John Parker <John.Parker@lucyautomation.co.uk> a =E9crit :
> > > =

> > > > Oh, and just notices that after a few moments barebox hangs, no lon=
ger responding to input!!
> > > > =

> > > > Any ideas?
> > > > =

> > > IIRC watchdog is enabled when you are using the serial or USB boot.
> > =

> > In this case it should be possible to enable the watchdog command
> > and trigger it regularly to keep the board alive. AFAIK the watchdog
> =

> how would you do that in barebox? We don't have interrupts/parallel
> things. I mean where do you want to trigger the watchdog command, in
> the main loop (function "barebox_main" in common/startup.c) of barebox?

I meant for debugging whether it's really the watchdog that hangs the
board.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
