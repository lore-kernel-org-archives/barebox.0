Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLR6m-0007Un-MB
 for barebox@lists.infradead.org; Mon, 06 Apr 2020 12:44:10 +0000
Received: by mail-lj1-x242.google.com with SMTP id i20so14480622ljn.6
 for <barebox@lists.infradead.org>; Mon, 06 Apr 2020 05:44:07 -0700 (PDT)
Date: Mon, 6 Apr 2020 15:44:04 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200406154404.6bbdb6564dc7db9c4e076e5f@gmail.com>
In-Reply-To: <20200406121325.1364-1-antonynpavlov@gmail.com>
References: <20200406121325.1364-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH V2] startup: introduce global.endianness variable
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon,  6 Apr 2020 15:13:25 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi Sascha,

The global.version (and global.endianness) variable can
be easely modified by user.
Can we make it immutable?

-- =

Best regards,
=A0 Antony Pavlov

> The global.endianness variable make it possible
> to determine current endian mode from command
> line or from script on bi-endian capable system.
> =

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/globalvar.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> =

> diff --git a/common/globalvar.c b/common/globalvar.c
> index c87f2c9339..264833f88c 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -591,6 +591,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_=
t *ip)
>  =

>  static int globalvar_init(void)
>  {
> +	const char *endianness;
> +
>  	register_device(&global_device);
>  =

>  	if (IS_ENABLED(CONFIG_NVVAR))
> @@ -598,11 +600,19 @@ static int globalvar_init(void)
>  =

>  	globalvar_add_simple("version", UTS_RELEASE);
>  =

> +	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
> +		endianness =3D "big";
> +	else
> +		endianness =3D "little";
> +
> +	globalvar_add_simple("endianness", endianness);
> +
>  	return 0;
>  }
>  pure_initcall(globalvar_init);
>  =

>  BAREBOX_MAGICVAR_NAMED(global_version, global.version, "The barebox vers=
ion");
> +BAREBOX_MAGICVAR_NAMED(global_endianness, global.endianness, "The barebo=
x endianness");
>  =

>  /**
>   * nvvar_save - save NV variables to persistent environment
> -- =

> 2.25.0
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
