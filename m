Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g8Axs-00031s-9e
 for barebox@lists.infradead.org; Thu, 04 Oct 2018 21:15:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id x12-v6so11402933wru.8
 for <barebox@lists.infradead.org>; Thu, 04 Oct 2018 14:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <20181004070400.12338-1-Denis.Osterland@diehl.com>
In-Reply-To: <20181004070400.12338-1-Denis.Osterland@diehl.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 4 Oct 2018 14:14:57 -0700
Message-ID: <CAHQ1cqGSwPu-vdVcRZxDj+D9YiXS3NR+079ka9v5wO9sgMa+_Q@mail.gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] hab: Print events on info command.
To: denis.osterland@diehl.com
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Oct 4, 2018 at 12:05 AM Denis OSTERLAND
<denis.osterland@diehl.com> wrote:
>
> From: Denis Osterland <Denis.Osterland@diehl.com>
>
> This patch calls *_hab_get_status function as part of hab info command.
> This function works only if MMU is disabled.
>
> Signed-off-by: Denis Osterland <Denis.Osterland@diehl.com>
> ---
>  commands/hab.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/commands/hab.c b/commands/hab.c
> index 0d7ee8e76..9027b7cb5 100644
> --- a/commands/hab.c
> +++ b/commands/hab.c
> @@ -72,6 +72,18 @@ static int do_hab(int argc, char *argv[])
>                 else
>                         printf("devel mode\n");
>
> +#ifdef CONFIG_MMU
> +               printf("Disable MMU to access HAB API!\n");
> +#else

Minor suggestion: using IS_ENABLED() might be better since it'll make
the code visible to the compiler regardless of CONFIG_MMU, which might
help better to prevent accidental bitrot (not very likely in this
particular instance, but still).

> +# if defined(CONFIG_ARCH_IMX6)
> +               imx6_hab_get_status();
> +# elif defined(CONFIG_ARCH_IMX28)
> +               imx28_hab_get_status();
> +# elif defined(CONFIG_ARCH_IMX25)
> +               imx25_hab_get_status();
> +# endif

Should this check be done at runtime with cpu_is_*()? I'd imagine that
it would be possible to create a multi-board image that supports both
i.MX25 and and i.MX6.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
