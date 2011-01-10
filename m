Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PcNBr-0004VR-6o
	for barebox@lists.infradead.org; Mon, 10 Jan 2011 19:16:13 +0000
Date: Mon, 10 Jan 2011 20:13:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110110191354.GK12078@pengutronix.de>
References: <1294634212-29029-1-git-send-email-marc@cpdesign.com.au>
	<1294634212-29029-4-git-send-email-marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1294634212-29029-4-git-send-email-marc@cpdesign.com.au>
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
Subject: Re: [PATCH 3/3] imx(25,35): save boot location into $boot_loc env.
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

Hi Marc,

On Mon, Jan 10, 2011 at 03:36:52PM +1100, Marc Reilly wrote:
> Saves the boot source into an environment variable so env scripts
> can more easily use boot source information. We could also
> look at the extra information in the MEM_TYPE bits if needed in future,
> but this is good enough for my purposes.
> 
> Note only tested on imx35. I haven't added support for any other variants
> because I'm not familiar with them. (And can't test them anyway).
> 
> Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
> ---
>  arch/arm/mach-imx/Makefile |    1 +
>  arch/arm/mach-imx/boot.c   |   57 ++++++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 0 deletions(-)
>  create mode 100644 arch/arm/mach-imx/boot.c
> 
> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
> index d000683..3b2deaf 100644
> --- a/arch/arm/mach-imx/Makefile
> +++ b/arch/arm/mach-imx/Makefile
> @@ -11,3 +11,4 @@ obj-$(CONFIG_IMX_IIM)	+= iim.o
>  obj-$(CONFIG_NAND_IMX) += nand.o
>  obj-y += speed.o
>  obj-y += devices.o
> +obj-y += boot.o
> diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
> new file mode 100644
> index 0000000..a9bce4b
> --- /dev/null
> +++ b/arch/arm/mach-imx/boot.c
> @@ -0,0 +1,57 @@
> +/*
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
> +#include <common.h>
> +#include <environment.h>
> +#include <init.h>
> +
> +#include <asm/io.h>
> +#include <mach/imx-regs.h>
> +
> +#if defined(CONFIG_ARCH_IMX25) || defined(CONFIG_ARCH_IMX35)
> +static int imx_boot_save_loc(void)
> +{
> +	uint32_t reg;
> +	reg = readl(IMX_CCM_BASE + CCM_RCSR);
> +
> +	switch ((reg >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3) {
> +	case 0x03:		/* SD/MMC is the source */
> +		setenv("boot_loc", "mmc");
> +		export("boot_loc");
> +		break;
> +	case 0x01:		/* NAND is the source */
> +		setenv("boot_loc", "nand");
> +		export("boot_loc");
> +		break;
> +	case 0x00:		/* NOR is the source */
> +		setenv("boot_loc", "nor");
> +		export("boot_loc");
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	return 0;
> +}

We can safe some instructions by doing:

	char *bootloc = NULL;

	switch ((reg >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3) {
	case 0x03:              /* SD/MMC is the source */
		bootloc = "mmc";
		break;
	...
	}

	if (bootloc) {
		setenv("boot_loc", bootloc);
		export("boot_loc");
	}

Other than that we might want to add a comment that mmc is not
necessarily correct, because it might also be i2c/spi eeprom determined
by the BT_MEM_TYPE bits.

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
