Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvbn4-0000TX-Pl
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 05:16:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id g20-v6so4914829pgv.6
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 22:16:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 30 Aug 2018 22:15:46 -0700
Message-Id: <20180831051551.10662-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180831051551.10662-1-andrew.smirnov@gmail.com>
References: <20180831051551.10662-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/5] mfd: rave-sp: Remove unused defines
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove unusded defines that are a leftover from earlier iterations of
the driver.

This is a backport of Linux kernel patch [1]

[1] https://lore.kernel.org/lkml/20180707024108.32373-5-andrew.smirnov@gmail.com/T/#m02a75392c729828f822e2cd52f86e541b1649a27

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/rave-sp.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index d55e913ff..47b1e68ba 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -57,16 +57,6 @@
 #define RAVE_SP_TX_BUFFER_SIZE				\
 	(RAVE_SP_STX_ETX_SIZE + 2 * RAVE_SP_RX_BUFFER_SIZE)
 
-#define RAVE_SP_BOOT_SOURCE_GET		0
-#define RAVE_SP_BOOT_SOURCE_SET		1
-
-#define RAVE_SP_RDU2_BOARD_TYPE_RMB	0
-#define RAVE_SP_RDU2_BOARD_TYPE_DEB	1
-
-#define RAVE_SP_BOOT_SOURCE_SD		0
-#define RAVE_SP_BOOT_SOURCE_EMMC	1
-#define RAVE_SP_BOOT_SOURCE_NOR		2
-
 /**
  * enum rave_sp_deframer_state - Possible state for de-framer
  *
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
