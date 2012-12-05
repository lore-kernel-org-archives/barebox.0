Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgCUp-00054S-Qo
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 10:46:33 +0000
Date: Wed, 5 Dec 2012 11:46:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205104627.GD10369@pengutronix.de>
References: <1354622569-7673-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <1354622569-7673-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354622569-7673-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: Re: [PATCH 2/2] OMAP: disable unaligned access when building the IFT
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 04, 2012 at 01:02:49PM +0100, Enrico Scholz wrote:
> MLO is located in SRAM and OMAP4 does not allow unaligned access in
> this area:
> 
> | :/ md -w 0x40300000+2
> | 40300000: 9001                                               ..
> | :/ md -w 0x40300001+2
> | unable to handle paging request at address 0x40300001
> 
> Patch sets the ARM_NOUNALIGNED option introduced by a previous patch.
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  arch/arm/mach-omap/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 81f6127..445a35a 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -68,6 +68,7 @@ config OMAP_GPMC
>  
>  config OMAP_BUILD_IFT
>  	prompt "build ift binary"
> +	select ARM_NOUNALIGNED

This needs more investigation. Coupling this to OMAP_BUILD_IFT does not
seem to be correct. Unaligned accesses work for cached memory once the MMU
is enabled, it won't work with MMU disabled though. In barebox MMU
support is optional and even when the MMU is enabled in the config parts
of the initialization run with MMU disabled.

This U-Boot commit shows what's going on:

> commit b823fd9ba56d56e3cbb5b05e7a4815fb0914204a
> Author: Albert ARIBAUD <albert.u.boot@aribaud.net>
> Date:   Tue Oct 9 09:28:15 2012 +0000
>     ARM: prevent misaligned array inits
>     
>     Under option -munaligned-access, gcc can perform local char
>     or 16-bit array initializations using misaligned native
>     accesses which will throw a data abort exception. Fix files
>     where these array initializations were unneeded, and for
>     files known to contain such initializations, enforce gcc
>     option -mno-unaligned-access.
>     
>     Signed-off-by: Albert ARIBAUD <albert.u.boot@aribaud.net>
>     [trini: Switch to usign call cc-option for -mno-unaligned-access as
>     Albert had done previously as that's really correct]
>     Signed-off-by: Tom Rini <trini@ti.com>
> 

This patch explicitely mentions char arrays initialized on the stack
like this:

function foo()
{
       char buffer[] = "initial value";
/* or */
       char buffer[] = { 'i', 'n', 'i', 't', 0 };
       ...
}

Is this the place where you see problems?

The U-Boot people work around this issue by converting the above to
const char *buffer = "initial value"; where possible and pass the
-mno-unaligned-access flag to files where this is not possible.

I really do not want to go the way to pass compiler flags to individual
files. Also the above is valid C code which should work.

barebox is written to not contain unaligned accesses, everything else
will fail on earlier ARM CPUs. I think we should pass the
-mno-unaligned-access unconditionally. Normally this will have no impact
as barebox doesn't do explicit unaligned accesses. For the rare cases
like the one above barebox should just work without having to pass
additional flags to files.

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
