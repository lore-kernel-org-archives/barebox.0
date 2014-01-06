Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0Aiy-0002w9-SP
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 14:00:13 +0000
Received: by mail-la0-f49.google.com with SMTP id er20so9793500lab.36
 for <barebox@lists.infradead.org>; Mon, 06 Jan 2014 05:59:50 -0800 (PST)
Date: Mon, 6 Jan 2014 18:07:47 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140106180747.b9e9fc1ad92b41d7b39b27fe@gmail.com>
In-Reply-To: <1386652255-31418-1-git-send-email-antonynpavlov@gmail.com>
References: <1386652255-31418-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] MIPS: csrc-r4k: use CLOCKSOURCE_MASK() macro
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 10 Dec 2013 09:10:55 +0400
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Sascha, please apply this trivial patch.

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/lib/csrc-r4k.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/mips/lib/csrc-r4k.c b/arch/mips/lib/csrc-r4k.c
> index 2978fcf..c699f2b 100644
> --- a/arch/mips/lib/csrc-r4k.c
> +++ b/arch/mips/lib/csrc-r4k.c
> @@ -32,7 +32,7 @@ static uint64_t c0_hpt_read(void)
>  =

>  static struct clocksource cs =3D {
>  	.read	=3D c0_hpt_read,
> -	.mask	=3D 0xffffffff,
> +	.mask	=3D CLOCKSOURCE_MASK(32),
>  };
>  =

>  static int clocksource_init(void)
> -- =

> 1.8.5
> =


--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
