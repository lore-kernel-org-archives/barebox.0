Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9XoW-0003a8-5Q
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 09:24:10 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 24 Feb 2013 13:23:56 +0400
Message-Id: <1361697839-14310-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1361697839-14310-1-git-send-email-shc_work@mail.ru>
References: <1361697839-14310-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/7] ARM: pcm970: Replace #ifdef with IS_ENABLED()
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm970.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/pcm038/pcm970.c
index dd95f52..b176d8d 100644
--- a/arch/arm/boards/pcm038/pcm970.c
+++ b/arch/arm/boards/pcm038/pcm970.c
@@ -27,7 +27,6 @@
 #define GPIO_IDE_PCOE	(GPIO_PORTF + 7)
 #define GPIO_IDE_RESET	(GPIO_PORTF + 10)
 
-#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
 static struct resource pcm970_ide_resources[] = {
 	{
 		.start	= MX27_PCMCIA_MEM_BASE_ADDR,
@@ -125,7 +124,6 @@ static void pcm970_ide_init(void)
 
 	platform_device_register(&pcm970_ide_device);
 }
-#endif
 
 static void pcm970_mmc_init(void)
 {
@@ -185,9 +183,8 @@ static int pcm970_init(void)
 		imx27_add_usbh2(&pcm970_usbh2_pdata);
 	}
 
-#ifdef CONFIG_DISK_INTF_PLATFORM_IDE
-	pcm970_ide_init();
-#endif
+	if (IS_ENABLED(CONFIG_DISK_INTF_PLATFORM_IDE))
+		pcm970_ide_init();
 
 	if (IS_ENABLED(CONFIG_MCI_IMX))
 		pcm970_mmc_init();
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
