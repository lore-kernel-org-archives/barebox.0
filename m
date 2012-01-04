Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiNGx-0000Ss-Jx
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 09:36:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RiNGq-00071R-6B
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 10:36:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RiNGq-0004zX-4a
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 10:36:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed,  4 Jan 2012 10:36:30 +0100
Message-Id: <1325669790-18433-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325669790-18433-1-git-send-email-jbe@pengutronix.de>
References: <1325669790-18433-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 2/2] S3C24xx/video: fix forgotten include file name change
To: barebox@lists.infradead.org

While we are here: do not follow the change of the file name, because there is
no GPIO dependency in this driver.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/video/s3c24xx.c |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/drivers/video/s3c24xx.c b/drivers/video/s3c24xx.c
index f6af773..564ccbd 100644
--- a/drivers/video/s3c24xx.c
+++ b/drivers/video/s3c24xx.c
@@ -30,7 +30,6 @@
 #include <malloc.h>
 #include <errno.h>
 #include <io.h>
-#include <mach/s3c-gpio.h>
 #include <mach/s3c-generic.h>
 #include <mach/s3c24xx-fb.h>
 
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
