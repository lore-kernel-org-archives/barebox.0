Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZDJKu-0006U3-Jd
 for barebox@lists.infradead.org; Thu, 09 Jul 2015 21:26:29 +0000
Received: by labgy5 with SMTP id gy5so101873460lab.2
 for <barebox@lists.infradead.org>; Thu, 09 Jul 2015 14:26:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 10 Jul 2015 00:25:50 +0300
Message-Id: <1436477154-28594-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1436477154-28594-1-git-send-email-antonynpavlov@gmail.com>
References: <1436477154-28594-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC-WIP 1/5] for-ammend: fbconsole: FBCONSOLE -> FRAMEBUFFER_CONSOLE
To: barebox@lists.infradead.org

linux kernel uses FRAMEBUFFER_CONSOLE option name.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/video/Kconfig  | 2 +-
 drivers/video/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index 4a5b15b..c6698da 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -5,7 +5,7 @@ menuconfig VIDEO
 
 if VIDEO
 
-config FBCONSOLE
+config FRAMEBUFFER_CONSOLE
 	bool
 	select IMAGE_RENDERER
 	prompt "framebuffer console support"
diff --git a/drivers/video/Makefile b/drivers/video/Makefile
index 67b87a8..359135e 100644
--- a/drivers/video/Makefile
+++ b/drivers/video/Makefile
@@ -3,7 +3,7 @@ obj-$(CONFIG_DRIVER_VIDEO_EDID) += edid.o
 obj-$(CONFIG_OFDEVICE) += of_display_timing.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT) += backlight.o
 obj-$(CONFIG_DRIVER_VIDEO_BACKLIGHT_PWM) += backlight-pwm.o
-obj-$(CONFIG_FBCONSOLE) += fbconsole.o
+obj-$(CONFIG_FRAMEBUFFER_CONSOLE) += fbconsole.o
 
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL) += atmel_lcdfb.o atmel_lcdfb_core.o
 obj-$(CONFIG_DRIVER_VIDEO_ATMEL_HLCD) += atmel_hlcdfb.o atmel_lcdfb_core.o
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
