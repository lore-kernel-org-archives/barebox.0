Delivery-date: Tue, 13 Feb 2024 11:09:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZpix-004f8j-2w
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 11:09:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZpiu-0000vT-9f
	for lore@pengutronix.de; Tue, 13 Feb 2024 11:09:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=feKNEVqrwe+X8lqUn/ezWWsGmvjtG8CfXq+pTQfAGuM=; b=zbjZvJMm/zZM0xaY6Z6utIUrT/
	2E1VwYh+rnYfNSByLzGnBi7hBILbcaj2pRY6Tv2JPTQVw1LgQMAkRRPIS2gUYmr8CfOUXh/xwa2ni
	G29umB0mH/wEruLD3HVn7veqHdt/ZRNhgjBSfqM1sd53tg4hVys4FazmPbzgdYzGRc959cHn+nese
	hi2JXcCOBH+V/JCejDxgAXYjsYcU7K87hixCdpQCEFm60pFq8t0zPZydIuuUYUO/LsefR+at65/so
	/zIJ6WznwsfUDqKjT1im7FnkaYp7+/XiRXW0dLZQngqxJwRshV8LKNzuXJHw7F2oqFDXbHS4jrQ74
	D3hqkQ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZpiU-00000008lh2-12C8;
	Tue, 13 Feb 2024 10:08:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZpiQ-00000008lgO-3ClD
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 10:08:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZpiP-0000pt-Gl; Tue, 13 Feb 2024 11:08:37 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZpiP-000Sg5-4E; Tue, 13 Feb 2024 11:08:37 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rZpiP-00BzWH-04;
	Tue, 13 Feb 2024 11:08:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rhi@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 13 Feb 2024 11:08:36 +0100
Message-Id: <20240213100836.2853989-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_020838_823986_E2C030CA 
X-CRM114-Status: GOOD (  11.85  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] partitions: dos: support root=PARTUUID= generation with zero NT signature
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For MBR-partitioned disks, the NT signature is used to derive the PARTUUID used
to identify the root partition. For this to work reliably, the NT signature is
expected to be unique across all attached MBR-partitioned storage.

Some partition tools may populate the NT signature with an all-zero
value by default, which will likely run afoul of the uniqueness
expectations. When this happens, barebox' bootm.appendroot feature will
report a non-descriptive error message:

  ERROR: Failed to append kernel cmdline parameter 'root='

and continue to boot the kernel without a root= option.

As the kernel doesn't mind an all-zero NT signature, let's just support
computing the correct partuuid in this case. The user is still presented
with an info message:

  Adding "root=PARTUUID=00000000-02" to Kernel commandline

and it's up to them to do something about it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/dos.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index 7472824b00b9..c3d1c4a542c3 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -144,9 +144,7 @@ static void dos_extended_partition(struct block_device *blk, struct partition_de
 			get_unaligned_le32(&table[0].partition_start);
 		pd->parts[n].size = get_unaligned_le32(&table[0].partition_size);
 		pd->parts[n].dos_partition_type = table[0].type;
-		if (signature)
-			sprintf(pd->parts[n].partuuid, "%08x-%02u",
-				signature, partno);
+		sprintf(pd->parts[n].partuuid, "%08x-%02u", signature, partno);
 		pd->used_entries++;
 		partno++;
 
@@ -182,8 +180,7 @@ static void dos_partition(void *buf, struct block_device *blk,
 	struct disk_signature_priv *dsp;
 	uint32_t signature = get_unaligned_le32(buf + 0x1b8);
 
-	if (signature)
-		sprintf(blk->cdev.diskuuid, "%08x", signature);
+	sprintf(blk->cdev.diskuuid, "%08x", signature);
 
 	blk->cdev.flags |= DEVFS_IS_MBR_PARTITIONED;
 
@@ -199,9 +196,7 @@ static void dos_partition(void *buf, struct block_device *blk,
 			pd->parts[n].first_sec = pentry.first_sec;
 			pd->parts[n].size = pentry.size;
 			pd->parts[n].dos_partition_type = pentry.dos_partition_type;
-			if (signature)
-				sprintf(pd->parts[n].partuuid, "%08x-%02d",
-						signature, i + 1);
+			sprintf(pd->parts[n].partuuid, "%08x-%02d", signature, i + 1);
 			pd->used_entries++;
 
 			if (is_extended_partition(&pentry)) {
-- 
2.39.2



