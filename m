Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bFfhH-0007g3-Dw
 for barebox@lists.infradead.org; Wed, 22 Jun 2016 10:47:51 +0000
Received: by mail-lf0-x241.google.com with SMTP id a2so13321970lfe.3
 for <barebox@lists.infradead.org>; Wed, 22 Jun 2016 03:47:31 -0700 (PDT)
Date: Wed, 22 Jun 2016 13:49:13 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160622134913.7719306547ef43001d163c71@gmail.com>
In-Reply-To: <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
References: <1466570369-1950-1-git-send-email-andrew.smirnov@gmail.com>
 <1466570369-1950-3-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/3] GUI: Add fbtest command
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Andrey Gusakov <andrey.gusakov@cogentembedded.com>

On Tue, 21 Jun 2016 21:39:29 -0700
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

> Add 'fbtest' - a command to produce test patterns on a screen
                                                    ^^^^^^^^^^^ "on A scree=
n" here


...

> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -1417,6 +1417,15 @@ config CMD_SPLASH
>  		  -b COLOR	background color in 0xttrrggbb
>  		  -o		render offscreen
>  =

> +config CMD_FBTEST
> +	bool
> +	depends on VIDEO
> +	select 2D_PRIMITIVES
> +	prompt "FB test"
> +	help
> +	  Framebuffer test command that allows to produce a number of
> +	  test patterns on the screen.
                        ^^^^^^^^^^^^^ "on THE screen" here

Can you fix this inconsistency, please?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
