Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QjQde-00065w-0K
	for barebox@lists.infradead.org; Wed, 20 Jul 2011 06:52:15 +0000
Date: Wed, 20 Jul 2011 08:51:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110720065159.GQ20587@pengutronix.de>
References: <1310994370-28444-1-git-send-email-antonynpavlov@gmail.com>
	<20110718210440.GK20587@pengutronix.de>
	<CAJfOKBzxdZJh7Sguoe=pQqbw=_4ebBpjnF=BgOzwZ6HD9inY2w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBzxdZJh7Sguoe=pQqbw=_4ebBpjnF=BgOzwZ6HD9inY2w@mail.gmail.com>
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
Subject: Re: [PATCH v2 1/2] debug_ll.h: add PUTS_LL() function
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 19, 2011 at 03:14:03PM +0200, Franck JULLIEN wrote:
> 2011/7/18 Sascha Hauer <s.hauer@pengutronix.de>:
> > On Mon, Jul 18, 2011 at 05:06:09PM +0400, Antony Pavlov wrote:
> >> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> >
> > Applied both to next.
> >
> > Thanks
> > =A0Sascha
> >
> >> ---
> >> =A0include/debug_ll.h | =A0 13 +++++++++++++
> >> =A01 files changed, 13 insertions(+), 0 deletions(-)
> >>
> >> diff --git a/include/debug_ll.h b/include/debug_ll.h
> >> index e99ae7d..6b1b174 100644
> >> --- a/include/debug_ll.h
> >> +++ b/include/debug_ll.h
> >> @@ -35,9 +35,22 @@
> >> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ch =3D ((v >> (=
i*4)) & 0xf);\
> >> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0ch +=3D (ch >=
=3D 10) ? 'a' - 10 : '0';\
> >> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0PUTC_LL (ch); }=
})
> >> +
> >> +static __inline__ void PUTS_LL(char * str)
> >> +{
> >> + =A0 =A0 while (*str) {
> >> + =A0 =A0 =A0 =A0 =A0 =A0 if (*str =3D=3D '\n') {
> >> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 PUTC_LL('\r');
> >> + =A0 =A0 =A0 =A0 =A0 =A0 }
> >> + =A0 =A0 =A0 =A0 =A0 =A0 PUTC_LL(*str);
> >> + =A0 =A0 =A0 =A0 =A0 =A0 str++;
> >> + =A0 =A0 }
> >> +}
> >> +
> >> =A0#else
> >> =A0# define PUTC_LL(c) do {} while (0)
> >> =A0# define PUTHEX_LL(v) do {} while (0)
> >> +# define PUTS_LL(c) do {} while (0)
> >>
> >> =A0#endif
> >>
> =

> Is there any reason for not using vsprintf in a printf_ll function
> which would use puts_ll / putc_ll ??

You would at least need a writable string buffer. I'd rather like to
keep the ll functions as simple as possible. Otherwise you end up
debugging the debug functions while hunting some lowlevel problem.

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
