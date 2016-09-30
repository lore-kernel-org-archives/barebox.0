Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpvBA-0002DL-3j
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 10:36:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1bpvAm-0004az-Mr
 for barebox@lists.infradead.org; Fri, 30 Sep 2016 12:36:08 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Sep 2016 12:36:06 +0200
Message-Id: <20160930103607.15791-9-l.stach@pengutronix.de>
In-Reply-To: <20160930103607.15791-1-l.stach@pengutronix.de>
References: <20160930103607.15791-1-l.stach@pengutronix.de>
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
Subject: [PATCH 09/10] arm64: drop unneeded files from Makefile
To: barebox@lists.infradead.org

ARM64 has native instructions for division and thus doesn't need the
helper functions implemented in those files.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib64/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/lib64/Makefile b/arch/arm/lib64/Makefile
index 87e26f6afab2..4b7b7e3cc5e3 100644
--- a/arch/arm/lib64/Makefile
+++ b/arch/arm/lib64/Makefile
@@ -4,6 +4,4 @@ obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memcpy.o
 obj-$(CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS)	+= memset.o
 extra-y += barebox.lds
 
-pbl-y	+= lib1funcs.o
-pbl-y	+= ashldi3.o
 pbl-y	+= div0.o
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
