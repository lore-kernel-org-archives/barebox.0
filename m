Delivery-date: Tue, 29 Aug 2023 14:45:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qay5x-00DKdS-9t
	for lore@lore.pengutronix.de; Tue, 29 Aug 2023 14:45:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qay5v-0004jB-1F
	for lore@pengutronix.de; Tue, 29 Aug 2023 14:45:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o0FBiv+b28AvALxgMsYHEREbcZStoLi1NllfxtLrZF4=; b=ltNBs4k2XnTTfvSB1bYOXP0BHs
	jEa+K/kWQ7krPwtuu1bD7ow8t23riph5BwGnHdvNoNcrcMFZEfSTSJvh4hGn4BRvvTgaITUji5Xon
	NaQOy7q6gOQ3nXBxNMSSMbPJ3TCoTW6K4d0hW1Rsogo3XvAkKt88tJ79/tAn4cE4pasdhA77FxMJm
	AjESKFYVPWqC11VP+WJqWRKcGcvPIEZdeNFwL0Nn29MvohkxJFiTmmyeap1eorM5MZ+YeFQa1GN5o
	mvQrTaNPw9ziPbb9cq2dl61ltbq/fKW8K9aecYnC5E/HIhOxxm21rP8phJeANg+uF4hkHoGAMqXwr
	oFpz3vLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qay4k-00BWVY-1O;
	Tue, 29 Aug 2023 12:44:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qay4f-00BWT8-0B
	for barebox@lists.infradead.org;
	Tue, 29 Aug 2023 12:44:03 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qay4b-0004QT-Pn
	for barebox@lists.infradead.org; Tue, 29 Aug 2023 14:43:57 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 29 Aug 2023 14:43:54 +0200
Message-Id: <20230829124356.4178308-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230829124356.4178308-1-m.felsch@pengutronix.de>
References: <20230829124356.4178308-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_054401_092714_4CDD3E5C 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM: boards: polyhex-debix: add SoM/Baseboard combination compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream [1] did not accept the "polyhex,imx8mp-debix" since it is to
generic. We could add "polyhex,imx8mp-debix" it to our barebox
devicetree but since we need to differentiate between the SBC and SOM
anyway, add the upstream landed compatible.

[1] https://lore.kernel.org/all/20230809071026.3546605-3-m.felsch@pengutronix.de/

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/polyhex-debix/board.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/polyhex-debix/board.c b/arch/arm/boards/polyhex-debix/board.c
index 46cb18c5889c..f81666ce0c93 100644
--- a/arch/arm/boards/polyhex-debix/board.c
+++ b/arch/arm/boards/polyhex-debix/board.c
@@ -37,6 +37,7 @@ static int polyhex_debix_probe(struct device *dev)
 
 static const struct of_device_id polyhex_debix_of_match[] = {
 	{ .compatible = "polyhex,imx8mp-debix" },
+	{ .compatible = "polyhex,imx8mp-debix-som-a-bmb-08" },
 	{ /* Sentinel */ }
 };
 BAREBOX_DEEP_PROBE_ENABLE(polyhex_debix_of_match);
-- 
2.39.2



