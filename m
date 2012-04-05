Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFiXM-0003RP-NV
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 08:59:25 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 10:59:14 +0200
Message-Id: <1333616355-632-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1333616355-632-1-git-send-email-s.hauer@pengutronix.de>
References: <1333616355-632-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] cfi flash: Fix loop count calculation
To: barebox@lists.infradead.org

'reduce the number of loops by the width of the port' means
a simple len / width. Do not try to be clever by shifting
and doing it wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash_intel.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nor/cfi_flash_intel.c b/drivers/nor/cfi_flash_intel.c
index 6318cfe..f0cbf72 100644
--- a/drivers/nor/cfi_flash_intel.c
+++ b/drivers/nor/cfi_flash_intel.c
@@ -68,7 +68,7 @@ static int intel_flash_write_cfibuffer (struct flash_info *info, ulong dest, con
 		return retcode;
 
 	/* reduce the number of loops by the width of the port	*/
-	cnt = len >> (info->portwidth - 1);
+	cnt = len / width;
 
 	flash_write_cmd(info, sector, 0, (u32)cnt - 1);
 	while (cnt-- > 0) {
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
