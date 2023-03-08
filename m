Delivery-date: Wed, 08 Mar 2023 15:27:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZukz-00Dfaz-3r
	for lore@lore.pengutronix.de; Wed, 08 Mar 2023 15:27:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZuks-0003dO-V7
	for lore@pengutronix.de; Wed, 08 Mar 2023 15:27:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sjPB0ux1aVJRqjSXcW32awjJX3ET8e5mvvej3Fm4i3Q=; b=razlkJ71B2h/egOjEBVaBdAlcN
	S7YK5eQH42W86ljZXXh4nR5C3Ghmzd95gfHtAPl7GCLRGo65rtmNM1x8Elbb7VBeClRJ1c0FTiml8
	DoaIlIPgtz/C1sMRFakSVXbEVXUmwkLETmxdGKZAFKfxZAdgjYiv2294fm9feYJF5F67CdM5TZrk9
	IPM1hXdvi2edQykdx7yD1jUa0iqXnVkT5DT1f7BysNiZiS0DrnMgKxIwUWIM/tSjkDDipq8ih7CKA
	wGBAcvLV8mrWMDBCPshztUYSsp09ELxVNp+ne0ah3kbNpqayzm0T+hnVxqPvVknKp2kY/Dhyowtgo
	CGyRuAqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZujQ-005QpT-0l; Wed, 08 Mar 2023 14:25:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZujF-005Qkz-2e
	for barebox@lists.infradead.org; Wed, 08 Mar 2023 14:25:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuj6-0002wq-BB; Wed, 08 Mar 2023 15:25:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQN-002jG7-Ur; Wed, 08 Mar 2023 15:05:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQM-00E7m9-Fw; Wed, 08 Mar 2023 15:05:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Mar 2023 15:05:40 +0100
Message-Id: <20230308140545.3366052-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230308140545.3366052-1-s.hauer@pengutronix.de>
References: <20230308140545.3366052-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_062517_336284_A98D5AFF 
X-CRM114-Status: GOOD (  19.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] driver: Add rescan hook to struct device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When devices are enabled with a device tree overlay the newly enabled
devices can be probed by doing a of_probe(). This works fine for the
regular platform devices, but doesn't work for devices which are not
probed by the core, but by the subsystem. Prominent examples are I2C or
SPI devices.

This patch adds a struct device::rescan hook that subsystems can
implement to trigger rescanning the device nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 5 ++++-
 include/driver.h      | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index edb082b106..e688075f16 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -153,8 +153,11 @@ struct device *of_platform_device_create(struct device_node *np,
 	 * Linux uses the OF_POPULATED flag to skip already populated/created
 	 * devices.
 	 */
-	if (np->dev)
+	if (np->dev) {
+		if (np->dev->rescan)
+			np->dev->rescan(np->dev);
 		return np->dev;
+	}
 
 	/* count the io resources */
 	if (of_can_translate_address(np))
diff --git a/include/driver.h b/include/driver.h
index f53668711b..205f232753 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -91,6 +91,7 @@ struct device {
 	 * when the driver should actually detect client devices
 	 */
 	int     (*detect) (struct device *);
+	int	(*rescan) (struct device *);
 
 	/*
 	 * if a driver probe is deferred, this stores the last error
-- 
2.30.2



