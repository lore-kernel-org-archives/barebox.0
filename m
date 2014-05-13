Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkAgR-0001fa-W2
 for barebox@lists.infradead.org; Tue, 13 May 2014 11:15:44 +0000
Received: by mail-la0-f43.google.com with SMTP id mc6so141864lab.16
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 04:15:20 -0700 (PDT)
Date: Tue, 13 May 2014 15:26:16 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140513152616.037f99e1138c9028878f61f6@gmail.com>
In-Reply-To: <1399969739-10355-9-git-send-email-holgerschurig@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
 <1399969739-10355-9-git-send-email-holgerschurig@gmail.com>
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
Subject: Re: [PATCH 08/19] commands: move CMD_MIPS_CPUINFO to commands/Kconfig
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, 13 May 2014 10:28:48 +0200
Holger Schurig <holgerschurig@gmail.com> wrote:

Can we use

  1. consolidated CMD_CPUINFO option which is selectable on MIPS || ARM;
  2. CMD_ARM_CPUINFO option which depends on ARM & CMD_CPUINFO;
  3. CMD_MIPS_CPUINFO option which depends on MIPS & CMD_CPUINFO.


> * this places the command into the "Information commands"
>   section of Kconfig
> =

> Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
> ---
>  arch/mips/Kconfig |    7 -------
>  commands/Kconfig  |    8 ++++++++
>  2 files changed, 8 insertions(+), 7 deletions(-)
> =

> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 9a240b7..6ce7fff 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -274,13 +274,6 @@ endchoice
>  =

>  menu "MIPS specific settings"
>  =

> -config CMD_MIPS_CPUINFO
> -	bool "cpuinfo command"
> -	default y
> -	help
> -	  Say yes here to get a cpuinfo command to show some
> -	  information about the cpu model.
> -
>  config HAS_NMON
>  	bool
>  =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index 9789af4..db091c4 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -46,6 +46,14 @@ config CMD_ARM_CPUINFO
>  	  D-cache: 8192 bytes (linelen =3D 8)
>  	  Control register: M C W P D L I V RR DT IT U XP
>  =

> +config CMD_MIPS_CPUINFO
> +	bool "cpuinfo command"
> +	default y
> +	depends on MIPS
> +	help
> +	  Say yes here to get a cpuinfo command to show some
> +	  information about the cpu model.
> +
>  config CMD_DEVINFO
>  	tristate
>  	default y
> -- =

> 1.7.10.4
> =

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
