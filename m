Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxJ-0002pE-D3
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:00:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id i20so10823293pfo.6
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:10 -0800
Message-Id: <20190307080036.28028-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/26] USB storage improvements
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

While creating fix found in "usb: storage: Don't use "unsigned long"
for 32-bit values" I spent some time reading code of our USB storage
implementation. The other 25 patches is the result of that effort and
my attempt to improve/simplify that codebase. Hopefuly each patch is
self-explanatory.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (26):
  usb: storage: Simplify memory allocation in usb_stor_probe()
  usb: storage: Replace custom debug tracing with dev_dbg
  usb: storage: Don't use "unsigned long" for 32-bit values
  usb: storage: Make usb_stor_read_capacity() a standalone function
  usb: storage: Make usb_stor_inquiry() a standalone function
  usb: storage: Make usb_stor_test_unit_ready() a standalone function
  usb: storage: Make usb_stor_read_10() a standalone function
  usb: storage: Make usb_stor_write_10() a standalone function
  usb: storage: Drop extra call to transport in usb_stor_write_10()
  usb: storage: Share code for READ(10) and WRITE(10)
  usb: storage: Make usb_stor_request_sense() a standalone function
  usb: storage: Remove unused variables
  usb: storage: Drop struct SCSI_cmd_block
  usb: hub: Do not include <scsi.h>
  ata: ahci: Do not include <scsi.h>
  usb: storage: Drop unused fields in struct us_data
  usb: storage: Drop unused us_blkdev_list
  usb: storage: Introduce usb_stor_transport()
  usb: storage: Use put_unaligned_be* helpers
  usb: Drop usb_disable_asynch()
  usb: storage: Drop unnecessary check in usb_stor_blk_io()
  usb: storage: Drop needless macro
  usb: storage: Use simple boolean to speficy read vs. write operation
  usb: storage: Simplify I/O loop in usb_stor_blk_io()
  usb: storage: Drop unnecessary assignment
  usb: storage: Inline usb_limit_blk_cnt()

 drivers/ata/ahci.c              |   1 -
 drivers/usb/core/hub.c          |   1 -
 drivers/usb/core/usb.c          |  24 +-
 drivers/usb/storage/transport.c |  87 +++---
 drivers/usb/storage/transport.h |   2 +-
 drivers/usb/storage/usb.c       | 484 ++++++++++++++------------------
 drivers/usb/storage/usb.h       |  19 +-
 include/scsi.h                  |  22 --
 include/usb/usb.h               |   1 -
 9 files changed, 265 insertions(+), 376 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
