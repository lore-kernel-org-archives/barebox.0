Delivery-date: Mon, 03 May 2021 14:28:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXh2-00039U-N0
	for lore@lore.pengutronix.de; Mon, 03 May 2021 14:28:56 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldXh1-0005Ka-Ul
	for lore@pengutronix.de; Mon, 03 May 2021 14:28:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zGmDcki1KPSwV8bSAKzNf6og8Mox1OTeiWHaGtj5FtI=; b=qFKySz9GKnCduK
	dNEuKOZPHUwpHT5T656SkB3mCaOcPUwKwhcPCnORh3pKwXaCZXstArZSvQGZQP9z1ELJYAQO4dwTy
	TXurBrSwTBF+L8EF4iw4zlffYOaQ/Ywf6ImXyNy0YifJR2uGWRRbqnAqlilh8YHavoK4IQ42H7cv7
	CnChLuDaWB7fhFF2EPepMa8si0y+alqY/vAlpu9WdDsBepg+US1vadrnJDZbYlcuv1R5NQhnTe+bn
	U3ymaJWf0JRNY3z97sHt8zftDoIEfPPCPoe0UNUu5GjipYsresN2bQCN6MqDRw856PrKa4OTQm4MR
	Ed/vzm5BbEebCx3NAxWw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldXeb-00Dr7N-OO; Mon, 03 May 2021 12:26:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXeU-00Dr6h-Jv
 for barebox@desiato.infradead.org; Mon, 03 May 2021 12:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=B8TIatid6ho1rBkXxg76ny5NOywcuPYZFNpH3vr2aqY=; b=QsFORJ/e1NLJcDYLiBd8DhxmBQ
 Fhf50zRYynw+i1sob1o54csQjnPfDfKvVc21aA3LySc8HE6uiLrDllvo+xSBmGN7ya2dxZPkPoBLP
 UnGeLsAiPmUqUzpeNGOrI2mlJUM50AwSsU52IlAtLj11K/W6sxVZpO3uwqXfVnIYOLFJZexuwXy4j
 eEkdIYbcD1W4DCME1HOi7B6U+onkiN+z+bsvvLMXXxzOPzxq7lmJUEscXrY102SNqKXOgrpSGhKKJ
 mVrNwQ6MfnZGejeUTA1Nk7RcmbbJjPLJwJ6vnwvZxBiwyUmO9Ww1Y528bTffDOmxRs6iRTjsP3xw/
 3QREZ/Og==;
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldXeR-0033OR-HY
 for barebox@lists.infradead.org; Mon, 03 May 2021 12:26:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1620044759; x=1622636759;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nl0GTuXWVRBNNpicTfInRU01A2aBp6ih5myuUo5I9fQ=;
 b=gvG5gEdPhEUhuCn1MdhgfjdPgZog0FsXxxtpt0qXD471HO2acDreXtCFov+QUM2C
 fxAQ2kDWxiDDA6+SVYj7EETXZ1SVkTzK5kJoTG9Qp5USL3Y7t5IKBT2wFkgSh8y7
 62zO8q0owCSR7xU7/oBCNPMQYon63Fg3H1174vYLpiI=;
X-AuditID: c39127d2-324b870000001c53-1d-608febd73b1d
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 5E.1C.07251.7DBEF806;
 Mon,  3 May 2021 14:25:59 +0200 (CEST)
Received: from lws-ybas.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2021050314255942-578619 ;
 Mon, 3 May 2021 14:25:59 +0200 
From: Yunus Bas <y.bas@phytec.de>
To: barebox@lists.infradead.org
Date: Mon, 3 May 2021 14:25:50 +0200
Message-Id: <20210503122550.2951035-1-y.bas@phytec.de>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 03.05.2021 14:25:59,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 03.05.2021 14:25:59
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBJMWRmVeSWpSXmKPExsWyRoCBS/f66/4Eg97PuhYnFvczOzB6bF5S
 H8AYxWWTkpqTWZZapG+XwJXxf+dWxoKtvBXN186xNTDe4epi5OSQEDCROD/1IVMXIxeHkMA2
 RombD9cxQzjnGCWOrzvADlLFJqAocf72W1YQW0RAXmLu/jYwW1ggSmLdzn6gbg4OFgEViSt7
 VUDCvAJmEi9WT2WDWCAvcXLtYSaIuKDEyZlPWCDiVxglfv+Sg7CFJE4vPssMYjMLaEssW/ia
 eQIj7ywkLbOQpBYwMq1iFMrNTM5OLcrM1ivIqCxJTdZLSd3ECAyNwxPVL+1g7JvjcYiRiYPx
 EKMEB7OSCG/B2v4EId6UxMqq1KL8+KLSnNTiQ4zSHCxK4rwbeEvChATSE0tSs1NTC1KLYLJM
 HJxSDYyT7ObMO3Sy5vzNt5ahMzjiEvysH8xWW2Yab/T/fOD0Wes0/v/9sGf9D42eR/O+8obM
 DhPtYl0/57/wll1v7Fc+2xHK9+AUc0ralLSfBq+/zGT7VJAv5nj7w1X5jRahe/g1VBNzv2qX
 f112aobQs45s7XeXs+ubMz/NOGu27NnZayUVuxdWuGz5ocRSnJFoqMVcVJwIAN/PdZf7AQAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_052615_982023_FDDBB47B 
X-CRM114-Status: GOOD (  10.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: imx6qdl: pfla02: Update spi-nor naming for kernel
 compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The kernel NVMEM-subsystem prevents the usage of duplicate partition names.
Change the SPI-NOR partition names to be compatible with the kernel
driver.

Commit 72ba815bf6fe ("ARM: dts: phycore-imx6: change mtd-partition names for
compatibility with kernel") applies the change for phyCORE SOMs. The
same applies for phyFLEX-modules.

Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index e1aa3183b..6df8d247b 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -21,7 +21,7 @@
 
 		environment-spinor {
 			compatible = "barebox,environment";
-			device-path = &som_flash, "partname:barebox-environment";
+			device-path = &som_flash, "partname:nor.barebox-environment";
 			status = "disabled";
 		};
 
@@ -54,28 +54,29 @@
 /delete-node/ &{/memory@10000000};
 
 &som_flash {
+
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <1>;
 		#size-cells = <1>;
 
 		partition@0 {
-			label = "barebox";
+			label = "nor.barebox";
 			reg = <0x0 0x100000>;
 		};
 
 		partition@100000 {
-			label = "barebox-environment";
+			label = "nor.barebox-environment";
 			reg = <0x100000 0x20000>;
 		};
 
 		partition@120000 {
-			label = "oftree";
+			label = "nor.oftree";
 			reg = <0x120000 0x20000>;
 		};
 
 		partition@140000 {
-			label = "kernel";
+			label = "nor.kernel";
 			reg = <0x140000 0x0>;
 		};
 	};
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

