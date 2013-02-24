Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.mail.ru ([94.100.176.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9cnC-00045F-8g
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 14:43:07 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 24 Feb 2013 18:42:54 +0400
Message-Id: <1361716974-17999-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: pcm038: Remove duplicate imx27_barebox_entry() call
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/lowlevel.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 85b9391..77b7bf5 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -98,8 +98,6 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 8);
 
 	imx27_barebox_boot_nand_external();
-#else
-	imx27_barebox_entry(0);
 #endif
 out:
 	imx27_barebox_entry(0);
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
