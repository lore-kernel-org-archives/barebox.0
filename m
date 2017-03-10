Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmGeV-0007Ak-7K
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 09:16:01 +0000
Received: by mail-wm0-x244.google.com with SMTP id z63so1243032wmg.2
 for <barebox@lists.infradead.org>; Fri, 10 Mar 2017 01:15:38 -0800 (PST)
From: yegorslists@googlemail.com
Date: Fri, 10 Mar 2017 10:15:25 +0100
Message-Id: <1489137325-5214-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] arm: baltos: define baltos_sram_init() return type as void
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

As stated in the routine's description this routine is to return void,
hence fix its declaration to remove compiler warning.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boards/vscom-baltos/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index 9f829b9..c4e2341 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -77,7 +77,7 @@ extern char __dtb_am335x_baltos_minimal_start[];
  *
  * @return void
  */
-static noinline int baltos_sram_init(void)
+static noinline void baltos_sram_init(void)
 {
 	uint32_t sdram_size;
 	void *fdt;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
