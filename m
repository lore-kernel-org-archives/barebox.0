Delivery-date: Wed, 21 May 2025 19:42:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSD-001EiD-1M
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 19:42:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHnSC-0006uE-SG
	for lore@pengutronix.de; Wed, 21 May 2025 19:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ntk/IjivKqinkmJY0YfBc7uwNfL4ocFgV97FupkBrvc=; b=ogwR82VD/hMAc6OZGoDMKfPCLy
	CkN1/SThm1oKIng6DTHZo8Np9+vqSGEGsTWnxTNOUsB+qwdw9ALS1cAGWztCxPONZ/i95fG6bnWjP
	TS1o+blLKzUF86vAzY8X5lp5TrFuMN7o5i3pWmJPslbHcXmFDkv2G/1MnhQ7QSrWpR68nJ/51loaJ
	dqtQV3H61+S2g93feDoe5PsViX3JrAHbZIMMgBE3cHscLwAhl7ISqya1EiBkldVxjv9avDodwjz2c
	SDZdL2tB159EkWFbPlwIlKnKaZ8pOKEZjDOHKOwC6loy9hD+ICpLorEgMULsFxooV1DccvET5r1L9
	WdEd/fHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRb-0000000Gb1r-1w4v;
	Wed, 21 May 2025 17:41:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHnRD-0000000Gay8-18Oj
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 17:41:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-0006S4-Ba; Wed, 21 May 2025 19:41:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-000bYE-0Y;
	Wed, 21 May 2025 19:41:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uHnRB-006bCu-1m;
	Wed, 21 May 2025 19:41:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 21 May 2025 19:41:02 +0200
Message-Id: <20250521174104.1570239-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
References: <20250521174104.1570239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_104107_307142_3EDCD66E 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 2/4] ARM64: mmu: document granule size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Copy a nice-looking ASCII table from U-Boot's cache_v8.c to help with
understanding the function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index bc1a44d0a7b8..d9b0b74d7314 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -176,6 +176,24 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 
 static size_t granule_size(int level)
 {
+	/*
+	 *  With 4k page granule, a virtual address is split into 4 lookup parts
+	 *  spanning 9 bits each:
+	 *
+	 *    _______________________________________________
+	 *   |       |       |       |       |       |       |
+	 *   |   0   |  Lv0  |  Lv1  |  Lv2  |  Lv3  |  off  |
+	 *   |_______|_______|_______|_______|_______|_______|
+	 *     63-48   47-39   38-30   29-21   20-12   11-00
+	 *
+	 *             mask        page size
+	 *
+	 *    Lv0: FF8000000000       --
+	 *    Lv1:   7FC0000000       1G
+	 *    Lv2:     3FE00000       2M
+	 *    Lv3:       1FF000       4K
+	 *    off:          FFF
+	 */
 	switch (level) {
 	default:
 	case 0:
-- 
2.39.5



