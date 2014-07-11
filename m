Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5Tsv-0002Kd-TG
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 06:00:42 +0000
Received: by mail-lb0-f173.google.com with SMTP id v6so217915lbi.4
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 23:00:18 -0700 (PDT)
Date: Fri, 11 Jul 2014 10:12:36 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140711101236.5c332b13de1fe7c297237fc5@gmail.com>
In-Reply-To: <20140711053738.GJ23235@pengutronix.de>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
 <20140711053738.GJ23235@pengutronix.de>
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

On Fri, 11 Jul 2014 07:37:38 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jul 10, 2014 at 12:33:14PM +0400, Antony Pavlov wrote:
> > This patchseries imports RTC support from linux-3.15.
> > =

> > User can use 'hwclock' command to see realtime clock readout.
> > =

> > Tested with DS1307.
> > =

> > TODOs:
> > =

> >  * rtc_set_time() is not realized;
> >  * ds1307_set_time() is not tested;
> >  * bcd lib is compiled in even if rtc support is disabled (as linux doe=
s);
> >    we can make it optional;
> =

> It's probably not worth it. The linker will throw it away anyway if
> unused.

Hmm, I have missed this.

In this case can we drop I2C_SMBUS Kconfig stuff

+config I2C_SMBUS
+	bool
+

+obj-$(CONFIG_I2C_SMBUS) +=3D i2c-smbus.o

from 'add driver for PCA95[357]x, ...' series?

Anyway CONFIG_I2C_SMBUS has another meaning in linux.

> =

> >  * adjust include/linux/rtc.h and include/rtc.h;
> >  * rtc_unregister() is not realized.
> =

> Maybe an environment variable which holds the seconds since epoch would
> be useful. This way scripts could make use of the current RTC time.

So you propose to add an option to hwclock command to store RTC readout int=
o variable,
isn't it?

I have an idea to put epoch offset (number of years into AD to which a zero=
 year value
in the Hardware Clock refers) into "global.epoch" variable and add correspo=
nding
Kconfig option for default epoch value.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
