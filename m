Delivery-date: Wed, 07 Jun 2023 14:09:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryK-00EJXZ-9U
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:09:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ryH-00046E-3r
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:09:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WjAArfSCl8gQ7E5O5FzX7GO31pCOJyL7eBwg1TJE9QY=; b=v5WIt5zXuODPeTZTePthBp67SW
	2xMDYG/v8wNiDJqIWguwwOyAa0tqFpA523MSiSTGSSnAlQ64lgnMJYd8GgdmZLvsPT6hBrOpbCivF
	fFvFgPdsrS8WMXFDFNztl3L8OLUHSvVZskIKrFimgUr5TzjJYEva/qDhkE4RbQ4slTDObheiANqe7
	8VYzXECiO6yeqrB2Ra6lRNBIBajiIOKESDGTLL2NjnCIRt80+7c+zGYI4iCvwliiKwoSIH0M24b4l
	e6Kr4QUEDWFfIxRpKd+r7joLjDEtB8P2xJuQuuEOiCx5mTUzAeN8XNiK3/YqVJBtficvAA1mamPwa
	rtv6uZEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rx3-005l34-2a;
	Wed, 07 Jun 2023 12:07:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwu-005ktO-0F
	for barebox@bombadil.infradead.org;
	Wed, 07 Jun 2023 12:07:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WjAArfSCl8gQ7E5O5FzX7GO31pCOJyL7eBwg1TJE9QY=; b=AbUkqHg3a9koiAU4iTCDUAk7Yk
	MySXa71c3KHkj7oe8qiAj92hTPSIY03FiDHtVJJrFkpTXuH20iZfVqujZdXlaJ+LaQR2pRSwDRwxi
	FIIltNvJm3zy6Q2twsFp1LP7ETR9o43GklHJvRzFp0Nh4YLYdQ91E+5sgxsHGmjd+Tm4Pqu7Ifx7z
	YPb6WSwth/3k7pGdeGSCDzdBzzfs4zHXv9zGRjQQN1vxkQ1AQLS/gqtGOVoJPwpEdJgGqBGBbyeTT
	ih3vHKpvWMpOMO1L1fS4Co5V70Ov6xKTyWeXRF0kKWJQuITiey+zDLKUcxPZXlbhZq597kmV2q9AO
	1jbu0oyw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwn-0058oy-1e
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-00033g-SR; Wed, 07 Jun 2023 14:07:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwi-005jkY-5c; Wed, 07 Jun 2023 14:07:24 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwf-00CyNR-5y; Wed, 07 Jun 2023 14:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:07:12 +0200
Message-Id: <20230607120714.3083182-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_130729_834483_3C70069B 
X-CRM114-Status: GOOD (  13.66  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 17/19] cdev: use cdev::dos_partition_type only if cdev_is_mbr_partitioned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dos_partition_type == 0 can mean that either a partition is not
a MBR partition or that it indeed has a partition type of 0x00.

In preparation for using that field in a union, explicitly check if we
have a MBR partition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no changes
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
index cac4bec49027..e6345f4f128a 100644
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



