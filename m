Delivery-date: Fri, 04 Mar 2022 07:26:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ1OH-00HHgw-RF
	for lore@lore.pengutronix.de; Fri, 04 Mar 2022 07:26:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ1OG-00066q-En
	for lore@pengutronix.de; Fri, 04 Mar 2022 07:26:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UREa5JOTUD4TSebgy/E/45zlRuaXTvInm3m0mVFxEw=; b=kjkRC8yFWg0qxG
	f5PCZFm4Nl9t5Vaeyw7UVH6OZZo03z0F0O4V+IuVQf1kzTr1RSn8R2hP8VWUA82WMtWV+2DLrgiyK
	SfQ/P0ItK4UXzoGPM18OGEt/3gZufCoxsj/8Lq2Mzqo1pTeZ+jBLQ622EyXvqLxKQEsjVQ0ha9tgO
	J0WWRQ0bIVgeGpI8H0GtHyx769FcAEis+3evwyxOzX1I8Pc4v9wxs9yqTmtuqPgaBD9oMDMF+2bt8
	fGcK0agpu9sxpjgMLrbOF+C2+1iiyjfyAF6f18K708Tgx00DYcXarkqkXshyCOz3E2P38iUSaerbA
	a4DpGmiKecbBr3t/TVrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ1Mk-008cdp-37; Fri, 04 Mar 2022 06:24:38 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ1Md-008ccQ-Ah
 for barebox@lists.infradead.org; Fri, 04 Mar 2022 06:24:32 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id F0D8B92D6B; Fri,  4 Mar 2022 07:24:26 +0100 (CET)
Received: from localhost (unknown
 [IPv6:2001:9e8:216d:8301:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 088B492B9F;
 Fri,  4 Mar 2022 07:24:25 +0100 (CET)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri,  4 Mar 2022 07:24:11 +0100
Message-Id: <20220304062412.1248657-2-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220304062412.1248657-1-r.czerwinski@pengutronix.de>
References: <20220304062412.1248657-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_222431_581774_A12DE411 
X-CRM114-Status: GOOD (  13.74  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC Patch 1/3] blspec: create list of entries, iterate over list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of parsing all files in one go and checking the compatible,
create a list and iterate over it to check the compatible. This is a
preparation to not only account for the top-level barebox compatible,
but to instead use the compatible score system to find the correct
bootable device tree entry.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/blspec.c | 41 +++++++++++++++++++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 158fd1e9a2..0ea857294f 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -520,6 +520,21 @@ static bool entry_is_match_machine_id(struct blspec_entry *entry)
  *
  * returns the number of entries found or a negative error value otherwise.
  */
+
+struct blspec_list_entry {
+	struct list_head list;
+	struct blspec_entry *entry;
+	char *name;
+};
+
+static int compare(struct list_head *a, struct list_head *b)
+{
+	char *na = (char *)list_entry(a, struct blspec_list_entry, list)->name;
+	char *nb = (char *)list_entry(b, struct blspec_list_entry, list)->name;
+
+	return strcmp(na, nb);
+}
+
 int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 {
 	struct blspec_entry *entry;
@@ -529,6 +544,11 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 	int ret, found = 0;
 	const char *dirname = "loader/entries";
 	char *nfspath = NULL;
+	struct list_head entry_list;
+	struct blspec_list_entry *lentry;
+	struct blspec_list_entry *temp;
+
+	INIT_LIST_HEAD(&entry_list);
 
 	nfspath = parse_nfs_url(root);
 	if (!IS_ERR(nfspath))
@@ -549,7 +569,6 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 		char *configname;
 		struct stat s;
 		char *dot;
-		char *devname = NULL, *hwdevname = NULL;
 
 		if (*d->d_name == '.')
 			continue;
@@ -593,13 +612,29 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 		entry->configpath = configname;
 		entry->cdev = get_cdev_by_mountpath(root);
 
+		lentry = calloc(1, sizeof(*lentry));
+		lentry->entry = entry;
+		lentry->name = d->d_name;
+
+		list_add_sort(&entry_list, &lentry->list, compare);
+	}
+
+	list_for_each_entry_safe(lentry, temp, &entry_list, list) {
+		char *devname = NULL, *hwdevname = NULL;
+
+		entry = lentry->entry;
+
 		if (!entry_is_of_compatible(entry)) {
 			blspec_entry_free(&entry->entry);
+			list_del(&lentry->list);
+			free(lentry);
 			continue;
 		}
 
 		if (!entry_is_match_machine_id(entry)) {
 			blspec_entry_free(&entry->entry);
+			list_del(&lentry->list);
+			free(lentry);
 			continue;
 		}
 
@@ -612,7 +647,7 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 		}
 
 		entry->entry.title = xasprintf("%s (%s)", blspec_entry_var_get(entry, "title"),
-					       configname);
+					       entry->configpath);
 		entry->entry.description = basprintf("blspec entry, device: %s hwdevice: %s",
 						    devname ? devname : "none",
 						    hwdevname ? hwdevname : "none");
@@ -623,6 +658,8 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 		entry->entry.release = blspec_entry_free;
 
 		bootentries_add_entry(bootentries, &entry->entry);
+		list_del(&lentry->list);
+		free(lentry);
 	}
 
 	ret = found;
-- 
2.35.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

