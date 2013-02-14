Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5usI-0005hC-HR
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:13:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Feb 2013 10:12:59 +0100
Message-Id: <1360833179-10324-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM pbl: move piggydata before bss
To: barebox@lists.infradead.org

This decreases the pbl image size by the size of the bss segment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/pbl/zbarebox.lds.S |   12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
index 564b3c6..2914fdd 100644
--- a/arch/arm/pbl/zbarebox.lds.S
+++ b/arch/arm/pbl/zbarebox.lds.S
@@ -59,18 +59,18 @@ SECTIONS
 	.data : { *(.data*) }
 
 	. = ALIGN(4);
-	__bss_start = .;
-	.bss : { *(.bss*) }
-	__bss_stop = .;
-	_end = .;
-
-	. = ALIGN(4);
 	__piggydata_start = .;
 	.piggydata : {
 		*(.piggydata)
 	}
 	__piggydata_end = .;
 
+	. = ALIGN(4);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+
 	_barebox_image_size = __piggydata_end - (TEXT_BASE - SZ_2M);
 	_barebox_pbl_size = __bss_start - (TEXT_BASE - SZ_2M);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
