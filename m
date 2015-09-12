Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZarVo-0006CC-E5
 for barebox@lists.infradead.org; Sat, 12 Sep 2015 20:35:04 +0000
Received: by lagj9 with SMTP id j9so66867319lag.2
 for <barebox@lists.infradead.org>; Sat, 12 Sep 2015 13:34:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 12 Sep 2015 23:34:29 +0300
Message-Id: <1442090069-30186-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442090069-30186-1-git-send-email-antonynpavlov@gmail.com>
References: <1442090069-30186-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] usb: storage: fix warning: no previous prototype for
 'usb_stor_Bulk_clear_endpt_stall'
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/storage/transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index ac1fe79..4140991 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -54,7 +54,7 @@ static const unsigned char us_direction[256/8] = {
  */
 
 /* Clear a stall on an endpoint - special for bulk-only devices */
-int usb_stor_Bulk_clear_endpt_stall(struct us_data *us, unsigned int pipe)
+static int usb_stor_Bulk_clear_endpt_stall(struct us_data *us, unsigned int pipe)
 {
 	return usb_clear_halt(us->pusb_dev, pipe);
 }
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
