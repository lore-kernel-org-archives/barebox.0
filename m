Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.8])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sr5rt-0003Gg-If
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 11:23:06 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Tue, 17 Jul 2012 13:23:02 +0200
Message-Id: <1342524182-15436-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: [PATCH] arm: support booting of uimages with as barebox payload.
To: barebox@lists.infradead.org

Packing barebox within an uimage gives us integrity checking.

Generate the image with:
./scripts/mkimage -A arm -O barebox -T firmware -C none -d barebox.bin -a 0xffffffff barebox.uimage

Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
---
 arch/arm/lib/bootm.c |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 3a00437..791efc2 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -117,6 +117,13 @@ static struct image_handler rawimage_handler = {
 	.filetype = filetype_unknown,
 };
 
+static struct image_handler bbuimage_handler = {
+	.name = "ARM barebox uImage",
+	.bootm = do_bootm_linux,
+	.filetype = filetype_uimage,
+	.ih_os = IH_OS_BAREBOX,
+};
+
 struct zimage_header {
 	u32	unused[9];
 	u32	magic;
@@ -470,6 +477,7 @@ static int armlinux_register_image_handler(void)
 	register_image_handler(&uimage_handler);
 	register_image_handler(&rawimage_handler);
 	register_image_handler(&zimage_handler);
+	register_image_handler(&bbuimage_handler);
 	if (IS_BUILTIN(CONFIG_CMD_BOOTM_AIMAGE)) {
 		register_image_handler(&aimage_handler);
 		binfmt_register(&binfmt_aimage_hook);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
