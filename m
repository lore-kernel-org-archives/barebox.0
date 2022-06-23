Delivery-date: Thu, 23 Jun 2022 12:32:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4K8f-00BqbU-NO
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 12:32:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4K8f-0005gU-6E
	for lore@pengutronix.de; Thu, 23 Jun 2022 12:32:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nr9693NxafwmoSnESlTI4X6y968Tas8Bx65CJm+6y5E=; b=ymPLlrsuha2zXi3osjEsr+RpHG
	ptoo7whYjElWmuP6+PCwMj4/NDPpOIDIUPlz6Ixp8L4rnuHd8/+NVWDpcKBwDlDYCxKoeJaExRYeN
	mNX36/8zomATu8GM5S9o9qxLj73l5niJB1U1WpuVLSyLZJ7msT9chjUbvN8YTt4uzHbMOe9MDN2Ps
	HLxmk74MBCmk6Qh3ok+L1+xf8CBma3jiYnyALm/83Qq4q1PCdmx/0M8E5tneb0+ksCmNc9Kc/U39t
	Cd6EFhzwV6m0JgJ7HLqaAJYQ/l3nGcp+yWUFtTNAaLGp5tB4Fs0uXAYs3mqswj+CHZsxWruomsvCB
	9f2wTPUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4K7A-00EXQw-C6; Thu, 23 Jun 2022 10:31:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4K74-00EXPf-1L
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 10:31:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4K70-0005IN-IO; Thu, 23 Jun 2022 12:30:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4K6u-002DTO-T4; Thu, 23 Jun 2022 12:30:54 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4K6v-002Pvk-Hf; Thu, 23 Jun 2022 12:30:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Teresa Remmet <t.remmet@phytec.de>,
	lst@pengutronix.de,
	Joacim Zetterling <joacim.zetterling@westermo.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Jun 2022 12:30:51 +0200
Message-Id: <20220623103051.572885-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623103051.572885-1-a.fatoum@pengutronix.de>
References: <20220623103051.572885-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_033102_154325_64D2B35F 
X-CRM114-Status: GOOD (  10.52  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 4/4] ARM: i.MX8M: imx8mn-evk: disable DDRC memory detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While detection now seems to work for all other supported boards, it is
no longer correct for imx8mn-evk with LPDDR4. Until that's resolved,
disable the dynamic detection. Upstream device tree has a size of 2G
already.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mn-evk/board.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mn-evk/board.c b/arch/arm/boards/nxp-imx8mn-evk/board.c
index 3c478d5f7088..07e197ccedd2 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/board.c
@@ -57,6 +57,13 @@ static int nxp_imx8mn_evk_init(void)
 	phy_register_fixup_for_uid(PHY_ID_AR8031, AR_PHY_ID_MASK,
 				   ar8031_phy_fixup);
 
+	/* FIXME: DDRC driver detects 4G instead of 2G on LPDDR4 board,
+	 * perhaps because we leave something uninitialized in the DDRC
+	 * setup.  Until that's resolved, disable dynamic detection and
+	 * use only memory size specified in DT
+	 */
+	imx_esdctl_disable(1);
+
 	return 0;
 }
 coredevice_initcall(nxp_imx8mn_evk_init);
-- 
2.30.2



