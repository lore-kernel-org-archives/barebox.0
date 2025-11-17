Delivery-date: Mon, 17 Nov 2025 09:36:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuih-001urs-2F
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:36:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKuih-0001fo-4d
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:36:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AZ4FQFG/JpkrPBcUw+Vv/V0kabAdVm09bkOcv1urcAU=; b=tkJ31fNR/S8915TR7G6OTx9q52
	NNPGIxR0yu3xgNflLPjaMnDxetDV4xx6jQnpYjTmXpA/mF1YwTB/YAgezyYPvF94xvU8iqAP9Rm/D
	PKXZhwr/8UqSQB+y1XnSw1rbBqCJ79cmT8rM2WMpV174qU6cqT66EJOdAwWyzfHcpu2ZpXrLoEA0m
	35dr1AxS6qBNLUa7nUqdw7t1bdNFEneSyTNecAIhLHgoAuQU8nngMRFwxqEYI3oDUX4pvRPL+wS0b
	5mzBC/udXOVHlACRhwB1XbVKMNZrhJsQ1t3oLlW7FuQfb/6hDgc93iKu2X8m1wTAqAY05OrX4LO+o
	zldVyDig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKuiC-0000000FgvH-3aRz;
	Mon, 17 Nov 2025 08:35:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKui9-0000000FgrE-2SHz
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:35:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-0001Dx-5I; Mon, 17 Nov 2025 09:35:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuhz-000sfh-2O;
	Mon, 17 Nov 2025 09:35:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKui0-00000005QZR-0HOQ;
	Mon, 17 Nov 2025 09:35:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Nov 2025 09:35:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251117-soc-uid-v2-3-a2415bf9133d@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
In-Reply-To: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763368535; l=847;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rIV3C+RtzSE4LCSIMXCcFiZ+fdDI/AwG7OBN4XnBBII=;
 b=iOJ1UxwrotyLIt5s2/PjQMFpU4OgVHoIOvFLPrE/qEFF4zsY2OIzbz6OygX1IVnd5nsntsP4N
 drsTtniUHlWBvZ2lbksVLJYVXWRnkUMsDVx056gajVgO2f5qvzq+bAe
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003545_695607_C65DC5AC 
X-CRM114-Status: GOOD (  11.57  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/9] ARM: i.MX6: print leading zero for SoC ID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Print leading zeroes for the SoC ID which is the same as other places
incuding Linux do which print the i.MX SoC ID.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 29a56de56293d0cd11b51e23b3528a5f2af9a43b..8319251ec5fdbfe0b05f6d44e07bbe719eb31e26 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -226,7 +226,7 @@ int imx6_init(void)
 
 	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
 	imx_set_reset_reason(src + IMX_SRC_SRSR, imx_reset_reasons);
-	pr_info("%s unique ID: %llx\n", cputypestr, mx6_uid);
+	pr_info("%s unique ID: %0llx\n", cputypestr, mx6_uid);
 
 	imx6_setup_ipu_qos();
 	imx6ul_enet_clk_init();

-- 
2.47.3



