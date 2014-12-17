Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y1CJS-0001zW-20
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 10:58:39 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Y1CJB-0007VZ-6g
 for barebox@lists.infradead.org; Wed, 17 Dec 2014 11:58:21 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 17 Dec 2014 11:58:20 +0100
Message-Id: <1418813901-24229-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1418813901-24229-1-git-send-email-l.stach@pengutronix.de>
References: <1418813901-24229-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] arm: edmqmx6: build entry in lwl target
To: barebox@lists.infradead.org

Only build it at the correct obj or pbl stage where
the entry is needed.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/datamodul-edm-qmx6/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/Makefile b/arch/arm/boards/datamodul-edm-qmx6/Makefile
index bb6d9d848d4f..01c7a259e9a5 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/Makefile
+++ b/arch/arm/boards/datamodul-edm-qmx6/Makefile
@@ -1,2 +1,2 @@
-obj-y += board.o lowlevel.o
-pbl-y += lowlevel.o
+obj-y += board.o
+lwl-y += lowlevel.o
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
