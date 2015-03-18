Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YYEmG-0007ZX-9n
 for barebox@lists.infradead.org; Wed, 18 Mar 2015 14:16:57 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 879F2A00105
 for <barebox@lists.infradead.org>; Wed, 18 Mar 2015 15:17:26 +0100 (CET)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 18 Mar 2015 15:13:42 +0100
Message-Id: <1426688022-13679-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH] mci: core: Check return value of dev_add_param_bool
To: barebox@lists.infradead.org

Commit 03b59bdb64e83ebcdb9111681775117ebce0e03b changed the
return values of dev_add_param_* to ERR_PTR(-ENOSYS) and broke a few boards.
We have now to care about the return value of dev_add_param_bool() in
mci_register().

Also set the ret variable when dev_add_param_bool() fails.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 drivers/mci/mci-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8221632..bd5cae2 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1774,7 +1774,8 @@ int mci_register(struct mci_host *host)
 	mci->param_probe = dev_add_param_bool(&mci->dev, "probe",
 			mci_set_probe, NULL, &mci->probe, mci);
 
-	if (IS_ERR(mci->param_probe)) {
+	if (IS_ERR(mci->param_probe) && PTR_ERR(mci->param_probe) != -ENOSYS) {
+		ret = PTR_ERR(mci->param_probe);
 		dev_dbg(&mci->dev, "Failed to add 'probe' parameter to the MCI device\n");
 		goto err_unregister;
 	}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
