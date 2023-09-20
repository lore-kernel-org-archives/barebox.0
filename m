Delivery-date: Wed, 20 Sep 2023 14:38:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiwTl-004cnD-94
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 14:38:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiwTj-0001n9-98
	for lore@pengutronix.de; Wed, 20 Sep 2023 14:38:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kh3rbwEvQYdv9V0vfLc8g6u3a9YJKelkT+yF/nXSbt0=; b=VUXiqrMJiiYnfsmm9AIzQbPCiI
	uW5BkCJS/cyQ4W55bisF3sozOeOWu7XvGcIVz+mzdHiZ2EkEVaFDoT5iGhL5S/ZFkBHFMIPkEUk88
	OJVlDQQoqLc90PGlM69djMjZWXypsdi3Mq7llXxsN1b/mGjDJcX1TEsMHELQTxeVxTMBNS3Nc4L2p
	dGwQ7Pijt/IWKbxIiPyXoKvw6LyeXABAy7t+3hXkubT4BQ0IpnAeq9mkkpAI4fPJtzAadecnY0b11
	1OJpwAB10R9oZY9kWL5nSnPfvFq+XC76V7KcjaZEHevgJ8ofq8uvjlGSODJwL7Vq25EwmUv6ns1qh
	QXmL4DEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiwSW-0033BP-27;
	Wed, 20 Sep 2023 12:37:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiwSR-003375-3B
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 12:37:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost)
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <r.czerwinski@pengutronix.de>)
	id 1qiwSP-0001Kp-7L; Wed, 20 Sep 2023 14:37:29 +0200
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Wed, 20 Sep 2023 14:37:20 +0200
Message-ID: <20230920123720.767063-3-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
References: <20230920123720.767063-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_053732_024252_6A5ADD7A 
X-CRM114-Status: GOOD (  10.20  )
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
Subject: [PATCH 3/3] blspec: take extra entries into account
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Wire up the possible extra entries during entry matching.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/blspec.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index e361a02333..e950de4e99 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -512,7 +512,9 @@ int blspec_scan_file(struct bootentries *bootentries, const char *root,
 		     const char *configname)
 {
 	char *devname = NULL, *hwdevname = NULL;
+	struct blspec_extra_entry *extra;
 	struct blspec_entry *entry;
+	bool found;
 
 	if (blspec_have_entry(bootentries, configname))
 		return -EEXIST;
@@ -526,7 +528,16 @@ int blspec_scan_file(struct bootentries *bootentries, const char *root,
 	entry->configpath = xstrdup(configname);
 	entry->cdev = get_cdev_by_mountpath(root);
 
-	if (!entry_is_of_compatible(entry, of_get_machine_compatible())) {
+	found = entry_is_of_compatible(entry, of_get_machine_compatible());
+	if (!found && blspec_extra_list) {
+		list_for_each_entry(extra, blspec_extra_list, list) {
+			found = entry_is_of_compatible(entry, extra->compatible);
+			if (found)
+				break;
+		}
+	}
+
+	if (!found) {
 		blspec_entry_free(&entry->entry);
 		return -ENODEV;
 	}
-- 
2.42.0



