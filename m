Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp22.mail.ru ([94.100.176.175])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBRWP-0004AX-4w
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 14:00:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 24 Mar 2012 18:00:40 +0400
Message-Id: <1332597640-31268-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1332597640-31268-1-git-send-email-shc_work@mail.ru>
References: <1332597640-31268-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 6/6] Cosmetic change name ISP1504 -> ISP150x
To: barebox@lists.infradead.org

ISP150x product line have same identifier, we can print these
chips as ISP150x.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/usb/otg/ulpi.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 662f78b..a5ca25f 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -130,7 +130,7 @@ struct ulpi_info {
 
 /* ULPI hardcoded IDs, used for probing */
 static struct ulpi_info ulpi_ids[] = {
-	ULPI_INFO(ULPI_ID(0x04cc, 0x1504), "NXP ISP1504"),
+	ULPI_INFO(ULPI_ID(0x04cc, 0x1504), "NXP ISP150x"),
 	ULPI_INFO(ULPI_ID(0x0424, 0x0006), "SMSC USB331x"),
 };
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
