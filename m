Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMeI0-0007ib-GV
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 09:10:54 +0000
Date: Mon, 21 Dec 2009 10:09:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221090949.GS15126@pengutronix.de>
References: <alpine.LFD.2.00.0912200633440.15922@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912200633440.15922@localhost>
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
Subject: Re: unused CONFIG variables in current barebox tree
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sun, Dec 20, 2009 at 06:38:55AM -0500, Robert P. J. Day wrote:
> 
>   not sure if this is where this sort of thing should be posted, but i
> used one of my stock kernel scanning scripts on the current barebox
> tree to locate any CONFIG variables that are defined in a Kconfig file
> somewhere but never subsequently tested in a preprocessor directive,
> and here's the output.  (it would be trivial to run the other scripts
> to locate more oddities.)
> 
> 
> ===== ARCH_LINUX
> arch/sandbox/Kconfig:14:config ARCH_LINUX

I'm not sure about this one. It was probably meant to be able to compile
the sandbox under different OSes. I think for now we can remove it.

> ===== BFIN_BOOT_FLASH8
> arch/blackfin/Kconfig:58:config BFIN_BOOT_FLASH8

This can be removed.

> ===== CMD_SAVES
> commands/Kconfig:141:config CMD_SAVES

Ditto

> ===== CPU_32
> arch/arm/cpu/Kconfig:3:config CPU_32

This comes from the kernel. I don't know if it makes any sense there
since it is default y without prompt.

> ===== EARLY_CONSOLE_BAUDRATE
> common/Kconfig:304:config EARLY_CONSOLE_BAUDRATE
> ===== EARLY_CONSOLE_PORT
> arch/ppc/mach-mpc5xxx/Kconfig:14:config EARLY_CONSOLE_PORT
> common/Kconfig:295:config EARLY_CONSOLE_PORT
> ===== EARLY_CONSOLE_PORT
> arch/ppc/mach-mpc5xxx/Kconfig:14:config EARLY_CONSOLE_PORT
> common/Kconfig:295:config EARLY_CONSOLE_PORT

These can also be removed, they are handled in runtime now.

> ===== EUKREA_CPUIMX27_NOR_32MB
> arch/arm/mach-imx/Kconfig:278:config EUKREA_CPUIMX27_NOR_32MB

This is part of a choice, the other choice is EUKREA_CPUIMX27_NOR_64MB.
There can be only one, so in the code we only check for
EUKREA_CPUIMX27_NOR_64MB. We should keep this

> ===== HAS_CFI
> arch/arm/mach-at91rm9200/Kconfig:18:	select HAS_CFI
> arch/arm/mach-netx/Kconfig:49:	select HAS_CFI
> arch/arm/mach-imx/Kconfig:85:	select HAS_CFI
> arch/arm/mach-imx/Kconfig:105:	select HAS_CFI
> arch/arm/mach-imx/Kconfig:126:	select HAS_CFI
> arch/arm/mach-imx/Kconfig:146:	select HAS_CFI
> arch/arm/mach-imx/Kconfig:155:	select HAS_CFI
> arch/arm/mach-imx/Kconfig:171:	select HAS_CFI
> arch/arm/mach-imx/Kconfig:215:	select HAS_CFI
> arch/arm/mach-imx/Kconfig:223:        select HAS_CFI
> arch/ppc/Kconfig:54:	select HAS_CFI
> arch/m68k/Kconfig:77:	select HAS_CFI
> arch/m68k/Kconfig:85:	select HAS_CFI
> arch/m68k/Kconfig:94:	select HAS_CFI
> arch/m68k/Kconfig:102:	select HAS_CFI
> arch/m68k/Kconfig:110:	select HAS_CFI
> arch/m68k/Kconfig:119:	select HAS_CFI
> arch/m68k/Kconfig:128:	select HAS_CFI
> arch/m68k/Kconfig:137:	select HAS_CFI
> drivers/nor/Kconfig:3:config HAS_CFI

The intention here was that the CFI driver only shows up when HAS_CFI is
selected, but apparently this is broken. We have the choice to remove
the HAS_CFI completely or to add a if HAS_CFI to drivers/nor/Kconfig.
Any opinions here?

> ===== M68K
> arch/m68k/include/asm/byteorder.h:24: * M68K is always big-endian mode.
> arch/m68k/include/asm/coldfire/mcf5xxx.h:28: * Common M68K & ColdFire definitions
> arch/m68k/Kconfig:49:config M68K
> arch/m68k/cpu/cpu.c:157: * For M68K we never enable data cache so we do not need to disable it again.
> commands/bootm.c:141:	case IH_CPU_M68K:	arch = "M68K"; 			break;
> include/image.h:76:#define IH_CPU_M68K		12	/* M68K		*/

m68k is quite broken at the moment, most probably because I failed to
merge some files from his patches. I'll ask Carsten Schlote, the
original author, whether he cares to fix m68k. Until this I suggest not
to touch this.

> ===== MTD_NAND_DISKONCHIP_BBTWRITE
> drivers/nand/Kconfig:86:config MTD_NAND_DISKONCHIP_BBTWRITE
> drivers/nand/diskonchip.c:123:#ifdef MTD_NAND_DISKONCHIP_BBTWRITE

The diskonchip support is a 1:1 copy from U-Boot and nobody has touched
it since. We can remove it alltogether.

> ===== PARTITION
> common/Kconfig:316:config PARTITION
> drivers/nand/diskonchip.c:1287:		printk(KERN_INFO	"    PARTITION[%d] ->\n"

This can be removed.

> ===== PCM043_DISPLAY_TY090
> arch/arm/mach-imx/Kconfig:243:config PCM043_DISPLAY_TY090

Same as with EUKREA_CPUIMX27_NOR_* above. We should keep this.

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
