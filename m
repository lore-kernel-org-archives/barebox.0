Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSjwT-00065G-Nx
 for barebox@lists.infradead.org; Fri, 11 May 2012 07:08:21 +0000
Date: Fri, 11 May 2012 09:07:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511070708.GX27341@pengutronix.de>
References: <1336658206-14496-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336658206-14496-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH 1/1] ppc reloc.S: use a common trap relocation function
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Thu, May 10, 2012 at 02:56:46PM +0100, Renaud Barbier wrote:
> The trap relocation function trap_reloc can be used across several PPC
> platforms and is added to the ppc library. Accordingly, the definition
> of trap_reloc is removed from mach-mpc5xxx/start.S
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>

Applied, thanks

Sascha

> ---
>  arch/ppc/lib/Makefile         |    1 +
>  arch/ppc/lib/reloc.S          |   47 +++++++++++++++++++++++++++++++++++++++++
>  arch/ppc/mach-mpc5xxx/start.S |   14 ------------
>  3 files changed, 48 insertions(+), 14 deletions(-)
>  create mode 100644 arch/ppc/lib/reloc.S
> 
> diff --git a/arch/ppc/lib/Makefile b/arch/ppc/lib/Makefile
> index 0f5e017..ba2f078 100644
> --- a/arch/ppc/lib/Makefile
> +++ b/arch/ppc/lib/Makefile
> @@ -8,4 +8,5 @@ obj-y += misc.o
>  obj-$(CONFIG_CMD_BOOTM) += ppclinux.o
>  obj-$(CONFIG_MODULES) += module.o
>  obj-y += crtsavres.o
> +obj-y += reloc.o
>  
> diff --git a/arch/ppc/lib/reloc.S b/arch/ppc/lib/reloc.S
> new file mode 100644
> index 0000000..92ee189
> --- /dev/null
> +++ b/arch/ppc/lib/reloc.S
> @@ -0,0 +1,47 @@
> +/*
> + * Copyright (C) 2009 Wolfgang Denk <wd@denx.de>
> + *
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * You should have received a copy of the GNU General Public License
> + * along with this program; if not, write to the Free Software
> + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
> + * MA 02111-1307 USA
> + */
> +
> +#include <asm/ppc_asm.tmpl>
> +
> +	.file	"reloc.S"
> +
> +	.text
> +	/*
> +	 * Function: relocate entries for one exception vector
> +	 */
> +	.globl trap_reloc
> +	.type	trap_reloc, @function
> +trap_reloc:
> +	lwz	r0, 0(r7)		/* hdlr ...		*/
> +	add	r0, r0, r3		/*  ... += dest_addr	*/
> +	stw	r0, 0(r7)
> +
> +	lwz	r0, 4(r7)		/* int_return ...	*/
> +	add	r0, r0, r3		/*  ... += dest_addr	*/
> +	stw	r0, 4(r7)
> +
> +	lwz	r0, 8(r7)		/* transfer_to_handler ...*/
> +	add	r0, r0, r3		/*  ... += dest_addr	*/
> +	stw	r0, 8(r7)
> +
> +	blr
> +	.size	trap_reloc, .-trap_reloc
> diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
> index e098a87..04e8fe3 100644
> --- a/arch/ppc/mach-mpc5xxx/start.S
> +++ b/arch/ppc/mach-mpc5xxx/start.S
> @@ -726,20 +726,6 @@ trap_init:
>  	mtlr	r4			/* restore link register    */
>  	blr
>  
> -	/*
> -	 * Function: relocate entries for one exception vector
> -	 */
> -trap_reloc:
> -	lwz	r0, 0(r7)		/* hdlr ...			*/
> -	add	r0, r0, r3		/*  ... += dest_addr		*/
> -	stw	r0, 0(r7)
> -
> -	lwz	r0, 4(r7)		/* int_return ...		*/
> -	add	r0, r0, r3		/*  ... += dest_addr		*/
> -	stw	r0, 4(r7)
> -
> -	blr
> -
>  .globl _text_base
>  _text_base:
>  	.long TEXT_BASE
> -- 
> 1.7.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
