Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvbn4-0000TO-B2
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 05:16:16 +0000
Received: by mail-pf1-x444.google.com with SMTP id s13-v6so4947894pfi.7
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 22:16:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 30 Aug 2018 22:15:45 -0700
Message-Id: <20180831051551.10662-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/5] RAVE SP driver fixes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is a backport of a similar series I submitted to upstream
Linux a while ago:

https://lore.kernel.org/lkml/20180707024108.32373-5-andrew.smirnov@gmail.com/T/#m02a75392c729828f822e2cd52f86e541b1649a27

The only omission is the patch related to configuring flow control and
parity of the underlying serdev. It doesn't seem to be necessary for
Barebox (it does fix a problem in Linux) and requires a bunch of new
plumbing to be implemented, so I dropped it for now.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (5):
  mfd: rave-sp: Remove unused defines
  mfd: rave-sp: Fix incorrectly specified checksum type
  mfd: rave-sp: Add mapping for legacy EEPROM command
  mfd: rave-sp: Add legacy watchdog ping command translation
  mfd: rave-sp: Emulate CMD_GET_STATUS on device that don't support it

 drivers/mfd/rave-sp.c       | 116 ++++++++++++++++++++++--------------
 include/linux/mfd/rave-sp.h |   1 +
 2 files changed, 72 insertions(+), 45 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
