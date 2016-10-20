Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x242.google.com ([2607:f8b0:400d:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxB6C-0005Dc-GT
 for barebox@lists.infradead.org; Thu, 20 Oct 2016 11:01:28 +0000
Received: by mail-qk0-x242.google.com with SMTP id f128so4134787qkb.0
 for <barebox@lists.infradead.org>; Thu, 20 Oct 2016 04:01:03 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Thu, 20 Oct 2016 13:00:48 +0200
Message-Id: <1476961248-24425-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] arm: Baltos: don't invoke baltos_read_eeprom in MLO
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

EEPROM information is needed in barebox.bin in order to setup MACs and
select appropriate DTB from kernel-fit.itb, so disable this initcall
in MLO.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boards/vscom-baltos/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
index dc08ed5..fea992d 100644
--- a/arch/arm/boards/vscom-baltos/board.c
+++ b/arch/arm/boards/vscom-baltos/board.c
@@ -47,6 +47,7 @@ static struct omap_barebox_part baltos_barebox_part = {
 	.nand_size = 0x1e0000,
 };
 
+#ifndef CONFIG_OMAP_BUILD_IFT
 struct bsp_vs_hwparam {
 	uint32_t Magic;
 	uint32_t HwRev;
@@ -111,6 +112,7 @@ static int baltos_read_eeprom(void)
 	return 0;
 }
 environment_initcall(baltos_read_eeprom);
+#endif
 
 static int baltos_devices_init(void)
 {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
