Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SkW5K-0000X3-05
 for barebox@lists.infradead.org; Fri, 29 Jun 2012 07:57:47 +0000
Date: Fri, 29 Jun 2012 09:57:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120629075743.GG24458@pengutronix.de>
References: <1340908354-17895-1-git-send-email-antonynpavlov@gmail.com>
 <1340908354-17895-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340908354-17895-4-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/5] clocksource: move the NSEC_PER_SEC constant to
 common header
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 28, 2012 at 10:32:32PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/ppc/mach-mpc85xx/include/mach/clocks.h |    2 --
>  include/clock.h                             |    2 ++
>  include/linux/time.h                        |    1 +
>  3 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/ppc/mach-mpc85xx/include/mach/clocks.h b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
> index 9477168..2ab367b 100644
> --- a/arch/ppc/mach-mpc85xx/include/mach/clocks.h
> +++ b/arch/ppc/mach-mpc85xx/include/mach/clocks.h
> @@ -10,8 +10,6 @@ struct sys_info {
>  	unsigned long freqLocalBus;
>  };
>  
> -#define NSEC_PER_SEC	1000000000L
> -
>  unsigned long fsl_get_bus_freq(ulong dummy);
>  unsigned long fsl_get_timebase_clock(void);
>  void fsl_get_sys_info(struct sys_info *sysInfo);
> diff --git a/include/clock.h b/include/clock.h
> index 123f874..c01a8d0 100644
> --- a/include/clock.h
> +++ b/include/clock.h
> @@ -3,6 +3,8 @@
>  #ifndef CLOCK_H
>  #define CLOCK_H
>  
> +#include <linux/time.h>

This breaks compilation on some ARM boards:

In file included from include/clock.h:6:0,
                 from drivers/i2c/i2c.c:19:
include/linux/time.h: In function 'asctime_r':
include/linux/time.h:62:5: warning: implicit declaration of function
'sprintf' [-Wimplicit-function-declaration]
In file included from include/clock.h:6:0,
                 from drivers/i2c/busses/i2c-imx.c:36:

I'll fold the following into this patch:

8<-----------------------------------------------------

include/linux/time.h: remove dead code

include/linux/time.h contains several unused functions derived from U-Boot
code. Since this is a file under include/linux/ it should contain only code
from the kernel, so remove all this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/time.h |  151 --------------------------------------------------
 1 file changed, 151 deletions(-)

diff --git a/include/linux/time.h b/include/linux/time.h
index a1be8fe..3942e82 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -3,157 +3,6 @@
 
 #include <linux/types.h>
 
-#define _DEFUN(a,b,c) a(c)
-#define _CONST const
-#define _AND ,
-
-#define _REENT_ONLY
-
 #define NSEC_PER_SEC	1000000000L
-#define SECSPERMIN	60L
-#define MINSPERHOUR	60L
-#define HOURSPERDAY	24L
-#define SECSPERHOUR	(SECSPERMIN * MINSPERHOUR)
-#define SECSPERDAY	(SECSPERHOUR * HOURSPERDAY)
-#define DAYSPERWEEK	7
-#define MONSPERYEAR	12
-
-#define YEAR_BASE	1900
-#define EPOCH_YEAR      1970
-#define EPOCH_WDAY      4
-
-#define isleap(y) ((((y) % 4) == 0 && ((y) % 100) != 0) || ((y) % 400) == 0)
-
-
-/* Used by other time functions.  */
-struct tm {
-    int tm_sec;                   /* Seconds.     [0-60] (1 leap second) */
-    int tm_min;                   /* Minutes.     [0-59] */
-    int tm_hour;                  /* Hours.       [0-23] */
-    int tm_mday;                  /* Day.         [1-31] */
-    int tm_mon;                   /* Month.       [0-11] */
-    int tm_year;                  /* Year - 1900.  */
-    int tm_wday;                  /* Day of week. [0-6] */
-    int tm_yday;                  /* Days in year.[0-365] */
-    int tm_isdst;                 /* DST.         [-1/0/1]*/
-
-# ifdef __USE_BSD
-    long int tm_gmtoff;           /* Seconds east of UTC.  */
-    __const char *tm_zone;        /* Timezone abbreviation.  */
-# else
-    long int __tm_gmtoff;         /* Seconds east of UTC.  */
-    __const char *__tm_zone;      /* Timezone abbreviation.  */
-# endif
-};
-
-static inline char *
-_DEFUN (asctime_r, (tim_p, result),
-	_CONST struct tm *tim_p _AND
-	char *result)
-{
-    static _CONST char day_name[7][3] = {
-	"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"
-    };
-    static _CONST char mon_name[12][3] = {
-	"Jan", "Feb", "Mar", "Apr", "May", "Jun",
-	"Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
-    };
-
-    sprintf (result, "%.3s %.3s %.2d %.2d:%.2d:%.2d %d\n",
-	    day_name[tim_p->tm_wday],
-	    mon_name[tim_p->tm_mon],
-	    tim_p->tm_mday, tim_p->tm_hour, tim_p->tm_min,
-	    tim_p->tm_sec, 1900 + tim_p->tm_year);
-    return result;
-}
-
-static inline struct tm *
-_DEFUN (localtime_r, (tim_p, res),
-	_CONST time_t * tim_p _AND
-	struct tm *res)
-{
-    static _CONST int mon_lengths[2][MONSPERYEAR] = {
-      {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31},
-      {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
-    } ;
-
-    static _CONST int year_lengths[2] = {
-      365,
-      366
-    } ;
-
-    long days, rem;
-    int y;
-    int yleap;
-    _CONST int *ip;
-
-    days = ((long) *tim_p) / SECSPERDAY;
-    rem = ((long) *tim_p) % SECSPERDAY;
-    while (rem < 0)
-    {
-	rem += SECSPERDAY;
-	--days;
-    }
-    while (rem >= SECSPERDAY)
-    {
-	rem -= SECSPERDAY;
-	++days;
-    }
-
-    /* compute hour, min, and sec */
-    res->tm_hour = (int) (rem / SECSPERHOUR);
-    rem %= SECSPERHOUR;
-    res->tm_min = (int) (rem / SECSPERMIN);
-    res->tm_sec = (int) (rem % SECSPERMIN);
-
-    /* compute day of week */
-    if ((res->tm_wday = ((EPOCH_WDAY + days) % DAYSPERWEEK)) < 0)
-	res->tm_wday += DAYSPERWEEK;
-
-    /* compute year & day of year */
-    y = EPOCH_YEAR;
-    if (days >= 0)
-    {
-	for (;;)
-	{
-	    yleap = isleap(y);
-	    if (days < year_lengths[yleap])
-		break;
-	    y++;
-	    days -= year_lengths[yleap];
-	}
-    }
-    else
-    {
-	do
-	{
-	    --y;
-	    yleap = isleap(y);
-	    days += year_lengths[yleap];
-	} while (days < 0);
-    }
-
-    res->tm_year = y - YEAR_BASE;
-    res->tm_yday = days;
-    ip = mon_lengths[yleap];
-    for (res->tm_mon = 0; days >= ip[res->tm_mon]; ++res->tm_mon)
-	days -= ip[res->tm_mon];
-    res->tm_mday = days + 1;
-
-    /* set daylight saving time flag */
-    res->tm_isdst = -1;
-
-    return (res);
-}
-
-static inline char *
-_DEFUN (ctime_r, (tim_p, result),
-	_CONST time_t * tim_p _AND
-	char * result)
-
-{
-    struct tm tm;
-    return asctime_r (localtime_r (tim_p, &tm), result);
-}
 
 #endif
-- 
1.7.10

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
