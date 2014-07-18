Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X82Wi-0003US-3n
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 07:24:20 +0000
Received: by mail-la0-f43.google.com with SMTP id hr17so2589302lab.30
 for <barebox@lists.infradead.org>; Fri, 18 Jul 2014 00:23:56 -0700 (PDT)
Date: Fri, 18 Jul 2014 11:36:26 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140718113626.19aba6e8e971f15944a6ff93@gmail.com>
In-Reply-To: <20140718054413.GL23235@pengutronix.de>
References: <1405370916-6828-1-git-send-email-antonynpavlov@gmail.com>
 <1405370916-6828-5-git-send-email-antonynpavlov@gmail.com>
 <20140718054413.GL23235@pengutronix.de>
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
Subject: Re: [RFC v3 4/5] commands: add hwclock
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 18 Jul 2014 07:44:13 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Tue, Jul 15, 2014 at 12:48:35AM +0400, Antony Pavlov wrote:
> > The hwclock command allows to query or set the hardware clock (RTC).
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  commands/Kconfig   |   8 +++
> >  commands/Makefile  |   1 +
> >  commands/hwclock.c | 151 +++++++++++++++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 160 insertions(+)
> > =

> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index 61816f5..6a75f85 100644
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
> > +	  The hwclock command allows to query or set the hardware clock (RTC).
> > +
> >  config CMD_I2C
> >  	bool
> >  	depends on I2C
> > diff --git a/commands/Makefile b/commands/Makefile
> > index d42aca5..44dd9d4 100644
> > --- a/commands/Makefile
> > +++ b/commands/Makefile
> > @@ -100,3 +100,4 @@ obj-$(CONFIG_CMD_MENUTREE)	+=3D menutree.o
> >  obj-$(CONFIG_CMD_2048)		+=3D 2048.o
> >  obj-$(CONFIG_CMD_REGULATOR)	+=3D regulator.o
> >  obj-$(CONFIG_CMD_LSPCI)		+=3D lspci.o
> > +obj-$(CONFIG_CMD_HWCLOCK)	+=3D hwclock.o
> > diff --git a/commands/hwclock.c b/commands/hwclock.c
> > new file mode 100644
> > index 0000000..511973a
> > --- /dev/null
> > +++ b/commands/hwclock.c
> > @@ -0,0 +1,151 @@
> > +#include <common.h>
> > +#include <command.h>
> > +#include <getopt.h>
> > +#include <linux/err.h>
> > +#include <linux/ctype.h>
> > +#include <rtc.h>
> > +#include <linux/rtc.h>
> > +#include <string.h>
> > +#include <environment.h>
> > +
> > +static char *strchrnul(const char *s, int c)
> > +{
> > +	while (*s !=3D '\0' && *s !=3D c)
> > +		s++;
> > +
> > +	return (char *)s;
> > +}
> > +
> > +static int sscanf_two_digits(char *s, int *res)
> > +{
> > +	char buf[3];
> > +	unsigned long t;
> > +
> > +	if (!isdigit(s[0]) || !isdigit(s[1])) {
> > +		return -EINVAL;
> > +	}
> > +
> > +	buf[0] =3D s[0];
> > +	buf[1] =3D s[1];
> > +	buf[2] =3D '\0';
> > +
> > +	t =3D simple_strtoul(buf, NULL, 10);
> > +	*res =3D t;
> > +
> > +	return 0;
> > +}
> > +
> > +static int parse_datestr(char *date_str, struct rtc_time *ptm)
> > +{
> > +	char end =3D '\0';
> > +	int len =3D strchrnul(date_str, '.') - date_str;
> > +	int year;
> > +
> > +	/* ccyymmddHHMM[.SS] */
> > +	if (len !=3D 12) {
> > +		return -EINVAL;
> > +	}
> > +
> > +	if (sscanf_two_digits(date_str, &year) ||
> > +		sscanf_two_digits(&date_str[2], &ptm->tm_year)) {
> > +		return -EINVAL;
> > +	}
> > +
> > +	ptm->tm_year =3D year * 100 + ptm->tm_year;
> > +
> > +	/* Adjust years */
> > +	ptm->tm_year -=3D 1900;
> > +
> > +	if (sscanf_two_digits(&date_str[4], &ptm->tm_mon) ||
> > +		sscanf_two_digits(&date_str[6], &ptm->tm_mday) ||
> > +		sscanf_two_digits(&date_str[8], &ptm->tm_hour) ||
> > +		sscanf_two_digits(&date_str[10], &ptm->tm_min)) {
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Adjust month from 1-12 to 0-11 */
> > +	ptm->tm_mon -=3D 1;
> > +
> > +	end =3D date_str[12];
> > +
> > +	if (end =3D=3D '.') {
> > +		/* xxx.SS */
> > +		if (!sscanf_two_digits(&date_str[13], &ptm->tm_sec)) {
> > +			end =3D '\0';
> > +		}
> > +		/* else end !=3D NUL and we error out */
> > +	}
> > +
> > +	if (end !=3D '\0') {
> > +		return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int do_hwclock(int argc, char *argv[])
> > +{
> > +	struct rtc_device *r;
> > +	struct rtc_time tm;
> > +	struct rtc_time stm;
> > +	char rtc_name[16] =3D "rtc0";
> > +	char *env_name =3D NULL;
> > +	int opt;
> > +	int set =3D 0;
> > +
> > +	while ((opt =3D getopt(argc, argv, "f:s:e:")) > 0) {
> > +		switch (opt) {
> > +		case 'f':
> > +			strncpy(rtc_name, optarg, 16);
> > +			break;
> > +		case 's':
> > +			memset(&stm, 0, sizeof(stm));
> > +			parse_datestr(optarg, &stm);
> > +			set =3D 1;
> > +			break;
> > +		case 'e':
> > +			env_name =3D optarg;
> > +			break;
> > +		}
> > +	}
> > +
> > +	r =3D rtc_lookup(rtc_name);
> > +	if (IS_ERR(r))
> > +		return PTR_ERR(r);
> > +
> > +	if (set) {
> > +		rtc_set_time(r, &stm);
> > +		return 0;
> > +	}
> > +
> > +	rtc_read_time(r, &tm);
> > +
> > +	if (env_name) {
> > +		unsigned long time;
> > +		char t[12];
> > +
> > +		rtc_tm_to_time(&tm, &time);
> > +		snprintf(t, 12, "%lu", time);
> > +		setenv(env_name, t);
> =

> I thought more about a globalvar_add(), like globalvar.date, so that no
> command has to be executed to get the date. But then again maybe it's
> better to have it in a command since it allows us to add different
> formats without much hassle.
> =

> > +	} else {
> > +		printf("%02d:%02d:%02d %02d-%02d-%04d\n",
> > +			tm.tm_hour, tm.tm_min, tm.tm_sec,
> > +			tm.tm_mday, tm.tm_mon + 1, tm.tm_year + 1900);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +BAREBOX_CMD_HELP_START(hwclock)
> > +BAREBOX_CMD_HELP_TEXT("Options:")
> > +BAREBOX_CMD_HELP_OPT ("-f NAME\t\t\t", "RTC device name (default rtc0)=
")
> > +BAREBOX_CMD_HELP_OPT ("-e VARNAME\t\t", "store RTC readout into variab=
le VARNAME")
> > +BAREBOX_CMD_HELP_OPT ("-s ccyymmddHHMM[.SS]\t", "set time")
> =

> It's much more logical to have the year first, but the format documented
> in 'man date' is MMDDhhmm[[CC]YY][.ss]. Of course we are free to choose
> another format, but maybe we should rather use a format someone other
> uses aswell?

The format MMDDhhmm[[CC]YY][.ss] forces me to add additional logic.
It the command hwclock is invoked with MMDDhhmm argument (without CCYY)
then i have to read RTC to get current year and only after that set RTC new=
 time.

If you insist on MMDDhhmm[[CC]YY][.ss] then I can steal appropriate ready-t=
o-use
code from busybox for handling "weird format with completely unnatural plac=
ement
of year between minutes and seconds" (quote from busybox code :).

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
