Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWPg-0004Qo-Rd
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:53:06 +0000
Received: from geraet.fritz.box (48-248-142-46.pool.kielnet.net
 [46.142.248.48]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id E67941C000D
 for <barebox@lists.infradead.org>; Fri, 15 Nov 2019 07:53:02 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:52:55 +0100
Message-Id: <20191115075257.24079-3-ahmad@a3f.at>
In-Reply-To: <20191115075257.24079-1-ahmad@a3f.at>
References: <20191115075257.24079-1-ahmad@a3f.at>
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
Subject: [PATCH 3/5] commands: psci: make locally-used function static
To: barebox@lists.infradead.org

Fixes a warning that the function is global, but without prototype.
No functional change.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/smc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/smc.c b/commands/smc.c
index 67ca4ee9022f..eb96e581dc02 100644
--- a/commands/smc.c
+++ b/commands/smc.c
@@ -8,7 +8,7 @@
 #include <asm/secure.h>
 #include <linux/arm-smccc.h>
 
-void second_entry(void)
+static void second_entry(void)
 {
 	struct arm_smccc_res res;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
