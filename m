Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f8K1D-0002QO-Ti
 for barebox@lists.infradead.org; Tue, 17 Apr 2018 06:23:10 +0000
Date: Tue, 17 Apr 2018 08:22:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180417062255.l62b3tldnqmydpjl@pengutronix.de>
References: <20180415112858.5163-1-antonynpavlov@gmail.com>
 <20180415112858.5163-2-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180415112858.5163-2-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 01/10] Add initial RISC-V architecture support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Sun, Apr 15, 2018 at 02:28:49PM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> new file mode 100644
> index 0000000000..d65e87acd8
> --- /dev/null
> +++ b/arch/riscv/Kconfig
> @@ -0,0 +1,62 @@
> +config RISCV
> +	def_bool y
> +	select GENERIC_FIND_NEXT_BIT
> +	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
> +	select HAVE_CONFIGURABLE_TEXT_BASE
> +	select GPIOLIB
> +	select OFTREE
> +	select COMMON_CLK
> +	select COMMON_CLK_OF_PROVIDER
> +	select CLKDEV_LOOKUP
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x0
> +
> +config GENERIC_LINKER_SCRIPT
> +	def_bool y

Do we need this? The linker script should be universal enough to be used
by all boards.

> diff --git a/arch/riscv/dts/skeleton.dtsi b/arch/riscv/dts/skeleton.dtsi
> new file mode 100644
> index 0000000000..38ead821bb
> --- /dev/null
> +++ b/arch/riscv/dts/skeleton.dtsi
> @@ -0,0 +1,13 @@
> +/*
> + * Skeleton device tree; the bare minimum needed to boot; just include and
> + * add a compatible value.  The bootloader will typically populate the memory
> + * node.
> + */
> +
> +/ {
> +	#address-cells = <2>;
> +	#size-cells = <1>;
> +	chosen { };
> +	aliases { };
> +	memory { device_type = "memory"; reg = <0 0 0>; };
> +};

skeleton.dtsi should no longer be used. For example we should now have
memory@adr {}; instead of memory {};. Since "adr" is board/SoC specific
we can't put it in a generic file.

> diff --git a/arch/riscv/lib/ashldi3.c b/arch/riscv/lib/ashldi3.c
> new file mode 100644
> index 0000000000..cbdbcbb6a9
> --- /dev/null
> +++ b/arch/riscv/lib/ashldi3.c
> @@ -0,0 +1,28 @@
> +#include <module.h>
> +
> +#include "libgcc.h"
> +
> +long long __ashldi3(long long u, word_type b)
> +{

Can we have generic C variants for these files? The Kernel has these
symbols in lib/ and they can be selected by "select GENERIC_ASHLDI3"

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
