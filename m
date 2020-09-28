Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMuDS-0004qy-UY
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 14:33:23 +0000
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d2172e61-a0a7-f536-f755-032751164e0d@pengutronix.de>
Date: Mon, 28 Sep 2020 16:33:21 +0200
MIME-Version: 1.0
In-Reply-To: <20200918084532.2794-1-s.hauer@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 0/9] barebox KASan support
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Hello Sascha,

On 9/18/20 10:45 AM, Sascha Hauer wrote:
> This series adds KASan support to barebox. We already have ASan support
> for sandbox which uses libasan, this time we get KASan for use on real
> hardware. The KASan support is based on the Kernel code and contains the
> subset of features we need for barebox. KASan is currently supported on
> ARM(32/64) only and requires a supported allocator. Currently only the
> TLSF allocator is supported.

Should the md/mw/memcpy commands be exempt from KASAN checks?

> 
> Sascha
> 
> Sascha Hauer (9):
>   Add print_hex_dump kernel implementation
>   Add _RET_IP_ macro
>   Kallsyms: Also resolve global variables
>   Add constructor support
>   pbl: Alias memcpy and memset
>   string: Add nokasan variants of default memcpy/memset
>   sandbox: rename KASan to ASan
>   Add KASan support
>   ARM: Add KASan support
> 
>  Makefile                          |   6 +-
>  arch/arm/Kconfig                  |   1 +
>  arch/arm/cpu/Makefile             |   2 +
>  arch/arm/cpu/common.c             |   2 +-
>  arch/arm/cpu/setupc.S             |   6 +-
>  arch/arm/cpu/start.c              |   7 +-
>  arch/arm/include/asm/string.h     |   2 +
>  arch/arm/lib32/barebox.lds.S      |   4 +-
>  arch/arm/lib32/memcpy.S           |   3 +
>  arch/arm/lib32/memset.S           |   4 +-
>  arch/arm/lib64/string.c           |  26 ++-
>  arch/sandbox/Kconfig              |   4 +-
>  arch/sandbox/Makefile             |   2 +-
>  arch/sandbox/os/Makefile          |   4 -
>  arch/sandbox/os/common.c          |   2 +-
>  common/Kconfig                    |  10 +-
>  common/Makefile                   |   1 +
>  common/kallsyms.c                 |   4 +-
>  common/startup.c                  |  15 ++
>  common/tlsf.c                     |  34 +++-
>  include/asm-generic/barebox.lds.h |  12 ++
>  include/asm-generic/sections.h    |   3 +
>  include/linux/kasan.h             |  89 +++++++++
>  include/linux/kernel.h            |   2 +
>  include/printk.h                  |  20 +-
>  include/string.h                  |   4 +
>  lib/Kconfig                       |   5 +
>  lib/Makefile                      |   1 +
>  lib/hexdump.c                     | 212 +++++++++++++++++++-
>  lib/kasan/Kconfig                 |  16 ++
>  lib/kasan/Makefile                |  14 ++
>  lib/kasan/common.c                | 108 ++++++++++
>  lib/kasan/generic.c               | 315 ++++++++++++++++++++++++++++++
>  lib/kasan/generic_report.c        | 150 ++++++++++++++
>  lib/kasan/kasan.h                 | 164 ++++++++++++++++
>  lib/kasan/report.c                | 199 +++++++++++++++++++
>  lib/string.c                      |  28 ++-
>  pbl/string.c                      |   7 +
>  scripts/Makefile.kasan            |  17 ++
>  scripts/Makefile.lib              |  10 +
>  40 files changed, 1461 insertions(+), 54 deletions(-)
>  create mode 100644 include/linux/kasan.h
>  create mode 100644 lib/kasan/Kconfig
>  create mode 100644 lib/kasan/Makefile
>  create mode 100644 lib/kasan/common.c
>  create mode 100644 lib/kasan/generic.c
>  create mode 100644 lib/kasan/generic_report.c
>  create mode 100644 lib/kasan/kasan.h
>  create mode 100644 lib/kasan/report.c
>  create mode 100644 scripts/Makefile.kasan
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
