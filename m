Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout05.rmx.de ([94.199.90.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iubU7-0000kE-GO
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 12:21:20 +0000
Received: from kdin01.retarus.com (kdin01.dmz1.retloc [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout05.rmx.de (Postfix) with ESMTPS id 483LwX1vd7z9tRy
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:16 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 483LwW12s7z2yt5
 for <barebox@lists.infradead.org>; Thu, 23 Jan 2020 13:21:15 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Thu, 23 Jan 2020 13:20:42 +0100
Message-ID: <20200123122045.25507-2-ceggers@arri.de>
In-Reply-To: <20200123122045.25507-1-ceggers@arri.de>
References: <20200123122045.25507-1-ceggers@arri.de>
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
Subject: [PATCH 2/5] mci: remove param_probe member from struct mci
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

After adding the parameter, the pointer isn't required anymore.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/mci/mci-core.c | 7 ++++---
 include/mci.h          | 1 -
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 67257bcd1..7f2d3d46d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1798,6 +1798,7 @@ static int mci_detect(struct device_d *dev)
 int mci_register(struct mci_host *host)
 {
 	struct mci *mci;
+	struct param_d *param_probe;
 	int ret;
 
 	mci = xzalloc(sizeof(*mci));
@@ -1829,11 +1830,11 @@ int mci_register(struct mci_host *host)
 
 	dev_info(mci->host->hw_dev, "registered as %s\n", dev_name(&mci->dev));
 
-	mci->param_probe = dev_add_param_bool(&mci->dev, "probe",
+	param_probe = dev_add_param_bool(&mci->dev, "probe",
 			mci_set_probe, NULL, &mci->probe, mci);
 
-	if (IS_ERR(mci->param_probe) && PTR_ERR(mci->param_probe) != -ENOSYS) {
-		ret = PTR_ERR(mci->param_probe);
+	if (IS_ERR(param_probe) && PTR_ERR(param_probe) != -ENOSYS) {
+		ret = PTR_ERR(param_probe);
 		dev_dbg(&mci->dev, "Failed to add 'probe' parameter to the MCI device\n");
 		goto err_unregister;
 	}
diff --git a/include/mci.h b/include/mci.h
index a45d74476..96150739f 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -468,7 +468,6 @@ struct mci {
 	int dsr_imp;		/**< DSR implementation state from CSD */
 	char *ext_csd;
 	int probe;
-	struct param_d *param_probe;
 	struct param_d *param_boot;
 	int bootpart;
 
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
