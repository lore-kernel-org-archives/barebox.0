Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo173.mail-out.ovh.net ([46.105.46.122])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cgrfI-0000bL-4M
 for barebox@lists.infradead.org; Thu, 23 Feb 2017 11:34:30 +0000
Received: from player687.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 84C74255E8
 for <barebox@lists.infradead.org>; Thu, 23 Feb 2017 12:34:00 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player687.ha.ovh.net (Postfix) with ESMTPA id 1D49A2C008C
 for <barebox@lists.infradead.org>; Thu, 23 Feb 2017 12:33:41 +0100 (CET)
Date: Thu, 23 Feb 2017 12:39:34 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170223113934.GA12475@mail.ovh.net>
References: <20170215192932.GB32649@mail.ovh.net>
 <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
 <1487187257-29082-7-git-send-email-plagnioj@jcrosoft.com>
 <20170216072758.rth6weow52f7tmt2@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170216072758.rth6weow52f7tmt2@pengutronix.de>
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
Subject: Re: [PATCH 07/12] efi: move x86 efi boot support to x86 arch
To: barebox@lists.infradead.org

On 08:27 Thu 16 Feb     , Michael Olbrich wrote:
> On Wed, Feb 15, 2017 at 08:34:15PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > prepare to drop the efi arch as efi boot up is not arch sepecific
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  Documentation/boards/efi.rst                 |   2 +-
> >  arch/x86/Kconfig                             |  53 ++++++++++++--
> >  arch/x86/Makefile                            |  74 +++++++++++++++++--
> >  arch/x86/configs/efi_defconfig               |  78 ++++++++++++++++++++
> >  arch/x86/configs/generic_defconfig           |   1 +
> >  arch/x86/include/asm/elf.h                   |  86 +++++++++++++++-------
> >  arch/x86/include/asm/io.h                    |  71 +++++++++---------
> >  arch/x86/include/asm/types.h                 |  51 ++++++++-----
> >  arch/x86/include/asm/unaligned.h             |   5 ++
> >  arch/x86/lib/Makefile                        |   2 +
> >  arch/x86/lib/asm-offsets.c                   |   7 ++
> >  arch/x86/mach-efi/.gitignore                 |   2 +
> >  arch/x86/mach-efi/Makefile                   |   4 +
> >  arch/x86/mach-efi/crt0-efi-ia32.S            |  76 +++++++++++++++++++
> >  arch/x86/mach-efi/crt0-efi-x86_64.S          |  75 +++++++++++++++++++
> >  arch/x86/mach-efi/elf_ia32_efi.lds.S         | 106 +++++++++++++++++++++++++++
> >  arch/x86/mach-efi/elf_x86_64_efi.lds.S       |  99 +++++++++++++++++++++++++
> >  arch/x86/mach-efi/include/mach/barebox.lds.h |   0
> 
> I think this should be done instead of adding an empty file:
> 
> diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> index c8a919b928c9..dd2d286d32ec 100644
> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -6,7 +6,7 @@
>  #define STRUCT_ALIGNMENT 32
>  #define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
>  
> -#if defined CONFIG_X86 || \
> +#if defined CONFIG_X86_32 || \
>  	defined CONFIG_ARCH_EP93XX || \
>  	defined CONFIG_ARCH_ZYNQ

I don't like the idead to add more and more ifdef

It's better to switch to a Kconfig instead

and as we can build EFI for X86 32 this will not work anyway

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
