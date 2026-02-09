Delivery-date: Mon, 09 Feb 2026 10:15:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMx-00AVJ0-1R
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:15:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMw-0006AD-Fc
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:15:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hTcv96c6czlMsleSLm3142Y9dXd/WOnSWAJmbuI0CvI=; b=nErv9T4jnBYg7opFmdN2Q460go
	mtnhIz2I8UpKYi/wUP+Rxu71XuEipa31gxJoXxuPrTBEPwU0wt6NpNOyFateWaIZDRgg68PFeYRMP
	OeDaNE1nDBLCyPE/Kum/uaU7vROMx9ren2wgxxAjV1mtYJLWeTERu6KsL86+IKld4Eu4Epz1MxklJ
	8GfYW5bAoWPHob+207gR2DmjktfCjb/sOtmSaVw2n54+mKAVxA/Nsuf69ZwsYtlnl53ig3NqAYWMW
	V34CmcVo+NoSrnkA2QKbXx/8EaxZ8Yu6cg4I4wiT3jZEvgxfKQ6WjaJ4jJLo/ySN6Cff4zdUnPsBF
	BZeuqYTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMY-0000000F6fF-3FIY;
	Mon, 09 Feb 2026 09:15:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMT-0000000F6bD-1g8Z
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:15:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNMR-0005oY-R3; Mon, 09 Feb 2026 10:15:15 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:10:27 +0100
Message-ID: <20260209091513.3563412-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209091513.3563412-1-a.fatoum@barebox.org>
References: <20260209091513.3563412-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_011518_207430_4070313D 
X-CRM114-Status: UNSURE (   9.09  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/6] serial: ns16550: add "ns16550" compatible string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The QEMU ppce500 machine generates device tree nodes with "ns16550"
as the compatible string rather than "ns16550a".

Add it to the match table so the driver binds automatically on
QEMU platforms.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/serial/serial_ns16550.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 1d0ee7dc08f8..61e294a38c4c 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -583,6 +583,8 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 	{
 		.compatible = "ns16450",
 		.data = &ns16450_drvdata,
+	}, {
+		.compatible = "ns16550",
 	}, {
 		.compatible = "ns16550a",
 	}, {
-- 
2.47.3



