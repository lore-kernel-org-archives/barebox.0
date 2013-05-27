Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ugs13-0008LG-I2
 for barebox@lists.infradead.org; Mon, 27 May 2013 07:38:50 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 27 May 2013 09:38:20 +0200
Message-Id: <1369640300-7256-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] ARM i.MX53: tqma53: fix console entry
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The default baseboard for the tqma53 (MBa53) uses UART2 for debug console.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/tqma53/env/config-board | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/tqma53/env/config-board b/arch/arm/boards/tqma53/env/config-board
index 4776438..28d015e 100644
--- a/arch/arm/boards/tqma53/env/config-board
+++ b/arch/arm/boards/tqma53/env/config-board
@@ -4,4 +4,4 @@
 # instead
 
 global.hostname=tqma53
-global.linux.bootargs.base="console=ttymxc0,115200"
+global.linux.bootargs.base="console=ttymxc1,115200"
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
