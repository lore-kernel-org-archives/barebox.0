Delivery-date: Thu, 09 Jan 2025 12:25:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVqf2-0018sK-2z
	for lore@lore.pengutronix.de;
	Thu, 09 Jan 2025 12:25:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVqf2-00062a-Qa
	for lore@pengutronix.de; Thu, 09 Jan 2025 12:25:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AIM8zCRN+Xq96OuHaCBgMdqVhVsoquBLEN+6ZK9WQeQ=; b=jjxJrFv4f4RUaouHJ3EawHkqlU
	ZEPjN4Rcx9cRoerf/emp338adk2QaedkCfg7MsfziMh0ApKp2xOo5OLLKOk9od5tRBUxWzQsvtUun
	Lyj6wv983uyWZjbOcNtyhqpwbbdW8RwiOpV4tDVVMa+Hm+/+GBJ/dk/1OJp6k1PEyit7mSaVXXn4c
	7OMueyr1EmJJ+NOO1EYNNNWkH2Jv9HTjAAWjEkXeJoXM7usjmC34s4P8SABZmvw6cgm2mhyD17GQh
	Oxx15NHdPrr1n9AcPNaBICKmWFlbWCiT9Gly9KMDGZh6pGM1VnCgaEPmEtWlKETexTYuNa76aZC6t
	HcvHZPiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqeg-0000000Bhk2-1XXR;
	Thu, 09 Jan 2025 11:24:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqed-0000000Bhj6-3d61
	for barebox@lists.infradead.org;
	Thu, 09 Jan 2025 11:24:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqeU-0005pu-Kq; Thu, 09 Jan 2025 12:24:38 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqeT-007gUe-0Q;
	Thu, 09 Jan 2025 12:24:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tVqeT-00DJxm-2c;
	Thu, 09 Jan 2025 12:24:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jan 2025 12:24:37 +0100
Message-Id: <20250109112437.3174977-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250109112437.3174977-1-a.fatoum@pengutronix.de>
References: <20250109112437.3174977-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_032447_905165_A23D69DD 
X-CRM114-Status: GOOD (  13.55  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFT PATCH master 2/2] partitions: efi: allocate disk GUID param when recreating partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We used to only allocate the device parameter when parsing a GPT from
disk, but not when creating the partition dynamically at runtime.

This didn't cause acute problems until we started freeing the parameter
again and triggering a NULL pointer dereference when removing dynamically
created partitions.

Fix this by always allocating the parameter.

Fixes: 834cddeb4e91 ("partitions: efi: remove guid device parameter on free")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/efi.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index e3db586b98dc..43e292d71da8 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -500,6 +500,13 @@ static void part_get_efi_name(gpt_entry *pte, const char *src)
 	}
 }
 
+static void add_gpt_diskuuid_param(struct efi_partition_desc *epd,
+				   struct block_device *blk)
+{
+	epd->param_guid = dev_add_param_string_fixed(blk->dev,
+						     "guid", blk->cdev.diskuuid);
+}
+
 static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 {
 	gpt_header *gpt = NULL;
@@ -530,8 +537,7 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	epd->ptes = ptes;
 
 	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
-	epd->param_guid = dev_add_param_string_fixed(blk->dev,
-						     "guid", blk->cdev.diskuuid);
+	add_gpt_diskuuid_param(epd, blk);
 
 	for (i = 0; i < nb_part; i++) {
 		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
@@ -595,6 +601,8 @@ static __maybe_unused struct partition_desc *efi_partition_create_table(struct b
 	gpt->num_partition_entries = cpu_to_le32(128);
 	gpt->sizeof_partition_entry = cpu_to_le32(sizeof(gpt_entry));
 
+	add_gpt_diskuuid_param(epd, blk);
+
 	pr_info("Created new disk label with GUID %pU\n", &gpt->disk_guid);
 
 	epd->ptes = xzalloc(128 * sizeof(gpt_entry));
-- 
2.39.5



