Delivery-date: Tue, 19 May 2026 07:35:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPD6q-001OPU-2C
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 07:35:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPD6q-00077X-3X
	for lore@pengutronix.de; Tue, 19 May 2026 07:35:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aB3+Du33Oa1nnmsGC80xmEYi0NxcsLy5nvTPjig7ml0=; b=eLx98ZRz5yK5PgGw8XB47yAIF8
	aHuDvb/3jgHTx6uf78nZ2qpvjKr3DUJYX7hMMBNt+aXSW9aDkURMUzsWiv1oXL8rlPmgh8JEDRxG2
	0XMVB9++p1QS89A+IP8c5L5HNqzhHj17rR3IkfVV3YbVtgfJ7kcoxti8Rx/HeBPPYaCBGnGhD7oE5
	tRpg5UDeGuHFx6PVh+EFQO4agQRUIr89ZCzaYdYDZz04HRZ3q3PWZdGhq939dHhW037zZ2zXHBiS9
	kHZ4S1F5FZZm7teRyE2/SWmJ4RQQjcAwsmAcLn6cu7rhNkGbnpi8GTyg1AbCYyenu+4VRSHLrIB+8
	qfjqzwfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPD5X-00000000ClK-0TYy;
	Tue, 19 May 2026 05:33:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPD5V-00000000CkV-0DWc
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 05:33:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPD5T-00070a-7f; Tue, 19 May 2026 07:33:51 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPD5S-000i5C-1z;
	Tue, 19 May 2026 07:33:51 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPD5T-0000000H2gG-0Lq1;
	Tue, 19 May 2026 07:33:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 May 2026 07:33:48 +0200
Message-ID: <20260519053350.4061870-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_223353_091234_60637947 
X-CRM114-Status: UNSURE (   8.00  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH master] serial: ns16550: add missing Linux console names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The OMAP earlycon and the regular jz4740 console names were not
populated, which meant barebox couldn't fix them up correctly.

For example on a Beagleplay, global.bootm.earlycon=1 caused:

  commandline: earlycon=<NULL>,mmio,0x2800000 console=ttyS2,115200n8

Populate the missing members to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 5f62334a0f8a..31e7c006d004 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -413,11 +413,13 @@ static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 static __maybe_unused struct ns16550_drvdata omap_clk48m_drvdata = {
 	.init_port = ns16550_omap_init_port,
 	.linux_console_name = "ttyS",
+	.linux_earlycon_name = "uart8250",
 	.clk_default = 48000000,
 };
 
 static __maybe_unused struct ns16550_drvdata jz_drvdata = {
 	.init_port = ns16550_jz_init_port,
+	.linux_console_name = "ttyS",
 	.linux_earlycon_name = "jz4740_uart",
 };
 
-- 
2.47.3



