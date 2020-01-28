Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwS4Z-000894-LW
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 14:42:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id r14so9286937lfm.5
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2020 06:42:35 -0800 (PST)
Date: Tue, 28 Jan 2020 17:42:31 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200128174231.c17bdeb1b67df64a466bb34c@gmail.com>
In-Reply-To: <5bcf8c57-1e42-44fa-1681-4bb1cafa5d88@pengutronix.de>
References: <20200128092832.18615-1-o.rempel@pengutronix.de>
 <20200128145513.aae1244ee8e7faf94d661640@gmail.com>
 <20200128130656.GB25105@localhost.localdomain>
 <09c48af0-26de-7b4f-7f8c-155107f3ef55@pengutronix.de>
 <5bcf8c57-1e42-44fa-1681-4bb1cafa5d88@pengutronix.de>
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
Subject: Re: [PATCH v1] MIPS: remove .bss to __rel_start overlay
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Tue, 28 Jan 2020 14:53:07 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

> Note:
> memtest on ar9331 works only with this patch:
> =

> diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
> index cbde43a595..0d2dcf8b03 100644
> --- a/arch/mips/lib/cpu-probe.c
> +++ b/arch/mips/lib/cpu-probe.c
> @@ -177,6 +177,9 @@ static int mips_request_stack(void)
>          if (!request_sdram_region("stack", mips_stack_top - STACK_SIZE, =
STACK_SIZE))
>                  pr_err("Error: Cannot request SDRAM region for stack\n");
> =

> +       if (!request_sdram_region("vector", 0x80000000, 0x8000))
> +               pr_err("Error: Cannot request SDRAM region for vector\n");
> +
>          return 0;
>   }
>   coredevice_initcall(mips_request_stack);


Can we put this request_sdram_region() into main_entry.c to keep it close t=
o trap_init?
Thereby we have a change to reuse ebase value instead of the 0x80000000 mag=
ic constant.
Also 0x8000 size is too large. See MIPS Run, 2nd Edition by Dominic Sweetma=
n states =

general exception entry point is BASE+0x180 (used by barebox), and Interrup=
t Special
starts at BASE+0x200 (not used by barebox), so 0x200 is just enough.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
