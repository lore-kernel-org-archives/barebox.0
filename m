Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PIdce-0002PC-GK
	for barebox@lists.infradead.org; Wed, 17 Nov 2010 08:44:09 +0000
Date: Wed, 17 Nov 2010 09:44:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101117084405.GR6017@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
	<20101101131946.GW6017@pengutronix.de>
	<201011151057.01538.jbe@pengutronix.de>
	<AANLkTi=QpyH4imNRBkwQekdq3177E5yJiAFAM5jMH=jb@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi=QpyH4imNRBkwQekdq3177E5yJiAFAM5jMH=jb@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv2] Add dynamic video initialization to barebox
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 15, 2010 at 11:25:53AM +0100, Belisko Marek wrote:
> Hi,
> =

> On Mon, Nov 15, 2010 at 10:57 AM, Juergen Beisert <jbe@pengutronix.de> wr=
ote:
> > Hi Sascha,
> >
> > Sascha Hauer wrote:
> >> On Tue, Oct 26, 2010 at 01:31:36PM +0200, Juergen Beisert wrote:
> >> > Currently barebox uses a fixed videomode setup. Everything is compil=
ed
> >> > in. This change adds the possibility to select a videomode according=
 to a
> >> > connected display at runtime. The current behaviour is still present=
 if
> >> > not otherwise configured. If configured for runtime setup, initializ=
ation
> >> > of the video hardware will be delayed until the required videomode w=
ill
> >> > be selected from the shell code. If more than one videomode is suppo=
rted
> >> > by the platform, running the 'devinfo' command on the framebuffer de=
vice
> >> > shows the supported videomode list. After selecting the videomode, t=
he
> >> > output can be enabled.
> >>
> >> General remarks about this series:
> >>
> >> - Please do not add code with '#if 0' and activate it later. This shows
> >> =A0 the series has the wrong order.
> >
> > This was for review only. If I would change the code in one step, the p=
atch is
> > unreadable.
> >
> >> - Please refrain from basing your internal functions around 'struct
> >> =A0 device_d'. By doing so we completey lose type safety and at least =
in
> >> =A0 case of the mci framework where three different devices are involv=
ed
> >> =A0 this leads to unreadable and error prone code.
> >
> > But IMHO in the case of the MCI there _are_ three devices!
> > =A0- The one that knows how to handle disk drives
> > =A0- The one that knows what a SD card is
> > =A0- the one that knows how to transfer data from an to an attached dev=
ice.
> >
> > Why this is unreadable or error prone? If you combine all these differe=
nt
> > functions into one I would say: Yes, the result is unreadable and error
> > prone. And if you would say for a bootloader this separate approach is
> > over-engineered, I would say: Maybe.
> >
> >> =A0 The framebuffer code should be based around struct fb_info.
> >
> > I do not like this idea, but okay. In the next series I will do it in t=
his
> > way.
> >
> >> - Please keep the line lengths within sensible limits.
> >
> > Sorry, I checked it the last time, but some lines are slipped through.
> Couldn't be included in barebox scripts also checkpatch.pl script from ke=
rnel?
> Would be nice to have proper patches with kernel coding style.

Sure, send a patch ;)

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
