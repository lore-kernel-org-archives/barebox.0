Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QlRAa-0003u5-Nb
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 19:50:29 +0000
Received: by mail-ww0-f49.google.com with SMTP id 22so3211555wwf.18
	for <barebox@lists.infradead.org>; Mon, 25 Jul 2011 12:50:28 -0700 (PDT)
From: franck.jullien@gmail.com
Date: Mon, 25 Jul 2011 21:50:20 +0200
Message-Id: <1311623420-30234-5-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
References: <1311623420-30234-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 4/4] nios2/serial_altera_jtag.c: switch to ressources
To: barebox@lists.infradead.org

From: Franck Jullien <franck.jullien@gmail.com>

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/serial/serial_altera_jtag.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/serial/serial_altera_jtag.c b/drivers/serial/serial_altera_jtag.c
index 322f9e9..7d42382 100644
--- a/drivers/serial/serial_altera_jtag.c
+++ b/drivers/serial/serial_altera_jtag.c
@@ -37,7 +37,7 @@ static int altera_serial_jtag_setbaudrate(struct console_device *cdev, int baudr
 
 static void altera_serial_jtag_putc(struct console_device *cdev, char c)
 {
-	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
+	struct nios_jtag *jtag = (struct nios_jtag *)dev_request_mem_region(cdev->dev, 0);
 	uint32_t st;
 
 	while (1) {
@@ -51,14 +51,14 @@ static void altera_serial_jtag_putc(struct console_device *cdev, char c)
 
 static int altera_serial_jtag_tstc(struct console_device *cdev)
 {
-	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
+	struct nios_jtag *jtag = (struct nios_jtag *)dev_request_mem_region(cdev->dev, 0);
 
 	return readl(&jtag->control) & NIOS_JTAG_RRDY;
 }
 
 static int altera_serial_jtag_getc(struct console_device *cdev)
 {
-	struct nios_jtag *jtag = (struct nios_jtag *)cdev->dev->map_base;
+	struct nios_jtag *jtag = (struct nios_jtag *)dev_request_mem_region(cdev->dev, 0);
 	uint32_t val;
 
 	while (1) {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
