Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvzR8-0007RE-1I
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 22:59:27 +0000
Date: Fri, 10 Feb 2012 23:59:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120210225915.GM3852@pengutronix.de>
References: <CALQ+5acXuFBGkeRgv+xR8FE2_ykWxbRggEi-AVaJhZm-ZzLk7g@mail.gmail.com>
 <20120131114045.GO1990@pengutronix.de>
 <CALQ+5afWB0hQBXzkH2Vgo7FBAPP=z2jqDqxeTB07cRTkvPOfjQ@mail.gmail.com>
 <20120131131256.GP1990@pengutronix.de>
 <CALQ+5afyqAu7NP5yks7pJcJzbpm3u2G7USn1MSTnbby1-3r4mw@mail.gmail.com>
 <CALQ+5afG3jjozSRaeLrt5MfmeBBgjsRh6UVHNd5RpnZ0iP7Nvg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALQ+5afG3jjozSRaeLrt5MfmeBBgjsRh6UVHNd5RpnZ0iP7Nvg@mail.gmail.com>
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
Subject: Re: IIM on iMX27 "how-to" needed
To: Igor Trevisan <igt1972@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 10, 2012 at 03:13:00PM +0100, Igor Trevisan wrote:
> Sorry,
> =

> I replied to Sasha privately and not to the list!
> =

> =

> On Fri, Feb 10, 2012 at 2:05 PM, Igor Trevisan <igt1972@gmail.com> wrote:
> >>
> >> You could try imx_iim0.explicit_sense_enable=3D0, maybe this helps.
> >>
> >
> > Again... This helps!
> > Sorry, I misunderstood the logic of the sense flag!
> > (I think I owe you at least a beer...;)
> >
> > By the way, now I can read the first two banks:
> >
> > barebox:/ =A0md -b -s /dev/imx_iim_bank1
> > 00000000: 41 ce 3c ad 4d 89 93 00 00 00 00 00 00 00 00 00 =A0 =A0A.<.M.=
..........
> > 00000010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0......=
..........
> > barebox:/
> > barebox:/
> > barebox:/ =A0md -b -s /dev/imx_iim_bank0
> > 00000000: 59 20 81 40 20 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0Y .@ .=
..........
> > 00000010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0......=
..........
> >
> > Now I would like to go further and try to program some fuse bits
> > (I need to store some codes...).
> > I think I need first of all to set:
> > imx_iim0.permanent_write_enable=3D1
> >
> > I did this, then I tried to write with
> >
> > mw -b 0x10028814 0xbb
> >
> > but reading back I still find:
> > barebox:/ =A0md -b -s /dev/imx_iim_bank0
> > 00000000: 59 20 81 40 20 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0Y .@ .=
..........
> > 00000010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 =A0 =A0......=
..........
> >
> > Which is the right way to write the fuse bits?

Try

mw -d /dev/imx_iim_bank0 -b 0x2 0x80

to change the the '0x80' at offset 2 to 0x80.

I suggest that you explore the usage of 'mw' with something less
sensitive than the fuses, they have the potential to brick your board...

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
