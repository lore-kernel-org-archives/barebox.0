Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYyc-0007SF-K1
 for barebox@lists.infradead.org; Thu, 23 Apr 2020 10:21:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id n6so5593533ljg.12
 for <barebox@lists.infradead.org>; Thu, 23 Apr 2020 03:20:59 -0700 (PDT)
Date: Thu, 23 Apr 2020 13:20:55 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200423132055.eb6f2d1918b736c92c026d69@gmail.com>
In-Reply-To: <20200423081712.4022-1-cleger@kalray.eu>
References: <20200423081712.4022-1-cleger@kalray.eu>
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
Subject: Re: [PATCH v2 0/6] elf: add better bootm support
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Thu, 23 Apr 2020 10:17:05 +0200
Clement Leger <cleger@kalray.eu> wrote:

Hi, Clement

Just FYI. On MIPS barebox I use out-of-tree kexec-based ELF loader.

This efforts started in 2012 (sic!):
http://lists.infradead.org/pipermail/barebox/2012-December/011771.html

Alas! kexec patches are not mainlined still.

public kexec patches are available in my github repo, e.g.
https://github.com/frantony/barebox/commits/20170319.mips-malta-elf-linux

If your are interested in using kexec-style ELF loading I can prepare
patches on top of latest barebox master.

> Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
> simply pass the file to the bootm and the read done on it will read the
> entire flash partition. This series starts by some cleanup and then add an
> elf_open function to load the elf file size only based on the elf header.
> A special handling for the elf file is also added in bootm data to allow
> using directly the elf file structure. Finally the mips bootm is modified
> to use bootm elf loading capability.
> =

> Changes v1 -> v2
>  - Add BOOTM_ELF config to select elf support and add checks in code
>  - Add an elf_get_mem_size function to avoid computing elf size in bootm.c
>  - Use xmalloc and read_full in elf_open instead of xzalloc/read
>  - Fix data->elf NULL reset
>  - Remove elf struct entirely from mips bootm code
> =

> Clement Leger (6):
>   common: elf: add computation of elf boundaries
>   common: elf: fix warning on 32 bits architectures
>   common: elf: split init to be reused from other function
>   common: elf: add elf_open and elf_close
>   common: bootm: add support for elf file loading
>   mips: lib: bootm: use bootm elf loading capabilities
> =

>  arch/mips/lib/bootm.c |  27 +++--------
>  common/Kconfig        |   8 ++++
>  common/bootm.c        |  30 ++++++++++++
>  common/elf.c          | 107 ++++++++++++++++++++++++++++++++++++++++--
>  include/bootm.h       |   3 ++
>  include/elf.h         |  14 ++++++
>  6 files changed, 164 insertions(+), 25 deletions(-)
> =

> -- =

> 2.17.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
