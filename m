Delivery-date: Fri, 26 Jun 2026 10:47:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DR-00A14r-2V
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DP-00069d-5i
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LL596g48Lz0v53qMnsHDIzZATyX7ws1X5iXgXWdkG+I=; b=iiVwpdOUMRyKYcnwBT68AQi5Mh
	hiM1G60VoF+pucHrhxSJbS11ykQyKDIWvocVT4M9jrIheDiUbCpx1S9lyUKGtrYuksnQeEdWaaOfu
	eDRKxh+cuk3Ob4aaUgzNTDRFBhryKTh3QZ2RU3c25uHJ/O1RKp+yrg9jODI4mTYI+6OA2o94ddp+Z
	y912ebLD+1rkALyD4T3QTMJFw6/+c1Y1Ui0x2kcMTfdZtL4GZI7cremNADOWc/lGqyYvQqUnqpfrw
	JEoxc5pZCEU+ix3alaWCs9iMpjjon0fAtaAFJN6ASnMXPCuCt/sL4jUkoLHrfN9O2kOGQDnSdf6GI
	eCHYCvsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtHG-24RJ;
	Fri, 26 Jun 2026 08:46:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CW-0000000At8I-2Dec
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CT-0003ZP-Rd; Fri, 26 Jun 2026 10:46:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:21 +0200
Message-ID: <20260626084608.1388806-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_566473_9F6E2238 
X-CRM114-Status: GOOD (  12.33  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/26] block: require lower bound of sector size to be 512 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Various places around barebox implicitly assume 512 byte sectors. We are
going to generalize that to be able to support larger block sizes as
newer storage media can have 4k sectors.

As sector sizes below 512 bytes seem only relevant for historic floppy
disks and the like, define MIN_SECTOR_SHIFT/SIZE to that sector size and
refuse registering a block device that has a smaller sector size, so we do
not need to replicate that check in the users of blockdevice_register().

The new MIN_SECTOR_SHIFT/SIZE macros are added to make it easier in
future to differentiate between valid sanity checks like what's added
here and hardcoded sector assumptions that should be fixed.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/block.c  | 2 +-
 include/disks.h | 7 +++++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/common/block.c b/common/block.c
index 20ec3665d900..9d3865626555 100644
--- a/common/block.c
+++ b/common/block.c
@@ -471,7 +471,7 @@ int blockdevice_register(struct block_device *blk)
 	dev_dbg(blk->dev, "rdbufsize: %d blockbits: %d blkmask: 0x%08x\n",
 		blk->rdbufsize, blk->blockbits, blk->blkmask);
 
-	if (!blk->rdbufsize) {
+	if (!blk->rdbufsize || blk->blockbits < MIN_SECTOR_SHIFT) {
 		pr_warn("block size of %u not supported\n", BLOCKSIZE(blk));
 		return -ENOSYS;
 	}
diff --git a/include/disks.h b/include/disks.h
index a3673d1e276f..93f8bb2b7c26 100644
--- a/include/disks.h
+++ b/include/disks.h
@@ -8,6 +8,13 @@
 
 struct block_device;
 
+/** Minimum size of one sector in bytes */
+#define MIN_SECTOR_SIZE 512
+
+/** Minimum size of one sector in bit shift */
+#define MIN_SECTOR_SHIFT 9
+
+
 /** Size of one sector in bytes */
 #define SECTOR_SIZE 512
 
-- 
2.47.3



