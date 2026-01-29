Delivery-date: Thu, 29 Jan 2026 12:35:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQJZ-006ax1-1H
	for lore@lore.pengutronix.de;
	Thu, 29 Jan 2026 12:35:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQJY-00060q-Ct
	for lore@pengutronix.de; Thu, 29 Jan 2026 12:35:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CP9LcaHQp09fPhc8P+IbeqdBNNrx3zxzbIAFFPUNxOU=; b=BJJvuoewELwWpxmH+9X1BesCfR
	Q2dojd3UediCU9M4f37ON78N8+mz9wF8RtMquju1+dewWSSH9l9Sz4yu3UwsPoDPuQbtun4MZTKZM
	9fZcXbxW6hx4h0EBSXlEK5Yfsa4gG0yrTP1j667YGtE58OArhffOMQfHbzF8SrgtauaY/e0MFCMEh
	P2/ZxYManV2jxUyPMH2aAgzfcRun5h/PftW/8W+sogOma7xhBdTSVki3m2VHQVMFstgMrctLQA2ms
	1VZnoFWtRQmQgaMrtm118rBooQ5mhKA0KzTDrWYTqgkcnUNOia9XDUXLSGFJzGMaa0oTd4Vgdl2rJ
	ji7Jvr1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQJ0-000000003Gz-3l0S;
	Thu, 29 Jan 2026 11:35:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQIv-000000003Fu-1yBL
	for barebox@lists.infradead.org;
	Thu, 29 Jan 2026 11:35:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQIr-0005s1-Hi; Thu, 29 Jan 2026 12:35:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQIs-0034np-00;
	Thu, 29 Jan 2026 12:35:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQIr-0000000Da9F-34KU;
	Thu, 29 Jan 2026 12:35:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Jan 2026 12:35:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260129-regulator-ramp-v1-1-6269bd55d432@pengutronix.de>
References: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
In-Reply-To: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769686513; l=2144;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=EcrY68BHBEgtKFzE6s8KFFbMUGm2LphJUZM3azhtXuI=;
 b=7Udo4UOovmMYVuEIxwrYqucNDEYH+6MYwJ4Wc+3e7nmrmBHDuee3C6zdbBEH6l6UwGprINO/8
 ANSrH5fyAltDUmhO8+iK3FTG/RzJdcjR+XX1ZY5oNs4b4aUUArr6FRS
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_033517_522845_CCD160F0 
X-CRM114-Status: GOOD (  17.24  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] regulator: fix handling of off_on_delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux the off_on_delay field in a regulator is described as:

> The guard time (in uS), before re-enabling a regulator

The primary user is the fixed regulator which puts the value of
the "off-on-delay-us" property into it.

In barebox we put the off_on_delay into the enable_time_us field
which is the delay we introduce when turning on a regulator. This
is wrong and fixed in this commit.

The off_on_delay is defined as the time we should take before
re-enabling a regulator. Linux does it the complicated way of
remembering the time when it was last disabled and delays the
re-enabling if necessary. We use the simple approach here of
just waiting the off_on_delay time in the regulator disable path.

Fixes: 26a4c78917 ("regulator: add support for struct regulator_desc::off_on_delay")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 5 ++++-
 include/regulator.h      | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index cd07955894..8ca937e8bd 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -96,6 +96,9 @@ static int regulator_disable_rdev(struct regulator_dev *rdev)
 
 	rdev->enable_count--;
 
+	if (rdev->off_on_delay)
+		udelay(rdev->off_on_delay);
+
 	return regulator_disable(rdev->supply);
 }
 
@@ -309,7 +312,7 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
 	node->dev = rdev->dev;
 
 	if (rdev->desc->off_on_delay)
-		rdev->enable_time_us = rdev->desc->off_on_delay;
+		rdev->off_on_delay = rdev->desc->off_on_delay;
 
 	if (rdev->desc->fixed_uV && rdev->desc->n_voltages == 1)
 		rdev->min_uv = rdev->max_uv = rdev->desc->fixed_uV;
diff --git a/include/regulator.h b/include/regulator.h
index bca2d37d1a..09b4969c74 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -123,6 +123,7 @@ struct regulator_dev {
 	struct device_node *node;
 	int enable_count;
 	int enable_time_us;
+	unsigned int off_on_delay;
 	int min_uv;
 	int max_uv;
 	struct list_head consumer_list;

-- 
2.47.3



