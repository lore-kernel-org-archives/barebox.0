Delivery-date: Thu, 26 Sep 2024 13:23:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmbE-002ytY-05
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:23:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmbC-0002u8-B8
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:23:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A+fZ9v/OyNgfR5E6yhR/lXUHxGJIJT8qlFt+dBrahhE=; b=b+fxSAkmWIx0WrKnhcb2xA3olv
	jIK+XCJe6mkxmn07bJ5F6A/GD2g0xupfFCmkzR14AjVLvp/vAL7CA7bPG6d46Bd8/Nrp2GdUKSNCw
	F+sKvOyT/b/SQBfgMILKLCfR6re40u/K65ogEVHrIGswq2GOTzntzrwrxfCAkMzY4k7dSlyIb911z
	EeUCLGLAP8PFXdAUvionZhz4ePeeciZ6fA6+YKTkxvpomovw88H20uq+FVwNPron1kDvbgKf6/XkY
	BYEcmyXuarnF/+vK58UefFZz4o9Qs1fZtaZjk0ZbhYjxPFAiVxkLdJmtgvplG8X8GluorefCq3GlQ
	7OY1rohA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmae-00000008Dl9-2D4Z;
	Thu, 26 Sep 2024 11:23:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmZ1-00000008DKD-0kkq
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:21:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmZ0-00019G-05; Thu, 26 Sep 2024 13:21:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmYz-001fkr-IK; Thu, 26 Sep 2024 13:21:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmYz-00Fi9J-33;
	Thu, 26 Sep 2024 13:21:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 13:21:40 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240926-spi-gpio-v2-4-3bf7b511c8c0@pengutronix.de>
References: <20240926-spi-gpio-v2-0-3bf7b511c8c0@pengutronix.de>
In-Reply-To: <20240926-spi-gpio-v2-0-3bf7b511c8c0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727349697; l=670;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=S3uPPzLBGhw6R+Yijjx+e0po4cmOYRVleKg6TtVrHyM=;
 b=Y/BbX12xX73mmQliDO1KEG3O9fnjx6PH5vjPy+ewivsq6NqF2Ijd3J82VEGgUyK8Be5/Cn+6V
 V5nPQT8d4qyBQ7zTgIcgAWG/2ZJddvOn8SCZQKAUXk5RgGUvNHvZY3/
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_042139_259785_05A28EB5 
X-CRM114-Status: UNSURE (   9.39  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/5] spi: spi-gpio: deassert CS during setup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The initial CS gpio state is unknown. When it's asserted the first
transfer might fail. Deassert the CS during setup to make sure the
slave gets a fresh start.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/gpio_spi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index 417e8db30e..36e6204283 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -165,6 +165,7 @@ static int gpio_spi_transfer(struct spi_device *spi, struct spi_message *msg)
 
 static int gpio_spi_setup(struct spi_device *spi)
 {
+	gpio_spi_set_cs(spi, 0);
 	return 0;
 }
 

-- 
2.39.5



