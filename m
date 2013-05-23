Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfV0T-0003oY-V2
 for barebox@lists.infradead.org; Thu, 23 May 2013 12:52:34 +0000
Date: Thu, 23 May 2013 14:52:00 +0200
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Message-ID: <20130523125200.GE8595@lukather>
References: <20130523094655.GD8595@lukather>
 <1369305856.4961.5.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1369305856.4961.5.camel@coredoba.hi.pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: 2013.05 breaking Linux boot on imx28 CFA-10036
To: Jan =?iso-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Thu, May 23, 2013 at 12:44:16PM +0200, Jan L=FCbbe wrote:
> On Thu, 2013-05-23 at 11:46 +0200, Maxime Ripard wrote:
> > I've tested lately both 2013.05.0 and the master of Barebox on the imx28
> > cfa-10036 board we have.
> > =

> > Everything works fine with 2013.04.0.
> > =

> > The issue I have is that Barebox in itself works fine, however, Linux
> > fails to boot after it has been started by Barebox, quite early and
> > badly:
> > =

> > http://code.bulix.org/s3z010-83581
> =

> Could you try the not-yet-released stable branch?
> http://git.pengutronix.de/?p=3Dbarebox.git;a=3Dshortlog;h=3Drefs/heads/st=
able/v2013.05

Hmm, I somehow overlooked that branch.
It works now, thanks!

Maxime

-- =

Maxime Ripard, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
