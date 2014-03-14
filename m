Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WOSCC-0003Hr-H1
 for barebox@lists.infradead.org; Fri, 14 Mar 2014 13:30:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 14 Mar 2014 14:30:16 +0100
Message-Id: <1394803820-29277-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
References: <1394803820-29277-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: pfla02: Drop unnecessary compilation of flash headers
To: barebox@lists.infradead.org

They are unused.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phyflex-imx6/Makefile | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boards/phytec-phyflex-imx6/Makefile b/arch/arm/boards/phytec-phyflex-imx6/Makefile
index 93e7308..01c7a25 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/Makefile
+++ b/arch/arm/boards/phytec-phyflex-imx6/Makefile
@@ -1,5 +1,2 @@
 obj-y += board.o
-obj-y += flash-header-phytec-pfla02-1gib.dcd.o flash-header-phytec-pfla02-2gib.dcd.o
-extra-y += flash-header-phytec-pfla02-1gib.dcd.S flash-header-phytec-pfla02-2gib.dcd.S
-extra-y += flash-header-phytec-pfla02-1gib.dcd flash-header-phytec-pfla02-2gib.dcd
 lwl-y += lowlevel.o
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
