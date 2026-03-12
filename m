Delivery-date: Thu, 12 Mar 2026 15:46:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIY-00ArSU-0f
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:46:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIX-0005AU-NQ
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:46:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CgwB84I+0A/4kcpKVkgVAJGlyaM252Uym1J5AgOx1u8=; b=AcTulM/1X95o4BJAhizNQef8sI
	6Xq8y8SVGtBXojW348MGjjmJWNByWfSNOEO1Hbibvm6acwwPf+hqPbE3uku4Pu6/6BOdVl9EDWAgV
	EDa4IDus2IZTkIXZjdIgI082+DJGdkZmW2Yjs+zYck5gacpHSSfklZIA38nIEOyPSpKHjwc61Ry+e
	kkl0p6dNLxZn8J3rWxbb1JTxxzLEJBo9bk6ydr36RlQS35+PJpTve256rM5ukNJEhIFyl9HVMWN0q
	x/rIRYsKn4fi+sbGJYAJp2JvpgxQ2gjwGE/Dy1jMp/o3y50PyGnmGO1KC/sxHvp08K+uia405IqOW
	yY/FouHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHv-0000000EF4b-2Vav;
	Thu, 12 Mar 2026 14:45:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHn-0000000EEvH-45OC
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-0004U0-Fa; Thu, 12 Mar 2026 15:45:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052OJ-2S;
	Thu, 12 Mar 2026 15:45:06 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-000000093tN-4Bub;
	Thu, 12 Mar 2026 15:45:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:52 +0100
Message-ID: <20260312144505.2159816-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074516_191906_A749A189 
X-CRM114-Status: GOOD (  12.73  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 09/16] bootm: stash initial OS address/entry in image_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Save the initial os_address and os_entry values that were passed to
bootm_boot() in new os_address_hint and os_entry_hint fields. These
preserve the originally requested values even if os_address/os_entry
are modified during the boot process.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c  | 4 ++--
 include/bootm.h | 4 ++++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 01d569dd37d4..25cbce6ccb3f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -530,8 +530,8 @@ struct image_data *bootm_boot_prep(const struct bootm_data *bootm_data)
 	data->force = bootm_data->force;
 	data->dryrun = bootm_data->dryrun;
 	data->initrd_address = bootm_data->initrd_address;
-	data->os_address = bootm_data->os_address;
-	data->os_entry = bootm_data->os_entry;
+	data->os_address = data->os_address_hint = bootm_data->os_address;
+	data->os_entry = data->os_entry_hint = bootm_data->os_entry;
 	data->efi_boot = bootm_data->efi_boot;
 
 	ret = file_read_and_detect_boot_image_type(data->os_file, &data->os_header);
diff --git a/include/bootm.h b/include/bootm.h
index d3874a0e8ef2..570ac4d289f2 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -86,6 +86,10 @@ struct image_data {
 	/* entry point to the os. relative to the start of the image */
 	unsigned long os_entry;
 
+	/* initial os_address/os_entry supplied at entry to bootm_boot */
+	unsigned long os_address_hint;
+	unsigned long os_entry_hint;
+
 	/* if initrd is already loaded this resource will be !NULL */
 	struct resource *initrd_res;
 
-- 
2.47.3



