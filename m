Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 141.red-212-170-165.staticip.rima-tde.net ([212.170.165.141]
 helo=www.admotion.es)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIFx0-00068Z-RE
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 11:13:27 +0000
Received: from [192.168.2.24] ([192.168.2.24])
 by www.admotion.es (8.14.5/8.14.5) with ESMTP id s1PBCpBv027545
 for <barebox@lists.infradead.org>; Tue, 25 Feb 2014 12:12:56 +0100
Message-ID: <1393326771.2376.6.camel@linuxp1.sistema-mpd.com>
From: Carlos =?ISO-8859-1?Q?Fern=E1ndez?= <carlos@admotion.es>
Date: Tue, 25 Feb 2014 12:12:51 +0100
In-Reply-To: <1385484367-15366-18-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: Re: [PATCH 17/17] ARM: OMAP: consolidate am335x mlo defconfigs
To: barebox@lists.infradead.org

Hello Sascha,

I need some help about the booting from NAND flash. I have created the
MLO file with the pcm051_mlo_defconfig but I cant boot from NAND. I dont
know if i need more configuration.

This is the content of pcm051_mlo_defconfig:

CONFIG_ARCH_OMAP=y
CONFIG_ARCH_AM33XX=y
CONFIG_OMAP_BUILD_IFT=y
CONFIG_MACH_PCM051=y
CONFIG_OMAP_UART1=y
CONFIG_THUMB2_BAREBOX=y
# CONFIG_CMD_ARM_CPUINFO is not set
# CONFIG_MEMINFO is not set
CONFIG_ENVIRONMENT_VARIABLES=y
CONFIG_MMU=y
CONFIG_TEXT_BASE=0x402F0400
CONFIG_STACK_SIZE=0x1600
CONFIG_MALLOC_SIZE=0x1000000
CONFIG_PROMPT="MLO>"
CONFIG_SHELL_NONE=y
# CONFIG_ERRNO_MESSAGES is not set
# CONFIG_TIMESTAMP is not set
CONFIG_CONSOLE_SIMPLE=y
# CONFIG_DEFAULT_ENVIRONMENT is not set
CONFIG_DRIVER_SERIAL_NS16550=y
CONFIG_DRIVER_SERIAL_NS16550_OMAP_EXTENSIONS=y
CONFIG_DRIVER_SPI_OMAP3=y
CONFIG_MTD=y
CONFIG_MTD_M25P80=y
CONFIG_NAND=y
CONFIG_NAND_OMAP_GPMC=y
CONFIG_MCI=y
CONFIG_MCI_STARTUP=y
CONFIG_MCI_OMAP_HSMMC=y
# CONFIG_FS_RAMFS is not set
# CONFIG_FS_DEVFS is not set
CONFIG_FS_FAT=y
CONFIG_FS_FAT_LFN=y

Do you have any idea??


Thank you in advance.
Best Regards.
Carlos





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
