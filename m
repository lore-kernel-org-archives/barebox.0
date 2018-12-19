Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZWq8-0004yo-0O
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 08:04:27 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 19 Dec 2018 11:03:54 +0300
Message-Id: <20181219080403.13737-1-shc_work@mail.ru>
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
Subject: [PATCH 01/10] serial: clps711x: Change compatible string
To: barebox@lists.infradead.org

This patch changes compatible string for CLPS711X serial driver
to "cirrus,ep7209-uart" for conform with linux kernel.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/serial/serial_clps711x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index fa6342346..9a9ae24c0 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -182,7 +182,7 @@ out_err:
 }
 
 static struct of_device_id __maybe_unused clps711x_uart_dt_ids[] = {
-	{ .compatible = "cirrus,clps711x-uart", },
+	{ .compatible = "cirrus,ep7209-uart", },
 };
 
 static struct driver_d clps711x_driver = {
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
