Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X98hr-0007XR-QZ
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 08:12:24 +0000
Date: Mon, 21 Jul 2014 10:11:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140721081150.GT23235@pengutronix.de>
References: <1405370916-6828-1-git-send-email-antonynpavlov@gmail.com>
 <1405370916-6828-5-git-send-email-antonynpavlov@gmail.com>
 <20140718054413.GL23235@pengutronix.de>
 <20140718113626.19aba6e8e971f15944a6ff93@gmail.com>
 <CAOpc7mEHJFktB5v=uRqLUWgEdzHA05KmFmC3_ix+gfooO-0MKw@mail.gmail.com>
 <20140720095522.41f6874de19b368a29573cf7@gmail.com>
 <20140721064106.GS23235@pengutronix.de>
 <20140721111025.4a0d6d2c1ef5977e1d45f152@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140721111025.4a0d6d2c1ef5977e1d45f152@gmail.com>
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
Subject: Re: [RFC v3 4/5] commands: add hwclock
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jul 21, 2014 at 11:10:25AM +0400, Antony Pavlov wrote:
> On Mon, 21 Jul 2014 08:41:06 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Sun, Jul 20, 2014 at 09:55:22AM +0400, Antony Pavlov wrote:
> > > On Sat, 19 Jul 2014 21:02:22 +0200
> > > Holger Schurig <holgerschurig@gmail.com> wrote:
> > > 
> > > > I'd prefer a more logical format (and that is also in the help).
> > > > However, in this case I wouldn't name the command "hwclock", but maybe
> > > > "setclock".
> > > 
> > > hwclock allows to use a logical format!
> > > 
> > > e.g. here is a quote from hwclock manpage:
> > > 
> > >      --date=date_string
> > >               You  need this option if you specify the --set or --predict functions, otherwise
> > >               it is ignored.  It specifies the time to which to set the Hardware Clock, or the
> > >               time  for which to predict the Hardware Clock reading.  The value of this option
> > >               is an argument to the date(1) program.  For example:
> > > 
> > >                   hwclock --set --date="2011-08-14 16:45:05"
> > 
> > Is this format easy enough to parse? If yes, that sounds like a good
> > format.
> 
> So you have no objections on using a logical format :)

No, not at all ;)

> 
> I can make a small review on conventional date_string formats so we can discuss most appropriate one.

Nice, thanks.

I think we can always add additional formats using different command
line switches, but the better we chose our default format the lesser
need we'll have to add additional formats.

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
