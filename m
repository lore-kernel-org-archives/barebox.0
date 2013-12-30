Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vxeem-0000EF-FY
 for barebox@lists.infradead.org; Mon, 30 Dec 2013 15:21:30 +0000
Received: by mail-lb0-f171.google.com with SMTP id w7so5567039lbi.16
 for <barebox@lists.infradead.org>; Mon, 30 Dec 2013 07:21:03 -0800 (PST)
Date: Mon, 30 Dec 2013 19:28:48 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20131230192848.b4ce60d108759a68566807c8@gmail.com>
In-Reply-To: <1388392193-5411-1-git-send-email-u74147@gmail.com>
References: <1388392193-5411-1-git-send-email-u74147@gmail.com>
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
Subject: Re: [PATCH] mips asm/types.h: add #ifndef to fix compile error
To: u74147@gmail.com
Cc: barebox@lists.infradead.org

On Mon, 30 Dec 2013 16:29:53 +0800
u74147@gmail.com wrote:

> From: Du Huanpeng <u74147@gmail.com>
> =

> without "#ifndef __ASSEMBLY__ #endif", an assembly file
> including this file will break compilation.
> =

> Signed-off-by: Du Huanpeng <u74147@gmail.com>
> ---
>  arch/mips/include/asm/types.h |    4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/arch/mips/include/asm/types.h b/arch/mips/include/asm/types.h
> index f5373cc..0341e8b 100644
> --- a/arch/mips/include/asm/types.h
> +++ b/arch/mips/include/asm/types.h
> @@ -13,6 +13,8 @@
>  =

>  #include <asm-generic/int-ll64.h>
>  =

> +#ifndef __ASSEMBLY__
> +
>  #if (defined(CONFIG_HIGHMEM) && defined(CONFIG_64BIT_PHYS_ADDR)) \
>      || defined(CONFIG_64BIT)
>  typedef u64 dma_addr_t;
> @@ -21,6 +23,8 @@ typedef u32 dma_addr_t;
>  #endif
>  typedef u64 dma64_addr_t;
>  =

> +#endif

Please change this '#endif' to '#endif /* __ASSEMBLY__ */'

> +
>  /*
>   * We don't use int-l64.h for the kernel anymore but still use it for
>   * userspace to avoid code changes.
> -- =

> 1.7.9.5
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
