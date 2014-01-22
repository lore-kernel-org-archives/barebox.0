Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5vnC-0002Rj-7Z
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 11:16:23 +0000
Date: Wed, 22 Jan 2014 12:15:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140122111558.GA24917@pengutronix.de>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 00/13] MIPS: add initial Loongson-based boards support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 18, 2014 at 07:12:50PM +0400, Antony Pavlov wrote:
> This patch series adds very initial Loongson CPU family support.
> The only supported board is Loongson-1B-based LS1B development board.
> 
> The Loongson-1B SoC has good support in the mainline linux kernel,
> so many things can be ported from linux in the future. 
> 
> [PATCH 01/13] MIPS: add initial Loongson-based boards support
> [PATCH 02/13] MIPS: add initial Loongson-family documentation
> [PATCH 03/13] MIPS: add Loongson-1B CPU Kbuild stuff
> [PATCH 04/13] MIPS: add initial Loongson-1X SoC stuff
> [PATCH 05/13] MIPS: add Loongson-1B processor constants and CPU probe
> [PATCH 06/13] MIPS: mach-loongson: add loongson-ls1b board
> [PATCH 07/13] MIPS: mach-loongson: add DEBUG_LL support
> [PATCH 08/13] MIPS: loongson-ls1b: add DEBUG_LL support
> [PATCH 09/13] MIPS: loongson-ls1b: add ns16550-based console
> [PATCH 10/13] MIPS: loongson-ls1b: add PBL support
> [PATCH 11/13] MIPS: loongson-ls1b: add NMON support
> [PATCH 12/13] MIPS: loongson-ls1b: add documentation
> [PATCH 13/13] MIPS: add loongson-ls1b_defconfig

Compilation of the loongson-ls1b_defconfig fails with:

In file included from arch/mips/mach-loongson/include/mach/debug_ll.h:24,
                 from include/debug_ll.h:31,
                 from common/console.c:36:
arch/mips/boards/loongson-ls1b//include/board/debug_ll.h:25:28: error: mach/loongson1.h: No such file or directory
In file included from arch/mips/mach-loongson/include/mach/debug_ll.h:25,
                 from include/debug_ll.h:31,
                 from common/console.c:36:
/ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/include/asm/debug_ll_ns16550.h: In function 'PUTC_LL':
/ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/include/asm/debug_ll_ns16550.h:62: error: 'LS1X_UART2_BASE' undeclared (first use in this function)
/ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/include/asm/debug_ll_ns16550.h:62: error: (Each undeclared identifier is reported only once
/ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/include/asm/debug_ll_ns16550.h:62: error: for each function it appears in.)
make[1]: *** [common/console.o] Error 1
make[1]: *** Waiting for unfinished jobs....
scripts/Makefile.build:41: /ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/mach-loongson/Makefile: No such file or directory
make[1]: *** No rule to make target `/ptx/work/dude/WORK_A/sha/barebox/barebox-test/arch/mips/mach-loongson/Makefile'.  Stop.
make: *** [arch/mips/mach-loongson] Error 2
make: *** Waiting for unfinished jobs....
arch/mips/boards/loongson-ls1b/serial.c:5:28: error: mach/loongson1.h: No such file or directory
arch/mips/boards/loongson-ls1b/serial.c: In function 'console_init':
arch/mips/boards/loongson-ls1b/serial.c:17: warning: implicit declaration of function 'KSEG1ADDR'
arch/mips/boards/loongson-ls1b/serial.c:17: error: 'LS1X_UART2_BASE' undeclared (first use in this function)
arch/mips/boards/loongson-ls1b/serial.c:17: error: (Each undeclared identifier is reported only once
arch/mips/boards/loongson-ls1b/serial.c:17: error: for each function it appears in.)

arch/mips/mach-loongson/include/mach/loongson1.h and
arch/mips/mach-loongson/Makefile seem to be missing. Could you respin with the missing files?

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
