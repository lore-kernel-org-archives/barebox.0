Delivery-date: Thu, 09 Jun 2022 23:56:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzQ8b-009EiO-0Z
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 23:56:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzQ8Z-0004Qd-Ft
	for lore@pengutronix.de; Thu, 09 Jun 2022 23:56:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aiejmNJ8myJ1DJo/LsHyeqAICgnXwlLZbyy5LWxcOes=; b=4igNoqY09Ocqdm
	pK348QXSC/Vv7eeoT03bhgcH6eq417htrgsldYj0gMNjRR2wC7FcXxKA46gRoM6B0YOof0UA9aZdk
	6eJ683/aaZhuNPuuW5nF7/VwI/2zLJlPfcdVx3qZ7T2penBpwwgN5aGkA8s97rRtx5xkFphgcqAwe
	0mR473NjxF5k8y8muoBu8+S+wbmURTPLR+KKoMLmNbtFc/23fNJFLMqPw9kQgB/xFDw+JGYl63WmA
	rwE5AvL5rUTqHS2581Fxo2iOkgKpRoXPrtJhedgFr+tUPmT7QvMconAvx6HwqQehEaZELhcDzV66F
	lLVehEuHQK4J/HAoEZ9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzQ71-004Ie9-3j; Thu, 09 Jun 2022 21:54:43 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzQ6u-004Ib7-E4
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 21:54:40 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 6F69CE74012; Thu,  9 Jun 2022 23:43:36 +0200 (CEST)
Received: from astat.fritz.box (a89-183-89-185.net-htp.de [89.183.89.185])
	by lynxeye.de (Postfix) with ESMTPA id 4D52EE74004
	for <barebox@lists.infradead.org>; Thu,  9 Jun 2022 23:43:35 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Thu,  9 Jun 2022 23:43:29 +0200
Message-Id: <20220609214330.1443541-1-dev@lynxeye.de>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_145436_633184_6D6FBA6C 
X-CRM114-Status: UNSURE (   9.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] arm: imx8mq: re-enable DDRC for Barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With Linux 5.18 the DDRC is disabled for most boards in the upstream
DT, as it isn't used. Barebox however needs the DDRC node to be enabled
as it has a driver to read the memory size from the controller and ends
up with no available RAM without this driver being present.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx8mq-ddrc.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx8mq-ddrc.dtsi b/arch/arm/dts/imx8mq-ddrc.dtsi
index 1df39151a1cd..6961477eef38 100644
--- a/arch/arm/dts/imx8mq-ddrc.dtsi
+++ b/arch/arm/dts/imx8mq-ddrc.dtsi
@@ -8,3 +8,7 @@
 	/delete-node/ memory@40000000;
 };
 
+&ddrc {
+	status = "okay";
+};
+
-- 
2.36.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

