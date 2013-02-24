Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9XoW-0003a6-5K
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 09:24:11 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 24 Feb 2013 13:23:54 +0400
Message-Id: <1361697839-14310-2-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/7] ARM: pcm038: Fix serial number IIM-address
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 5e9c0fd..f6de8f3 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -318,7 +318,7 @@ static int pcm038_devices_init(void)
 
 	pr_notice("Using environment in %s Flash\n", envdev);
 
-	if (imx_iim_read(1, 1, &uid, 6) == 6)
+	if (imx_iim_read(1, 0, &uid, 6) == 6)
 		armlinux_set_serial(uid);
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_PCM038);
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
