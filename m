Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7M52-0006kc-RR
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 07:55:53 +0000
Date: Fri, 31 Aug 2012 09:55:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120831075551.GQ26594@pengutronix.de>
References: <1346322594-21167-1-git-send-email-a.aring@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346322594-21167-1-git-send-email-a.aring@phytec.de>
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
Subject: Re: [PATCH v3 0/5] rewritten memtest command
To: Alexander Aring <a.aring@phytec.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

Apart from the comment I made the series looks good to me.

Sascha

On Thu, Aug 30, 2012 at 12:29:49PM +0200, Alexander Aring wrote:
> Rewritten memtest command.
> Added new section data which is between text and bss.
> Only tested on arm architecture.
> 
> Alexander Aring (5):
>   mmu: make remap_range global accessable
>   memory: add function address_in_sdram_regions
>   barebox-data: add barebox-data sections
>   memtest: remove memtest command
>   memtest: add rewritten memtest command
> 
>  arch/arm/cpu/mmu.c                               |    4 +-
>  arch/arm/include/asm/mmu.h                       |   13 +
>  arch/arm/lib/barebox.lds.S                       |    6 +-
>  arch/blackfin/boards/ipe337/barebox.lds.S        |    6 +-
>  arch/blackfin/include/asm/mmu.h                  |   15 +
>  arch/mips/include/asm/mmu.h                      |   15 +
>  arch/mips/lib/barebox.lds.S                      |    5 +-
>  arch/nios2/cpu/barebox.lds.S                     |    5 +-
>  arch/nios2/include/asm/mmu.h                     |   15 +
>  arch/openrisc/include/asm/mmu.h                  |   15 +
>  arch/ppc/boards/freescale-p2020rdb/barebox.lds.S |    6 +-
>  arch/ppc/boards/pcm030/barebox.lds.S             |    5 +-
>  arch/ppc/include/asm/mmu.h                       |   10 +
>  arch/x86/include/asm/mmu.h                       |   15 +
>  arch/x86/lib/barebox.lds.S                       |    5 +-
>  commands/Kconfig                                 |   11 +-
>  commands/Makefile                                |    2 +-
>  commands/memtest.c                               |  850 +++++++++++++++-------
>  common/memory.c                                  |   17 +
>  include/asm-generic/sections.h                   |    1 +
>  include/common.h                                 |    3 +
>  include/memory.h                                 |    6 +
>  22 files changed, 732 insertions(+), 298 deletions(-)
>  create mode 100644 arch/blackfin/include/asm/mmu.h
>  create mode 100644 arch/mips/include/asm/mmu.h
>  create mode 100644 arch/nios2/include/asm/mmu.h
>  create mode 100644 arch/openrisc/include/asm/mmu.h
>  create mode 100644 arch/x86/include/asm/mmu.h
> 
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
