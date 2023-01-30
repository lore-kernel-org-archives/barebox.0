Delivery-date: Tue, 31 Jan 2023 00:46:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMdrQ-008B3q-J9
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 00:46:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMdrN-0008LZ-VB
	for lore@pengutronix.de; Tue, 31 Jan 2023 00:46:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GpQE9O6m7LnW33OHh6+vd9+HzHDQ3t3Ip6GBoqm+7ms=; b=y0qOjzcgl9caIvkv94kvzAMsp4
	PiUzYr7zJUu5+XlNZM7nFJIFBdyX+QbY/LinKkKeDkGu2cQellisrXz/LoB6Mzliwlm3/e5MYwaYW
	z93BVzthxO2PbprWQEZciyWcerg/Y9M9sO4rkOl/67yL2fByiuR0DVdW1IvB8B6j9LG24dW/hqkCN
	le6s2Cj99qDtBjfm+tHNkv2J58cIP8jgKUSdb5ZkqI861DdYmWYYXM7pOy4EqVWL/gPLEMGqzG0ru
	oC0ROrOGCkLU3a74mwzxOCr9V2J9g71SKaQAzl4DmsVdaOnu1+04mx8CZ9ujGIhtEUnt0xGmGKctj
	yArmuhRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMdpq-005o54-G8; Mon, 30 Jan 2023 23:45:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMdpj-005o4J-Gt
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 23:45:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMdpg-0007nX-CX
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 00:45:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMdpg-001ZMT-LA
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 00:45:03 +0100
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMdpe-004hum-SK
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 00:45:02 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 31 Jan 2023 00:45:01 +0100
Message-Id: <20230130234501.1122060-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230130234501.1122060-1-m.felsch@pengutronix.de>
References: <20230130234501.1122060-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_154507_600864_6BC07822 
X-CRM114-Status: UNSURE (   9.88  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] spi: atmel-quadspi: remove struct platform_device usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The pdev member is unused neither do have barebox support for 'struct
platform_device' so remove the usage.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/spi/atmel-quadspi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 55ebccc877..973d425a0d 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -157,7 +157,6 @@ struct atmel_qspi {
 	void __iomem		*mem;
 	struct clk		*pclk;
 	struct clk		*qspick;
-	struct platform_device	*pdev;
 	const struct atmel_qspi_caps *caps;
 	u32			mr;
 };
-- 
2.30.2



