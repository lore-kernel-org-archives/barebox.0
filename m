Delivery-date: Wed, 20 Sep 2023 14:38:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiwTm-004cnd-8P
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 14:38:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiwTk-0001nO-AM
	for lore@pengutronix.de; Wed, 20 Sep 2023 14:38:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GGfzmZFM+LSyHs3PtQD46dk+/Dgg7ko9qawE5UxHwbE=; b=O5C2q+YdV9XHMNlUp4zzthgpbe
	KmrlTxshR9I+UlPCenztgbAZBeh+DVWpIGOEfigrpr1J0Mft3/rHLHOhFx/7wpNneS1b/BIyz79d6
	G7dpEBJHQWsZmsWZVrOstCUmWhpOW2QQ8YsUzRvU6jmFOlzb+jmz4uuDIECLHTeT6lRZgfUmGAGnr
	r2ohM9UgFu3ZOpThgn/WvQ6qI1xAumBBEeS9gT8tVnWlHCIcLCi/cTXeiGeQD6ocajS1i3BlxtXqe
	gpLDxFmV/ca7YB5oFXIr9qmkvuOZ47W3E93gIEjukAFXJ8zF9LwYZLHdMvIEj/ojmD05ieUlon6yN
	9RUGmBdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiwSU-0033AB-3D;
	Wed, 20 Sep 2023 12:37:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiwSR-00336b-3C
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 12:37:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qiwSN-0001JV-49; Wed, 20 Sep 2023 14:37:27 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 20 Sep 2023 14:37:18 +0200
Message-ID: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_053732_028267_008F1515 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] blspec: take compatible name as argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of retrieving the root compatible itself, let
entry_is_of_compatible take the compatible as an argument. Pass in
of_get_machine_compatible for now, no functional changes.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/blspec.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index b70332a54c..f8d47f20d2 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -422,13 +422,12 @@ static char *parse_nfs_url(const char *url)
  *
  * returns true if the entry is compatible, false otherwise
  */
-static bool entry_is_of_compatible(struct blspec_entry *entry)
+static bool entry_is_of_compatible(struct blspec_entry *entry, const char* compat)
 {
 	const char *devicetree;
 	const char *abspath;
 	int ret;
 	struct device_node *root = NULL, *barebox_root;
-	const char *compat;
 	char *filename;
 
 	/* If the entry doesn't specify a devicetree we are compatible */
@@ -444,10 +443,6 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	if (!barebox_root)
 		return true;
 
-	ret = of_property_read_string(barebox_root, "compatible", &compat);
-	if (ret)
-		return false;
-
 	if (entry->rootpath)
 		abspath = entry->rootpath;
 	else
@@ -521,7 +516,7 @@ int blspec_scan_file(struct bootentries *bootentries, const char *root,
 	entry->configpath = xstrdup(configname);
 	entry->cdev = get_cdev_by_mountpath(root);
 
-	if (!entry_is_of_compatible(entry)) {
+	if (!entry_is_of_compatible(entry, of_get_machine_compatible())) {
 		blspec_entry_free(&entry->entry);
 		return -ENODEV;
 	}
-- 
2.42.0



