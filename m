Delivery-date: Sun, 20 Feb 2022 13:51:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlgQ-004x2d-Ge
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:51:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlgO-0002Lo-C7
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:51:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3oJ+5TL3gNszyPJ1WTXuhDATOkrhCkdHK3NZo3pUBQ=; b=kR2PAaHnIYL6N6
	Eujz0pD/fEVyAoABiDnr9AOC/IwttDYHNerWGKfgX8Vad7E8KJ8QFoQxRGyibCIKkA61cAiDGNQwh
	/YikHi6Fq8OZPWBQa2xmecMyUU8lYSfxuclqo2z2SsUaEzAivtbHmbPLNaHj3kn6jEpYOSLXSRZWY
	rmTWNr/jejAJjU2b9Fkq1CfkbQ9HSZfPAUsoDVmeRmFc2Fc0K8D06Km1qny6tqcXvapwyxlbs8GwT
	Ov4r5O1spdBpvc4GOPKnmGVgDRM7+gszWpDrhjwgoqL5Ds9MWlUaZ4Mm/kObj+30l1FHDkYDWQO4Z
	TKqYJKmiW5IezsVDdIdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLlei-001J81-D8; Sun, 20 Feb 2022 12:49:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLldA-001I7j-1D
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:48:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000aA-Nb; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcr-00CoQ6-EK; Sun, 20 Feb 2022 13:47:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:29 +0100
Message-Id: <20220220124736.3052502-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044800_155776_B64993E4 
X-CRM114-Status: UNSURE (   8.73  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 17/24] serial: stm32: bail if clock_get_rate returns zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While this shouldn't happen in a well-behaving system, with SCMI barebox
may become dependent on the firmware to provide a non-zero rate here.

Sanitize the value to avoid a division -by-zero.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_stm32.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/serial/serial_stm32.c b/drivers/serial/serial_stm32.c
index 271897f1743c..f1d4c6de9074 100644
--- a/drivers/serial/serial_stm32.c
+++ b/drivers/serial/serial_stm32.c
@@ -41,6 +41,8 @@ static int stm32_serial_setbaudrate(struct console_device *cdev, int baudrate)
 	unsigned long clock_rate;
 
 	clock_rate = clk_get_rate(stm32->clk);
+	if (!clock_rate)
+		return -EINVAL;
 
 	int_div = DIV_ROUND_CLOSEST(clock_rate, baudrate);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

