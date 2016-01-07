Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x232.google.com ([2a00:1450:4010:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH47k-0005W2-Dg
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 06:32:41 +0000
Received: by mail-lf0-x232.google.com with SMTP id z124so321261455lfa.3
 for <barebox@lists.infradead.org>; Wed, 06 Jan 2016 22:32:19 -0800 (PST)
Date: Thu, 7 Jan 2016 09:57:02 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160107095702.3791e54792c00077a6c6349e@gmail.com>
In-Reply-To: <1452147455-26524-3-git-send-email-andrew.smirnov@gmail.com>
References: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
 <1452147455-26524-3-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/6] rtc-lib: Check tm_wday for validity in rtc_valid_tm()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed,  6 Jan 2016 22:17:32 -0800
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> RTC drivers rely on rtc_valid_tm() in order to make sure that no bogus
> values from uninitialized HW registers get passed to the uppper layers.
> =

> A somewhat contrived way to reproduce this problem with DS1307 RTC
> would be to do the following:
> =

> > rtc_write -b <bus> -a <addr> -r 3 0x00

    rtc_write? Do you mean i2c_write here?

> > hwclock
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/rtc/rtc-lib.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/rtc/rtc-lib.c b/drivers/rtc/rtc-lib.c
> index 1b23458..83d8045 100644
> --- a/drivers/rtc/rtc-lib.c
> +++ b/drivers/rtc/rtc-lib.c
> @@ -90,6 +90,8 @@ int rtc_valid_tm(struct rtc_time *tm)
>  {
>  	if (tm->tm_year < 70
>  		|| ((unsigned)tm->tm_mon) >=3D 12
> +		|| tm->tm_wday < 0
> +		|| tm->tm_wday > 6
>  		|| tm->tm_mday < 1
>  		|| tm->tm_mday > rtc_month_days(tm->tm_mon, tm->tm_year + 1900)
>  		|| ((unsigned)tm->tm_hour) >=3D 24
> --
> 2.5.0
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
