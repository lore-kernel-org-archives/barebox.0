Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Cuo-0004rn-Fe
 for barebox@lists.infradead.org; Tue, 09 Jun 2015 06:21:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Jun 2015 08:21:13 +0200
Message-Id: <1433830875-31119-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
References: <1433830875-31119-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/12] loadb: use console_get_baudrate
To: Barebox List <barebox@lists.infradead.org>

No need to fiddle with device parameters anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index 66934c4..8294f39 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -635,7 +635,7 @@ static int do_load_serial_bin(int argc, char *argv[])
 		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
 		return -ENODEV;
 	}
-	current_baudrate = (int)simple_strtoul(dev_get_param(&cdev->class_dev, "baudrate"), NULL, 10);
+	current_baudrate = console_get_baudrate(cdev);
 
 	/* Load Defaults */
 	if (load_baudrate == 0)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
