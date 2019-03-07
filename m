Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nxb-00039V-4L
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 08:01:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id b2so10624531pgl.9
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2019 00:00:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Mar 2019 00:00:25 -0800
Message-Id: <20190307080036.28028-16-andrew.smirnov@gmail.com>
In-Reply-To: <20190307080036.28028-1-andrew.smirnov@gmail.com>
References: <20190307080036.28028-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/26] ata: ahci: Do not include <scsi.h>
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

No symbols found in <scsi.h> are used in this file. Drop it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/ata/ahci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 3f0bbb075..7dc09d00c 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -27,7 +27,6 @@
 #include <io.h>
 #include <of.h>
 #include <malloc.h>
-#include <scsi.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
 #include <disks.h>
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
