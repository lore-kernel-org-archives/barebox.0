Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMK8B-0004AM-41
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 11:39:27 +0000
Received: from cpe002129687b04-cm001225dbafb6.cpe.net.cable.rogers.com
	([99.235.241.187] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1NMK86-0000dR-JN
	for barebox@lists.infradead.org; Sun, 20 Dec 2009 06:39:18 -0500
Date: Sun, 20 Dec 2009 06:38:55 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.00.0912200633440.15922@localhost>
MIME-Version: 1.0
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
Subject: unused CONFIG variables in current barebox tree
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  not sure if this is where this sort of thing should be posted, but i
used one of my stock kernel scanning scripts on the current barebox
tree to locate any CONFIG variables that are defined in a Kconfig file
somewhere but never subsequently tested in a preprocessor directive,
and here's the output.  (it would be trivial to run the other scripts
to locate more oddities.)


===== ARCH_LINUX
arch/sandbox/Kconfig:14:config ARCH_LINUX
===== BFIN_BOOT_FLASH8
arch/blackfin/Kconfig:58:config BFIN_BOOT_FLASH8
===== CMD_SAVES
commands/Kconfig:141:config CMD_SAVES
===== CPU_32
arch/arm/cpu/Kconfig:3:config CPU_32
===== EARLY_CONSOLE_BAUDRATE
common/Kconfig:304:config EARLY_CONSOLE_BAUDRATE
===== EARLY_CONSOLE_PORT
arch/ppc/mach-mpc5xxx/Kconfig:14:config EARLY_CONSOLE_PORT
common/Kconfig:295:config EARLY_CONSOLE_PORT
===== EARLY_CONSOLE_PORT
arch/ppc/mach-mpc5xxx/Kconfig:14:config EARLY_CONSOLE_PORT
common/Kconfig:295:config EARLY_CONSOLE_PORT
===== EUKREA_CPUIMX27_NOR_32MB
arch/arm/mach-imx/Kconfig:278:config EUKREA_CPUIMX27_NOR_32MB
===== HAS_CFI
arch/arm/mach-at91rm9200/Kconfig:18:	select HAS_CFI
arch/arm/mach-netx/Kconfig:49:	select HAS_CFI
arch/arm/mach-imx/Kconfig:85:	select HAS_CFI
arch/arm/mach-imx/Kconfig:105:	select HAS_CFI
arch/arm/mach-imx/Kconfig:126:	select HAS_CFI
arch/arm/mach-imx/Kconfig:146:	select HAS_CFI
arch/arm/mach-imx/Kconfig:155:	select HAS_CFI
arch/arm/mach-imx/Kconfig:171:	select HAS_CFI
arch/arm/mach-imx/Kconfig:215:	select HAS_CFI
arch/arm/mach-imx/Kconfig:223:        select HAS_CFI
arch/ppc/Kconfig:54:	select HAS_CFI
arch/m68k/Kconfig:77:	select HAS_CFI
arch/m68k/Kconfig:85:	select HAS_CFI
arch/m68k/Kconfig:94:	select HAS_CFI
arch/m68k/Kconfig:102:	select HAS_CFI
arch/m68k/Kconfig:110:	select HAS_CFI
arch/m68k/Kconfig:119:	select HAS_CFI
arch/m68k/Kconfig:128:	select HAS_CFI
arch/m68k/Kconfig:137:	select HAS_CFI
drivers/nor/Kconfig:3:config HAS_CFI
===== M68K
arch/m68k/include/asm/byteorder.h:24: * M68K is always big-endian mode.
arch/m68k/include/asm/coldfire/mcf5xxx.h:28: * Common M68K & ColdFire definitions
arch/m68k/Kconfig:49:config M68K
arch/m68k/cpu/cpu.c:157: * For M68K we never enable data cache so we do not need to disable it again.
commands/bootm.c:141:	case IH_CPU_M68K:	arch = "M68K"; 			break;
include/image.h:76:#define IH_CPU_M68K		12	/* M68K		*/
===== MTD_NAND_DISKONCHIP_BBTWRITE
drivers/nand/Kconfig:86:config MTD_NAND_DISKONCHIP_BBTWRITE
drivers/nand/diskonchip.c:123:#ifdef MTD_NAND_DISKONCHIP_BBTWRITE
===== PARTITION
common/Kconfig:316:config PARTITION
drivers/nand/diskonchip.c:1287:		printk(KERN_INFO	"    PARTITION[%d] ->\n"
===== PCM043_DISPLAY_TY090
arch/arm/mach-imx/Kconfig:243:config PCM043_DISPLAY_TY090

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
