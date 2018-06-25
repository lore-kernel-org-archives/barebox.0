Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXLG1-0004sm-6H
 for barebox@lists.infradead.org; Mon, 25 Jun 2018 06:45:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id k20-v6so3529602ljk.9
 for <barebox@lists.infradead.org>; Sun, 24 Jun 2018 23:45:38 -0700 (PDT)
Date: Mon, 25 Jun 2018 09:46:04 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180625094604.29d353b8222da99c4e9a51d6@gmail.com>
In-Reply-To: <20180417062255.l62b3tldnqmydpjl@pengutronix.de>
References: <20180415112858.5163-1-antonynpavlov@gmail.com>
 <20180415112858.5163-2-antonynpavlov@gmail.com>
 <20180417062255.l62b3tldnqmydpjl@pengutronix.de>
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
Subject: Re: [PATCH 01/10] Add initial RISC-V architecture support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 17 Apr 2018 08:22:55 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Sun, Apr 15, 2018 at 02:28:49PM +0300, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> > diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> > new file mode 100644
> > index 0000000000..d65e87acd8
> > --- /dev/null
> > +++ b/arch/riscv/Kconfig
> > @@ -0,0 +1,62 @@
> > +config RISCV
> > +	def_bool y
> > +	select GENERIC_FIND_NEXT_BIT
> > +	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
> > +	select HAVE_CONFIGURABLE_TEXT_BASE
> > +	select GPIOLIB
> > +	select OFTREE
> > +	select COMMON_CLK
> > +	select COMMON_CLK_OF_PROVIDER
> > +	select CLKDEV_LOOKUP
> > +
> > +config ARCH_TEXT_BASE
> > +	hex
> > +	default 0x0
> > +
> > +config GENERIC_LINKER_SCRIPT
> > +	def_bool y
> =

> Do we need this? The linker script should be universal enough to be used
> by all boards.

I have dropped it in v2 RISC-V patchseries.

> > diff --git a/arch/riscv/dts/skeleton.dtsi b/arch/riscv/dts/skeleton.dtsi
> > new file mode 100644
> > index 0000000000..38ead821bb
> > --- /dev/null
> > +++ b/arch/riscv/dts/skeleton.dtsi
> > @@ -0,0 +1,13 @@
> > +/*
> > + * Skeleton device tree; the bare minimum needed to boot; just include=
 and
> > + * add a compatible value.  The bootloader will typically populate the=
 memory
> > + * node.
> > + */
> > +
> > +/ {
> > +	#address-cells =3D <2>;
> > +	#size-cells =3D <1>;
> > +	chosen { };
> > +	aliases { };
> > +	memory { device_type =3D "memory"; reg =3D <0 0 0>; };
> > +};
> =

> skeleton.dtsi should no longer be used. For example we should now have
> memory@adr {}; instead of memory {};. Since "adr" is board/SoC specific
> we can't put it in a generic file.

I have dropped skeleton.dtsi in the v2 RISC-V patchseries.

I have even submitted patches for MIPS, please review.

> =

> > diff --git a/arch/riscv/lib/ashldi3.c b/arch/riscv/lib/ashldi3.c
> > new file mode 100644
> > index 0000000000..cbdbcbb6a9
> > --- /dev/null
> > +++ b/arch/riscv/lib/ashldi3.c
> > @@ -0,0 +1,28 @@
> > +#include <module.h>
> > +
> > +#include "libgcc.h"
> > +
> > +long long __ashldi3(long long u, word_type b)
> > +{
> =

> Can we have generic C variants for these files? The Kernel has these
> symbols in lib/ and they can be selected by "select GENERIC_ASHLDI3"

I know about this problem. I have even made a patch for linux kernel for MI=
PS:

  [PATCH v3 2/2] MIPS: use generic GCC library routines from lib/
  https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1599191.html

During this MIPS patch discussion it has become evident that Kconfig GENERI=
C_
prefix has to be changed to GENERIC_LIB_.

This morning I found that the patch =


  [PATCH] lib: Rename compiler intrinsic selects to GENERIC_LIB_*
  https://patchwork.kernel.org/patch/10335017/

has been merged by Linus almost two weeks ago.

So I can prepare corresponding generic GCC functions barebox patchseries
(it will be useful for MIPS). Next I shall submit RISC-V v2 patchseries.
RISC-V will use generic GCC functions from lib/ too.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
