Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqVDV-0004nk-Ub
 for barebox@lists.infradead.org; Wed, 01 Jul 2020 05:23:30 +0000
Date: Wed, 1 Jul 2020 07:23:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200701052327.GG15485@pengutronix.de>
References: <20200630204402.26566-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630204402.26566-1-cleger@kalray.eu>
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
Subject: Re: [PATCH v3 0/4] kvx: add elf bootm support
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Tue, Jun 30, 2020 at 10:43:58PM +0200, Clement Leger wrote:
> This serie adds support for elf bootm support on KVX architecture.
> First patches are allowing to build elf support for KVX and then bootm
> support is added to KVX.
> 
> Changes from v2 -> v3:
>  - Rename sync_icache_dcache to sync_caches_for_execution
>  - Keep COMPILE_TEST support for ELF
> 
> Changes from v1 -> v2:
>  - Remove D-cache invalidation
>  - Reword first patch commit message
> 
> Clement Leger (4):
>   common: bootm: allow building with an undefined IH_ARCH
>   common: Kconfig: remove MIPS dependency for ELF
>   kvx: add I-cache and D-cache synchronisation
>   kvx: add support for elf loading using bootm

Applied, thanks

Sascha

> 
>  arch/kvx/Kconfig                   |   5 ++
>  arch/kvx/configs/generic_defconfig |   3 +-
>  arch/kvx/include/asm/bootm.h       |  11 +++
>  arch/kvx/include/asm/cache.h       |  18 ++++
>  arch/kvx/include/asm/elf.h         |   3 +
>  arch/kvx/lib/Makefile              |   2 +-
>  arch/kvx/lib/bootm.c               | 133 +++++++++++++++++++++++++++++
>  common/Kconfig                     |   1 -
>  common/bootm.c                     |   2 +-
>  include/image.h                    |   2 +
>  10 files changed, 176 insertions(+), 4 deletions(-)
>  create mode 100644 arch/kvx/include/asm/bootm.h
>  create mode 100644 arch/kvx/include/asm/cache.h
>  create mode 100644 arch/kvx/lib/bootm.c
> 
> -- 
> 2.17.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
