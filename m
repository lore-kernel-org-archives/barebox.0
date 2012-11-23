Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tbvcn-0005TI-HH
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 15:57:07 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0D371FF98AA
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 17:08:11 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 23 Nov 2012 16:55:02 +0100
Message-Id: <1353686104-31295-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1353686104-31295-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121123155224.GV8327@game.jcrosoft.org>
 <1353686104-31295-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] atmel_nand: fix pmecc timeout
To: barebox@lists.infradead.org

the timeout is 100ms not 100ns

on sam9x5 the SoC is fast enough so we can not see it
but not on sam9n12

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mtd/nand/atmel_nand_ecc.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/atmel_nand_ecc.h b/drivers/mtd/nand/atmel_nand_ecc.h
index 34f481e..e39aada 100644
--- a/drivers/mtd/nand/atmel_nand_ecc.h
+++ b/drivers/mtd/nand/atmel_nand_ecc.h
@@ -146,6 +146,6 @@
 #define PMECC_LOOKUP_TABLE_SIZE_1024		0x4000
 
 /* Time out value for reading PMECC status register */
-#define PMECC_MAX_TIMEOUT_MS			100
+#define PMECC_MAX_TIMEOUT_MS			100 * MSECOND
 
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
