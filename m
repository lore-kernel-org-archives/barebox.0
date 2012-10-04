Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJkfv-00037W-Rg
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 12:37:13 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu,  4 Oct 2012 16:36:59 +0400
Message-Id: <1349354221-28409-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] ARM: Fix Kconfig link for Cirrus Logic EP9312 CPU.
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/cpu/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index f55e862..2ed6789 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -17,7 +17,7 @@ config CPU_ARM920T
 	  and is used in the Maverick EP9312 and the Samsung S3C2410.
 
 	  More information on the Maverick EP9312 at
-	  <http://linuxdevices.com/products/PD2382866068.html>.
+	  <http://www.cirrus.com/en/products/ep9312.html>.
 
 	  Say Y if you want support for the ARM920T processor.
 	  Otherwise, say N.
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
