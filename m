Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgJR-0002mW-Mo
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:44:22 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJA-0002o5-1c
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:04 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJ9-0002T5-VN
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:03 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon,  2 Jan 2012 12:43:53 +0100
Message-Id: <1325504642-9324-6-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
References: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 05/14] MACH SAMSUNG/S3C: Parts of the SDHC driver can be
 shared in the S3C CPU family
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/mini2440/mini2440.c                |    2 +-
 .../mach-samsung/include/mach/{mci.h => s3c-mci.h} |    0
 drivers/mci/s3c.c                                  |    2 +-
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename arch/arm/mach-samsung/include/mach/{mci.h => s3c-mci.h} (100%)

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index dca9083..233f337 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -41,7 +41,7 @@
 #include <mach/s3c-iomap.h>
 #include <mach/s3c24xx-nand.h>
 #include <mach/s3c-generic.h>
-#include <mach/mci.h>
+#include <mach/s3c-mci.h>
 #include <mach/fb.h>
 
 static struct s3c24x0_nand_platform_data nand_info = {
diff --git a/arch/arm/mach-samsung/include/mach/mci.h b/arch/arm/mach-samsung/include/mach/s3c-mci.h
similarity index 100%
rename from arch/arm/mach-samsung/include/mach/mci.h
rename to arch/arm/mach-samsung/include/mach/s3c-mci.h
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index c877e09..12d2c03 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -40,7 +40,7 @@
 #include <errno.h>
 #include <clock.h>
 #include <io.h>
-#include <mach/mci.h>
+#include <mach/s3c-mci.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c-iomap.h>
 
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
