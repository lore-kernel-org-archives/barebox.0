Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.co.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uq1h5-0003Jy-Qu
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 13:48:04 +0000
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Fri, 21 Jun 2013 15:47:42 +0200
Message-Id: <1371822462-30513-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] OMAP4: fix omap4_bootsource regression
To: barebox@lists.infradead.org
Cc: vicencb@gmail.com

commit d7a913469c34553e96c887f8a9934bacd794e81c breaks boot source detection
for pcm049. The tracing vectors shows all tested boot sources, so order is
important. By not returning but overwriting src we effectively reversed the
order if more than one flag is set.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 arch/arm/mach-omap/omap4_generic.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index bf1f1a7..4878aec 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -508,9 +508,9 @@ static int omap4_bootsource(void)
 
 	if (bootsrc & (1 << 5))
 		src = BOOTSOURCE_MMC;
-	if (bootsrc & (1 << 3))
+	else if (bootsrc & (1 << 3))
 		src = BOOTSOURCE_NAND;
-	if (bootsrc & (1<<20))
+	else if (bootsrc & (1<<20))
 		src = BOOTSOURCE_USB;
 	bootsource_set(src);
 	bootsource_set_instance(0);
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
