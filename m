Delivery-date: Fri, 12 May 2023 13:11:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgh-00F2Su-4u
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:11:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgf-00051w-3n
	for lore@pengutronix.de; Fri, 12 May 2023 13:11:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CQpRrlKV+3NwJWgsEE4Gcvg/qSSuqTgCbO3MrQpi9X4=; b=eodhwQN5rZDAswOWpPAgPFsni5
	WifmOHB6ivgRJYn4ij3kaP4eDC7R3r3seLYi8JIoFvcT6XcgiHEAkAdzrk24OYlxuXJfN5LZHMcLP
	/EgUarb/hcvWT0QQX2NDp7N2zHKMXs/IJfm8E5m/FFKRlvInzsEtKnKJ04C246UgDU6iq50WgMydR
	77/Co5rhxZQ0Uhv6ml6mz/US87vopEt0CaU7nE6eTFJzk9RgQqHS+mXyG3huwNYSQZJCzZlNpGtPJ
	jiEwZ+RMs1Lo0esnE4HNJKh2oms3kX/1kKhaJJzODx8XxjlPWz/og9Bs2WvzctofN8SDN8Z56ajwi
	O/3IFUyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfS-00Bk6t-0n;
	Fri, 12 May 2023 11:10:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfJ-00Bjzd-1P
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=CQpRrlKV+3NwJWgsEE4Gcvg/qSSuqTgCbO3MrQpi9X4=; b=JzT8DxYbLzj5fv+Q/IgH+aF6W/
	ZOdMAoPDaAuhFdY8msKMNE1Tcgsm8TQVs5urxHDPPJoRBtT+n6SRlMmut5CCiwfUACt+peDJulS7C
	PfFKJlVK1EpxQ1S/XyAmlhiv0DNSdEHp/L2/s5F482+M05E9etqCNqC/S0AeH+jWG4Cc71kOlpJpE
	R4jIqsu8q+OyUEb64QbMEVl/jcCBpbVDQacro/im1NgYKRnDY2lOO6xCpUsBouEOrGBgiEl3Yvk8Q
	4wl8x/g9MrhV/3R0tgi5ti1nk3vuAIaTmM1irbYv5ARXRzytpWMeNGoHzRzVLadRZ/kvCAuLCkP+W
	C3xuVBWg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-009830-0R
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-0003ed-NR; Fri, 12 May 2023 13:10:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-002wju-13; Fri, 12 May 2023 13:10:14 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Eg-D6; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:10:01 +0200
Message-Id: <20230512111008.1120833-21-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121021_345828_7249299B 
X-CRM114-Status: GOOD (  13.08  )
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
Subject: [PATCH 20/27] ARM: mmu32: Fix pmd_flags_to_pte() for ARMv4/5/6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pmd_flags_to_pte() assumed ARMv7 page table format. This has the effect
that random bit values end up in the access permission bits. This works
because the domain is configured as manager in the DACR and thus the
access permissions are ignored by the MMU.
Nevertheless fix this and take the cpu architecture into account when
translating the bits. Don't bother to translate the access permission
bits though, just hardcode them as PTE_SMALL_AP_UNO_SRW.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 27 ++++++++++++++++-----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 63e1acdcfa..3939f60758 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -173,17 +173,22 @@ static u32 pmd_flags_to_pte(u32 pmd)
 		pte |= PTE_BUFFERABLE;
 	if (pmd & PMD_SECT_CACHEABLE)
 		pte |= PTE_CACHEABLE;
-	if (pmd & PMD_SECT_nG)
-		pte |= PTE_EXT_NG;
-	if (pmd & PMD_SECT_XN)
-		pte |= PTE_EXT_XN;
-
-	/* TEX[2:0] */
-	pte |= PTE_EXT_TEX((pmd >> 12) & 7);
-	/* AP[1:0] */
-	pte |= ((pmd >> 10) & 0x3) << 4;
-	/* AP[2] */
-	pte |= ((pmd >> 15) & 0x1) << 9;
+
+	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
+		if (pmd & PMD_SECT_nG)
+			pte |= PTE_EXT_NG;
+		if (pmd & PMD_SECT_XN)
+			pte |= PTE_EXT_XN;
+
+		/* TEX[2:0] */
+		pte |= PTE_EXT_TEX((pmd >> 12) & 7);
+		/* AP[1:0] */
+		pte |= ((pmd >> 10) & 0x3) << 4;
+		/* AP[2] */
+		pte |= ((pmd >> 15) & 0x1) << 9;
+	} else {
+		pte |= PTE_SMALL_AP_UNO_SRW;
+	}
 
 	return pte;
 }
-- 
2.39.2



