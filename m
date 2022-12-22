Delivery-date: Thu, 22 Dec 2022 15:31:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8MbJ-0051Tl-RU
	for lore@lore.pengutronix.de; Thu, 22 Dec 2022 15:31:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8MbG-0006lM-Qq
	for lore@pengutronix.de; Thu, 22 Dec 2022 15:31:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mhMcsSsMwtRrdQC2a6BEl9e8EjicU2yK+RtkHCW0mq4=; b=t00wI1tTdtWtJp36VdKj6CmCpv
	fEWHZvjQHJ4VaeeOu/f6xGvYUS4AdIG/tNjXtAtbw3zbynrZ4iAUL8jDSKa2rLeCmWkyAYAUrOw4L
	2rkto8yb9Z054LLH0IK6OdQHnRcvNkKNAzlLKLW0LMTcJ/npjDop8IeXYiW5outLwK/kIDrRwu/8a
	ewBJ1fA5hAGXtx6q/TPW7YuqE4ke68qaV6q24jfsDkq8NCfrwQBTXr5CglkTiyPoJtR/t/xW78q1G
	vwtHrTH5zZmPH+Vp1eGkR8CiUHBSFD4mwDMTe2NqxxjkedTY3qKXGeAGi8dQ+e2nsVSYkG6TthOqs
	aKDRkqWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MZT-00Cxtf-OO; Thu, 22 Dec 2022 14:29:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MIv-00ComY-3T
	for barebox@lists.infradead.org; Thu, 22 Dec 2022 14:12:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIr-0003uX-4E; Thu, 22 Dec 2022 15:12:09 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIq-0011pk-D0; Thu, 22 Dec 2022 15:12:08 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p8MIp-00Cx8x-7S; Thu, 22 Dec 2022 15:12:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de,
	ore@pengutronix.de,
	=?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Dec 2022 15:11:59 +0100
Message-Id: <20221222141201.3087192-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_061213_360998_FC37EB0A 
X-CRM114-Status: GOOD (  13.33  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] ARM: i.MX6: skov: fix LVDS deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep probe, barebox will have registered most drivers by the time
it walks the device tree and will then keep probing devices on demand.

This simplifies the common case of devices having dependencies on each
other, but on the other hand expects board code to be deep probe aware.

The Skov board code already takes care to explicitly probe the GPIO
controllers it requires, but it also optionally enables and registers
devices that were initially disabled in the device tree.

It's paramount that devices are only registered _after_ the relevant
device tree parts are rewritten. This was currently not accounted for,
which led to LDB device being probed before its child lvds-channel node
was enabled: We thus ended up with a LDB device, what the driver
couldn't do anything with:

  mode_name: invalid:0 (type: enum)

Fixes: 31d2289da2f3 ("ARM: boards: skov-imx6: start using deep-probe")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 7ddc6e937b0b..8f4d7efe4278 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -474,14 +474,15 @@ static void skov_init_ldb(void)
 		return;
 	}
 
-	of_device_enable_and_register(ldb);
-
-	/* ... as well as its channel 0 */
+	/* First enable channel 0, prior to enabling parent */
 	chan = of_find_node_by_name_address(ldb, "lvds-channel@0");
 	if (chan)
 		of_device_enable(chan);
 	else
 		dev_err(skov_priv->dev, "Cannot find \"lvds-channel@0\" node\n");
+
+	/* Now probe will see the expected device tree */
+	of_device_enable_and_register(ldb);
 }
 
 /*
-- 
2.30.2



