Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlvHT-00084r-RT
	for barebox@lists.infradead.org; Thu, 19 Aug 2010 02:55:05 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Aug 2010 04:49:46 +0200
Message-Id: <1282186186-521-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] mmccpu: fix typo in AT91_MAIN_CLOCK
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/mmccpu/config.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
index 422ac09..c37d5eb 100644
--- a/arch/arm/boards/mmccpu/config.h
+++ b/arch/arm/boards/mmccpu/config.h
@@ -1,7 +1,7 @@
 #ifndef __CONFIG_H
 #define __CONFIG_H
 
-#define AT91_M1IN_CLOCK		18432000
+#define AT91_MAIN_CLOCK		18432000
 
 /* values */
 #define MASTER_PLL_MUL		54
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
