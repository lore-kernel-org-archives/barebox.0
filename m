Delivery-date: Wed, 03 Jan 2024 19:33:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63Q-002Ni1-1r
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63I-0004AI-82
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gixYi4AJ+9T6e5Gbkxuzu1IAxrInD10pe28+x1IIJAo=; b=KuhD5SevYcA7q+hPUNKwLaJNv7
	VLpsSt/t1BWNLUYwidpom3irwGFrAEOdFGSlBwxEQcpmrachjiEm/eM4m5hQka/FltIziSxHLaCzE
	CYd3sRGE4nSdi602z204UANhAVWGy7V/2+rCelFXxAa1zuKxnTFAeypzsPjCdDo0Map8mFSxDrqXe
	iB3MtsBBm5oGiUXRtwXrVoSzRFew/kDno7ulm1NliIILjhN1dV7tErzLt1N2kPMVOz43cpSmmAP3k
	+4s8nauKRuNZHcPzu67Xl9aF+eNWJNM2h2mlQSqG4pZFOA5L+yZKJlbFarEPQ9JVq4ajcMHiG5oPv
	PBWKXl8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61u-00Bi5n-2U;
	Wed, 03 Jan 2024 18:31:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL619-00Bh7i-0B
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001fc-Lf; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000AxZ-8D; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-2J;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:37 +0100
Message-Id: <20240103181312.409668-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_103103_111943_11652ADE 
X-CRM114-Status: GOOD (  11.05  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 017/112] block: define BLOCKSIZE globally in block.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by EFI loader code that needs to report block size, export the
BLOCKSIZE macro.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/block.c  | 2 --
 include/block.h | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/block.c b/common/block.c
index 3a4a9fb73149..79d277e35ae1 100644
--- a/common/block.c
+++ b/common/block.c
@@ -13,8 +13,6 @@
 #include <dma.h>
 #include <file-list.h>
 
-#define BLOCKSIZE(blk)	(1 << blk->blockbits)
-
 LIST_HEAD(block_device_list);
 
 /* a chunk of contiguous data */
diff --git a/include/block.h b/include/block.h
index 44037bd74c61..2419a96c2365 100644
--- a/include/block.h
+++ b/include/block.h
@@ -35,6 +35,8 @@ struct block_device {
 	struct cdev cdev;
 };
 
+#define BLOCKSIZE(blk)	(1u << (blk)->blockbits)
+
 extern struct list_head block_device_list;
 
 #define for_each_block_device(bdev) list_for_each_entry(bdev, &block_device_list, list)
-- 
2.39.2



