Delivery-date: Tue, 30 Apr 2024 12:54:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1l7Y-00ACXS-0D
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 12:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1l7X-00062k-Fg
	for lore@pengutronix.de; Tue, 30 Apr 2024 12:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vwQj0sopeEutPIaEXpYkSPfGuJZD41+Km97vut08g18=; b=mVMrMyEtSxY7FBhWahHtDM+B5w
	YxyrC58abaiVR5tZdHl7rIPdt3S/nOwn2QLY23ZQr3UZfPU8H987usNbLMmfM14cwkRa+glhI75Ni
	a40ynUrrvG0Vr1kgohAVKDFXcgL/DaCzLPE2iGVAjtoJR7EolacJ36fw+EpTgpGIOmmwz2hZErF74
	NHzeQA7vk8Kl3h+d96iNX88x6eXVyIjyJLSsXMCKJtvQG49KoJTFNesNQMJmnCFkBqedT2Q8YROpD
	vNRDHndvy94rYDbKg/iqhulGKItlF80Zm4Kv17F+HfNInbVbGCF6XLfg8jkdQQnwPQiOQT4l0fW2b
	2JnttU0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1l6x-000000064ui-36rQ;
	Tue, 30 Apr 2024 10:53:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1l6p-000000064ns-1BY1
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 10:53:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-0005hg-Ro; Tue, 30 Apr 2024 12:53:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-00F99j-FF; Tue, 30 Apr 2024 12:53:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-00DEvB-1C;
	Tue, 30 Apr 2024 12:53:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 Apr 2024 12:53:08 +0200
Message-Id: <20240430105310.3149242-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240430105310.3149242-1-s.hauer@pengutronix.de>
References: <20240430105310.3149242-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_035315_371067_B7FABD42 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: move blob_is_arm_boarddata() to include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c               | 7 -------
 arch/arm/include/asm/barebox-arm.h | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 6d0a7cfc6b..c13e93c243 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -36,13 +36,6 @@ static unsigned long arm_membase;
 static void *barebox_boarddata;
 static unsigned long barebox_boarddata_size;
 
-static bool blob_is_arm_boarddata(const void *blob)
-{
-	const struct barebox_arm_boarddata *bd = blob;
-
-	return bd->magic == BAREBOX_ARM_BOARDDATA_MAGIC;
-}
-
 const struct barebox_boarddata *barebox_get_boarddata(void)
 {
 	if (!barebox_boarddata || !blob_is_arm_boarddata(barebox_boarddata))
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 4d70360b91..67f2b6ac45 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -32,6 +32,13 @@ void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize,
 #define barebox_arm_boarddata		barebox_boarddata
 #define BAREBOX_ARM_BOARDDATA_MAGIC	BAREBOX_BOARDDATA_MAGIC
 
+static inline bool blob_is_arm_boarddata(const void *blob)
+{
+	const struct barebox_arm_boarddata *bd = blob;
+
+	return bd->magic == BAREBOX_ARM_BOARDDATA_MAGIC;
+}
+
 u32 barebox_arm_machine(void);
 
 unsigned long arm_mem_ramoops_get(void);
-- 
2.39.2



