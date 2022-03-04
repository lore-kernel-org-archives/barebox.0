Delivery-date: Fri, 04 Mar 2022 07:26:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ1OF-00HHgW-9o
	for lore@lore.pengutronix.de; Fri, 04 Mar 2022 07:26:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ1OE-00065k-4h
	for lore@pengutronix.de; Fri, 04 Mar 2022 07:26:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/JFLpkYHWEyGFAv+TYIIZbo1aBpedcDCg+db+gtqUGg=; b=IqSw7oBRZ602EZ
	5p65E5hkL5BR5FHE7XzkS9+xaJ4pDAb5EhCNvPQjBJdDXkCGys9JIw/Q+aHo4HwQymbyo5LxGnT8g
	HewbP5gDK+Pzm99NHrFLR46qTZMcB3FKPg3UWw+PkbnHCC4GB9BKAHqTYnaedtOoA1ySR4NL89QP3
	/60YgvXWkvgPCn639DaQQFcPqyRZ1rxClDFg2clKL/bN/HiynosVa+xGEduNBoSwqcfnC1oYnpG5u
	f9st3EQmXruf1Lre09u7c2BN1pCOLkCOE8e6dVFAjpI0iumg6Vb/RdO8iyRQVS98sDVr5Apkx4ZM9
	VIsgoCYuhQJob6uP8uTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ1Mm-008cdz-BT; Fri, 04 Mar 2022 06:24:40 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ1Md-008ccS-SP
 for barebox@lists.infradead.org; Fri, 04 Mar 2022 06:24:33 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 0BE7792D6C; Fri,  4 Mar 2022 07:24:29 +0100 (CET)
Received: from localhost (unknown
 [IPv6:2001:9e8:216d:8301:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 8D6C892D27;
 Fri,  4 Mar 2022 07:24:25 +0100 (CET)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri,  4 Mar 2022 07:24:12 +0100
Message-Id: <20220304062412.1248657-3-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220304062412.1248657-1-r.czerwinski@pengutronix.de>
References: <20220304062412.1248657-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_222432_090318_6530DC26 
X-CRM114-Status: GOOD (  10.13  )
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
Subject: [RFC Patch 2/3] blspec: take compatible name as argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of retrieving the root compatible itself, let
entry_is_of_compatible take the compatible as an argument. Pass in
of_get_machine_compatible for now, no functional changes.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/blspec.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 0ea857294f..c1b1991338 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -421,7 +421,7 @@ out:
  *
  * returns true if the entry is compatible, false otherwise
  */
-static bool entry_is_of_compatible(struct blspec_entry *entry)
+static bool entry_is_of_compatible(struct blspec_entry *entry, const char *compat)
 {
 	const char *devicetree;
 	const char *abspath;
@@ -429,7 +429,6 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	void *fdt = NULL;
 	int ret;
 	struct device_node *root = NULL, *barebox_root;
-	const char *compat;
 	char *filename;
 
 	/* If the entry doesn't specify a devicetree we are compatible */
@@ -445,10 +444,6 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	if (!barebox_root)
 		return true;
 
-	ret = of_property_read_string(barebox_root, "compatible", &compat);
-	if (ret)
-		return false;
-
 	if (entry->rootpath)
 		abspath = entry->rootpath;
 	else
@@ -624,7 +619,7 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 
 		entry = lentry->entry;
 
-		if (!entry_is_of_compatible(entry)) {
+		if (!entry_is_of_compatible(entry, of_get_machine_compatible())) {
 			blspec_entry_free(&entry->entry);
 			list_del(&lentry->list);
 			free(lentry);
-- 
2.35.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

