Delivery-date: Fri, 23 Oct 2026 22:06:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKLXT-002OQd-2m
	for lore@lore.pengutronix.de;
	Fri, 23 Oct 2026 22:06:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AABBF201BAC
	for <lore@pengutronix.de>; Fri, 23 Oct 2026 22:06:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vV5wT5kG;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="aYrQYoL/";
	dkim=pass header.d=linux.dev header.s=key1 header.b=eVtgC6qT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792786016; a=rsa-sha256;
	cv=none;
	b=dXy2ZdpcCBVIkulC2wjxhByOE6fq2jNHf8lw7V8W9EOxGXjRd8VGACb3Oa5RIjEKMufbks
	LRXI2ufXZVT1IpQOuUFQ0+sAygyDw4yE7PeEYWos27DtGPc/Ss+BVjsDmxej9DRZmf8Hwt
	fsfuQeLifNYpYAIrEZnm5Qj+Vr0FV41DYyovJ10lBW7fuWi8wPHWV9Cae7fvMJa52S54gC
	NSk7IaRef68/J9chd9TKBN6RRBa9cn32ulH2bTvmNOBHSZVKC7pWAMGJqhQAZ7nCI1pzzg
	Hd2FhCLA6rN2EjDqKJmpRROZ61IKJKkK184zqC+sqOHKMY+pKpocEzHcu3uFMA==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vV5wT5kG;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="aYrQYoL/";
	dkim=pass header.d=linux.dev header.s=key1 header.b=eVtgC6qT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792786016;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MWT/y3j+xUGW0CQxP8mOFgCHt7EA7GLHr9eM4tckfow=;
	b=Mp1rDCeD/Wzm8eopGEPzRSD6NVkZiND5JjviQ8rXHgTKwlGIb7X0cF05LVAVUOHT6dDhwX
	Ctk/e6fe2rpTY8cwciFjuLBchd1kp9TA4xOPt0ordorTR2SP6fTEUwN9oJALWgIn6k3eBC
	+Tv/lA62Kt96VnQHNq9qzVnyVTnxiXa/i6j4EtOMnI4Y01ZM1W4GEidFHzbS33KS6fIrCQ
	I6GRDK0gIiuj0DyjNOerviEPXUbJThfS88lqSYQUiF7wmI4m+MjgUnJiPsbhnt37g5Iqb0
	fb/FwFXK9rKBbZEM2kaxF+IoSOmYBZmrtvqe5+N7i07mBb2F2Bop2JoJGQbZAQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=MWT/y3j+xUGW0CQxP8mOFgCHt7EA7GLHr9eM4tckfow=; b=vV5wT5kGHrvnKD
	z5s0zUFBkVxlzmgzg2qydMJzU3Pu7i2PYh/s32/Te4sUEQPqdUIzTGhXhhFLVvuw6gyPdptHncG0Z
	MUtm8XwgyspEqAqogalt+OXmPq2brP8yQoct+LLGa0iduK0ZhiedS0DEDRtsGJ5Mv9uRbU/TtZZOU
	ZCpmdTvy2W9EdehSR3FyiJd5yeD9gRA4UIcdAqmD4Y3zdNnHzSuh8xmd1tE/+6gdn34wX9yn1Rvsl
	CFuOf7huN5x2iye01u5aaOsKRWqB1ww4Rkj6fDSQcSP3vwOU8HkLfXubLCSV70O+SBVdy7LoJv6BW
	DviKtgS0SmBch9Kn6gDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLWA-0000000GuBQ-3euU;
	Fri, 23 Oct 2026 20:05:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLW5-0000000GuAE-0jH6
	for barebox@bombadil.infradead.org;
	Fri, 23 Oct 2026 20:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=MWT/y3j+xUGW0CQxP8mOFgCHt7EA7GLHr9eM4tckfow=; b=aYrQYoL/i/xG5GTGGgVWlbdbF8
	iL+2Gv5FWYRxHEKKe/5DfXMexKfo3QG/udwo7g3Z4ED7d+1cKyb9Yl0Z1vaTmsxSrjAPmWOhjVEHS
	FleBlL6uF93dcM+974Ik8mXjTus2GM1KLAPdl8aZltD8h0oLVnvlxZOISN8xh1oveoD2LbWT2zQpN
	+J6acWTmYwyP/C1ne/M7seUJjBkDT0ZQMkVkGsFAatRFza/CKlxusNch9ODJdIu6Vq3KdbURSUidk
	mtt98WgDU+CJsh/iiGL3y1fQZpSoBQKCjuNqquVDXFBATEiUvDdI3FH+qI0byDJBVqv19KOlsZvgO
	AZUsnngA==;
Received: from out-195.mta0.migadu.com ([2001:41d0:1004:224b::c3] helo=mta0.migadu.com)
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLW2-0000000ASlq-0haD
	for barebox@lists.infradead.org;
	Fri, 23 Oct 2026 20:05:27 +0000
