Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RSlBE-0007Ra-SZ
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 07:54:13 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5B4BFDC8BE2
 for <barebox@lists.infradead.org>; Tue, 22 Nov 2011 09:00:31 +0100 (CET)
Date: Tue, 22 Nov 2011 08:51:30 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111122075130.GH21480@game.jcrosoft.org>
References: <1319716242-2328-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1319716242-2328-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] sandbox: move ELFCLASS detection to asm/elf.h
To: barebox@lists.infradead.org
Cc: =?iso-8859-1?Q?Lo=EFc?= Minier <loic.minier@linaro.org>

On 19:50 Thu 27 Oct     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> now we can detect the host build from gcc macro
> and cross compile the sandbox
> =

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Lo=EFc Minier <loic.minier@linaro.org>
> ---
ping

Best Regards,
J.
> v3:
> =

> 	fix typo
> v2:
> 	as discuss with Lo=EFc use the size of the pointer
> =

> Lo=EFc
> =

> 	to build on most of arch you need this fix and 3 others
> 	already in the next
> =

> 	commit	9a5898e5: sandbox: simplify linker script
> 	commit	15f87657: sandbox: remove duplicate barebox.lds.S
> 	ommit	e3e71f5e: sandbox: move __SANDBOX__ to Makefile
> =

> 	Sacha those 4 patches could go to the master as they fix the sandbox
> =

> Best Regards,
> J.
> =

>  arch/sandbox/Makefile          |   13 -------------
>  arch/sandbox/include/asm/elf.h |   11 ++++++++++-
>  2 files changed, 10 insertions(+), 14 deletions(-)
> =

> diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
> index b88f1f6..9fd18a2 100644
> --- a/arch/sandbox/Makefile
> +++ b/arch/sandbox/Makefile
> @@ -36,19 +36,6 @@ SUBARCH :=3D $(shell uname -m | sed -e s/i.86/i386/ -e=
 s/sun4u/sparc64/ \
>  				  -e s/s390x/s390/ -e s/parisc64/parisc/ \
>  				  -e s/ppc.*/powerpc/ -e s/mips.*/mips/ )
>  =

> -ifeq ($(SUBARCH),x86_64)
> -ELF_CLASS :=3D ELFCLASS64
> -endif
> -ifeq ($(SUBARCH),i386)
> -ELF_CLASS  :=3D ELFCLASS32
> -endif
> -ifeq ($(SUBARCH),powerpc)
> -ELF_CLASS  :=3D ELFCLASS32
> -endif
> -
> -CPPFLAGS +=3D -DELF_CLASS=3D"$(ELF_CLASS)"
> -export ELF_CLASS
> -
>  archprepare: maketools
>  =

>  PHONY +=3D maketools
> diff --git a/arch/sandbox/include/asm/elf.h b/arch/sandbox/include/asm/el=
f.h
> index b60d248..405393f 100644
> --- a/arch/sandbox/include/asm/elf.h
> +++ b/arch/sandbox/include/asm/elf.h
> @@ -1,2 +1,11 @@
> +#ifndef __ASM_SANDBOX_ELF_H__
> +#define __ASM_SANDBOX_ELF_H__
>  =

> -/* nothing yet */
> +#if __SIZEOF_POINTER__ =3D=3D 8
> +#define ELF_CLASS	ELFCLASS64
> +#define CONFIG_PHYS_ADDR_T_64BIT
> +#else
> +#define ELF_CLASS	ELFCLASS32
> +#endif
> +
> +#endif /* __ASM_SANDBOX_ELF_H__ */
> -- =

> 1.7.7

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
