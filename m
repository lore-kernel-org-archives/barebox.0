Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSBGP-0002Pi-J2
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 20:14:31 +0000
Received: by mail-lb0-f178.google.com with SMTP id s7so4031449lbd.37
 for <barebox@lists.infradead.org>; Mon, 24 Mar 2014 13:14:07 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 25 Mar 2014 00:13:49 +0400
Message-Id: <1395692034-5821-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
References: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 3/8] serial: ns16550: fix whitespaces
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index f1da44b..d217014 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -192,7 +192,7 @@ static void ns16550_omap_init_port(struct console_device *cdev)
 	ns16550_serial_init_port(cdev);
 
 	ns16550_write(cdev, 0x07, omap_mdr1);	/* Disable */
-	ns16550_write(cdev, 0x00,  omap_mdr1);
+	ns16550_write(cdev, 0x00, omap_mdr1);
 }
 
 /*********** Exposed Functions **********************************/
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
