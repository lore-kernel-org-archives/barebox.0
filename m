Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXKcg-0002XV-T0
 for barebox@lists.infradead.org; Wed, 20 Nov 2019 07:42:00 +0000
Received: from geraet.fritz.box (i577B6BFD.versanet.de [87.123.107.253])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E10E8200008
 for <barebox@lists.infradead.org>; Wed, 20 Nov 2019 07:41:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 20 Nov 2019 08:41:39 +0100
Message-Id: <20191120074139.23991-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: cpu: dtb: remove unused declaration
To: barebox@lists.infradead.org

We no longer use __dtb_start on ARM and the declaration is unused in the
file. Drop it.
No functional change.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/dtb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index 1ba5aa415ef7..c43474e63b9b 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -19,8 +19,6 @@
 #include <of.h>
 #include <asm/barebox-arm.h>
 
-extern char __dtb_start[];
-
 static int of_arm_init(void)
 {
 	struct device_node *root;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
