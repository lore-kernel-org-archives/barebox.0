Delivery-date: Wed, 03 Jun 2026 15:35:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlkM-001wSy-0O
	for lore@lore.pengutronix.de;
	Wed, 03 Jun 2026 15:35:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlkL-0004BJ-F3
	for lore@pengutronix.de; Wed, 03 Jun 2026 15:35:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pYdoi5uI6QpSZGRj5llQZ7esORVaIK4RKZflsFzTcGk=; b=XG7xnx+ISYihKLhk49PK/br499
	PaW77dcrk8zt7sVomfvgsWqK7zHf1F+6iv3+pAfy9zlL4JfuOqTW+iLz4yJ92yayGtZBisD4qzxWJ
	IbjnwwtrZPEZ1gLfnXZM2ZZheAlMfM7z0A1K9wY5Wb1nkfFXsV9Xgrwy9EcZwfhGRNvkzCQ1LkVtN
	mJaz0QSSw3l6mqSKUn+MbQLiRQBft2GNGJ4Vh4vCJnaukKoqXjDiVWwuT1T6OTZZjdObJSefPUDeO
	D2xgrBn2Uvnhhnym9w+AMzjXatJ3ykzaUOArpzLmEivRc1zW0ooZjkIKlz5wvfhvWNEygAuDqscs8
	8WpeBZAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlj9-0000000FBFA-2a7k;
	Wed, 03 Jun 2026 13:33:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlj7-0000000FBDe-308G
	for barebox@lists.infradead.org;
	Wed, 03 Jun 2026 13:33:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-0003nB-Da; Wed, 03 Jun 2026 15:33:42 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-000v72-15;
	Wed, 03 Jun 2026 15:33:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-00000009uCD-12YN;
	Wed, 03 Jun 2026 15:33:42 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 03 Jun 2026 15:33:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-feature-snvs-imx6ul-v1-3-6305f63bd3fa@pengutronix.de>
References: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
In-Reply-To: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_063345_772591_F56FD414 
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ARM: i.MX7: snvs: rename imx7_snvs_init ->
 imx7_setup_snvs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For consistency with the i.MX8 family.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-imx/snvs.c | 2 +-
 include/mach/imx/snvs.h  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/snvs.c b/arch/arm/mach-imx/snvs.c
index 414e927b05..8ec8accf6a 100644
--- a/arch/arm/mach-imx/snvs.c
+++ b/arch/arm/mach-imx/snvs.c
@@ -29,7 +29,7 @@ static void snvs_init(void __iomem *snvs)
 	writel(0xffffffff, snvs + SNVS_LPSR);
 }
 
-void imx7_snvs_init(void)
+void imx7_setup_snvs(void)
 {
 	void __iomem *snvs = IOMEM(MX7_SNVS_BASE_ADDR);
 
diff --git a/include/mach/imx/snvs.h b/include/mach/imx/snvs.h
index 01154d57d9..65e1da34f0 100644
--- a/include/mach/imx/snvs.h
+++ b/include/mach/imx/snvs.h
@@ -3,7 +3,7 @@
 #ifndef __MACH_IMX_SNVS_H
 #define __MACH_IMX_SNVS_H
 
-void imx7_snvs_init(void);
+void imx7_setup_snvs(void);
 void imx8m_setup_snvs(void);
 
 #endif /* __MACH_IMX_SNVS_H */

-- 
2.47.3



