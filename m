Delivery-date: Fri, 23 Oct 2026 22:06:57 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xKLXT-002OQb-16
	for lore@lore.pengutronix.de;
	Fri, 23 Oct 2026 22:06:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2267D20293A
	for <lore@pengutronix.de>; Fri, 23 Oct 2026 22:06:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QCVSqZiK;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=nsnS6nqz;
	dkim=pass header.d=linux.dev header.s=key1 header.b=IkElIRzF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=linux.dev
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792786015; a=rsa-sha256;
	cv=none;
	b=b8yekRtZJKscdhmK4MFvCW44XvxPNek77kKgaa7RLd+NJ/BwqAOV4aHLgF5Q3wEwCjbEY/
	r4CvyvH9R2m0ESY4gjl0I6LBToBtzmUf4w1WY13HW3rNMJrQK4ScglrFN8skmQ5qdwRPFo
	1wjQqS/1QlX3TCwDyJHVxbIESnJdasE/VtsU0gMAjRn/HvE+bbitrBThN+wBVhzs5Xhqyd
	rqwMTkLawjKdFevnAyxKcXdup7moPp7Tqs5E1pRDEjHUsvCqBkwX7Hu7F1bAreg7ohY2rG
	8sKC2E1dbuiIyWsNKx/hvd3lkl8FW9Xr557P7oTzoJbwzveLRXheCfkqfPZFUQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QCVSqZiK;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=nsnS6nqz;
	dkim=pass header.d=linux.dev header.s=key1 header.b=IkElIRzF;
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
	bh=j5vxrCU4mfCN3EI+2JwfuvDoiuu4uxgCtCVf1hM2QSY=;
	b=XMmrS3vaZjwUlw+mo85SpVQ0Ht4L6apECIPQhazGDTbN6W7ggxmG7Ay5oTeOiORo4hrj3S
	syFaE+WnMry9/v5w+nLmQ/+MuN9KSc9mhwBWwRs+o5a4akhjrqOuBUrnI19wEBCNNt6Bc/
	cYp8TdtVJ6aMNE8bpCLY5VuSm7AcOiHG2SXkoKfzjJy4DJVAcMexY6qOj1oZVeewu2Dtwb
	6BNMCzMr+uYOZ1YDky4zH/MeIe6nmx2J6SIHPcn1WsnzZuce1CljErTchTmqwNPk/chWgt
	S0ZP4z0S7t+qEJ1H+f2Rd2GF9GXlqSJtx8fsMdwAuNsrPFApkNC0ybkpZB4m/A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=j5vxrCU4mfCN3EI+2JwfuvDoiuu4uxgCtCVf1hM2QSY=; b=QCVSqZiKAYdv1S
	DAI0nf9Z2TA+OOIlxievsPcTRd5StUpoISnLDbS8S/bWiHoFRgKiDAXODPvB+kihbuMk5W5REtSv/
	ooQ9WTSsIGTyOzrka9ICI9RG8Pi6DKnHmKfLJNF72ue96se/tKOmMevCWTmLnx3UR5lEPKpUAp9T6
	YT1yhbzffDiZDY/MNu7RpKGWvfqFNxq/A8JDFC8eRC+lUIlfGWWYK4lX9W7+DiOIq6Fh+eImpiV8P
	U2XZ2N5WoiwQCqyyKuRvFMs1ihIP32GgjNUn5U4tiGcsPx2anYUq4o10u+kzx9W0Yj+aoXE/2YHKk
	droRt37nRFg8k/xtG41g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLWH-0000000GuDP-1Nlu;
	Fri, 23 Oct 2026 20:05:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLWB-0000000GuBR-2B25
	for barebox@bombadil.infradead.org;
	Fri, 23 Oct 2026 20:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=j5vxrCU4mfCN3EI+2JwfuvDoiuu4uxgCtCVf1hM2QSY=; b=nsnS6nqzCpMWiZrXyBMOmqY0VF
	UVbZwvQB7TJsnvVIRkUMhlk1W/fXT7Kff61ABOR+Uh9trO4CbMiNQP78ILxatwUoW8OZAIHuN14sz
	OKQOWeWgNOtS66TFgVKevxhv+/Q5j/IIUfA1FU1AEcu3THQUiZoA7UG2DkS9e9Aqfia2jXSQs9HnV
	4AgiNoHbkfob3ET3QvSHuHTllERmthlCDkXIdrOmEyQlsapbjzK4NuuOnfEtrypJjXHlVSRRRvPsW
	bfxSyd4ABiYiBk83UF1/FeYe5YcKZx4PYESnIChi5TcuT8A4jp3mUGqHrmc33fowxeomT+rl5C9tr
	STvPbNPA==;
