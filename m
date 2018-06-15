Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x243.google.com ([2607:f8b0:400e:c01::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5i-0000bK-1t
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:03 +0000
Received: by mail-pl0-x243.google.com with SMTP id a7-v6so4674202plp.3
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:11:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:06 -0700
Message-Id: <20180615041136.23492-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 00/27] Console code consolidation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

While debugging the reason behind print_hex_dump() not producing
carriage return properly, when used in PBL, I realised that current
codebase contained:

 - at least 5 places where '\n' was replaced with '\n\r'
 - at least 3 almost identical implementations of puts()
 - at least 3 almost identical implementations of printf()

so this patcheset is an attempt to consolidate, share and simplify
console related code.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (27):
  pbl: console: Introduce putc_func_t
  console: Unify console_simple.c and pbl/console.c
  pbl: console: Move '\n' handling into console_putc()
  console: Reconcile 3 different puts() implementations
  ratp: Add dependency on CONSOLE_FULL
  netconsole: Add dependency on CONSOLE_FULL
  input: Add dependency on CONSOLE_FULL
  console: Make use of __console_putc()
  console: Fix console_get_first_active()
  console: Simplify early console code
  console: Consolidate all implemenatations of ctrlc()
  console: Drop ARCH_HAS_CTRLC
  console: Consolidate DEBUG_LL and CONSOLE_* '\n' -> '\n\r' code
  console: Consolidate DEBUG_LL and CONSOLE_* puts() implementations
  console_simple: Use console_flush() from CONSOLE_FULL
  console_simple: Use tstc_raw() as tstc()
  console_simple: Use getc_raw() as getchar()
  console_simple: Get rid of global console pointer
  console_simple: Make use of list_add_tail()
  console: Share definition for printf with PBL
  pbl: console: Convert pr_print into a single line #define
  console: Convert pr_print into a single line #define
  console: Remove dputc()
  console: Simplify dputs()
  console: Introduce dvprintf()
  console: Convert printf() into a single line #define
  psci: console: Convert to use lib/console.c

 arch/arm/cpu/psci.c               |  34 +---
 arch/arm/include/asm/psci.h       |  11 --
 arch/sandbox/include/asm/common.h |   2 -
 commands/echo.c                   |   4 +-
 common/console.c                  | 142 ++++-----------
 common/console_common.c           | 168 ++++++++----------
 common/console_simple.c           |  75 +-------
 drivers/input/Kconfig             |   2 +-
 include/console.h                 |  18 +-
 include/debug_ll.h                |  61 +++++--
 include/printk.h                  |   8 +-
 include/stdio.h                   |  11 +-
 lib/Kconfig                       |   1 +
 lib/Makefile                      |   6 +-
 lib/console.c                     | 276 ++++++++++++++++++++++++++++++
 net/Kconfig                       |   2 +-
 pbl/console.c                     |  70 +-------
 17 files changed, 478 insertions(+), 413 deletions(-)
 create mode 100644 lib/console.c

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
