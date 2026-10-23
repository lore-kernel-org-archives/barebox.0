Delivery-date: Fri, 23 Oct 2026 22:06:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKLXT-002OQa-0z
	for lore@lore.pengutronix.de;
	Fri, 23 Oct 2026 22:06:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 233F320293E
	for <lore@pengutronix.de>; Fri, 23 Oct 2026 22:06:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="er/qp5D4";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=S3kQek5s;
	dkim=pass header.d=linux.dev header.s=key1 header.b="mqjMUD/M";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792786015; a=rsa-sha256;
	cv=none;
	b=MD17rzIyNwXBXb+lsnIPep3hmc97dxLJ1IvKFjzLKwROjqPts+s35K3vYRtbyEwVuIOZ6j
	NiW3dh/kAoVayIakucB1ThA9E2PADltJrH29/696t0NI78H5ttMzZk+HGJRTN9v5qBONDq
	S+ytHHWSGEH052F+FwWVGeyqYMXFDeyoaUBddY42nhAYgE596WjCENPzG4/eR/LlXhREYY
	HHoC/WZbCyKnx+J3mqcov8dFUfTn2m1gQ7qyVhtPpuZ9NTrg56seONerOF71g+kTsSnjB6
	DxZ0n0fO7ykfJWlBYmlQek/lqSW3gUUID3/cLz1/Ny7E6g3yaDYtztu4CSTJxg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="er/qp5D4";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=S3kQek5s;
	dkim=pass header.d=linux.dev header.s=key1 header.b="mqjMUD/M";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792786015;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=KztFZVlRLYQflXfaTDaJo6GHaGvsCDNVOn5BtGHkbWY=;
	b=Pqj/9xwqNTXY/SkbKg0iTZUtsxUKvFxS3MuVZ8jQN/916YpxF7L8aWNjVBbx77ECpcn/cx
	gkt2jCDJD/CKyex1bN6eMgrrLv/ph0mFc8/hIvDag1WhYgQX2wKZQWmqNwOLqfkFl0eAAh
	8fU9rQXEsnNZELL5su4fxbt9keVcGw98BmVfqsCzJJ5A9fyOn8TctfhIXuwzlgZYpKFNIG
	6qJE1RThgO6Zxdzgvpp1FmAsxlqvsvL/j68YyAsE1nD7oTdHI+kyP92kHUTzxK3H3OpiX+
	MYsOL3z0MXLrtGEiVcWPgwC1SmEXVj3mG/uPcp/NHMEbCK+l6nEDTPtQ7uuzPg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=KztFZVlRLYQflXfaTDaJo6GHaGvsCDNVOn5BtGHkbWY=; b=er/qp5D4l44U3S
	DrawP+oSkR5vlmAnbIEB7K4MFt+XYAVKTeu5b/DRkdIuNi1pmjC5bbr0XeMqUBQAuyBdPg40aDbO0
	NFx7xk34y+GMlvXqW1Bz+uPzerYiZq7qK1y6whhRbsA6RABCRVeY+/ErOOw4EVL49YLEoeb+f7da9
	ZdOzfzOp6fEIMBGwSZoydq9wYZPGRpEtc0J8zSF8admpPAdGvZunJ8L0LFhSOEMVUNIm6CT/B/BrB
	H1ykAp3OIZ4JzlDFlFnQiorHUuHRl/hJAagAL2ynIZFTqgL3oEb4Nr6alobhdHOi8X9q4D6NOQph5
	rv2mmofKLuRulI4TqmKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLWH-0000000GuDC-0yJl;
	Fri, 23 Oct 2026 20:05:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLWD-0000000GuBf-3TBm
	for barebox@bombadil.infradead.org;
	Fri, 23 Oct 2026 20:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=KztFZVlRLYQflXfaTDaJo6GHaGvsCDNVOn5BtGHkbWY=; b=S3kQek5sI0c4qwPYXGLG1P0ndF
	4d5uIVRpHwbasCK7gGbSlBcQW+QkS9SHVJ43ecyi1Khm0WCsVbrFgI3w4eqC+qR2o/hgzVze8UZD5
	0lK995KHdFP/Nz56N8smmFwjhx13HhZAQ9n0pONNZBKtN1OPPfDUx1CiKaxpA7/kuDnw7H35/Iph7
	ROF3zK7fzspmylMaHnNWmm68E0eSglPaRGdMg4qkkGTzW7Lgmq5GDxUf+gPcVpuI4m/SGRAVlbNOL
	kreO4nmyWL5IuIQr1Z62Kd+Q/fK8Y7pF7YbgVeAF1GbKqHsxHv0R/QgPDsJlRKLPlfWIQcVxIcBNH
	fiudkO5A==;
