Delivery-date: Mon, 22 May 2023 07:29:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7M-009JBT-Gz
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:29:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y7K-0002rP-7r
	for lore@pengutronix.de; Mon, 22 May 2023 07:29:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwo3UToiIJ9u3R2SlOwYbTC6J1UpClBfUZHocKSqt5o=; b=4N/NOviUWLUQSZ
	bFeO/C40WrLuq5Dj4SrijF9Whqzv7PkdQbw4TfmQMPS7ktvqhE5gt5BxxjRGWjP9ro7muUEhoSruH
	Jap/HpCEuoEhv9emkH7Y2zKZtxHgx7Vl86ZGnvD6c3X6waeq6OLIZwp0d9l4NV+PSt2KePUJpEcr9
	+d/mms0p8yr9kaorZWN0MXkG5kmSepK+3jbeFxZBP33Lfs1f7BIGLw2y2Yn4uXswljOHxZRXGn6D+
	Ta9c1Zy63UJcDjEiHuG5wiqUc41LfdJHkQIpMlf5cD2nciLmoeIfL5pFZVRs8FV8ptk94PMlNyDMX
	pWZaEbUXk5pomvGzLJIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y6F-005OZJ-1u;
	Mon, 22 May 2023 05:28:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y66-005OUn-2F
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:28:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y64-0002Mv-72; Mon, 22 May 2023 07:28:40 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y63-001vw1-EK; Mon, 22 May 2023 07:28:39 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y60-004MLI-Kw; Mon, 22 May 2023 07:28:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 22 May 2023 07:28:28 +0200
Message-Id: <20230522052835.1039143-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
References: <20230522052835.1039143-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222845_453881_40E973A5 
X-CRM114-Status: GOOD (  11.64  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, rcz@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/11] ARM: mmu64: support non-1:1 mappings in arch_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This provides an alternative to ARM32's map_io_sections with the added
benefit of supporting 4K granularity.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7228b5d3fd12..5afb2b56d551 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -138,7 +138,8 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size,
 
 			pte = table + idx;
 
-			if (size >= block_size && IS_ALIGNED(addr, block_size)) {
+			if (size >= block_size && IS_ALIGNED(addr, block_size) &&
+			    IS_ALIGNED(phys, block_size)) {
 				type = (level == 3) ?
 					PTE_TYPE_PAGE : PTE_TYPE_BLOCK;
 				*pte = phys | attr | type;
@@ -162,9 +163,6 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
 {
 	unsigned long attrs;
 
-	if (phys_addr != virt_to_phys(virt_addr))
-		return -ENOSYS;
-
 	switch (flags) {
 	case MAP_CACHED:
 		attrs = CACHED_MEM;
@@ -179,7 +177,7 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
 		return -EINVAL;
 	}
 
-	create_sections((uint64_t)virt_addr, (uint64_t)virt_addr, (uint64_t)size, attrs);
+	create_sections((uint64_t)virt_addr, phys_addr, (uint64_t)size, attrs);
 	return 0;
 }
 
-- 
2.39.2



