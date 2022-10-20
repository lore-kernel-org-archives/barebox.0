Delivery-date: Thu, 20 Oct 2022 10:03:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olQWq-001fXi-RJ
	for lore@lore.pengutronix.de; Thu, 20 Oct 2022 10:03:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olQWo-0001Uj-7u
	for lore@pengutronix.de; Thu, 20 Oct 2022 10:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EtLNCLpwovrH0nJQ4CnqEhPUnSXWmKGvBTlwic6IO6Y=; b=d5Yq28BaTf83qw
	kLLbG91xKhEgs+C+uefEI1owzn2o8WKHz+LLvt5HGrkI4o0GCrmCGaRQCZFi4k7tht74+52HcfBOF
	bFlcxQgusT7b8V+toYFVDNSaiStIUOpUaEEugRUZP+72EGLylW6D89SgVZoScgkmTaohTJSJejMgO
	MzYs1Ro5QPFC4mXp/IoO1Ilv0Sa9Xh3Jo50vAssW6st6rQ9PhlpFMUckOWLG1hEwoH7ZgNiQKYtG/
	jxyZ+rYfCTS6O2lwmRHLmDnCee9ObFyDtmSXuhy+oig8TZw1/kdHnPjl+w+m+oygHiJOGYLus7ko4
	Qllkp7u0aqyRJN7cbNcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olQVS-00C2fj-3H; Thu, 20 Oct 2022 08:02:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olQVK-00C2dg-Vo
	for barebox@lists.infradead.org; Thu, 20 Oct 2022 08:02:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVJ-00012a-PB; Thu, 20 Oct 2022 10:02:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVJ-000HMu-2I; Thu, 20 Oct 2022 10:02:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1olQVI-00EaDQ-5D; Thu, 20 Oct 2022 10:02:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 20 Oct 2022 09:58:24 +0200
Message-Id: <20221020075826.3385137-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_010215_043545_8D25F15A 
X-CRM114-Status: GOOD (  10.08  )
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
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: i.MX8M bootsource: alias i.MX8MN functions as i.MX8MP functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Until now imx8mp_get_boot_source() and imx8mm_get_boot_source() are
both the same. There are subtle differences between the SoCs though
implemented in subsequent patches. i.MX8MN will be the same as i.MX8MP
then, so alias imx8mn_get_boot_source() to imx8mp_get_boot_source()
instead of imx8mm_get_boot_source().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 8c9febb50a..999bd3ab91 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -678,12 +678,6 @@ void imx8mm_boot_save_loc(void)
 	imx_boot_save_loc(imx8mm_get_boot_source);
 }
 
-void imx8mn_get_boot_source(enum bootsource *src, int *instance)
-	__alias(imx8mm_get_boot_source);
-
-void imx8mn_boot_save_loc(void)
-	__alias(imx8mm_boot_save_loc);
-
 void imx8mp_get_boot_source(enum bootsource *src, int *instance)
 {
 	unsigned long addr;
@@ -699,3 +693,9 @@ void imx8mp_boot_save_loc(void)
 {
 	imx_boot_save_loc(imx8mp_get_boot_source);
 }
+
+void imx8mn_get_boot_source(enum bootsource *src, int *instance)
+	__alias(imx8mp_get_boot_source);
+
+void imx8mn_boot_save_loc(void)
+	__alias(imx8mp_boot_save_loc);
-- 
2.30.2



