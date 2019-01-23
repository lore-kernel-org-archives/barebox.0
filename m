Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm771-0007Rq-Mz
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 01:13:53 +0000
Received: by mail-pf1-x442.google.com with SMTP id c73so257816pfe.13
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2019 17:13:51 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 Jan 2019 17:13:31 -0800
Message-Id: <20190123011338.32517-1-andrew.smirnov@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/7] 32-bit lseek and /dev/mem fixes/improvements
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is a result of my attempt to fix a regression in lseek()
on 32-bit platforms. The regression manifested in lseek() unable to
seek past ~4GiB mark caused and was caused by usage of IS_ERR_VALUE()
(see commit messages for more detailed explanation). My goal was to
both get rid of IS_ERR_VALUE() while still make it possible to access
all 64-bits of address space via /dev/mem on 64-bit machines.

First three commits are optional and can be dropped.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (7):
  commands: Move mem_parse_options() to lib/misc.c
  commands: Get rid of mem_rw_buf
  commands: Move /dev/mem driver to drivers/misc
  fs: Change error checking logic for fsdrv->lseek() call
  fs: Calculate new position before validtiy check in lseek()
  fs: Add support for files larger than MAX_LFS_FILESIZE
  misc: mem: Set correct size for /dev/mem

 commands/Kconfig      |  17 +++---
 commands/Makefile     |   1 -
 commands/md.c         |  12 +++--
 commands/mem.c        | 123 ------------------------------------------
 commands/memcmp.c     |  16 +++---
 commands/memcpy.c     |  10 ++--
 commands/memset.c     |   2 -
 common/ratp/md.c      |   9 ++--
 drivers/misc/Kconfig  |   3 ++
 drivers/misc/Makefile |   1 +
 drivers/misc/mem.c    |  45 ++++++++++++++++
 fs/devfs.c            |   2 +
 fs/fs.c               |  48 +++++++++++------
 include/driver.h      |   1 +
 include/fs.h          |   1 +
 lib/misc.c            |  42 +++++++++++++++
 16 files changed, 160 insertions(+), 173 deletions(-)
 delete mode 100644 commands/mem.c
 create mode 100644 drivers/misc/mem.c

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
