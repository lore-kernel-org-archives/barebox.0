Delivery-date: Mon, 19 Feb 2024 18:29:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7So-00Exsm-2Y
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 18:29:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7So-0000pz-2m
	for lore@pengutronix.de; Mon, 19 Feb 2024 18:29:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aFWFeBjzkdk4MU9GMzAagVNR5uumuvUd5dKpD4hfJQw=; b=BIXf5kiLKwkgzNsah66F9kn0st
	ikM5VzWVSCRjYUNq3M9C23f27BdNpMH0O9qqU78olbNcpuV/wpbywZgCuC1c78YzlupOqdGSLj2/E
	dwziJVfokIeM2TljYU+9Dx72qYb8SszE6CB8ZEsrLl2gIxtkdiS0WngaD02oja+dAh1VRjeW72/6b
	EraKvFtsgfFxVCLI5wDJ6p+cImqGNpxh9hQ/r34Vh+a6IjY7UZX+8pFQs5jAwSm541pBu4EGDJr1L
	MPkWAIrJOeCvsTywz9nubZoL6ISKmKVAdiG1WpOdbC/rqUdjsfaOe/8Dn9WUmx3CInkeGpWsZKxZ/
	3H/EAeUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7SP-0000000BWLk-0uFT;
	Mon, 19 Feb 2024 17:29:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7SK-0000000BWIt-0XSw
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 17:29:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-0000Id-T8; Mon, 19 Feb 2024 18:29:26 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-001h0n-GQ; Mon, 19 Feb 2024 18:29:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-00Fw3A-1M;
	Mon, 19 Feb 2024 18:29:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 18:29:21 +0100
Message-Id: <20240219172925.3798024-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_092928_241486_A6FF143F 
X-CRM114-Status: GOOD (  11.30  )
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
Subject: [PATCH v2 1/5] driver: refactor probe return value handling into switch statement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The return values of the bus probe function called inside device_probe()
are classified into 4 categories and they are checked by if statement
distributed across device_probe().

For clarity and easier changes, collect all of them into a switch
statement and while at it, use helpers to make use of %pe, list_move and
list_del_init instead of opencoding them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/base/driver.c | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 6548aec9b27b..4884e8fda8ef 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -129,12 +129,14 @@ int device_probe(struct device *dev)
 	list_add(&dev->active, &active_device_list);
 
 	ret = dev->bus->probe(dev);
-	if (ret == 0)
-		goto out;
 
-	if (ret == -EPROBE_DEFER) {
-		list_del(&dev->active);
-		list_add(&dev->active, &deferred);
+	depth--;
+
+	switch (ret) {
+	case 0:
+		return 0;
+	case -EPROBE_DEFER:
+		list_move(&dev->active, &deferred);
 
 		/*
 		 * -EPROBE_DEFER should never appear on a deep-probe machine so
@@ -144,19 +146,20 @@ int device_probe(struct device *dev)
 			dev_err(dev, "probe deferred\n");
 		else
 			dev_dbg(dev, "probe deferred\n");
-		goto out;
+
+		return -EPROBE_DEFER;
+	case -ENODEV:
+	case -ENXIO:
+		dev_dbg(dev, "probe failed: %pe\n", ERR_PTR(ret));
+		break;
+	default:
+		dev_err(dev, "probe failed: %pe\n", ERR_PTR(ret));
+		break;
+
 	}
 
-	list_del(&dev->active);
-	INIT_LIST_HEAD(&dev->active);
+	list_del_init(&dev->active);
 
-	if (ret == -ENODEV || ret == -ENXIO)
-		dev_dbg(dev, "probe failed: %s\n", strerror(-ret));
-	else
-		dev_err(dev, "probe failed: %s\n", strerror(-ret));
-
-out:
-	depth--;
 	return ret;
 }
 
-- 
2.39.2



