Delivery-date: Mon, 04 Mar 2024 20:09:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgM-008daA-0s
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:09:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgL-0003te-AL
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:09:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gIB4r2Bvw5Y9yz6QnRbwH7NCUxWFGwhRgI7oxe98LTg=; b=XPtxjf6ZN2GKT5LAQjXkvUJ26l
	VgnYgy5W/842Nvu3J9aKf02Zprk8WuOfPH9CY4GU+rzN5OmngPMVQxUsam4pp6cV2AwytRRA+yyyt
	sUaJdNGB6KonMhm7UsEKaJdhDzgf0hwlMba+M7HR9rFB56KTf2Kq/8tc/sl/ZSuOtJ4IngHDNWKhd
	0s+d6EonFEg48eK/N/s85mZdfaFQLbKw4k8b7pfaXdmrFW4Y7ZhHf0dK3wseozzG1bvtyE2Cwt0mR
	Y9Qq0SHJJBjqiGRqA1izw+12cglRtS/j8/3hL46bjp+yiU3PyKjrsBZx5UnaMldByQDqQaD+fU++o
	MCd+7cZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDff-0000000AM3D-0Id1;
	Mon, 04 Mar 2024 19:08:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaY-0000000AIXv-0kIJ
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gIB4r2Bvw5Y9yz6QnRbwH7NCUxWFGwhRgI7oxe98LTg=; b=jB/fr/yDfhxRp6R9oumr37axGg
	eaCK1W8otsdxf5SR9QcJ38QaIJaybhYyfHo384/WoA6WQNoEtsfP+Wp8V0zpk1PjRRjRiTuQDhMlK
	hQxjGNijVwmm+F+3nniM/i0N4PQh4Ifu7gGp4eICQgLz8YE31HoIvB99ajXOkEs6FOQ0bM6WLURwf
	LnYWZUPIbpDviNaddNh4qPYSrmrQJ4xI5O7OQioJVFPAbZ6Vf1r7qpCzu90/D6YgfR7iKPW6RS0gn
	oE8gGtFfGBHTTTnQcrKZT2jZzqhbm2VeA5zq38+Bf8qnSCmf5in8gQzjgXiA0wIzeK149l/tNTXnv
	nP3djkaA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaQ-000000051vj-3dNW
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006DH-T9; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PL2-9Q; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-2h;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:02 +0100
Message-Id: <20240304190038.3486881-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190254_946619_52AABBFA 
X-CRM114-Status: GOOD (  11.30  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 017/113] block: define BLOCKSIZE globally in block.h
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
index 98ed67e96674..faf0e7c0cbe5 100644
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
index aaaa97400f3a..e27579cdbd49 100644
--- a/include/block.h
+++ b/include/block.h
@@ -37,6 +37,8 @@ struct block_device {
 	bool need_reparse;
 };
 
+#define BLOCKSIZE(blk)	(1u << (blk)->blockbits)
+
 extern struct list_head block_device_list;
 
 #define for_each_block_device(bdev) list_for_each_entry(bdev, &block_device_list, list)
-- 
2.39.2