Received: from out-130.mta1.migadu.com ([95.215.58.130] helo=mta1.migadu.com)
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKLW8-0000000ASmp-1dIE
	for barebox@lists.infradead.org;
	Fri, 23 Oct 2026 20:05:34 +0000
X-Envelope-To: barebox@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=6j/ppQmDwyTr75/KrKnGO8nKKT40QDTmFT7opDT1wQc=;
 c=simple/simple; d=linux.dev;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1792785930; v=1; x=1793390730;
 b=IkElIRzFz7ueB2lGSQUl/BZAOzUhD32wohlnA4W+BTd+JfXgqkqxEhRmtwyMP22wncIk1mrL
 U7V8bIb2kcmWuPbVEVuCnYQydWTxeyMowHeSQrtyfnGui3l2j89yiI+GGgT4+Efjgas/rFs+PHp
 xJ0t509rcAp6ULtPqpfoo1ro=
X-Envelope-To: barebox@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 20dc180d2a705903;
	Fri, 23 Oct 2026 20:05:29 +0000
X-Mizu-Trace-ID: 20dc180d2a705903
X-Migadu-Flow: FLOW_OUT
From: clement.leger@linux.dev
To: Sascha Hauer <s.hauer@pengutronix.de>,
	barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <clement.leger@linux.dev>
