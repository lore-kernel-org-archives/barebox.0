Delivery-date: Thu, 09 Nov 2023 12:31:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13GD-0047kk-1O
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 12:31:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13GD-0006Yd-DL
	for lore@pengutronix.de; Thu, 09 Nov 2023 12:31:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MCIKzn/M3bA5l/1wYznC1Q8Pv5nfgBHVpFSbM5sjBiI=; b=VgT47YuDvb5coOb3X6J5+4iskH
	j5Pplck6YuU8ejDyRILWnA/a54fRDqHnhVW0mQExEcPLLby5slMcXbbeanZr92T4Fs/RHblgFcbuf
	aHVJD4QqSA+m1cMnRS6eT3NI+hN0PKwGiL9qipTtKFr+vVR4/CNIO0bj77d7RD6xNmn2rFvV4Vnuf
	JNxu9s92IqVD85bbtoI/MAkucNAd75tWN/Kh0zCi/WNUV0zO597ysQg9JtE9v9QUzGZAatTWhN5Wj
	mxbBvWan+3DIDvf9VAZ0YAewdo3J4DZAK3K/1vo9yqWbuoBxmYk/SEnTlgMohJQXQFY6coGnVNe1o
	0UWFr1Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Es-0064VG-1O;
	Thu, 09 Nov 2023 11:30:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Ep-0064Sa-3C
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 11:30:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13Ek-0005xz-5W; Thu, 09 Nov 2023 12:30:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13Ej-007lSy-PF; Thu, 09 Nov 2023 12:30:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13Ej-004Sju-2D;
	Thu, 09 Nov 2023 12:30:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 12:30:12 +0100
Message-Id: <20231109113012.1063774-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_033020_026454_8C5BE70E 
X-CRM114-Status: GOOD (  12.04  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] resource: align memory reservation to page boundaries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox remaps all reserved entries as uncached to avoid speculative
access into the described regions using remap_range.

The ARM implementation requires buffers to be page aligned, which we
can't assume unconditionally. For this reason, reserve_sdram_region
will align region start and size before mapping uncached.

__mmu_init called later on, will remap everything outside the reserved
entries cached, e.g. to cache additional DRAM not known at PBL time.
No realignment will happen then though triggering the BUG(!IS_ALIGNED)
in ARM's arch_remap_range.

By moving the realignment before __request_sdram_region(), we ensure
that no misaligned memory regions will be passed to arch_remap_range by
core code.

This fixes chainloading barebox from an older barebox[1] that reserves
the FDT prior to relocation.

[1]: anything prior to 0b6b146a5508 ("fdt: Do not reserve device tree blob")

Reported-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index d560d444b0a8..300320f85344 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -218,10 +218,6 @@ struct resource *reserve_sdram_region(const char *name, resource_size_t start,
 {
 	struct resource *res;
 
-	res = __request_sdram_region(name, IORESOURCE_BUSY, start, size);
-	if (IS_ERR(res))
-		return ERR_CAST(res);
-
 	if (!IS_ALIGNED(start, PAGE_SIZE)) {
 		pr_err("%s: %s start is not page aligned\n", __func__, name);
 		start = ALIGN_DOWN(start, PAGE_SIZE);
@@ -232,6 +228,10 @@ struct resource *reserve_sdram_region(const char *name, resource_size_t start,
 		size = ALIGN(size, PAGE_SIZE);
 	}
 
+	res = __request_sdram_region(name, IORESOURCE_BUSY, start, size);
+	if (IS_ERR(res))
+		return ERR_CAST(res);
+
 	remap_range((void *)start, size, MAP_UNCACHED);
 
 	return res;
-- 
2.39.2



