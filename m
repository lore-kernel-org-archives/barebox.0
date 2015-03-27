Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YbZqz-0008JK-LI
 for barebox@lists.infradead.org; Fri, 27 Mar 2015 19:23:38 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri, 27 Mar 2015 20:23:12 +0100
Message-Id: <1427484192-5410-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427484192-5410-1-git-send-email-mkl@pengutronix.de>
References: <1427484192-5410-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] duckbill: fix PBL debug prefix
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

From: Jan Luebbe <jlu@pengutronix.de>

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/boards/duckbill/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/duckbill/lowlevel.c b/arch/arm/boards/duckbill/lowlevel.c
index 77d2e83aedd0..49563a0876e0 100644
--- a/arch/arm/boards/duckbill/lowlevel.c
+++ b/arch/arm/boards/duckbill/lowlevel.c
@@ -1,4 +1,4 @@
-#define pr_fmt(fmt) "Freescale MX28evk: " fmt
+#define pr_fmt(fmt) "I2SE Duckbill: " fmt
 #define DEBUG
 
 #include <common.h>
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
