Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDXC5-0001wc-R6
 for barebox@lists.infradead.org; Thu, 16 Jun 2016 13:18:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jun 2016 15:18:20 +0200
Message-Id: <1466083102-6241-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1466083102-6241-1-git-send-email-s.hauer@pengutronix.de>
References: <1466083102-6241-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: start: do not change barebox_boarddata
To: Barebox List <barebox@lists.infradead.org>

barebox_boarddata should stay the original boarddata and not
be modified. Keep a local pointer in barebox_arm_boot_dtb()
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index e037d91..d6a4c62 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -73,6 +73,10 @@ void *barebox_arm_boot_dtb(void)
 	void *data;
 	int ret;
 	struct barebox_arm_boarddata_compressed_dtb *compressed_dtb;
+	static void *boot_dtb;
+
+	if (boot_dtb)
+		return boot_dtb;
 
 	if (barebox_boarddata && blob_is_fdt(barebox_boarddata)) {
 		pr_debug("%s: using barebox_boarddata\n", __func__);
@@ -101,9 +105,9 @@ void *barebox_arm_boot_dtb(void)
 		return NULL;
 	}
 
-	barebox_boarddata = dtb;
+	boot_dtb = dtb;
 
-	return barebox_boarddata;
+	return boot_dtb;
 }
 
 static inline unsigned long arm_mem_boarddata(unsigned long membase,
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
