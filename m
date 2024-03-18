Delivery-date: Mon, 18 Mar 2024 10:46:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rm9ZZ-00CAeW-2X
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 10:46:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rm9ZZ-00047Q-4u
	for lore@pengutronix.de; Mon, 18 Mar 2024 10:46:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sHEsOnjpnW3iX8P127IX24PhVqvTMbLrnbwB9G+9CL0=; b=dV4zClhpsCmSbz0U0kOWyckNZw
	c4y6ystehPzrEAaqUDyoMS9UMTpf/mPf6DUNWuASllZ01Vg2SD6bP0qtOYX8jgYDNNr2lzCudyt0W
	ogqFnbvXaC56MWiCBIzXF2YFUsdSzb/OJ1Hnt5kckrc8dZF2QWW23F1xAAGeRBhaw3DeMbR//pq98
	UsqD0ClRVcyUMwm8PyT7xNsDwxn1MxDFRyHxcbBWgpCOza3EAhvUenrirkhkAZ1ym8H0CB3YJ1zqn
	oKZCF/QLVlvdShsxvq89hg9DWsPkvDhbA6EefsiaUVR/ImyoJGW29+DEB7IKqQumjCzHoqYSv8tZw
	2qd7ZElA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm9Yu-00000007zTl-2AH3;
	Mon, 18 Mar 2024 09:45:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rm9Yo-00000007zSV-3f6j
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 09:45:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rm9Ym-0003Zs-CN; Mon, 18 Mar 2024 10:45:36 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rm9Ym-0073A1-02; Mon, 18 Mar 2024 10:45:36 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rm9Yl-006WCM-35;
	Mon, 18 Mar 2024 10:45:35 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 18 Mar 2024 10:45:33 +0100
Message-Id: <20240318094533.1553713-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240318094533.1553713-1-o.rempel@pengutronix.de>
References: <20240318094533.1553713-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_024538_993824_2F1C6897 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 2/2] ARM: i.MX8MP: skov: add new bd500 variant support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add bd500 board variant.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index a45fe8517f..b4dd83a8cf 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -83,6 +83,9 @@ static const struct board_description imx8mp_variants[] = {
 		.dts_compatible_hdmi = "skov,imx8mp-skov-revb-hdmi",
 		.flags = SKOV_IMX8MP_HAS_HDMI,
 	},
+	[2] = {
+		.dts_compatible = "skov,imx8mp-skov-revc-bd500",
+	},
 	/* Keep this entry always on the last place. It will be used
 	 * as fallback variant if not supported variant is detected.
 	 */
-- 
2.39.2



