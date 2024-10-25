Delivery-date: Fri, 25 Oct 2024 09:31:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4EnA-000XON-0S
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 09:31:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4EnA-0006tR-QD
	for lore@pengutronix.de; Fri, 25 Oct 2024 09:31:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/HDBFqdbmDtKKTgalaIK/sPcN0PB3cjblk7E+cUCHR4=; b=CkcNKpCZdGHfCuTjR/FIDqjMRI
	HkVCwLHlP7RBbSZrQLq0ah9SU9YTT+Em1uwoqRBTaGQhi0sLk8fNvLJXo1a32T0ZGaW28auVr4E9H
	4Ay0wH7ndHkd98vTw11fMx9kF6/gv/ycsWJgnvpR/FN6N0LDv8h/1vE7KyyhJb1dFicQfTK5ndmP+
	Bds1MVk+72S3QipcxUh4Lz3DDhqlG6Dx5BrbX5ZmjhBSJKyQpQPB3jWuUomj/GBz9MWN4WhvFKOr/
	9JPbW3j4EwSgvsjoh8EEPaghDznCS9piFx8z6L4rk6L5rIqXy/FWy1h+BiBfkgd1FWU+a8u7NONWo
	EtF+zWZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EmX-00000002oQC-1Mw0;
	Fri, 25 Oct 2024 07:30:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EmT-00000002oPG-2ZFr
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 07:30:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-0006ZQ-Cb; Fri, 25 Oct 2024 09:30:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-000KI6-0S;
	Fri, 25 Oct 2024 09:30:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-008HjI-0H;
	Fri, 25 Oct 2024 09:30:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 09:30:23 +0200
Message-Id: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA9JG2cC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDAyNT3UyjZN2k0uK80lzdpBTjpJTUVLNkg2RjJaCGgqLUtMwKsGHRsbW
 1AP3msqdcAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729841428; l=1178;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WR9Hkp84GSA9HGoGKV5+LPkZIx31mC/G7uV30uouca0=;
 b=ao8T6G3FIMQnmDxSDc06aoYoU5eBwFAS/LKzBVbJg/eiCDllwGlfdeznDiE/lUCtSqEhnkzb+
 a+EZmSut4XqAiSFIOFTJsD9f/2iUVysKPiYgw11e1x8eFgY3940591V
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_003045_689118_00521A04 
X-CRM114-Status: UNSURE (   6.91  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] I2C: assign bus numbers from device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Like done with SPI controllers already let's assign the I2C bus numbers
from device tree as well. This avoids confusing bus numbers when the
probe order doesn't match the intended bus number ordering or when
other I2C busses with dynamically assigned numbers are probed in
between.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      i2c: set adapter.nr explicitly to -1
      i2c: get adapter.nr from device tree
      i2c: start dynamic I2C bus numbers at 32

 drivers/i2c/busses/i2c-at91.c       | 2 +-
 drivers/i2c/busses/i2c-bcm283x.c    | 2 +-
 drivers/i2c/busses/i2c-cadence.c    | 2 +-
 drivers/i2c/busses/i2c-designware.c | 2 +-
 drivers/i2c/busses/i2c-imx.c        | 2 +-
 drivers/i2c/busses/i2c-mv64xxx.c    | 2 +-
 drivers/i2c/busses/i2c-rockchip.c   | 2 +-
 drivers/i2c/busses/i2c-stm32.c      | 2 +-
 drivers/i2c/busses/i2c-tegra.c      | 2 +-
 drivers/i2c/i2c.c                   | 5 ++++-
 10 files changed, 13 insertions(+), 10 deletions(-)
---
base-commit: e55e492573e33823f25935ee00fe7fa7bf2c5c90
change-id: 20241025-i2c-busnum-bd3bdee6c0c3

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



