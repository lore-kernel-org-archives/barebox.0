Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RTVs2-0002Xr-NH
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 09:45:31 +0000
Date: Thu, 24 Nov 2011 10:45:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111124094525.GB27267@pengutronix.de>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
 <1322103764-6265-10-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322103764-6265-10-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH 9/9] arm/mach-pxa: add mioa701 board
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Nov 24, 2011 at 04:02:44AM +0100, Robert Jarzmik wrote:
> Add Mitac MioA701 board initial support.
> The support only provides basic boot and a console over USB
> (serial gadget).
> 
> +coredevice_initcall(mioa701_coredevice_init);
> diff --git a/arch/arm/boards/mioa701/config.h b/arch/arm/boards/mioa701/config.h
> new file mode 100644
> index 0000000..0b50067
> --- /dev/null
> +++ b/arch/arm/boards/mioa701/config.h

Are the defines in this file used by generic code? If not, please put
them into a board specific include file (or remove them if they are
unused)


> diff --git a/arch/arm/boards/mioa701/lowlevel_init.S b/arch/arm/boards/mioa701/lowlevel_init.S
> new file mode 100644
> index 0000000..72b5436
> --- /dev/null
> +++ b/arch/arm/boards/mioa701/lowlevel_init.S
> @@ -0,0 +1,46 @@
> +/*
> + *
> + * (c) 2012 Robert Jarzmik <robert.jarzmik@free.fr>
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
> +#define writel(val, reg) \
> +	ldr		r0,	=reg;	\
> +	ldr		r1,	=val;	\
> +	str		r1,   [r0];
> +
> +#define writeb(val, reg) \
> +	ldr		r0,	=reg;	\
> +	ldr		r1,	=val;	\
> +	strb		r1,   [r0];
> +
> +	.section ".text_bare_init","ax"
> +.global board_init_lowlevel
> +board_init_lowlevel:
> +	mov	r10, lr
> +	/*
> +	 * This piece of code should ensure at least:
> +	 *  - getting SDRAM out of self-refresh, and/or setup SDRAM timings
> +	 *  - putting the GPIO logic into a usable state
> +	bl	stabilize_reset
> +	bl	setup_sdram
> +	bl	setup_gpios

I can't find these functions in the patch. Is this used?

> +	 */
> +	mov	pc, r10
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
