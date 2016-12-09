Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cFLzh-0001BE-8E
 for barebox@lists.infradead.org; Fri, 09 Dec 2016 14:17:51 +0000
Received: by mail-wm0-x243.google.com with SMTP id a20so4303915wme.2
 for <barebox@lists.infradead.org>; Fri, 09 Dec 2016 06:17:28 -0800 (PST)
From: yegorslists@googlemail.com
Date: Fri,  9 Dec 2016 15:17:15 +0100
Message-Id: <1481293035-28916-2-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1481293035-28916-1-git-send-email-yegorslists@googlemail.com>
References: <1481293035-28916-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 2/2] arm: baltos: prolong global reset
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Prolong global reset to the max. value of 0xff. Such a long reset
is required for some peripherals found on Baltos devices.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boards/vscom-baltos/lowlevel.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index 87f2a74..9f829b9 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -126,6 +126,12 @@ ENTRY_FUNCTION(start_am33xx_baltos_sdram, r0, r1, r2)
 {
 	void *fdt;
 
+	/*
+	 * Prolong global reset duration to the max. value (0xff)
+	 * and leave power domain reset to its default value (0x10).
+	 */
+	__raw_writel(0x000010ff, AM33XX_PRM_RSTTIME);
+
 	fdt = __dtb_am335x_baltos_minimal_start;
 
 	fdt -= get_runtime_offset();
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
