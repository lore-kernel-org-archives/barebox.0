Delivery-date: Tue, 14 Apr 2026 17:01:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCfGB-00C6aA-0w
	for lore@lore.pengutronix.de;
	Tue, 14 Apr 2026 17:01:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCfGA-0003TX-LK
	for lore@pengutronix.de; Tue, 14 Apr 2026 17:01:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EOq6gnf0XuB8sEe7wnoNIjS+QTyIqGbXs0Mc0oobWro=; b=JefhLwTQ5C+UOdx0hV5FujqfjU
	PA6esa+pqMIsKkiY1WFs59JmCp0J3xDY4U2C9yYW8R1f0QdFCGuCeBhHij8VXxMlun129Pw5420nD
	8OnKAp2j36K6LprVItYxQmHaj5paKW0vqeJ+BTXoEb1S14HYubYH1bZwskIEitZTANnEGQ52clPa3
	1K0BnA3o5P3DQepJah3tQsVSEDv/ILgiIg6e+T5z4oIv3HGiWh9RNe18p5HUxNk4Fc/CnhFL+giRw
	JdkAGFGqNOxjDZs7P0eClDWLDvKoy0vsHkLc7GMSFrx/nWZefiuhqX0ld2VibLbADPpjSK3PaPRC1
	SHmbFDOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCfFZ-0000000HUaz-1Szp;
	Tue, 14 Apr 2026 15:00:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCfFP-0000000HUT6-1WM6
	for barebox@lists.infradead.org;
	Tue, 14 Apr 2026 15:00:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCfFN-0003N0-I9; Tue, 14 Apr 2026 17:00:13 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCfFN-005MMq-0R;
	Tue, 14 Apr 2026 17:00:13 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCfFN-00000003Dxb-09Z6;
	Tue, 14 Apr 2026 17:00:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 14 Apr 2026 16:57:33 +0200
Message-ID: <20260414150010.761563-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_080015_406438_5BCF38CB 
X-CRM114-Status: GOOD (  13.19  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: gracefully handle empty dummy DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We started registering an empty dummy DT on platforms with barebox as
EFI payload to allow a multi-platform build where some enabled SoCs
expect a DT to be available.

This fixes some problems, but causes others, because we have places in
the code that assume there is always a compatible property when there is
a device tree.

Adapt these places to treat lack of oftree and compatible the same.

Fixes: 10922345fbcc ("efi: payload: register dummy device tree")
Reported-by: Chali Anis <chalianis1@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c    | 4 ++--
 common/image-fit.c | 2 +-
 common/oftree.c    | 2 ++
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index c07e3a2d672d..c90bead4f355 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -336,14 +336,14 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	if (!strcmp(devicetree, "none"))
 		return true;
 
-	/* If we don't have a root node every entry is compatible */
+	/* If we don't have a root node with a compatible, every entry is compatible */
 	barebox_root = of_get_root_node();
 	if (!barebox_root)
 		return true;
 
 	ret = of_property_read_string(barebox_root, "compatible", &compat);
 	if (ret)
-		return false;
+		return true;
 
 	if (entry->rootpath)
 		abspath = entry->rootpath;
diff --git a/common/image-fit.c b/common/image-fit.c
index 7bc4665fcdbc..8e6f3d2b5d3c 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -891,7 +891,7 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
 
 	ret = of_property_read_string(barebox_root, "compatible", &machine);
 	if (ret)
-		return -ENOENT;
+		goto default_unit;
 
 	for_each_child_of_node(conf_node, child) {
 		int score;
diff --git a/common/oftree.c b/common/oftree.c
index 2bf1a63e4915..7aaed70e4016 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -550,6 +550,8 @@ int of_prepend_machine_compatible(struct device_node *root, const char *compat)
 		return 0;
 
 	curcompat = of_get_property(root, "compatible", &cclen);
+	if (!curcompat)
+		return -ENOENT;
 
 	buf = xzalloc(cclen + clen);
 
-- 
2.47.3



