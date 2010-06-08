Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OM3fB-0008Pz-Lg
	for barebox@lists.infradead.org; Tue, 08 Jun 2010 18:36:39 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Tue,  8 Jun 2010 21:36:04 +0300
Message-Id: <471ada329c4028bfda67cfa2bca1e131aed6ae0e.1276022070.git.baruch@tkos.co.il>
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
Subject: [PATCH] i2c: fix adapter_list manipulation
To: barebox@lists.infradead.org
Cc: Baruch Siach <baruch@tkos.co.il>

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/i2c/i2c.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 1fa114a..87360f3 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -365,7 +365,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	if (i2c_get_adapter(adapter->nr))
 		return -EBUSY;
 
-	list_add_tail(&adapter_list, &adapter->list);
+	list_add_tail(&adapter->list, &adapter_list);
 
 	/* populate children from any i2c device tables */
 	scan_boardinfo(adapter);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
