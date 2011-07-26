Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qlbrf-0001lB-VK
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 07:15:40 +0000
Received: by wwf22 with SMTP id 22so110160wwf.18
	for <barebox@lists.infradead.org>; Tue, 26 Jul 2011 00:15:36 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1311655236-6684-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311655236-6684-1-git-send-email-plagnioj@jcrosoft.com>
Date: Tue, 26 Jul 2011 11:15:36 +0400
Message-ID: <CAA4bVAFTViA-DDFSCrM0D1-xXxOzv9WbufrMWAJZnk6-m5Z6ng@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mips: fix mipsel toolchains support to compile BIG_ENDIAN
	board
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 26/07/2011, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

>  arch/mips/Makefile |   42 ++++++++++++++++++++++++++++++++++++++----
>  1 files changed, 38 insertions(+), 4 deletions(-)
>
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 86b4b80..72434d4 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -1,20 +1,54 @@
> +#
> +# Select the object file format to substitute into the linker script.
> +#
> +ifdef CONFIG_CPU_LITTLE_ENDIAN
> +32bit-tool-archpref	= mipsel
> +64bit-tool-archpref	= mips64el
> +32bit-bfd		= elf32-tradlittlemips
> +64bit-bfd		= elf64-tradlittlemips
> +32bit-emul		= elf32ltsmip
> +64bit-emul		= elf64ltsmip
> +else
> +32bit-tool-archpref	= mips
> +64bit-tool-archpref	= mips64
> +32bit-bfd		= elf32-tradbigmips
> +64bit-bfd		= elf64-tradbigmips
> +32bit-emul		= elf32btsmip
> +64bit-emul		= elf64btsmip
> +endif
> +

This is part of linux mips Makefile.
But *-tool-archpref variables don't used. In linux this variables used
to construct CROSS_COMPILE (if not set). I shell send the patches to
use them.

>  CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
>
>  cflags-y += -G 0 -mno-abicalls -fno-pic -pipe
>  cflags-y += -Wall -Wmissing-prototypes -Wstrict-prototypes \
>  	-Wno-uninitialized -Wno-format -Wno-main
>
> -cflags-$(CONFIG_32BIT) += -mabi=32
> -cflags-$(CONFIG_64BIT) += -mabi=64
> +ifdef CONFIG_32BIT
> +ld-emul		= $(32bit-emul)
> +cflags-y	+= -mabi=32
> +endif
> +
> +ifdef CONFIG_64BIT
> +ld-emul		= $(64bit-emul)
> +cflags-y	+= -mabi=64
> +endif
>
>  undef-all += -UMIPSEB -U_MIPSEB -U__MIPSEB -U__MIPSEB__
>  undef-all += -UMIPSEL -U_MIPSEL -U__MIPSEL -U__MIPSEL__
>  predef-be += -DMIPSEB -D_MIPSEB -D__MIPSEB -D__MIPSEB__
>  predef-le += -DMIPSEL -D_MIPSEL -D__MIPSEL -D__MIPSEL__
>
> -cflags-$(CONFIG_CPU_BIG_ENDIAN) += $(shell $(CC) -dumpmachine |grep -q
> 'mips.*el-.*' && echo -EB $(undef-all) $(predef-be))


> +ifdef CONFIG_CPU_BIG_ENDIAN
> +cflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB
> $(undef-all) $(predef-be))
> +ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB
> )
> +endif
> +
> +ifdef CONFIG_CPU_BIG_ENDIAN

Too many CPU_BIG_ENDIAN here...

> +cflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL
> $(undef-all) $(predef-le))
> +ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL
> )
> +endif

-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
