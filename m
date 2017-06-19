Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dMxvJ-0003zZ-0y
 for barebox@lists.infradead.org; Mon, 19 Jun 2017 14:45:05 +0000
Received: by mail-pf0-x241.google.com with SMTP id s66so17396077pfs.2
 for <barebox@lists.infradead.org>; Mon, 19 Jun 2017 07:44:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 19 Jun 2017 07:44:25 -0700
Message-Id: <20170619144431.20843-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] Backport support for "extended device ID" for dataflash
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, cphealy@gmail.com

Hi everyone,

This series is a backport of almost identical patchset that I did for
linux kernel:

      1. lkml.kernel.org/r/20170421163026.24884-1-andrew.smirnov@gmail.com
      2. lkml.kernel.org/r/20170421163026.24884-2-andrew.smirnov@gmail.com
      3. lkml.kernel.org/r/20170421163026.24884-3-andrew.smirnov@gmail.com
      4. lkml.kernel.org/r/20170421163026.24884-4-andrew.smirnov@gmail.com
      5. lkml.kernel.org/r/20170421163026.24884-5-andrew.smirnov@gmail.com
      6. lkml.kernel.org/r/20170421163026.24884-6-andrew.smirnov@gmail.com

The patchset hasn't hit Linus' tree yet, but it can be found in
linux-next:
	https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/log/drivers/mtd/devices/mtd_dataflash.c

Let me know if anything needs changing.

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  mtd: dataflash: Replace C99 types with their kernel counterparts
  mtd: dataflash: Improve coding style in jedec_probe()
  mtd: dataflash: Replace pr_debug, printk with dev_* functions
  mtd: dataflash: Get rid of loop counter in jedec_probe()
  mtd: dataflash: Make use of "extened device information"
  mtd: dataflash: Add flash_info for AT45DB641E

 drivers/mtd/devices/mtd_dataflash.c | 202 ++++++++++++++++++++----------------
 1 file changed, 113 insertions(+), 89 deletions(-)

-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
