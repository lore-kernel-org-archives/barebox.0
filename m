Delivery-date: Fri, 07 Nov 2025 19:28:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHRCN-00GNtv-1Z
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 19:28:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHRCM-0003qQ-Vp
	for lore@pengutronix.de; Fri, 07 Nov 2025 19:28:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pvquzim+Gdsm3VsYFBoHjPgiAcvq+977C0UQ/Co07sw=; b=VxkNowS4ye1Hra+KvxqBM4Rb5c
	Xh9bhtUW4ocnNlYGLxk3uFr2FRFQrvKfQIE+q3T66d8iM6631M1HLGj7ClNfGswmUTzjPCqTx/1nZ
	KSNPk9w9+nThid3+pNwQ2MuNjDIaMhjbLZ5/FJ0U1Z5U43lmIWkieG+9zJZFc3flvEembjST/T3RI
	PDF6hwAOyPnnuGje+WTRx3jbNwANUlB9q4NXeMJmG2CslP0zfrFJjAXNb/32UcQ3CTjrC4WbbcSLC
	zwDL3Sn9+fYbi2hrwuOAp9vP1v6Ilcuq9xVffCGbjio7ul4FQ7ngEB7rRJoYs7yrJIBu5AE5SJ5Ba
	jdfn3aVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRBy-00000000UP3-0iOu;
	Fri, 07 Nov 2025 18:28:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRBw-00000000UNt-0FHu
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 18:28:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHRBu-0003hK-IW; Fri, 07 Nov 2025 19:28:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHRBu-007ZWH-1G;
	Fri, 07 Nov 2025 19:28:06 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vHRBu-0000000E81Y-1F03;
	Fri, 07 Nov 2025 19:28:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Nov 2025 19:27:54 +0100
Message-ID: <20251107182805.3367244-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_102808_098738_50AD3255 
X-CRM114-Status: UNSURE (   9.17  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] serial: ns16550: add UART compatible after upstream compatibility break
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Once again, to satisfy binding checker warnings, device trees have been
changed in an incompatible manner breaking non-Linux consumers.

Add the now single compatible to the barebox driver to fix broken console
on AM335x boards.

Fixes: 7fdf97ba2464 ("dts: update to v6.18-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 6d4a4e8c7c0c..1d0ee7dc08f8 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -608,6 +608,9 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 	}, {
 		.compatible = "ti,omap4-uart",
 		.data = &omap_drvdata,
+	}, {
+		.compatible = "ti,am3352-uart",
+		.data = &omap_drvdata,
 	}, {
 		.compatible = "ti,am4372-uart",
 		.data = &omap_clk48m_drvdata,
-- 
2.47.3



