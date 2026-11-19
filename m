Delivery-date: Thu, 19 Nov 2026 20:00:02 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xU7MX-001Bs4-0w
	for lore@lore.pengutronix.de;
	Thu, 19 Nov 2026 20:00:02 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6860A205B36
	for <lore@pengutronix.de>; Thu, 19 Nov 2026 19:59:57 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y910AFOv;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795114797;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=1xsq7LzwgqejtxVuOQvZlZjpa2cxweqvSW5q4Bj21X4=;
	b=FrMFryzp7sz4JjWSAFJYphCUDyoQekizaou3n22p9vnSkdX9NSUMLxY5zdLYOnrnXqx1pl
	HGJo2QbimQjSBHZEcCS3/7RnEtCWEThhNEUXxNldc8qR9tKrINhQz188RzuJi8uv+EjGDi
	X0sgYFCeCmNsCHAuVTIwfOv43ftpGncpTDcAZjNoBj5KBWipd4MeHUD+nBc5t4tQresiBR
	SfnHgHqZ5vo9VJHpXeMJGOrtHhOHGorBOaqLSdxNGc66Z2dQyzWaQw/2lc9gttdxC4+Tg5
	r3ySqLeDZo+R1icvjhih2YPt9QE3MRqISkupHwXbvzqcEN0X6li/2Mk+X6UPrg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795114797; a=rsa-sha256;
	cv=none;
	b=HicTEvXNlEnF5yFIJ/glyYH1ledMVmZpBdJDO3NWalB7mjrcUpBKWGDyx1Kubiq9xxnSyd
	+r6eODcVI3IgEOHl7qgWYoi9K7RObQI1+zMLjk1qF0csTC85ZHoorq8LKWEJJwS3Y1ckQE
	tIXY/MGgiI4pM5v90a8l1VCPGgqX5n0ioh9hhIgeDk7BQv8FU2q7h56t5sZL+9XoK1e/Ba
	zYpijfq5tyx4MKoz1lT8/Gp2Kfd8npeqDjhfbBjwbXUPGsD4cMVB8ZAgtSICEuX8VOczQC
	Yaq7AfLS7OEqKSL6DMYptQ2KbBW+dUgncimr7NJn7ZhR0QEeJs+8SsfTIYCnpw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=y910AFOv;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=1xsq7LzwgqejtxVuOQvZlZjpa2cxweqvSW5q4Bj21X4=; b=y910AFOvQ5wiPB
	iJ3tOGwmJIIFCMm0yyK/keDO5hPPdLj/blDYrm4gTV7HUpljPN1+M4azO+cWXmPakeNoPGMGDhPe1
	iJbfPogKTnBNiUupoZAb3zFFsZf0U5nYrh8w+Iw0C5RIkQX3vxyfDx7xDrjY5zQpJ15zSmYEqgFA/
	D1i0JRSVrfYaX5Yq96VYnHgNoMMDLNmTgr0GPkhCmoV7DrHS4dGzK5ZLQ2EJKLQL3soKW0Sddkebw
	cAOUrdMK8s+vtqL031FWarMrvUcWA9NgniMVcQaj8GaHbXJZFAaDV7TEBrJhXQrNwANM7JjXkXvKb
	bhmJWywhMK6KDXjqVybQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LI-0000000D7pK-2rdS;
	Thu, 19 Nov 2026 18:58:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU7LC-0000000D7li-11uP
	for barebox@lists.infradead.org;
	Thu, 19 Nov 2026 18:58:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xU7L7-0003xr-TJ; Thu, 19 Nov 2026 19:58:33 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/6] driver: pass the requested node to the rescan hook
Date: Thu, 19 Nov 2026 19:58:12 +0100
Message-ID: <20261119185828.92337-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261119185828.92337-1-a.fatoum@barebox.org>
References: <20261119185828.92337-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_105838_354825_A029C88F 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  of_device_create_on_demand() rescans the parent device, so
    a bus like I2C or SPI registers the device for the requested node. The hooks
    register every child that has no device yet though, not only the [...] 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,barebox.org];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 6860A205B36
X-Rspamd-Server: mx1
X-Stat-Signature: sn6fam7twciwx944qfyxzuq7fqzfdmcp

of_device_create_on_demand() rescans the parent device, so a bus like
I2C or SPI registers the device for the requested node. The hooks
register every child that has no device yet though, not only the one
asked for.

Let's pass the node along, so the hooks can restrict themselves to it.
NULL still means all children. The I2C and SPI hooks ignore the node
for now, so there is no functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/i2c/i2c.c     | 2 +-
 drivers/of/platform.c | 4 ++--
 drivers/spi/spi.c     | 2 +-
 include/device.h      | 5 +++--
 include/driver.h      | 4 ++--
 5 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 407c4db8a76a..cfc340736309 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -485,7 +485,7 @@ int of_i2c_register_devices_by_node(struct device_node *node)
 	return 0;
 }
 
-static void i2c_hw_rescan(struct device *dev)
+static void i2c_hw_rescan(struct device *dev, struct device_node *np)
 {
 	struct i2c_adapter *adap;
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 0346d87a2b61..12a1b759fc07 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -138,7 +138,7 @@ struct device *of_platform_device_create(struct device_node *np,
 	 * devices.
 	 */
 	if (np->dev) {
-		device_rescan(np->dev);
+		device_rescan(np->dev, NULL);
 		return np->dev;
 	}
 
@@ -450,7 +450,7 @@ static struct device *of_device_create_on_demand(struct device_node *np)
 		return NULL;
 
 	if (!np->dev && parent->dev)
-		device_rescan(parent->dev);
+		device_rescan(parent->dev, np);
 
 	/* Create all parent devices needed for the requested device */
 	parent_dev = parent->dev ? : of_device_create_on_demand(parent);
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 53bcd22b8c56..b1806a2ea445 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -199,7 +199,7 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
 	}
 }
 
-static void spi_controller_rescan(struct device *dev)
+static void spi_controller_rescan(struct device *dev, struct device_node *np)
 {
 	struct spi_controller *ctrl;
 
diff --git a/include/device.h b/include/device.h
index 7abeed9c460f..34b45a9bb014 100644
--- a/include/device.h
+++ b/include/device.h
@@ -59,7 +59,8 @@ struct of_device_id;
  * @dma_offset: DMA offset.
  * @detect: For devices which take longer to probe, this is called when the driver
  *          should actually detect client devices.
- * @rescan: Callback to rescan the device.
+ * @rescan: Callback to rescan the device. If @np is not NULL, only the
+ *          device for that child node needs to be created.
  * @deferred_probe_reason: If a driver probe is deferred, this stores the last error.
  */
 struct device {
@@ -119,7 +120,7 @@ struct device {
 #endif
 
 	int (*detect)(struct device *);
-	void (*rescan)(struct device *);
+	void (*rescan)(struct device *dev, struct device_node *np);
 
 	char *deferred_probe_reason;
 };
diff --git a/include/driver.h b/include/driver.h
index a93da2e06f62..ec1f1ccfb85e 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -98,10 +98,10 @@ static inline void put_device(struct device *dev) {}
 void free_device_res(struct device *dev);
 void free_device(struct device *dev);
 
-static inline void device_rescan(struct device *dev)
+static inline void device_rescan(struct device *dev, struct device_node *np)
 {
 	if (dev->rescan)
-		dev->rescan(dev);
+		dev->rescan(dev, np);
 }
 
 /* Iterate over a devices children
-- 
2.47.3



