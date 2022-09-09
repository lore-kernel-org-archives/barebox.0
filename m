Delivery-date: Fri, 09 Sep 2022 16:41:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWfBx-00C0Yk-N5
	for lore@lore.pengutronix.de; Fri, 09 Sep 2022 16:41:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oWfBy-0006O1-D5
	for lore@pengutronix.de; Fri, 09 Sep 2022 16:41:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Uk9PMgPimvSguhzJMrc9GDrXmu0AMrWK+S/JZ6M266g=; b=qaSVorub2j7AgEa8GvB1meZ4JU
	BSX556uzjH93w+YJ1Wrxl9SmRsuYGsT3HLnpk9i0AFU6i7kYO3HzF4k7P8k58fPHZYyI6SXc6kTyr
	Hs7qeGhG/iZR8sPUEuEz5u2R2PLwWRflrH/U93B30askQNOQNKhRiglaIBxcH/Lwq6UKN4hwj79Y8
	/Yd09/4ZNcvUNep/5K6X286aK+KFGWXyFIGpgMxLWY94X/clvg7oubGT3eD1LWHVPhDMExk5vg9PY
	Y4LcQZK/Yv/pguAp3PHOTfS3AZhTejyKMrpJ9l2JaoLVaJ/xhj87FB6NqO0c0RnCPKFU3M5kuPBht
	A+Dw/D0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWfAN-00GnXu-33; Fri, 09 Sep 2022 14:39:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWfAH-00GnUg-Qe
	for barebox@lists.infradead.org; Fri, 09 Sep 2022 14:39:31 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1oWfA9-00064K-VD; Fri, 09 Sep 2022 16:39:22 +0200
From: Bastian Krause <bst@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Bastian Krause <bst@pengutronix.de>,
	=?UTF-8?q?J=C3=BCrgen=20Borleis?= <jbe@pengutronix.de>
Date: Fri,  9 Sep 2022 16:39:15 +0200
Message-Id: <20220909143915.4081275-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_073929_883901_A0D3B5F6 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX23: fix memory size calulcation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

According to the i.MX233 Reference Manual (i.MX233RM, Rev. 4, 03 April
2009) section "14.1.1 AHB Address Ranges", the formula to calculate the
DRAM memory size is:

  dram_memory_available = 2 * 2^col * 2^row * (# dram_devices) * (# banks_per_device)

The calulcation in barebox misses the first factor, so the result is
only half as big as it should be.

On an iMX233 OLinuXino board the following errors can be observed:

  mmu: Critical Error: Can't request SDRAM region for ttb at 43fe4000
  Error: Cannot request SDRAM region for stack

The faulty calulcation leads to 32 MB being detected (as seen in the
output of `iomem`), although 64 MB should be available (as passed to
barebox_arm_entry() in lowlevel code).

Fix the memory calculation by adding the missing factor 2.

Fixes: 7158c5987e6 ("ARM: i.MX23: Add memory size detection")
Signed-off-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Jürgen Borleis <jbe@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/imx23.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-mxs/include/mach/imx23.h b/arch/arm/mach-mxs/include/mach/imx23.h
index bdd3ae4407a..03eddabed0a 100644
--- a/arch/arm/mach-mxs/include/mach/imx23.h
+++ b/arch/arm/mach-mxs/include/mach/imx23.h
@@ -25,7 +25,7 @@ static inline u32 imx23_get_memsize(void)
 	cs0 = FIELD_GET(DRAM_CTL14_CS0_EN, ctl14);
 	cs1 = FIELD_GET(DRAM_CTL14_CS1_EN, ctl14);
 
-	return (1 << columns) * (1 << rows) * banks * (cs0 + cs1);
+	return 2 * (1 << columns) * (1 << rows) * banks * (cs0 + cs1);
 }
 
 #endif /* __MACH_IMX23_H */
-- 
2.30.2



