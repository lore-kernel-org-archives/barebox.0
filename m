Delivery-date: Tue, 08 Nov 2022 07:12:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osHq8-0018S6-RN
	for lore@lore.pengutronix.de; Tue, 08 Nov 2022 07:12:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1osHq7-0000B9-Gg
	for lore@pengutronix.de; Tue, 08 Nov 2022 07:12:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ue0uqBNzIhquDLk6bIqhFTo85jz+WDbY3Wzs+/ksxto=; b=fNR8wsKJ0cNCItN9Uax833L0QE
	iVQAXWVw1jL0VsqISytNgGw5DsdBuIN7peS5ItD1Ge45D5Q/oUViq+SW1VoV8PqIAUMmnygscEobl
	OdtcOKkv+SA3q4uV3NoCWOQ8oJ9Xznng538n4g4X/rEcWo0mqGRxmHkCQ0eIH8W67u1Ra8AoYYDkz
	TLOtao5mtHiGXEpNQSDpUfSc1d6/vPVxOea38ddOVkLzFkY6f8tpdYkCAAZFAYLuu2Y3u0h0WjlvS
	2yNnwh24MQT93LE/aMYiF/2TuW57w7zzap/mTGYt2OO6qP37eBDK5vfXEv2KmZtfQCuMgwTZiL0rF
	bAJPGETg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osHoa-0035HI-EY; Tue, 08 Nov 2022 06:10:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osHoV-0035E2-03
	for barebox@lists.infradead.org; Tue, 08 Nov 2022 06:10:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1osHoT-0007tI-QO; Tue, 08 Nov 2022 07:10:21 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1osHoS-002zpc-6Q; Tue, 08 Nov 2022 07:10:21 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1osHoS-00HUUu-8D; Tue, 08 Nov 2022 07:10:20 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  8 Nov 2022 07:10:09 +0100
Message-Id: <20221108061009.4168735-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221108061009.4168735-1-o.rempel@pengutronix.de>
References: <20221108061009.4168735-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_221023_044636_E5DAF8E2 
X-CRM114-Status: GOOD (  14.58  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 8/8] ARM: boards: skov-imx6: assigned separate MAC address to LAN2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have two external ports and different MAC addresses on each port. So,
assign different MAC to the LAN2. The address on LAN1 is the
system default address.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 32 ++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 3f5645daff..19f91ab481 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -548,6 +548,33 @@ static void skov_init_board(const struct board_description *variant)
 	}
 }
 
+static int skov_set_switch_lan2_mac(struct skov_imx6_priv *priv)
+{
+	const char *state = "/state/ethaddr/eth2";
+	struct device_node *lan2_np;
+	u8 ethaddr[ETH_ALEN];
+	int ret;
+
+	ret = get_mac_address_from_env_variable("state.ethaddr.eth2", ethaddr);
+	if (ret || !is_valid_ether_addr(ethaddr)) {
+		ret = get_default_mac_address_from_state_node(state, ethaddr);
+		if (ret || !is_valid_ether_addr(ethaddr)) {
+			dev_err(priv->dev, "can't get MAC for LAN2\n");
+			return -ENODEV;
+		}
+	}
+
+	lan2_np = of_find_node_by_path("/mdio/switch@0/ports/ports@1");
+	if (!lan2_np) {
+		dev_err(priv->dev, "LAN2 node not found\n");
+		return -ENODEV;
+	}
+
+	of_eth_register_ethaddr(lan2_np, ethaddr);
+
+	return 0;
+}
+
 static int skov_switch_test(void)
 {
 	struct device_d *sw_dev;
@@ -567,8 +594,11 @@ static int skov_switch_test(void)
 		goto no_switch;
 	}
 
-	if (dev_is_probed(sw_dev))
+	if (dev_is_probed(sw_dev)) {
+		skov_set_switch_lan2_mac(skov_priv);
+		/* even if we fail, continue to boot as good as possible */
 		return 0;
+	}
 
 no_switch:
 	skov_have_switch = false;
-- 
2.30.2



