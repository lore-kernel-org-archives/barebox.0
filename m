Delivery-date: Fri, 01 Mar 2024 14:36:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33k-0026Uy-2g
	for lore@lore.pengutronix.de;
	Fri, 01 Mar 2024 14:36:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rg33k-0004fa-15
	for lore@pengutronix.de; Fri, 01 Mar 2024 14:36:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7eNaj847m3/38Jy0b6Fq7T7WAPtGvbXVmKcKdmxmp5o=; b=jAU2lkPiSYQqwOVMPBZjeAIaYg
	fP6tnR/j5vQxclMANu2WB9j6E2Af0PSvxtW3GZOpg4K82ZLt9u8HDA8Gm6Yx1oXRvgZIfaVGFepqb
	PipcvoJiClcBFxEzBeBERi7BfCJayChVVtg9+p0iMsO3xir8fOzKfMrudhAcHEgcg5nMf4Yygihip
	wescs13SYE9rjdL3kZRWLN5lHXlZ5uUuu9oCmEk13eYB2vDyi3RTFROXJn7x8HeOIlyPl73amavZx
	MDClXZY9Vm+dphX6pEeUL3ZA6kRVORmcBY/yoq/fgkTRsw9uIKmljxbMVA0bQl8wwXLd6rIvMSuEu
	yYhynElA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg338-00000000Vip-3g2f;
	Fri, 01 Mar 2024 13:35:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg2ZE-00000000Hn7-32sU
	for barebox@lists.infradead.org;
	Fri, 01 Mar 2024 13:04:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZD-0000Zo-1l; Fri, 01 Mar 2024 14:04:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZC-003mfv-LP; Fri, 01 Mar 2024 14:04:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rg2ZC-000jfC-0C;
	Fri, 01 Mar 2024 14:04:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Mar 2024 14:04:44 +0100
Message-Id: <20240301130445.171385-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240301130445.171385-1-a.fatoum@pengutronix.de>
References: <20240301130445.171385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_050448_825212_4A8FD4B8 
X-CRM114-Status: GOOD (  11.75  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] blspec: don't parse whole device tree to compare compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that we have an fdt_machine_is_compatible that can operate on
flattened device trees, use it to speed up the process of finding
compatible bootloader spec entries.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index b70332a54c28..23a24c63db15 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -427,7 +427,9 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	const char *devicetree;
 	const char *abspath;
 	int ret;
-	struct device_node *root = NULL, *barebox_root;
+	struct device_node *barebox_root;
+	size_t size;
+	void *fdt;
 	const char *compat;
 	char *filename;
 
@@ -455,25 +457,23 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 
 	filename = basprintf("%s/%s", abspath, devicetree);
 
-	root = of_read_file(filename);
-	if (IS_ERR(root)) {
+	fdt = read_file(filename, &size);
+	if (!fdt) {
 		ret = false;
-		root = NULL;
 		goto out;
 	}
 
-	if (of_device_is_compatible(root, compat)) {
+	if (fdt_machine_is_compatible(fdt, size, compat)) {
 		ret = true;
 		goto out;
 	}
 
-	pr_info("ignoring entry with incompatible devicetree \"%s\"\n",
-			(char *)of_get_property(root, "compatible", NULL));
+	pr_info("ignoring entry with incompatible devicetree: %s\n", devicetree);
 
 	ret = false;
 
 out:
-	of_delete_node(root);
+	free(fdt);
 	free(filename);
 
 	return ret;
-- 
2.39.2



