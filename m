Delivery-date: Tue, 11 Jun 2024 10:28:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGwrO-0049DY-10
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 10:28:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGwrN-00045U-NQ
	for lore@pengutronix.de; Tue, 11 Jun 2024 10:28:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5o3lIBkA1QYv2OPQmqLIUV2lCK7yjN5f2myZckvnMm8=; b=IjA5Km1zQ7qtAghxpMVL/Lf6T0
	13oB5Rz+Y0oT1D3qqf3HxxNjLbElIblOiPJjXO2EEiG/yrItDjST+/B9dy/2FQXKGxqgU5+Gx95wr
	YoRxLvJtEVfEGlsCuo9tix+h8tKjHULTXS4WmhxAYVyWtDwQXj/kp5FoqU2OoJRO1jZap0gnJk16e
	lEMB752mRFvUDEs+BVJV5clU0SsUlpmeUw6xaMbPEDbHeSMgHsGdasyD5/K3YejOwAamn+C1shN5n
	6V3/JCcVKL4rEmI+Yx0Jn4qFjPT2QygZd60oxKK5SFyLtOnIvPELeciNIA+eKbELqwnUX2UeKTsOy
	0RAecwPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGwqj-000000086lV-1OoF;
	Tue, 11 Jun 2024 08:27:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGwqb-000000086iZ-3jB6
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 08:27:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGwqZ-0003yY-G4; Tue, 11 Jun 2024 10:27:15 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGwqZ-001VAV-3e; Tue, 11 Jun 2024 10:27:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGwqZ-00CQy7-05;
	Tue, 11 Jun 2024 10:27:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Sven=20P=C3=BCschel?= <s.pueschel@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 10:27:14 +0200
Message-Id: <20240611082714.2963587-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_012718_585994_22D1E6D1 
X-CRM114-Status: GOOD (  10.98  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] serial: stm32: suppress -EPROBE_DEFER messages using dev_err_probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A return code of -EPROBE_DEFER is not necessarily an error as the clock
driver may indeed be probed later. Use dev_err_probe to silence the
error message in this situation and to store it for later use if the
probe is deferred permanently.

Co-developed-by: Sven Püschel <s.pueschel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_stm32.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index 3e18a2c152af..eebae6f6ee9e 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -167,14 +167,14 @@ static int stm32_serial_probe(struct device *dev)
 
 	stm32->clk = clk_get_for_console(dev, NULL);
 	if (IS_ERR(stm32->clk)) {
-		ret = PTR_ERR(stm32->clk);
-		dev_err(dev, "Failed to get UART clock %d\n", ret);
+		ret = dev_err_probe(dev, PTR_ERR(stm32->clk),
+				    "Failed to get UART clock\n");
 		goto io_release;
 	}
 
 	ret = clk_enable(stm32->clk);
 	if (ret) {
-		dev_err(dev, "Failed to enable UART clock %d\n", ret);
+		dev_err_probe(dev, ret, "Failed to enable UART clock\n");
 		goto io_release;
 	}
 
-- 
2.39.2



