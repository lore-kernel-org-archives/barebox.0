Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oj80M-0006OR-Fd
	for barebox@lists.infradead.org; Wed, 11 Aug 2010 09:53:51 +0000
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Wed, 11 Aug 2010 11:53:29 +0200
Message-Id: <1281520409-27408-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH|RFC] loadb: get console baudrate from class_dev not dev
To: barebox@lists.infradead.org

With this fix its possible to run loadb -f /dev/ram0
again with the latest next patchstack. Without you will
run into data_abort. Tested with omap3530 beagleboard.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 commands/loadb.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/commands/loadb.c b/commands/loadb.c
index 437b60f..acfb94f 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -724,7 +724,7 @@ static int do_load_serial_bin(struct command *cmdtp, int argc, char *argv[])
 		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
 		return -ENODEV;
 	}
-	current_baudrate = (int)simple_strtoul(dev_get_param(cdev->dev, "baudrate"), NULL, 10);
+	current_baudrate = (int)simple_strtoul(dev_get_param(&cdev->class_dev, "baudrate"), NULL, 10);
 
 	/* Load Defaults */
 	if (load_baudrate == 0)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
