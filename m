Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCwv5-0002SM-Bv
 for barebox@lists.infradead.org; Sun, 18 Jan 2015 20:58:05 +0000
Received: from antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A
 (p4FD7DEA0.dip0.t-ipconnect.de [79.215.222.160])
 by lynxeye.de (Postfix) with ESMTPA id A6C8C26C2003
 for <barebox@lists.infradead.org>; Sun, 18 Jan 2015 21:57:10 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 18 Jan 2015 21:57:04 +0100
Message-Id: <1421614624-14656-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1421614624-14656-1-git-send-email-dev@lynxeye.de>
References: <1421614624-14656-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/3] arm: board: virt2real: build lowlevel in proper target
To: barebox@lists.infradead.org

Fixes build with PBL enabled.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/virt2real/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/virt2real/Makefile b/arch/arm/boards/virt2real/Makefile
index b2f44bba1b5b..01c7a259e9a5 100644
--- a/arch/arm/boards/virt2real/Makefile
+++ b/arch/arm/boards/virt2real/Makefile
@@ -1 +1,2 @@
-obj-y += lowlevel.o board.o
+obj-y += board.o
+lwl-y += lowlevel.o
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
