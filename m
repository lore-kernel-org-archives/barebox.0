Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by casper.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pa7z3-0007VA-BC
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 14:35:33 +0000
Message-ID: <4D233027.9030701@free-electrons.com>
Date: Tue, 04 Jan 2011 15:35:19 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] ARM STM/i.MX: Allocate memory for framebuffer during probe
Cc: barebox <barebox@lists.infradead.org>

With current code when the framebuffer is register, screen_base is not
set yet. So when we want to access framebuffer from mmap we get a
pointer to 0x0 instead of getting the pointer to the framebuffer
address. This patch fix this bug by allocating memory for framebuffer
during probe just before registering framebuffer driver.

Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
---
 drivers/video/stm.c |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/drivers/video/stm.c b/drivers/video/stm.c
index f0abe4c..8a9acff 100644
--- a/drivers/video/stm.c
+++ b/drivers/video/stm.c
@@ -480,6 +480,7 @@ static int stmfb_probe(struct device_d *hw_dev)
 {
 	struct imx_fb_videomode *pdata = hw_dev->platform_data;
 	int ret;
+	unsigned size;
 
 	/* just init */
 	fbi.info.priv = &fbi;
@@ -497,6 +498,15 @@ static int stmfb_probe(struct device_d *hw_dev)
 	fbi.info.yres = fbi.info.mode->yres;
 	fbi.info.bits_per_pixel = 16;
 
+	size = calc_line_length(fbi.info.mode->xres, fbi.info.bits_per_pixel) *
+		fbi.info.mode->yres;
+
+	ret = stmfb_memory_mmgt(&fbi.info, size);
+	if (ret != 0) {
+		dev_err(hw_dev, "Cannot allocate framebuffer memory\n");
+		return ret;
+	}
+
 	ret = register_framebuffer(&fbi.info);
 	if (ret != 0) {
 		dev_err(hw_dev, "Failed to register framebuffer\n");
-- 
1.7.0.4




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
