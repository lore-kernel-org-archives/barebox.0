Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp29.i.mail.ru ([94.100.177.89])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UlcmB-0003UT-TF
 for barebox@lists.infradead.org; Sun, 09 Jun 2013 10:23:08 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  9 Jun 2013 14:22:41 +0400
Message-Id: <1370773361-25588-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: pcm038: Avoid warning if gadget support not compiled in
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 49677c2..dec5164 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -328,7 +328,8 @@ static int pcm038_devices_init(void)
 	mdelay(1);
 	imx_gpio_mode(PE1_PF_USBOTG_STP);
 
-	imx27_add_usbotg(&pcm038_otg_pdata);
+	if (IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC))
+		imx27_add_usbotg(&pcm038_otg_pdata);
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_NAND:
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
