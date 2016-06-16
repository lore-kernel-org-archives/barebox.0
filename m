Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDXCG-0001xY-Sv
 for barebox@lists.infradead.org; Thu, 16 Jun 2016 13:19:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jun 2016 15:18:19 +0200
Message-Id: <1466083102-6241-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: start: Fix arm_mem_barebox_image for
 !CONFIG_RELOCATABLE
To: Barebox List <barebox@lists.infradead.org>

Fixes: 65071bd arm: Clarify memory layout calculation

arm_mem_barebox_image() shall return the beginning of the barebox
image (and thus the end of the malloc region). For relocatable
images we can return a suitable location, but for non relocatable
images we do not have a choice: We must return TEXT_BASE. If TEXT_BASE
happens to be outside the memory region between membase and endmem
we can return the base of the ramoops area.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Markus Pargmann <mpa@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 8e7b45c..0acdfa3 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -143,9 +143,13 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
 		endmem -= size;
 		endmem &= ~(SZ_1M - 1);
+		return endmem;
+	} else {
+		if (TEXT_BASE >= membase && TEXT_BASE < endmem)
+			return TEXT_BASE;
+		else
+			return endmem;
 	}
-
-	return endmem;
 }
 
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)				\
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
