Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQNl-0008PU-Gm
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 12:54:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id f25so1691224ljg.12
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2020 04:54:16 -0800 (PST)
Date: Tue, 28 Jan 2020 15:54:13 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200128155413.68391b096ffdd891b76802b3@gmail.com>
In-Reply-To: <20200128092832.18615-1-o.rempel@pengutronix.de>
References: <20200128092832.18615-1-o.rempel@pengutronix.de>
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
Cc: barebox@lists.infradead.org

On Tue, 28 Jan 2020 10:28:32 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

Hi!

Have you tested the patch on real hardware?

-- =

Best regards,
=A0 Antony Pavlov

> .bss __rel_start (OVERLAY) was used to optimize RAM size used by
> barebox. Since .bss and __rel_start overlap, we should clear bss only
> after __rel_start was used.
> =

> There is a choice of moving .bss clear sequence after __rel_start or
> remove this optimization. Since the use of this optimization is minimal
> and danger to trap in to similar issue is still high, i prefer to remove
> this optimization.
> =

> Fixes: 1e5aef61fc6a444 ("MIPS: reloc: init bss and cpu")
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/lib/barebox.lds.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
> index 693a778980..c954df41f3 100644
> --- a/arch/mips/lib/barebox.lds.S
> +++ b/arch/mips/lib/barebox.lds.S
> @@ -59,7 +59,7 @@ SECTIONS
>  =

>  	_end =3D .;
>  =

> -	.bss __rel_start (OVERLAY) : {
> +	.bss : {
>  		__bss_start =3D .;
>  		*(.sbss.*)
>  		*(.bss.*)
> -- =

> 2.25.0
> =



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
