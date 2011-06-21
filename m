Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYyAg-00029U-L4
	for barebox@lists.infradead.org; Tue, 21 Jun 2011 10:27:03 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 21 Jun 2011 12:26:54 +0200
Message-Id: <1308652014-26792-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] Makefile: remove -Map option from global LDFLAGS
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

... and re-add it to LDFLAGS_barebox.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/Makefile b/Makefile
index 1647ce9..8b3db44 100644
--- a/Makefile
+++ b/Makefile
@@ -298,7 +298,7 @@ CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
                    -fno-strict-aliasing -fno-common -Os -pipe
 AFLAGS          := -D__ASSEMBLY__
 
-LDFLAGS		:= -Map barebox.map
+LDFLAGS_barebox	:= -Map barebox.map
 
 # Read KERNELRELEASE from include/config/kernel.release (if it exists)
 KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
