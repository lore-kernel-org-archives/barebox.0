Delivery-date: Wed, 31 May 2023 17:01:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NK3-004O71-RT
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJy-0000wK-9O
	for lore@pengutronix.de; Wed, 31 May 2023 17:01:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+lcDdkxsuQLioqQbjEXURWK7evwgWqSd0u0pTGuYZ/Q=; b=W0muc33AdLE+T7ct95irSusvWI
	0SOOTkNZ9lDEKrowCAWTFGAbhS3avREuDHkM5f5Uyu7ZHjTwk+72bqI6SiyJ+UHXluEwmU6epuREk
	Gr4FUlFb7Z/Yn40t0KwTfI9Vqn1+KMmiJA3EON/475vSPFhjzj5M0Y1sGYP6SqNtY3jt+N0HyJ3hz
	o0Y/TyThTA0gJiHqxmFAq2O9V6qpMuf11iukrPzb+7RQFpLDf2eU1a60Dp3lapyl2M2ZiRT4fcx5S
	JI0W/G/++UMTC5ZvReoHkh8nfA/63l0LHCu7VolmGGq7ybflxbkTuMxMaqBHmmgdruA5+R9wF5Lo5
	GmiFcUDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIm-000C0b-1c;
	Wed, 31 May 2023 14:59:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIb-000BsL-1h
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0008ED-5O; Wed, 31 May 2023 16:59:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIS-0048HQ-N3; Wed, 31 May 2023 16:59:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sDS-A8; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:25 +0200
Message-Id: <20230531145927.1399282-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_075941_641591_4F764929 
X-CRM114-Status: GOOD (  13.27  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 16/18] cdev: use cdev::dos_partition_type only if cdev_is_mbr_partitioned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dos_partition_type == 0 can mean that either a partition is not
a MBR partition or that it indeed has a partition type of 0x00.

In preparation for using that field in a union, explicitly check if we
have a MBR partition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 2 +-
 fs/fs.c         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index e95a8dba8d76..8c7970da8915 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -729,7 +729,7 @@ int blspec_scan_device(struct bootentries *bootentries, struct device *dev)
 		 * partition with the MBR type id of 0xEA already exists it
 		 * should be used as $BOOT
 		 */
-		if (cdev->dos_partition_type == 0xea) {
+		if (cdev_is_mbr_partitioned(cdev->master) && cdev->dos_partition_type == 0xea) {
 			ret = blspec_scan_cdev(bootentries, cdev);
 			if (ret == 0)
 				ret = -ENOENT;
diff --git a/fs/fs.c b/fs/fs.c
index 2d2d327c5fbc..9a92e6e251e5 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -108,7 +108,7 @@ void cdev_print(const struct cdev *cdev)
 
 	if (cdev->filetype)
 		nbytes += printf("Filetype: %s\t", file_type_to_string(cdev->filetype));
-	if (cdev->dos_partition_type)
+	if (cdev_is_mbr_partitioned(cdev->master))
 		nbytes += printf("DOS parttype: 0x%02x\t", cdev->dos_partition_type);
 	if (*cdev->partuuid || *cdev->diskuuid)
 		nbytes += printf("%sUUID: %s", cdev_is_partition(cdev) ? "PART" : "DISK",
-- 
2.39.2



