Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKTd4-0003UN-5k
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 20:41:15 +0000
Received: by mail-lj1-x243.google.com with SMTP id b20so21684664ljj.5
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2019 13:41:11 -0700 (PDT)
Date: Tue, 15 Oct 2019 23:41:06 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20191015234106.9cfb8923875a4354d94b31ea@gmail.com>
In-Reply-To: <20191015160945.7930-1-o.rempel@pengutronix.de>
References: <20191015160945.7930-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH] MIPS: init cache before flashing it
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 15 Oct 2019 18:09:45 +0200
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

Hi!

Please review this thread http://lists.infradead.org/pipermail/barebox/2019=
-June/038530.html
AFAIR we have to clear BSS before calling r4k_cache_init().

-- =

Best regards,
=A0 Antony Pavlov

> Cache information was not initialized on flush_cache_all(). This was the
> reason for relatively slow boot speed on MIPS.
> =

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/mips/lib/reloc.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> index 9a9e404f7e..3d05ff1381 100644
> --- a/arch/mips/lib/reloc.c
> +++ b/arch/mips/lib/reloc.c
> @@ -40,6 +40,7 @@
>  #include <linux/sizes.h>
>  #include <asm-generic/memory_layout.h>
>  =

> +void r4k_cache_init(void);
>  void main_entry(void *fdt, u32 fdt_size);
>  void relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
>  =

> @@ -146,6 +147,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_s=
ize)
>  		apply_reloc(type, (void *)addr, off);
>  	}
>  =

> +	r4k_cache_init();
>  	/* Ensure the icache is coherent */
>  	flush_cache_all();
>  =

> -- =

> 2.23.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
