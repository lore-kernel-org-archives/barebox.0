Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5Ynj-0001dE-Mp
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 11:15:40 +0000
Received: by mail-lb0-f181.google.com with SMTP id p9so780072lbv.12
 for <barebox@lists.infradead.org>; Fri, 11 Jul 2014 04:15:16 -0700 (PDT)
Date: Fri, 11 Jul 2014 15:27:35 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140711152735.29bf0b30f5d286e05c09b6e4@gmail.com>
In-Reply-To: <20140711101236.5c332b13de1fe7c297237fc5@gmail.com>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
 <20140711053738.GJ23235@pengutronix.de>
 <20140711101236.5c332b13de1fe7c297237fc5@gmail.com>
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
Subject: Re: [RFC 0/5] add rtc support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 11 Jul 2014 10:12:36 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> On Fri, 11 Jul 2014 07:37:38 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> =

> > On Thu, Jul 10, 2014 at 12:33:14PM +0400, Antony Pavlov wrote:
> > > This patchseries imports RTC support from linux-3.15.
> > > =

> > > User can use 'hwclock' command to see realtime clock readout.
> > > =

> > > Tested with DS1307.
> > > =

> > > TODOs:
> > > =

> > >  * rtc_set_time() is not realized;
> > >  * ds1307_set_time() is not tested;
> > >  * bcd lib is compiled in even if rtc support is disabled (as linux d=
oes);
> > >    we can make it optional;
> > =

...
> I have an idea to put epoch offset (number of years into AD to which a ze=
ro year value
> in the Hardware Clock refers) into "global.epoch" variable and add corres=
ponding
> Kconfig option for default epoch value.

I was wrong.

Hmm hwclock receives time value in the 'struct tm'
(e.g. see linux.git/include/linux/time.h)

/*
 * Similar to the struct tm in userspace <time.h>, but it needs to be here =
so
 * that the kernel source is self contained.
 */
struct tm {
	/*
	 * the number of seconds after the minute, normally in the range
	 * 0 to 59, but can be up to 60 to allow for leap seconds
	 */
	int tm_sec;
	/* the number of minutes after the hour, in the range 0 to 59*/
	int tm_min;
	/* the number of hours past midnight, in the range 0 to 23 */
	int tm_hour;
	/* the day of the month, in the range 1 to 31 */
	int tm_mday;
	/* the number of months since January, in the range 0 to 11 */
	int tm_mon;
	/* the number of years since 1900 */
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^=
^^^

	long tm_year;
	/* the number of days since Sunday, in the range 0 to 6 */
	int tm_wday;
	/* the number of days since January 1, in the range 0 to 365 */
	int tm_yday;
};

Here is a quote from read_hardware_clock()
(see util-linux-2.20.1/hwclock/hwclock.c)

         printf(_
             ("Hw clock time : %4d/%.2d/%.2d %.2d:%.2d:%.2d =3D "
             "%ld seconds since 1969\n"), tm.tm_year + 1900,
             tm.tm_mon + 1, tm.tm_mday, tm.tm_hour, tm.tm_min,
             tm.tm_sec, (long)*systime_p);

So in linux hardware clock epoch is always "1900".

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
