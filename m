Delivery-date: Tue, 24 Jan 2023 21:03:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPVZ-000nXw-G0
	for lore@lore.pengutronix.de; Tue, 24 Jan 2023 21:03:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKPVW-0007dm-Bm
	for lore@pengutronix.de; Tue, 24 Jan 2023 21:03:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UrEN/PUxfwh+XkKUTuYstuqy1BJD7OjqCjFw3wAKcCo=; b=f0GmaR3nPJC7rpNSQv/463AhAH
	yw8wDlGYmFvG8yuqdbkgT2y95NjutHcxI61uC9Kq3u/ucLGnFt9gcwjEcVQrBmnGe43mLsGSagPGe
	NfG8xpIhHj6SZ9V4qZoYPLhBFq/5QyjKyXQ3o9LkAHcY/hIyMAo8FZxFLh5N/0FkXgeDA6dJECuM0
	NPer/aa7FPlp/rZ+8VpJEFTKWtK9WmYV6N5R22oVUybqp5m14X2bBif8lASMR4UFV2dJ93HfudOVq
	CEmn5pKjO6PH5Ke3ouDp34zfKoZzmxhy0ZJYaWqFyYFINQ2pEJZulpasNnoegEwzDMuDFbxWXndpO
	XK68MsRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPU3-0058ez-Gb; Tue, 24 Jan 2023 20:01:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKPTw-0058bo-HP
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 20:01:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPTp-0007QS-Fq
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 21:01:17 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPTp-000BBq-P8
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 21:01:16 +0100
Received: from mgr by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mgr@pengutronix.de>)
	id 1pKPTn-00DGHF-P3
	for barebox@lists.infradead.org; Tue, 24 Jan 2023 21:01:15 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 24 Jan 2023 21:01:13 +0100
Message-Id: <20230124200114.3160585-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_120124_605146_1EF02B06 
X-CRM114-Status: GOOD (  11.29  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ARM: dts: stm32mp15x: adjust USB OTG gadget tx fifo sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are in sum 952 dwords available for g-rx-fifo-size,
g-np-tx-fifo-size and the eight entries of g-tx-fifo-size. For high
speed endpoints the maximal packet size is 512 (for full speed it's 64)
bytes. So a tx-fifo-size of more than 128 (dwords) isn't sensible.

So instead of one (too) big and several small fifos, use two big fifos
and to better use the remaining available space increase one of the
small fifos.

This patch is already discussed for the mainline kernel.

https://lore.kernel.org/linux-arm-kernel/20230112112013.1086787-1-u.kleine-koenig@pengutronix.de/

Until this is fix has reached the synced kernel dts tree in barebox we
fix this locally.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
v1 -> v2: - added this patch to solve the fifo issue on stm32 dwc2 when loading fastboot

 arch/arm/dts/stm32mp151.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index d3e924dc00..602bcd60b2 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -52,3 +52,7 @@
 		barebox,mode-serial = <0xFF>;
 	};
 };
+
+&usbotg_hs {
+	g-tx-fifo-size = <128 128 16 16 16 16 16 16>;
+};
-- 
2.30.2