Received: from out-134.mta1.migadu.com ([95.215.58.134] helo=mta1.migadu.com)
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLWA-0000000ASo6-3OtR
	for barebox@lists.infradead.org;
	Fri, 23 Oct 2026 20:05:36 +0000
X-Envelope-To: barebox@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=OAiry05oOqSgxrjwUTrKh4hDUqgyzzJ7DJ/shTFoquU=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1792785933; v=1; x=1793390733;
 b=mqjMUD/Mj12U4v5hWqQM4cMGTs23XhIiiUrn+k9cs+3dllcoGirClVj9Ub5zK4hUw7TpRC16
 qDuCrfvJGgUO9yw6RTTz9a8inlZbrupO1rDZrIT5vvv8FeDuO2T6Ea6MNON5xSaFv5JaEAoN/WX
 NxSW1CFzP+I9okUtHGBfL7HM=
X-Envelope-To: barebox@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 10981137183cf7c4;
	Fri, 23 Oct 2026 20:05:32 +0000
X-Mizu-Trace-ID: 10981137183cf7c4
X-Migadu-Flow: FLOW_OUT
From: clement.leger@linux.dev
To: Sascha Hauer <s.hauer@pengutronix.de>,
	barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@linux.dev>
Subject: [PATCH 4/5] drivers: watchdog: remove KVX watchdog
Date: Fri, 23 Oct 2026 22:05:06 +0200
Message-ID: <20261023200507.63716-5-clement.leger@linux.dev>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261023200507.63716-1-clement.leger@linux.dev>
References: <20261023200507.63716-1-clement.leger@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_210534_999529_8A5B7575 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Clément Léger <clement.leger@linux.dev> Remove the
    kvx watchdog driver. Signed-off-by: Clément Léger <clement.leger@linux.dev>
    --- drivers/watchdog/Kconfig | 17 ------ drivers/watchdog/Makefile | 1 -
   drivers/watchdog/kvx_wdt.c | 109 [...] 
 
 Content analysis details:   (-0.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [95.215.58.134 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 233F320293E
X-Spamd-Result: default: False [-7.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,linux.dev:s=key1];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[95.215.58.134:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,linux.dev:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	DMARC_POLICY_ALLOW(0.00)[linux.dev,none]
X-Rspamd-Action: no action
X-Stat-Signature: g1x5jdjtwtgujeedjx1bkdnj5dkoikoa

From: Clément Léger <clement.leger@linux.dev>

Remove the kvx watchdog driver.

Signed-off-by: Clément Léger <clement.leger@linux.dev>
---
 drivers/watchdog/Kconfig   |  17 ------
 drivers/watchdog/Makefile  |   1 -
 drivers/watchdog/kvx_wdt.c | 109 -------------------------------------
 3 files changed, 127 deletions(-)
 delete mode 100644 drivers/watchdog/kvx_wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 14fdb7cf68..068d3c93dd 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -83,23 +83,6 @@ config WATCHDOG_ORION
 	help
 	  Add support for watchdog on the Marvall Armada XP
 
-config WATCHDOG_KVX
-	bool "KVX Core watchdog"
-	depends on KVX
-	help
-	  Add support for the KVX core watchdog.
-
-config WATCHDOG_KVX_EARLY_INIT
-	bool "KVX Core watchdog early init"
-	depends on WATCHDOG_KVX
-	help
-	  Activate the watchdog with early initcall
-
-config WATCHDOG_KVX_EARLY_TIMEOUT
-	int "KVX Core watchdog early timeout in cycles"
-	depends on WATCHDOG_KVX_EARLY_INIT
-	default 100000000
-
 config WATCHDOG_BCM2835
 	bool "Watchdog for BCM283x SoCs"
 	depends on ARCH_BCM283X || COMPILE_TEST
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index c49d090f8d..4b7fd74dfa 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -11,7 +11,6 @@ obj-$(CONFIG_WATCHDOG_JZ4740) += jz4740.o
 obj-$(CONFIG_WATCHDOG_IMX_RESET_SOURCE) += imxwd.o
 obj-$(CONFIG_WATCHDOG_IMX) += imxwd.o
 obj-$(CONFIG_WATCHDOG_IMXULP) += imxulp-wdt.o
-obj-$(CONFIG_WATCHDOG_KVX) += kvx_wdt.o
 obj-$(CONFIG_WATCHDOG_ORION) += orion_wdt.o
 obj-$(CONFIG_ARCH_BCM283X) += bcm2835_wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
diff --git a/drivers/watchdog/kvx_wdt.c b/drivers/watchdog/kvx_wdt.c
deleted file mode 100644
index 3e66aa38ba..0000000000
--- a/drivers/watchdog/kvx_wdt.c
+++ /dev/null
@@ -1,109 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Copyright (C) 2018 Kalray Inc.
- */
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <of.h>
-#include <watchdog.h>
-
-#include <linux/clk.h>
-#include <linux/err.h>
-
-#include <asm/sfr.h>
-
-struct kvx_wdt {
-	uint64_t clk_rate;
-	struct watchdog wdd;
-};
-
-static void kvx_watchdog_disable(void)
-{
-	kvx_sfr_set_field(TCR, WUI, 0);
-	kvx_sfr_set_field(TCR, WCE, 0);
-}
-
-static int kvx_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
-{
-	struct kvx_wdt *wdt = container_of(wdd, struct kvx_wdt, wdd);
-	uint64_t cycle_timeout = wdt->clk_rate * timeout;
-
-	/* Disable watchdog */
-	if (timeout == 0) {
-		kvx_watchdog_disable();
-		return 0;
-	}
-
-	kvx_sfr_set(WDV, cycle_timeout);
-	kvx_sfr_set(WDR, 0);
-
-	/* Start watchdog counting */
-	kvx_sfr_set_field(TCR, WUI, 1);
-	kvx_sfr_set_field(TCR, WCE, 1);
-
-	return 0;
-}
-
-static int count;
-
-static int kvx_wdt_drv_probe(struct device *dev)
-{
-	struct watchdog *wdd;
-	struct clk *clk;
-	struct kvx_wdt *kvx_wdt;
-
-	if (count != 0) {
-		dev_warn(dev, "Tried to register core watchdog twice\n");
-		return -EINVAL;
-	}
-	count++;
-
-	kvx_wdt = xzalloc(sizeof(*kvx_wdt));
-	clk = clk_get(dev, NULL);
-	if (IS_ERR(clk))
-		return PTR_ERR(clk);
-
-	kvx_wdt->clk_rate = clk_get_rate(clk);
-	clk_put(clk);
-
-	wdd = &kvx_wdt->wdd;
-	wdd->name = "kvx_wdt";
-	wdd->hwdev = dev;
-	wdd->set_timeout = kvx_wdt_set_timeout;
-
-	/* Be sure that interrupt are disabled */
-	kvx_sfr_set_field(TCR, WIE, 0);
-
-	return watchdog_register(wdd);
-}
-
-static struct of_device_id kvx_wdt_of_match[] = {
-	{ .compatible = "kalray,kvx-core-watchdog", },
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, kvx_wdt_of_match);
-
-static struct driver kvx_wdt_driver = {
-	.name		= "kvx-wdt",
-	.probe		= kvx_wdt_drv_probe,
-	.of_compatible	= DRV_OF_COMPAT(kvx_wdt_of_match),
-};
-device_platform_driver(kvx_wdt_driver);
-
-#ifdef CONFIG_WATCHDOG_KVX_EARLY_INIT
-static int kvx_wdt_early_init(void)
-{
-	/* Set Start watchdog counting */
-	kvx_sfr_set(WDV, CONFIG_WATCHDOG_KVX_EARLY_TIMEOUT);
-	kvx_sfr_set(WDR, 0);
-
-	/* Start watchdog counting */
-	kvx_sfr_set_field(TCR, WUI, 1);
-	kvx_sfr_set_field(TCR, WCE, 1);
-
-	return 0;
-}
-core_initcall(kvx_wdt_early_init);
-#endif
-- 
2.55.0



