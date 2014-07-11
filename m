Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5TgL-00061j-5x
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 05:47:41 +0000
Received: by mail-la0-f46.google.com with SMTP id el20so460557lab.33
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 22:47:18 -0700 (PDT)
Date: Fri, 11 Jul 2014 09:59:36 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140711095936.afd2e87610ee74eb2921309f@gmail.com>
In-Reply-To: <20140710214547.GI23235@pengutronix.de>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
 <1404981199-21293-6-git-send-email-antonynpavlov@gmail.com>
 <20140710214547.GI23235@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [RFC 5/5] commands: add hwclock
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 10 Jul 2014 23:45:47 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jul 10, 2014 at 12:33:19PM +0400, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  commands/Kconfig   |  8 ++++++++
> >  commands/Makefile  |  1 +
> >  commands/hwclock.c | 37 +++++++++++++++++++++++++++++++++++++
> >  3 files changed, 46 insertions(+)
> > =

> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 61816f5..a594f7c 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -1691,6 +1691,14 @@ config CMD_GPIO
> >  =

> >  	  Usage: gpio_set_value GPIO VALUE
> >  =

> > +config CMD_HWCLOCK
> > +	bool
> > +	depends on RTC_CLASS
> > +	prompt "hwclock command"
> > +	default y
> > +	help
> > +	  The lspci command allows to query or set the hardware clock (RTC).
> =

> lspci? ;)

No!
copy & paste!

> > +static int do_hwclock(int argc, char *argv[])
> > +{
> > +	struct rtc_device *r;
> > +	struct rtc_time tm;
> > +	char *rtc_name;
> > +
> > +	rtc_name =3D "rtc0";
> > +
> > +	if (argc > 1)
> > +		rtc_name =3D argv[1];
> > +
> > +	r =3D rtc_lookup(rtc_name);
> > +	if (IS_ERR(r))
> > +		return PTR_ERR(r);
> > +
> > +	rtc_read_time(r, &tm);
> > +
> > +	printf("%02d:%02d:%02d %02d-%02d-%04d\n",
> > +		tm.tm_hour, tm.tm_min, tm.tm_sec,
> > +		tm.tm_mday, tm.tm_mon, tm.tm_year);
> > +
> > +	return 0;
> > +}
> > +
> > +BAREBOX_CMD_START(hwclock)
> > +	.cmd		=3D do_hwclock,
> > +	BAREBOX_CMD_DESC("query or set the hardware clock (RTC)")
> =

> This initial version doesn't allow to set the time.

I have no idea about simple and elegant solution for setting clock :(

My hwclock man page show me an example:

 hwclock --set --date=3D"2011-08-14 16:45:05"

I'll try to find some ready-to-use strptime-like function (e.g. in uClibc).

Also there is no epoch handling.

May be it's better to drop hwclock clock setting in the inital rtc support =
series?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
