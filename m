Delivery-date: Wed, 17 May 2023 11:41:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfD-0049pq-HC
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfB-0002fc-1C
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Jc1cCNRGYVgXROlASH85jp6IqT/Kj/3lPM6tDuuLNA=; b=Hi9rhdcSOCf24IAOL262ba8u5g
	IrE+kQodr2TTFShouLo/qK0+o9zFxQDXoUaEKhk5FcvQH1w2FXR42xxu56O3FSl1fkygVUy8Vw897
	Nb9cSy+dQq+mFZyWxagcbRuYCqN1t/mlBc379rzRuTLGzx9KQtFjCs7Cio8MmfiFstz4WCRLa+/iB
	jletFd13qHnCfsstwSsM9+H0NjYEkg9RwaDLATfGlQNLnzjjacVZ2hLt5zWHT5QUdcEsdEoSt8vDH
	/9wJI4g+QvmRgEDbNidiOVVsG8DnyUBzgEU2XAoCMiziMuWEYd8kYoty+705KTifN7BMKWlo48DqV
	olhBAA0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdy-0096K2-0j;
	Wed, 17 May 2023 09:40:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdu-0096Gj-0a
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4Jc1cCNRGYVgXROlASH85jp6IqT/Kj/3lPM6tDuuLNA=; b=f2wRaRDSfvdHSoUuo7xaBhxU0/
	7sF8G8/dzRc9QpUfxMjNkf8phNpCDhikPvOeJh7tX2HDsMfeuqCT6r9Z7RY8JmsarfcEzgBeXH0s1
	jfls2HuK1c51+5qoNp0rDm7VoOx1BaGAjZlrLUip1VqADTYes3g76XHkT9dW3vnyCiKm8kNP29dww
	uTdipMJwa8/68cowI5ZKix4xpW/y5ppcphWycGszrMGiMGzYiIpeKWq6bA3wFcDwEfdFoxIdacbN3
	H6XVxKNCHqWdGM4E+CZkKNtSI0QGbzVf7XLXnDG+gLw+DkRvW/sHfkv1qHrhRXmuBZFbNvIaW07hm
	BrfTtZtA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Z-00DAy1-1M
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00041o-Ju; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7u-VJ; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4Q-00Gasa-3E; Wed, 17 May 2023 11:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:33 +0200
Message-Id: <20230517090340.3954615-28-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_880119_6F59BD24 
X-CRM114-Status: GOOD (  13.52  )
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
Subject: [PATCH v2 27/34] ARM: mmu32: Fix pmd_flags_to_pte() for ARMv4/5/6
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
index 7cd732580e..4abaab7d87 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -167,17 +167,22 @@ static u32 pmd_flags_to_pte(u32 pmd)
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



