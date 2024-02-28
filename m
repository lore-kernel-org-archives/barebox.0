Delivery-date: Wed, 28 Feb 2024 17:06:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRV-00DfQ0-12
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 17:06:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRT-0008QL-19
	for lore@pengutronix.de; Wed, 28 Feb 2024 17:06:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A8x68K8CoVdlSPoTxBbBG9FVoZ/3gPpC/89NPF1nYM8=; b=3uxkwI56uElK86HdFXoy8S7Dyt
	FIzuGD15cw4NgTzpuMo8FZ4htF8Xm6oYUfcFuMa/JtoSf1JcFi7qO5UAw5mFhby4ZKq1HDZfKmlM9
	D1yIOOlCDe2mihG5Wan2ukwy4gANbOCvMH1b6PQw0nlONXO9ipcUuT2MWydJNUAyfyw/UKg6nJdLz
	c8M46/INoWvvYi6DlPm4JBQboYdUX1oGHM+RaEqHIolACEUmfIsRm1iQq1ek2Gzbh/Ha39boj/hy1
	6jFbqTVLEL/TtEd+M5efBicc/hKshhLeZrMmud5BvGsHP8VasxiLVMafPZZRa1fdMnk7p3JPLMczX
	WZNGyDQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMR1-0000000A27s-1Q5H;
	Wed, 28 Feb 2024 16:05:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMQu-0000000A244-0oSf
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 16:05:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-000833-Vc; Wed, 28 Feb 2024 17:05:22 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-003QfS-Iu; Wed, 28 Feb 2024 17:05:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQr-006fql-3B;
	Wed, 28 Feb 2024 17:05:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Feb 2024 17:05:14 +0100
Message-Id: <20240228160518.1589193-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
References: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_080524_310081_EE68B271 
X-CRM114-Status: GOOD (  11.17  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/6] driver: make struct bus_type::probe optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Newly introduce soc_bus_type doesn't define .probe, which would crash
once a driver is registered on that bus. Do as Linux does and defer
to the driver probe function if there's no bus probe function and
treat non-existence of either as a successful probe.

This has the added benefit that it will allow us to drop very simple bus
probe functions that just call the driver probe and do nothing else.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index babc08f8b6b2..b2d428b70550 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -137,7 +137,12 @@ int device_probe(struct device *dev)
 
 	list_add(&dev->active, &active_device_list);
 
-	ret = dev->bus->probe(dev);
+	if (dev->bus->probe)
+		ret = dev->bus->probe(dev);
+	else if (dev->driver->probe)
+		ret = dev->driver->probe(dev);
+	else
+		ret = 0;
 
 	depth--;
 
-- 
2.39.2



