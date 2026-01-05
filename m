Delivery-date: Mon, 05 Jan 2026 11:45:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5j-001UUM-3A
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 11:45:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vci5j-0000cP-BS
	for lore@pengutronix.de; Mon, 05 Jan 2026 11:45:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OnAfSI+dlCy1Nho5sXJkBxD9aG31awBKfu3LFmeVPko=; b=lh28AcwF67nm4ybwHzBEOBSRep
	Ruei5vp9NxnBYZHSyKKNdbHolx9rUlvHQL2VM08LGtkuTKUxxv9+PYmd/YHoRT9Mi6eqLL+OQR4jl
	e9pGox3zVAr4RByj+UMzTBATyCK07MftLsmtFMosMvezCpSNxGkORMGuVFXBL6si4wC5kqLnZs8y6
	XklzJWtQ1AN8BarLmIA0Dv3QpsirAUxHCKPCbSaBM/LwkXzifqpJIDXrWzqowJojRsg5U5mmxoR7C
	ByAlRcCG3QfjvnAGuwWItkTNalrX36h987XORwTbnU7blnVD7OwqCeSYwjKqdgj103IWs4KE5XJf7
	8na5EuUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5H-0000000B8Mz-3qo0;
	Mon, 05 Jan 2026 10:45:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vci5C-0000000B8Kj-2zeU
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 10:45:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0000Nz-Q9; Mon, 05 Jan 2026 11:45:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-0099TS-1w;
	Mon, 05 Jan 2026 11:45:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vci59-00000007IHq-2FFf;
	Mon, 05 Jan 2026 11:45:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 11:44:57 +0100
Message-Id: <20260105-riotboard-v1-0-789b844d7e36@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACmWW2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQwNT3aLM/JKk/MSiFN3kVMs0gxQTQ0NTUwsloPqCotS0zAqwWdGxtbU
 AMeChbVsAAAA=
X-Change-ID: 20260105-riotboard-ce9f0d411558
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767609903; l=1097;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=mcZ80ftoBYaSwb7HKwSlUZBsAzeJKZtZyW4kZYl2QHg=;
 b=FM/pr4lZH4ZKQppMwVhTFXr8Jthh3LlXmqzBKE1GRVxiD2NC5ZO0mH7GxTgXXsQjtMfOZuvzo
 t5s77xAosAVAW1GvV5BvYKhNNzyflO/hocV7pF79oWLAjJU99A5o2nr
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_024506_793121_D9B0CAAC 
X-CRM114-Status: UNSURE (   8.59  )
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
Subject: [PATCH 0/4] i.MX6 Riotboard related patches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These are patches I came up with while using the i.MX6 Riotboard.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      ARM: i.MX6: Riotboard: ungate peripheral clocks
      ARM: i.MX6: Riotboard: Add hint how to enable DEBUG_LL
      gpio: Fix GPIOD_ASIS flag
      ARM: boards: remove #define DEBUG in board files

 arch/arm/boards/duckbill/lowlevel.c            |  1 -
 arch/arm/boards/element14-warp7/lowlevel.c     |  1 -
 arch/arm/boards/embest-riotboard/lowlevel.c    |  5 +++++
 arch/arm/boards/freescale-mx28-evk/lowlevel.c  |  1 -
 arch/arm/boards/karo-tx28/lowlevel.c           |  1 -
 arch/arm/boards/phytec-phycore-imx7/lowlevel.c |  1 -
 drivers/gpio/gpiolib.c                         | 15 +++++++++------
 include/gpio.h                                 |  2 ++
 include/linux/gpio/consumer.h                  |  2 +-
 9 files changed, 17 insertions(+), 12 deletions(-)
---
base-commit: f4e96a91debc5fadc5d6280505dea72dbdafe257
change-id: 20260105-riotboard-ce9f0d411558

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