Subject: [PATCH 3/5] drivers: nvmem: remove KVX OTP support
Date: Fri, 23 Oct 2026 22:05:05 +0200
Message-ID: <20261023200507.63716-4-clement.leger@linux.dev>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261023200507.63716-1-clement.leger@linux.dev>
References: <20261023200507.63716-1-clement.leger@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_210532_761928_E2B094FB 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Clément Léger <clement.leger@linux.dev> Remove the
    kvx OTP driver. Signed-off-by: Clément Léger <clement.leger@linux.dev>
   --- drivers/nvmem/Kconfig | 7 --- drivers/nvmem/Makefile | 3 -- drivers/nvmem/kvx-otp-nv.c
    | 95 3 files [...] 
 
 Content analysis details:   (-0.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [95.215.58.130 listed in list.dnswl.org]
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
X-Rspamd-Queue-Id: 2267D20293A
X-Spamd-Result: default: False [-7.21 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,linux.dev:s=key1];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[95.215.58.130:received];
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
X-Stat-Signature: sg96yd1nfxapn4q7zhya11deqz74pxg5

From: Clément Léger <clement.leger@linux.dev>

Remove the kvx OTP driver.

Signed-off-by: Clément Léger <clement.leger@linux.dev>
---
 drivers/nvmem/Kconfig      |  7 ---
 drivers/nvmem/Makefile     |  3 --
 drivers/nvmem/kvx-otp-nv.c | 95 --------------------------------------
 3 files changed, 105 deletions(-)
 delete mode 100644 drivers/nvmem/kvx-otp-nv.c

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index d66c4a88fe..b7501798cb 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -106,13 +106,6 @@ config STM32_BSEC_OPTEE_TA
 	  trusted application STM32MP BSEC in addition to the older SMC SiP
 	  service.
 
-config KVX_OTP_NV
-	tristate "kalray KVX OTP Non volatile regs Support"
-	depends on KVX
-	help
-	  This is a simple driver to dump specified values of KVX OTP non
-	  volatile regs.
-
 config STARFIVE_OTP
 	tristate "Starfive OTP Support"
 	depends on SOC_STARFIVE
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index cb5e6d6330..8f1bb0bf44 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -28,9 +28,6 @@ obj-$(CONFIG_STM32_BSEC)	+= nvmem_bsec.o
 nvmem_bsec-y			:= bsec.o
 nvmem_bsec-$(CONFIG_STM32_BSEC_OPTEE_TA) += stm32-bsec-optee-ta.o
 
-obj-$(CONFIG_KVX_OTP_NV)	+= nvmem-kvx-otp-nv.o
-nvmem-kvx-otp-nv-y		:= kvx-otp-nv.o
-
 obj-$(CONFIG_NVMEM_ROCKCHIP_OTP)+= rockchip-otp.o
 obj-$(CONFIG_STARFIVE_OTP)	+= starfive-otp.o
 obj-$(CONFIG_IMX_OCOTP_ELE)	+= imx-ocotp-ele.o
diff --git a/drivers/nvmem/kvx-otp-nv.c b/drivers/nvmem/kvx-otp-nv.c
deleted file mode 100644
index c4591f5822..0000000000
--- a/drivers/nvmem/kvx-otp-nv.c
+++ /dev/null
@@ -1,95 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Copyright (C) 2020 Kalray Inc., Clément Léger
- */
-
-#include <common.h>
-#include <driver.h>
-#include <malloc.h>
-#include <xfuncs.h>
-#include <errno.h>
-#include <init.h>
-#include <net.h>
-#include <io.h>
-
-#include <linux/nvmem-provider.h>
-
-#define OTP_NV_ALIGN		4
-#define OTP_NV_ALIGN_MASK	(OTP_NV_ALIGN - 1)
-
-struct kvx_otp_nv_priv {
-	void __iomem *base;
-};
-
-static int kvx_otp_nv_read(void *context, unsigned int offset,
-			  void *_val, size_t bytes)
-{
-	struct kvx_otp_nv_priv *priv = context;
-	u8 *val = _val;
-	u32 tmp, copy_size;
-	u8 skip = offset & OTP_NV_ALIGN_MASK;
-
-	offset &= ~OTP_NV_ALIGN_MASK;
-
-	while (bytes) {
-		tmp = readl(priv->base + offset);
-		if (skip != 0)
-			copy_size = min(OTP_NV_ALIGN - skip, (int) bytes);
-		else
-			copy_size = min(bytes, sizeof(tmp));
-
-		memcpy(val, ((u8 *) &tmp) + skip, copy_size);
-		skip = 0;
-
-		bytes -= copy_size;
-		val += copy_size;
-		offset += OTP_NV_ALIGN;
-	}
-
-	return 0;
-}
-
-static const struct of_device_id kvx_otp_nv_match[] = {
-	{ .compatible = "kalray,kvx-otp-nv" },
-	{ /* sentinel */},
-};
-MODULE_DEVICE_TABLE(of, kvx_otp_nv_match);
-
-static int kvx_otp_nv_probe(struct device *dev)
-{
-	struct resource *res;
-	struct nvmem_device *nvmem;
-	struct nvmem_config econfig = { 0 };
-	struct kvx_otp_nv_priv *priv;
-
-	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	res = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(res))
-		return PTR_ERR(res);
-
-	priv->base = IOMEM(res->start);
-
-	econfig.name = "kvx-nv-regbank";
-	econfig.stride = 1;
-	econfig.word_size = 1;
-	econfig.size = resource_size(res);
-	econfig.dev = dev;
-	econfig.priv = priv;
-	econfig.reg_read = kvx_otp_nv_read;
-
-	dev->priv = priv;
-
-	nvmem = nvmem_register(&econfig);
-
-	return PTR_ERR_OR_ZERO(nvmem);
-}
-
-static struct driver kvx_otp_nv_driver = {
-	.name	= "kvx-otp-nv",
-	.probe	= kvx_otp_nv_probe,
-	.of_compatible = DRV_OF_COMPAT(kvx_otp_nv_match),
-};
-postcore_platform_driver(kvx_otp_nv_driver);
-- 
2.55.0



