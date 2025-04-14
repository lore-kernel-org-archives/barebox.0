Delivery-date: Mon, 14 Apr 2025 08:32:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNC-000Wyk-2Q
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:32:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DNB-0001O5-M0
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:32:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Cs3ZU85017oPRyQuIvJy0/IwSfpGKgvjhXBtdGGugA=; b=OR+VYN3NIbsKyhWTxrWx+4o7V4
	yDWr8COf6nCnefzj3A4z9kk7F+DDh/L0ppP0WlcFjGklqXdzs9NsaJ0HAG1+3eez0EpK05/CvvET3
	LmKG6A1HDHQzp16qE8zXGdtd0Wm/qp7A8T7eyx1oXG8sdQr27lROkx9aGje9ksgdhr3xCqBq8A24s
	/SoIFmxWfpniT3sckp8FfDRG5PALgMj5qJI0tsFvSC3BU+gjpmMimMod0bMCPeUZ4s8MVQyGatY/x
	J1zZ4jhotwGPvZOGltgvzFeNWWKmv1YqyxOI+eaeRDQR+X0L4xA9nxe7xn108GEI40k/+B3KNqcHG
	n/7CQeKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMh-00000000num-49Mw;
	Mon, 14 Apr 2025 06:32:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DMJ-00000000npj-0DJV
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:31:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-0000l2-Pc; Mon, 14 Apr 2025 08:31:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-000Chc-1o;
	Mon, 14 Apr 2025 08:31:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DMH-00BUi8-1V;
	Mon, 14 Apr 2025 08:31:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:31:38 +0200
Message-Id: <20250414063152.2736649-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_233155_118201_2839FEDF 
X-CRM114-Status: GOOD (  15.99  )
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
Subject: [PATCH 04/18] blspec: iterate over all XBOOTLDR partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently stop at the first XBOOTLDR partition when collecting
entries, but there might be more than one XBOOTLDR partition, so we
should really iterate over all of them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 40 ++++++++++++++++++++++++----------------
 1 file changed, 24 insertions(+), 16 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 59fa40c9ff50..cf9f973acd21 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -502,33 +502,41 @@ static int blspec_scan_disk(struct bootscanner *scanner,
 			    struct bootentries *bootentries, struct cdev *cdev)
 {
 	struct cdev *partcdev;
-	int ret;
+	int ret, err = 0, found = 0;
 
 	for_each_cdev_partition(partcdev, cdev) {
+		struct cdev *match = NULL;
+
 		/*
 		 * If the OS is installed on a disk with MBR disk label, and a
 		 * partition with the MBR type id of 0xEA already exists it
 		 * should be used as $BOOT
 		 */
-		if (cdev_is_mbr_partitioned(cdev) && partcdev->dos_partition_type == 0xea) {
-			ret = boot_scan_cdev(scanner, bootentries, partcdev, true);
-			if (ret == 0)
-				ret = -ENOENT;
-
-			return ret;
+		if (cdev_is_mbr_partitioned(cdev)) {
+			if (partcdev->dos_partition_type == 0xea)
+				match = partcdev;
+		} else {
+			/*
+			 * If the OS is installed on a disk with GPT disk label, and a
+			 * partition with the GPT type GUID of
+			 * bc13c2ff-59e6-4262-a352-b275fd6f7172 already exists, it
+			 * should be used as $BOOT.
+			 *
+			 * Not yet implemented
+			 */
 		}
 
-		/*
-		 * If the OS is installed on a disk with GPT disk label, and a
-		 * partition with the GPT type GUID of
-		 * bc13c2ff-59e6-4262-a352-b275fd6f7172 already exists, it
-		 * should be used as $BOOT.
-		 *
-		 * Not yet implemented
-		 */
+		if (!match)
+			continue;
+
+		ret = boot_scan_cdev(scanner, bootentries, partcdev, true);
+		if (ret > 0)
+			found += ret;
+		else
+			err = ret ?: -ENOENT;
 	}
 
-	return 0;
+	return found ?: err;
 }
 
 /*
-- 
2.39.5



