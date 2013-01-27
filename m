Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzQKi-0003q4-00
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 11:23:32 +0000
Date: Sun, 27 Jan 2013 12:23:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130127112330.GZ1906@pengutronix.de>
References: <1359219160-18500-1-git-send-email-antonynpavlov@gmail.com>
 <1359219160-18500-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1359219160-18500-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/4] MIPS: introduce ram0 regions register function
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 26, 2013 at 08:52:37PM +0400, Antony Pavlov wrote:
> On MIPS there are two segments in CPU address space that
> can be used for untranslated memory access: KSEG0 and KSEG1.
> KSEG0 is used for cached access and KSEG1 is used for
> uncached one.
> 
> The instroduced mips_add_ram0() function registers two
> address regions for memory access: one in KSEG0 and
> the other one in KSEG1.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/include/asm/memory.h |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
>  create mode 100644 arch/mips/include/asm/memory.h
> 
> diff --git a/arch/mips/include/asm/memory.h b/arch/mips/include/asm/memory.h
> new file mode 100644
> index 0000000..2aa28b7
> --- /dev/null
> +++ b/arch/mips/include/asm/memory.h
> @@ -0,0 +1,12 @@
> +#ifndef __ASM_MIPS_MEMORY_H
> +#define __ASM_MIPS_MEMORY_H
> +
> +#include <memory.h>
> +#include <asm/addrspace.h>
> +
> +static inline void mips_add_ram0(resource_size_t size)
> +{
> +	barebox_add_memory_bank("kseg0_ram0", KSEG0, size);
> +	barebox_add_memory_bank("kseg1_ram0", KSEG1, size);
> +}

Is kseg0/1 a common name under MIPS, or in other words, do users know
what they have here?

Why should I use the uncached RAM as a user? Is this for debugging or
does it have apractical usecase?

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
