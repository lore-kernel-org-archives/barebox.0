Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itSJ9-0000gy-PH
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 08:21:20 +0000
Date: Mon, 20 Jan 2020 09:21:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200120082114.gqizvodxf6ufikzt@pengutronix.de>
References: <20200120050330.161859-1-r.czerwinski@pengutronix.de>
 <20200120050330.161859-2-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120050330.161859-2-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 2/4] ARM: add optee early loading function
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 20, 2020 at 06:03:28AM +0100, Rouven Czerwinski wrote:
> Add a OP-TEE early loading function which expects a pointer to a valid
> tee binary and the device tree. OP-TEE will then be started and barebox
> will continue to run in normal mode.
> 
> The function start_optee_early should be used in a boards lowlevel.c
> file. Ensure that barebox has been relocated and a proper c environment
> has been setup beforehand. Depending on the OP-TEE configuration, the
> fdt will be modified. If the internal barebox device tree is passed,
> OP-TEE will overwrite barebox PBL memory during this modification. Copy
> the fdt to a save memory location beforehand to avoid a corruption of

s/save/safe/

> barebox PBL memory.
> 
> This also moves the OP-TEE Kconfig symbols into a separate menu.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  arch/arm/lib32/Makefile             |  3 ++
>  arch/arm/lib32/optee-early.c        | 29 ++++++++++++++++
>  common/Kconfig                      | 54 ++++++++++++++++++-----------
>  common/Makefile                     |  1 +
>  include/asm-generic/memory_layout.h |  4 +--
>  include/tee/optee.h                 |  6 ++++
>  6 files changed, 74 insertions(+), 23 deletions(-)
>  create mode 100644 arch/arm/lib32/optee-early.c
> 
> diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
> index cd43147e66..18f6973fcc 100644
> --- a/arch/arm/lib32/Makefile
> +++ b/arch/arm/lib32/Makefile
> @@ -28,3 +28,6 @@ extra-y += barebox.lds
>  pbl-y	+= lib1funcs.o
>  pbl-y	+= ashldi3.o
>  pbl-y	+= div0.o
> +
> +pbl-$(CONFIG_PBL_OPTEE)	+= setjmp.o

This should be in the patch adding setjmp/longjmp support. Where is it
btw?

> +pbl-$(CONFIG_PBL_OPTEE)	+= optee-early.o
> diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
> new file mode 100644
> index 0000000000..f1755e075f
> --- /dev/null
> +++ b/arch/arm/lib32/optee-early.c
> @@ -0,0 +1,29 @@

spdx?

> +#include <asm/cache.h>
> +#include <asm/setjmp.h>
> +#include <tee/optee.h>
> +#include <debug_ll.h>
> +
> +jmp_buf tee_buf;

static?

> +
> +int start_optee_early(void* fdt, void* tee) {

Coding style nitpick: opening braces of a function should be on the next
line. Also, should be "void *fdt", not "void* fdt"

> +	void (*tee_start)(void* r0, void* r1, void* r2);
> +	struct optee_header *hdr;
> +	int ret = 0;

Unnecessary initialization.

> +
> +	hdr = tee;
> +	ret = optee_verify_header(hdr);
> +	if (ret < 0)
> +		return ret;
> +
> +	memcpy((void *)hdr->init_load_addr_lo, tee + sizeof(*hdr), hdr->init_size);
> +	tee_start = (void *) hdr->init_load_addr_lo;
> +	ret = 1;

Why?

> +	ret = setjmp(tee_buf);
> +	if (ret == 0) {
> +		sync_caches_for_execution();
> +		tee_start(0, 0, fdt);
> +		longjmp(tee_buf, 1);
> +	}

Some comment like "We use setjmp/longjmp here because OP-TEE clobbers
most registers" would be nice here.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
