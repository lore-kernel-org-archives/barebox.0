Delivery-date: Tue, 30 Apr 2024 12:24:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1kfO-00A9Ix-0j
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 12:24:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1kfN-0000Ul-LH
	for lore@pengutronix.de; Tue, 30 Apr 2024 12:24:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/jGe28mrqM1SgiDfNsCrrezzohy0GgmNrZSUCzb3COI=; b=k0sVY/ZNTSSCozzlkptrv8UbdC
	bE+ya1fDWUtHNaAhk9tZgp0Fig0H1tyxsR18mRf9TiERE1HU1/RxVIKwd/L+RkFUto1sidfXnoSjy
	CYM4BGjTQ7aTvegYaA4Q5zzgd5irATypCgm+PAtezc1xnU//rOUGR3tFP+aW1CqkRWXFar4SJhdf9
	gCvHJnyldJbRfwy6nkmprTqCUjNkxbb9R4L/r9nYZEZCi8Otwlol1X56BXtwoZYp92WhymwqtKt3+
	tmqcFCzYJzkRVT2RCCDANOyTFAJ6tphfa6hEqeYze0I+Mq0MBNifRU8Z68TtKrAIDZlCasQ90g2vp
	k6JF4aTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1keq-000000060Sc-0yPz;
	Tue, 30 Apr 2024 10:24:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1ken-000000060Qu-0PWX
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 10:24:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1s1kek-0000JC-2x; Tue, 30 Apr 2024 12:24:14 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1s1kej-00F92M-MJ; Tue, 30 Apr 2024 12:24:13 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1s1kej-005hIV-22;
	Tue, 30 Apr 2024 12:24:13 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Apr 2024 12:23:57 +0200
Message-Id: <20240430102357.1357983-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_032417_155820_B50079FA 
X-CRM114-Status: GOOD (  11.64  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MP: fix compatible string for koenigbauer,alphajet board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

During the review of the initial board support patch, the SoM compatible
was changed (and unified) to "congatec,qmx8p" from several different
incompatible variants. However, the compatible in the alphajet device
tree contained a different typo and was overlooked, which had the effect
that the barebox_update handler and the Ethernet fixups were not
registered on the alphajet board.

Fixes: 34f14b1519715d47d879 (2024-03-11, "ARM: i.MX8MP: add König+Bauer AlphaJet board")
Rubberducked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts b/arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts
index 3f958ddf78e8..198fe1379a05 100644
--- a/arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts
+++ b/arch/arm/dts/imx8mp-koenigbauer-alphajet.kernel.dts
@@ -7,7 +7,7 @@
 
 / {
 	model = "Koenig+Bauer Alphajet";
-	compatible = "koenigbauer,alphajet", "congatec,qmxp8p", "fsl,imx8mp";
+	compatible = "koenigbauer,alphajet", "congatec,qmx8p", "fsl,imx8mp";
 
 	display {
 		compatible = "innolux,g101ice-l01";
-- 
2.39.2



