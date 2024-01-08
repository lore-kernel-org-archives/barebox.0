Delivery-date: Mon, 08 Jan 2024 14:28:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMpgJ-008rBa-0x
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 14:28:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMpgI-0001jK-Mq
	for lore@pengutronix.de; Mon, 08 Jan 2024 14:28:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=j90ak12DrI0+32pMTNBcP0AVWLhUAqSoa/c6l7OK9Gc=; b=25nwRuot8fBLxJwd0/oEYmtWJY
	JfbMdK0SeG9tnjm2Aazu5GOBV+kgPQzsKh82H3+V7POJEjecHhgMopMuC6L2LXfvT5ujzBtw166nX
	WBjRyxKEyRtR8M+TDfW271GrVwOYD9z88h5aWbszRhKIgJgT2NOC01WEEEMNeoxk9tP2pLAw857Py
	/8kH551xfyAVw9FFs+DaUl0C854oZmVZiay/ghZWDLBXJ1OKeaxVn49ZiDHh+bYU/IC7r1XB4cLGf
	NM8253Qye+11rh2fVEoEyh6Ef+uxst1dtZuIo3OsOGy5Gip1BSVbbMGndErnvj4GssrXxz+zEcCQE
	JWUwTlfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMpf8-005Cje-1M;
	Mon, 08 Jan 2024 13:27:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMpf4-005Cix-0i
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 13:27:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMpf2-0001Rx-6H; Mon, 08 Jan 2024 14:27:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMpf0-001GHd-2o; Mon, 08 Jan 2024 14:27:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMpf0-006zpo-00;
	Mon, 08 Jan 2024 14:27:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Jan 2024 14:27:21 +0100
Message-Id: <20240108132721.1666173-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_052726_254935_C10B17F5 
X-CRM114-Status: UNSURE (   8.50  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] usb: dwc3: of-simple: remove unmatchable compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Only three of the compatibles listed exist in up-to-date upstream device
trees. As barebox need not worry about backwards compatibility with
older device trees, remove the rest that would never be matched.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index e8155321ad22..1e622240152e 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -67,13 +67,7 @@ static void dwc3_of_simple_remove(struct device *dev)
 static const struct of_device_id of_dwc3_simple_match[] = {
 	{.compatible = "rockchip,rk3399-dwc3"},
 	{.compatible = "xlnx,zynqmp-dwc3"},
-	{.compatible = "fsl,ls1046a-dwc3"},
 	{.compatible = "fsl,imx8mp-dwc3"},
-	{.compatible = "cavium,octeon-7130-usb-uctl"},
-	{.compatible = "sprd,sc9860-dwc3"},
-	{.compatible = "amlogic,meson-axg-dwc3"},
-	{.compatible = "amlogic,meson-gxl-dwc3"},
-	{.compatible = "allwinner,sun50i-h6-dwc3"},
 	{/* Sentinel */}};
 MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
 
-- 
2.39.2



