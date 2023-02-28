Delivery-date: Tue, 28 Feb 2023 15:31:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11K-004kvB-Kd
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:31:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11K-0004dv-8n
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:31:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BfWU1pQC/5sezrLSAzSnz4Pb8eH5jWBej4RBvP3H4V4=; b=A3aXD9SdpB2/6bgAMmN7ETYc30
	K+NVGM7v1bwSV2/8q9HO82g/nLpclJUAbU0cq/wCJFGL1uPPU9yt30Y8n4xWNW5GZnc3uykXoYxeC
	3KnesagydUQkXG0lAbwidlaP99FeePJX15kr30O5AwyfCF9EgwaWZBMllx0oc01M/er06QeHaupbO
	hA7cbmhutwyRUa/tl0jVtUSZNgqcH5MSgXxmExqg6rF6e3Ns88YTWcQsYBkNMxXP8jfhA2iAqFCMR
	73+57YTBOMeOJCzbn6ChbEFbTy08nLbq2go8pNkUtCkKnMe5ITApp771xvLYMx2SP0BxVnmJ2j9PQ
	Y1VpFllQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX108-00DSjz-5m; Tue, 28 Feb 2023 14:30:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX100-00DSgM-Ln
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-00047J-2i; Tue, 28 Feb 2023 15:30:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zy-000t8x-DN; Tue, 28 Feb 2023 15:30:34 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zw-007LWs-UK; Tue, 28 Feb 2023 15:30:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:27 +0100
Message-Id: <20230228143031.1718565-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063036_750828_3CF36648 
X-CRM114-Status: GOOD (  13.66  )
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
Subject: [PATCH 5/9] pinctrl: rockchip: Fix uninitialized var warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

'data' is not used uninitialized, but until the compiler understands
this just initialize it to NULL.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index ed53630fe0..df5f22a7c5 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -525,7 +525,7 @@ static bool rockchip_get_mux_route(struct rockchip_pin_bank *bank, int pin,
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 	struct rockchip_pin_ctrl *ctrl = info->ctrl;
-	struct rockchip_mux_route_data *data;
+	struct rockchip_mux_route_data *data = NULL;
 	int i;
 
 	for (i = 0; i < ctrl->niomux_routes; i++) {
-- 
2.30.2



