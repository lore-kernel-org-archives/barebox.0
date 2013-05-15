Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp48.i.mail.ru ([94.100.177.108])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcVw7-0000Si-04
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:15:44 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 15 May 2013 11:15:16 +0400
Message-Id: <1368602116-8910-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM: ccmx51: Another fix SDRAM size detection
To: barebox@lists.infradead.org

For CCMX51-boards now we do not use ESDCTL, but actual command for
adding memory is missing. This patch fix this issue.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/ccxmx51/ccxmx51.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/ccxmx51.c b/arch/arm/boards/ccxmx51/ccxmx51.c
index 382f488..bb3d18d 100644
--- a/arch/arm/boards/ccxmx51/ccxmx51.c
+++ b/arch/arm/boards/ccxmx51/ccxmx51.c
@@ -350,13 +350,21 @@ static int ccxmx51_power_init(void)
  * On this board the SDRAM is always configured for 512Mib. The real
  * size is determined by the board id read from the IIM module.
  */
-static int ccxm51_sdram_fixup(void)
+static int ccxmx51_sdram_fixup(void)
 {
 	imx_esdctl_disable();
 
 	return 0;
 }
-postcore_initcall(ccxm51_sdram_fixup);
+postcore_initcall(ccxmx51_sdram_fixup);
+
+static int ccxmx51_memory_init(void)
+{
+	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, SZ_128M);
+
+	return 0;
+}
+mem_initcall(ccxmx51_memory_init);
 
 static int ccxmx51_devices_init(void)
 {
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
