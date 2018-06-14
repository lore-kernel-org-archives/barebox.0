Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTP7C-0002k3-Bi
 for barebox@lists.infradead.org; Thu, 14 Jun 2018 10:04:28 +0000
Received: by mail-lf0-x234.google.com with SMTP id u4-v6so8506501lff.3
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 03:04:15 -0700 (PDT)
Date: Thu, 14 Jun 2018 13:04:29 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180614130429.91a594f7a7b0b747f6205cee@gmail.com>
In-Reply-To: <20180614062751.29856-4-andrew.smirnov@gmail.com>
References: <20180614062751.29856-1-andrew.smirnov@gmail.com>
 <20180614062751.29856-4-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v6 03/10] clock: Use udelay() to implement mdelay()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, 13 Jun 2018 23:27:44 -0700
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/clock.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> =

> diff --git a/common/clock.c b/common/clock.c
> index f98176dd5..dab6e979f 100644
> --- a/common/clock.c
> +++ b/common/clock.c
> @@ -206,9 +206,11 @@ EXPORT_SYMBOL(udelay);
>  =

>  void mdelay(unsigned long msecs)
>  {
> -	uint64_t start =3D get_time_ns();
> -
> -	while(!is_timeout(start, msecs * MSECOND));
> +	/*
> +	 * Parens around division below are needed to pervent ARM/EABI
                                                      ^^^^^^^  prevent?

> +	 * toolchain from emitting a call to __aeabi_uldivmod.
> +	 */
> +	udelay(msecs * (MSECOND / USECOND));
>  }
>  EXPORT_SYMBOL(mdelay);
>  =

> -- =

> 2.17.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
