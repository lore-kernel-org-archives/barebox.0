Delivery-date: Mon, 14 Apr 2025 08:23:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DEJ-000WmI-0v
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:23:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DEI-00071q-L7
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:23:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XViyXngeVRWsHqKVqBvNeuGrZjgVTWKHDwrSBWgpluc=; b=BGFs2kgQHcbZUZBV6vYjsXZxyJ
	8pkSdJnWZftKDD7PKKFqNTIMaUIAi5vk6MWmyRrr3neTuhANvJ2JN/QA/msm7h5LuuCNSwQ5buaUn
	yKt/1Q2JlQ/LKk2KD89LGbhpykQTk3Nr8fdbBAhHVbWqcqO+uJaIK0xFppa9ldCTKkKajVE8w+T52
	u/awy2mzCVz9HemyTEmDaptRU+TB5Qk55YgQjZmGVsUUW3ETdlugdX/vSDrUMdMKfGg+xFkp2BFcb
	s3fRrwabFCK+euhbrvLiohPzvHJ/N115YvxZUvNUknrc3sq3qydJ3tRogzNRFiN07ySQF2p8fxx8Z
	/YuiclGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DDl-00000000mjm-0kmS;
	Mon, 14 Apr 2025 06:23:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DDf-00000000mhx-1UHu
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:23:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DDa-0006k3-RA; Mon, 14 Apr 2025 08:22:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DDY-000Cg9-30;
	Mon, 14 Apr 2025 08:22:52 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DDY-00BPst-2i;
	Mon, 14 Apr 2025 08:22:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:22:52 +0200
Message-Id: <20250414062252.2720968-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_232259_390523_FF6AFF36 
X-CRM114-Status: GOOD (  11.45  )
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
Subject: [PATCH] fixup! blspec: factor out generic parts into bootscan helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

blspec: fix detection of XBOOTLDR partitions

XBOOTLDR partitions are identified by a specific partition type or type
UUID, but this got broken during the rework to use bootscan, because we
are now iterating over partitions (partcdev) instead of all cdevs
beneath a device (cdev).

Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 373ad99a632c..5223ac30f8a5 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -510,8 +510,8 @@ static int blspec_scan_disk(struct bootscanner *scanner,
 		 * partition with the MBR type id of 0xEA already exists it
 		 * should be used as $BOOT
 		 */
-		if (cdev_is_mbr_partitioned(cdev->master) && cdev->dos_partition_type == 0xea) {
-			ret = boot_scan_cdev(scanner, bootentries, cdev);
+		if (cdev_is_mbr_partitioned(cdev) && partcdev->dos_partition_type == 0xea) {
+			ret = boot_scan_cdev(scanner, bootentries, partcdev);
 			if (ret == 0)
 				ret = -ENOENT;
 
-- 
2.39.5



