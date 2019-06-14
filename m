Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr770040.outbound.protection.outlook.com
 ([40.107.77.40] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbv9Y-0006Hn-Az
 for barebox@lists.infradead.org; Fri, 14 Jun 2019 22:58:38 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Fri, 14 Jun 2019 22:58:32 +0000
Message-ID: <20190614225432.31624-1-cory.tusar@zii.aero>
Content-Language: en-US
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
Subject: [PATCH] ARM: zii-vf610-dev: Trivial spelling fix
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Chris Healy <Chris.Healy@zii.aero>

s/Couln't/Couldn't/

Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
---
 arch/arm/boards/zii-vf610-dev/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 90d453568..0697a1660 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -91,7 +91,7 @@ static int zii_vf610_dev_print_clocks(void)
 
 	ccm_np = of_find_compatible_node(NULL, NULL, "fsl,vf610-ccm");
 	if (!ccm_np) {
-		pr_err("Couln't get CCM node\n");
+		pr_err("Couldn't get CCM node\n");
 		return -ENOENT;
 	}
 
-- 
2.21.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
