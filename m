Delivery-date: Fri, 02 Jun 2023 13:09:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q52ev-007EuK-5i
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 13:09:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q52es-0007Uf-6m
	for lore@pengutronix.de; Fri, 02 Jun 2023 13:09:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HR4ekRzs4/McZqSJllA5e7ruexpwZ3xbx9nQaB8dshM=; b=b83104u/EkJYJA
	dRB953GCX54r0Hon/VnMO91yOKobyQBTc5KTRP9sI/eNGqR9ygJbD1DZVteTW7mkT1qeNUiqaYyDi
	+DfRskHxDVEng6pqemqEmJP0tVDQgkqiWhDyl+yEXe3BVUhnv/OS96OHj9x0zxg/lmOKO/7DTg/bU
	yQwiNH0eMIykGy3eCYjVPqYccO278nu4TXPDNF95xKk/UApjvV+13pjanrnbwTNTpLMYcINF1+cjN
	BBYvI6PzWwSKx36QPjeLVlrY0ZcWmMVA24S3qvvvBxQVcDIffGzdhSaM/Fzb2KRfacbhebSYbxGAe
	tMswtfJJzbzvaUGluxAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q52dS-006jIf-1k;
	Fri, 02 Jun 2023 11:07:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q52dP-006jCL-0y
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 11:07:57 +0000
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1q52dI-0007JC-Ab
	for barebox@lists.infradead.org; Fri, 02 Jun 2023 13:07:48 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id A4CAC1D0FDC
	for <barebox@lists.infradead.org>; Fri,  2 Jun 2023 11:07:47 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 7F0591D0FDB;
	Fri,  2 Jun 2023 11:07:47 +0000 (UTC)
Received: from blackshift.org (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id bf26a338;
	Fri, 2 Jun 2023 11:07:46 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  2 Jun 2023 13:07:46 +0200
Message-Id: <20230602110746.697121-1-mkl@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_040755_341500_E98081BA 
X-CRM114-Status: GOOD (  10.88  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: dts: InnoComm: fix node address of environment partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes: e190e932b918 ("ARM: i.MX8MM: add InnoComm WB15 support")
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/arm/dts/imx8mm-innocomm-wb15-evk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
index 8808441b6094..907d9c96baa6 100644
--- a/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
+++ b/arch/arm/dts/imx8mm-innocomm-wb15-evk.dts
@@ -34,7 +34,7 @@ partition@0 {
 			reg = <0x0 0x0 0x0 0x100000>;
 		};
 
-		env_sd1: partition@e0000 {
+		env_sd1: partition@100000 {
 			label = "barebox-environment";
 			reg = <0x0 0x100000 0x0 0x100000>;
 		};
@@ -52,7 +52,7 @@ partition@0 {
 			reg = <0x0 0x0 0x0 0x100000>;
 		};
 
-		env_sd2: partition@e0000 {
+		env_sd2: partition@100000 {
 			label = "barebox-environment";
 			reg = <0x0 0x100000 0x0 0x100000>;
 		};
-- 
2.39.2




