Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aueov-0007K5-PX
 for barebox@lists.infradead.org; Mon, 25 Apr 2016 11:36:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Apr 2016 13:36:30 +0200
Message-Id: <1461584190-3072-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Bootm: FIT image handler depends on CONFIG_FITIMAGE
To: Barebox List <barebox@lists.infradead.org>

CONFIG_FITIMAGE is the variable to depend on, not
CONFIG_CMD_BOOTM_FITIMAGE which is only a wrapper option to
let CONFIG_FITIMAGE select from the bootm Kconfig menu.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index b9281e9..f6024c8 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -575,7 +575,7 @@ static int armlinux_register_image_handler(void)
 		register_image_handler(&aimage_handler);
 		binfmt_register(&binfmt_aimage_hook);
 	}
-	if (IS_BUILTIN(CONFIG_CMD_BOOTM_FITIMAGE))
+	if (IS_BUILTIN(CONFIG_FITIMAGE))
 	        register_image_handler(&arm_fit_handler);
 	binfmt_register(&binfmt_arm_zimage_hook);
 	binfmt_register(&binfmt_barebox_hook);
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
