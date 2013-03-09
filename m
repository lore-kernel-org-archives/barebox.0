Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEOes-0004mY-Qy
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 18:38:15 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 85F63FF8D2E
 for <barebox@lists.infradead.org>; Sat,  9 Mar 2013 19:49:32 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
Date: Sun, 10 Mar 2013 02:38:06 +0800
Message-Id: <E4906CA1-E082-429B-8A7D-BB21E85A65E7@jcrosoft.com>
References: <1362826391-16215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] image and bss size decrease
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


On Mar 9, 2013, at 6:53 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

> This series decreases the image size and bss size a bit. First
> we make malloc available in all initcalls by moving the malloc
> pool initialization before start_barebox().
> 
> We then decrease the image size by making some statically initialized
> structs smaller. struct command has a struct list_head member
> which can be removed by wrapping the static struct command into
> a dynamically initialized one which contains the list_head. Also
> the embedded struct device_d in struct bus_type is removed in
> favour for a dynamically allocated one.
> 
> Also we make the bss smaller by allocating the FILE table and
> the gpio_desc table dynamically. The bss size is may become
> a problem on boards which run from SRAM. Here the malloc pool
> is in the big SDRAM area, but the bss is in SRAM, so it makes
> sense to move the big tables from bss to SDRAM by using malloc.
> 

How much less

IIRC I try this too but with PBL it's bigger

Best Regards,
J.
> Sascha
> 
> ----------------------------------------------------------------
> Sascha Hauer (10):
>      mips: initialize malloc pool before start_barebox()
>      nios: initialize malloc pool before start_barebox()
>      openrisc: initialize malloc pool before start_barebox()
>      blackfin: initialize malloc pool before start_barebox()
>      x86: initialize malloc pool before start_barebox()
>      bus: Make struct device a pointer
>      command: remove list_head from struct command
>      command: remove statically initialized aliases
>      fs: allocate FILE table dynamically
>      gpio: allocate gpio_desc table dynamically
> 
> arch/blackfin/cpu-bf561/start.S |  4 +--
> arch/blackfin/lib/board.c       |  6 ++--
> arch/mips/boot/main_entry.c     |  5 ++++
> arch/mips/lib/Makefile          |  1 -
> arch/mips/lib/memory.c          | 29 --------------------
> arch/nios2/cpu/start.S          |  4 +--
> arch/nios2/lib/board.c          |  8 ++----
> arch/openrisc/cpu/start.S       |  2 +-
> arch/openrisc/lib/board.c       |  7 ++---
> arch/x86/boot/main_entry.c      |  4 +--
> arch/x86/lib/memory.c           |  7 ++---
> commands/edit.c                 |  8 ++++--
> commands/help.c                 | 16 +++++++----
> commands/test.c                 |  8 ++++--
> common/command.c                | 61 +++++++++++++++++++++--------------------
> common/complete.c               | 12 ++++----
> common/hush.c                   |  7 +++--
> common/module.c                 |  2 +-
> drivers/base/bus.c              |  7 +++--
> drivers/base/driver.c           |  2 +-
> drivers/gpio/gpio.c             | 11 +++++++-
> fs/fs.c                         | 11 +++++---
> include/command.h               | 25 +++++++++++------
> include/driver.h                |  2 +-
> 24 files changed, 126 insertions(+), 123 deletions(-)
> delete mode 100644 arch/mips/lib/memory.c
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
