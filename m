Delivery-date: Wed, 27 Aug 2025 19:15:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urJkV-0059fE-2H
	for lore@lore.pengutronix.de;
	Wed, 27 Aug 2025 19:15:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1urJkU-0005Lc-IX
	for lore@pengutronix.de; Wed, 27 Aug 2025 19:15:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uF3W9eNL3pM1mP8iib3gobFzML2UTQ/EUJZJW3Fij14=; b=LW0KtjuJGM9y+fQwUjK4ie0avI
	GuWSApL1d5FwBGuqO1PXviDkKHl43nSKIrQtG1gAtVgqptPxpfcXF4OZi5yj6YXOPQNSKvlL+QNVQ
	v7ptrOcURaqrtEoI1EyBpSsh9pAplA3xalZ3GCrpHkcoT2aKUaPzXkfnfVc+J4ZTGSl5v/NCA52vz
	k/wrVwpwPUlbVZcXI40YvHdENNINQCF3HnLhaWsumgoTGNHlZWwjuk+2D3L+nfGzVckbcOaRR8lA8
	rS9mAgigxZ3/wibgYc+cgew0Wto+1ekAL/UZlxcDyEEFQyDIQ8WZ/Y2v+jiAlVfFaEPHezYe/zJwz
	DVE2Dcyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urJjv-0000000GHiD-0YTO;
	Wed, 27 Aug 2025 17:15:15 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urHmC-0000000FreE-198j
	for barebox@lists.infradead.org;
	Wed, 27 Aug 2025 15:09:29 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id 57RFEgvf016402;
	Wed, 27 Aug 2025 15:14:42 GMT
Received: (from akurz@localhost)
	by blala.de (8.15.2/8.15.2/Submit) id 57RFEgct016401;
	Wed, 27 Aug 2025 15:14:42 GMT
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>
Date: Wed, 27 Aug 2025 15:14:35 +0000
Message-Id: <20250827151435.16352-1-akurz@blala.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_080928_602741_D710C521 
X-CRM114-Status: UNSURE (   8.98  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM i.MX: fix iMX6SL detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When booting iMX6SL SoC, a message "detected unknown i.MX6 revision 1.2"
has been reported. Fix thie detection for iMX6SL again.

fixes: 82239accfc8  ("ARM: i.MX6: factor out function to read si_rev")
Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 include/mach/imx/imx6.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/mach/imx/imx6.h b/include/mach/imx/imx6.h
index f36ac6ce40..109df9b811 100644
--- a/include/mach/imx/imx6.h
+++ b/include/mach/imx/imx6.h
@@ -63,7 +63,7 @@ static inline uint32_t __imx6_read_si_rev(void)
 	si_rev = readl(MX6_ANATOP_BASE_ADDR + IMX6SL_ANATOP_SI_REV);
 	cpu_type = SI_REV_CPUTYPE(si_rev);
 
-	if (si_rev == 0x60)
+	if (cpu_type == (IMX6_CPUTYPE_IMX6SL & 0xff))
 		return si_rev;
 
 	return 0;
@@ -74,8 +74,8 @@ static inline int __imx6_cpu_type(void)
 	uint32_t si_rev = __imx6_read_si_rev();
 	uint32_t cpu_type = SI_REV_CPUTYPE(si_rev);
 
-	/* intentionally skip scu_get_core_count() for MX6SL */
-	if (cpu_type == IMX6_CPUTYPE_IMX6SL)
+	/* There exists only one, single-cored iMX6SL variant. */
+	if (cpu_type == (IMX6_CPUTYPE_IMX6SL & 0xff))
 		return IMX6_CPUTYPE_IMX6SL;
 
 	cpu_type |= scu_get_core_count() << 8;
-- 
2.39.5



