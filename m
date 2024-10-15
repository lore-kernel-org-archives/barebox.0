Delivery-date: Tue, 15 Oct 2024 13:21:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcJ-004dl5-2k
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 13:21:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0fcI-0000K9-QV
	for lore@pengutronix.de; Tue, 15 Oct 2024 13:21:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4U41QOCammziYhnuyJA4ye1pK2w+azGPT6uY9Jz8R7M=; b=aMdDChGtQzDTz7dQOt9nWY/erG
	No95xELBJksxmi7ELQcpRyRMnrXuRWfs2gSrdPoXSTBWAx9Eo3hFT/0f/Cdwf9LzEy1dTSxe9Pb7M
	kdLF/m3GirorDMMQ8Z5bki7glU8/v9sefp3yNth18wL82QcUj4lpDmFOyQ6KQV/W2GwIl0Yo6sfwN
	dO0jNatWyiAtBR7k4MkrPU6pp4T3YH/avsXwqj7MXC5+Lq1SSL9zZGHQKFoGeGU8j60E/PCrtc+UG
	luvBCMpUUBdNHTEPzdQhUcYm/fYNcHBhS5WGUAAqAB2Pi9V1aDckRtaoTkFZwfn9rZXlLuUIIJd3C
	mjvWIdVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fbZ-00000007zjF-43vP;
	Tue, 15 Oct 2024 11:20:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0fSC-00000007yDe-3Uco
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 11:11:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-0007ud-HG; Tue, 15 Oct 2024 13:11:03 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSB-00219C-0V; Tue, 15 Oct 2024 13:11:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0fSA-000ubB-34;
	Tue, 15 Oct 2024 13:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Oct 2024 13:10:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-rockchip-spi-rk808-v1-2-e276b4b59603@pengutronix.de>
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1728990662; l=972;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=QXRrFwBrUyStAFS2Or4X8Gj9ar25YB9fSSbQ17EUx3E=;
 b=B0S5OsUhSOcPAuYELsxMsAjozrohU2gQMw9l2xdnlHvvAu6wsmdi86Ri2bdtA5ghNRt+eoVWC
 TD6oxc5TaWBBgpx2N7rdpGXyVAUEhpOqHP8cSCnTkpJ94O15DVoxMGE
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_041104_928847_CD714A26 
X-CRM114-Status: UNSURE (   9.52  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] mfd: mx13xxx: drop unnecessary ifdefs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

No need to #ifdef coredevice_i2c_driver and coredevice_spi_driver. These
are noops anyway when the corresponding subsystem is disabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/mc13xxx.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 1e06a24b45..5dabfe3f61 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -396,9 +396,7 @@ static __maybe_unused struct driver mc13xxx_i2c_driver = {
 	.of_compatible	= DRV_OF_COMPAT(mc13xxx_dt_ids),
 };
 
-#if IS_ENABLED(CONFIG_I2C)
 coredevice_i2c_driver(mc13xxx_i2c_driver);
-#endif
 
 static __maybe_unused struct driver mc13xxx_spi_driver = {
 	.name		= "mc13xxx-spi",
@@ -407,6 +405,4 @@ static __maybe_unused struct driver mc13xxx_spi_driver = {
 	.of_compatible	= DRV_OF_COMPAT(mc13xxx_dt_ids),
 };
 
-#if IS_ENABLED(CONFIG_SPI)
 coredevice_spi_driver(mc13xxx_spi_driver);
-#endif

-- 
2.39.5