X-Envelope-To: barebox@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=m8T48Ix0opzHblg6EzgGk0dGFtZFNU5TzgAribkCtsA=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1792785922; v=1; x=1793390722;
 b=eVtgC6qT//Ei2gKST8ZXc3ustRLfDNqjrzg4C49nkZXXA2RQNukzPZ3nEupC4L/N2Z1vP9y1
 Ya4cBrUWGsBgiUbJs0CNcq11asn1hldL0tgTCc3hdIC4dZyVvkmWYjkiSm414IPEiiMh7GFurWY
 OFFzk9z5vFnqZZTbvjqD5y2U=
X-Envelope-To: barebox@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 498f9f9357867c32;
	Fri, 23 Oct 2026 20:05:21 +0000
X-Mizu-Trace-ID: 498f9f9357867c32
X-Migadu-Flow: FLOW_OUT
From: clement.leger@linux.dev
To: Sascha Hauer <s.hauer@pengutronix.de>,
	barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@linux.dev>
Subject: [PATCH 2/5] drivers: clocksource: remove KVX timer
Date: Fri, 23 Oct 2026 22:05:04 +0200
Message-ID: <20261023200507.63716-3-clement.leger@linux.dev>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261023200507.63716-1-clement.leger@linux.dev>
References: <20261023200507.63716-1-clement.leger@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_210526_415032_51883427 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Clément Léger <clement.leger@linux.dev> Remove the
    kvx timer driver. Signed-off-by: Clément Léger <clement.leger@linux.dev>
    --- drivers/clocksource/Kconfig | 4 --- drivers/clocksource/Makefile | 1
   - drivers/clocksource/kvx_timer.c | 60 [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Rspamd-Queue-Id: AABBF201BAC
X-Spamd-Result: default: False [-7.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,linux.dev:s=key1];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clement.leger@linux.dev,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,linux.dev:+];
	RCPT_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	DMARC_POLICY_ALLOW(0.00)[linux.dev,none];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: p5u8ccx7h4m6h4a1ec8u4d16uywh8u4m

From: Clément Léger <clement.leger@linux.dev>

Remove the kvx timer driver.

Signed-off-by: Clément Léger <clement.leger@linux.dev>
---
 drivers/clocksource/Kconfig     |  4 ---
 drivers/clocksource/Makefile    |  1 -
 drivers/clocksource/kvx_timer.c | 60 ---------------------------------
 3 files changed, 65 deletions(-)
 delete mode 100644 drivers/clocksource/kvx_timer.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index b3ad477ce3..ef4ed6f820 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -48,10 +48,6 @@ config CLOCKSOURCE_EFI_X86
 	bool "EFI X86 HW driver"
 	depends on EFI_PAYLOAD && X86
 
-config CLOCKSOURCE_KVX
-	bool "KVX core timer clocksource"
-	depends on KVX
-
 config CLOCKSOURCE_MVEBU
 	bool "MVEBU clock source" if COMPILE_TEST
 	depends on ARCH_MVEBU || COMPILE_TEST
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index ec12e7babb..3850abd6f2 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -6,7 +6,6 @@ obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
 obj-$(CONFIG_CLOCKSOURCE_DIGIC)   += digic.o
 obj-$(CONFIG_CLOCKSOURCE_EFI) += efi.o
 obj-$(CONFIG_CLOCKSOURCE_EFI_X86) += efi_x86.o
-obj-$(CONFIG_CLOCKSOURCE_KVX)     += kvx_timer.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
 obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
deleted file mode 100644
index eaa8f63b1e..0000000000
--- a/drivers/clocksource/kvx_timer.c
+++ /dev/null
@@ -1,60 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Copyright (C) 2018 Kalray Inc.
- */
-
-#include <common.h>
-#include <clock.h>
-#include <init.h>
-
-#include <linux/clk.h>
-#include <linux/err.h>
-
-#include <asm/sfr.h>
-
-static uint64_t kvx_pm_read(void)
-{
-	return kvx_sfr_get(PM0);
-}
-
-static struct clocksource kvx_clksrc = {
-	.read	= kvx_pm_read,
-	.mask	= CLOCKSOURCE_MASK(64),
-	.shift	= 0,
-	.priority = 70,
-};
-
-static int kvx_timer_probe(struct device *dev)
-{
-	struct clk *clk;
-	uint32_t clk_freq;
-
-	/* Get clock frequency */
-	clk = clk_get(dev, NULL);
-	if (IS_ERR(clk)) {
-		dev_err(dev, "Failed to get CPU clock: %ld\n", PTR_ERR(clk));
-		return PTR_ERR(clk);
-	}
-
-	clk_freq = clk_get_rate(clk);
-	clk_put(clk);
-
-	/* Init clocksource */
-	kvx_clksrc.mult = clocksource_hz2mult(clk_freq, kvx_clksrc.shift);
-
-	return init_clock(&kvx_clksrc);
-}
-
-static struct of_device_id kvx_timer_dt_ids[] = {
-	{ .compatible = "kalray,kvx-core-timer", },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, kvx_timer_dt_ids);
-
-static struct driver kvx_timer_driver = {
-	.name = "kvx-timer",
-	.probe = kvx_timer_probe,
-	.of_compatible = DRV_OF_COMPAT(kvx_timer_dt_ids),
-};
-
-postcore_platform_driver(kvx_timer_driver);
-- 
2.55.0



