Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8BjB-0000sg-Lm
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:28 +0200
Message-Id: <1287492930-15716-41-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 40/42] pcm043: ifx compiler warning
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm043/pcm043.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 9f98795..5932f95 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -93,7 +93,7 @@ static struct device_d nand_dev = {
 };
 
 #ifdef CONFIG_PCM043_DISPLAY_SHARP
-static const struct fb_videomode pcm043_fb_mode = {
+static struct fb_videomode pcm043_fb_mode = {
 	/* 240x320 @ 60 Hz */
 	.name		= "Sharp-LQ035Q7",
 	.refresh	= 60,
@@ -111,7 +111,7 @@ static const struct fb_videomode pcm043_fb_mode = {
 	.flag		= 0,
 };
 #else
-static const struct fb_videomode pcm043_fb_mode = {
+static struct fb_videomode pcm043_fb_mode = {
 	/* 240x320 @ 60 Hz */
 	.name		= "TX090",
 	.refresh	= 60,
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
