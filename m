Delivery-date: Thu, 25 Apr 2024 14:10:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwI-00Ggmz-0l
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 14:10:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwG-0007AO-VZ
	for lore@pengutronix.de; Thu, 25 Apr 2024 14:10:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bq2xST6H6miZ5UXm8eFNDq6ZqfMV3hrJOh5UGiLkg8s=; b=QszWqoow2sKTg+
	hmdTjQOjYc+CunzuNl68B5NqhwnKKPafoUne0mMowXd9ixigd8LpAljsCTdLx4qsQWl3fuU5kJanw
	cNY8Xbm3SoaHiJuph7HmS8XAGKrXB1o67L7u0RGi/P1U6E75zS/mklbaSFexnayqXXkWqXczPAkN3
	/mQpeKT/5h0mUo/sb6763X0ko8FPLSqCUYy4qonO18W6neymQIkYBN1bkd+dW+T+XGfWURwHLUihi
	ySg+wjoVJeJKUhD2x0ji8/JXBkGpZAy1AbNV8OQJLvFi8VuhKSnvsBbXy9trKvvCoYHm8HYOaxpCV
	O/zllIZWg2OCbQiiKSAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvl-000000089es-30sQ;
	Thu, 25 Apr 2024 12:10:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvi-000000089cb-00wx
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 12:10:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvg-0006eg-Fp; Thu, 25 Apr 2024 14:10:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvg-00EFvZ-2Q; Thu, 25 Apr 2024 14:10:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-2r;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:37 +0200
Message-Id: <20240425115439.2269239-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_051022_074907_EF876DF4 
X-CRM114-Status: UNSURE (   8.80  )
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
Cc: Jan Weitzel <j.weitzel@phytec.de>, Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>, Matthias Kaehlcke <matthias@kaehlcke.net>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/15] ARM: drop barebox_arm_head()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox_arm_head() is unused now. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm-head.h | 8 --------
 include/mach/socfpga/barebox-arm-head.h | 7 -------
 2 files changed, 15 deletions(-)

diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 135d0585b1..a55cf7df51 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -9,7 +9,6 @@
 
 void arm_cpu_lowlevel_init(void);
 void cortex_a7_lowlevel_init(void);
-void barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2);
 
 /*
  * 32 bytes at this offset is reserved in the barebox head for board/SoC
@@ -60,13 +59,6 @@ static inline void __barebox_arm_head(void)
 #endif
 	);
 }
-static inline void barebox_arm_head(void)
-{
-	__barebox_arm_head();
-	__asm__ __volatile__ (
-		"b barebox_arm_reset_vector\n"
-	);
-}
 #endif
 
 #endif /* __ASSEMBLY__ */
diff --git a/include/mach/socfpga/barebox-arm-head.h b/include/mach/socfpga/barebox-arm-head.h
index 634d3f109b..eff05b0e41 100644
--- a/include/mach/socfpga/barebox-arm-head.h
+++ b/include/mach/socfpga/barebox-arm-head.h
@@ -35,10 +35,3 @@ static inline void __barebox_arm_head(void)
 		"2:\n"
 	);
 }
-static inline void barebox_arm_head(void)
-{
-	__barebox_arm_head();
-	__asm__ __volatile__ (
-		"b barebox_arm_reset_vector\n"
-	);
-}
-- 
2.39.2



