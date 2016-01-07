Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22e.google.com ([2a00:1450:4010:c07::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aH49M-0005xh-G2
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 06:34:21 +0000
Received: by mail-lf0-x22e.google.com with SMTP id z124so321278889lfa.3
 for <barebox@lists.infradead.org>; Wed, 06 Jan 2016 22:34:00 -0800 (PST)
Date: Thu, 7 Jan 2016 09:58:37 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160107095837.b6b8f97b5c99d8ff19010e47@gmail.com>
In-Reply-To: <1452147455-26524-6-git-send-email-andrew.smirnov@gmail.com>
References: <1452147455-26524-1-git-send-email-andrew.smirnov@gmail.com>
 <1452147455-26524-6-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 6/6] commands/hwclock: Check return value of
 rtc_read_time()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed,  6 Jan 2016 22:17:35 -0800
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> It is possible for rtc_read_time() to fill struct rtc_time it returns
> with invalid values, so we have to check for its return value before
> using returned time.
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  commands/hwclock.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> =

> diff --git a/commands/hwclock.c b/commands/hwclock.c
> index 7633132..737df11 100644
> --- a/commands/hwclock.c
> +++ b/commands/hwclock.c
> @@ -93,11 +93,12 @@ static int do_hwclock(int argc, char *argv[])
>  	char *env_name =3D NULL;
>  	int opt;
>  	int set =3D 0;
> +	int ret;
>  	int ntp_to_hw =3D 0;
>  	char *ntpserver =3D NULL;
> =

>  	while ((opt =3D getopt(argc, argv, "f:s:e:n:")) > 0) {
> -		int ret;
> +
> =


Extra empty line here.

>  		switch (opt) {
>  		case 'f':
> @@ -151,7 +152,9 @@ static int do_hwclock(int argc, char *argv[])
>  		return rtc_set_time(r, &stm);
>  	}
> =

> -	rtc_read_time(r, &tm);
> +	ret =3D rtc_read_time(r, &tm);
> +	if (ret < 0)
> +		return ret;
> =

>  	if (env_name) {
>  		unsigned long time;
> --
> 2.5.0
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
