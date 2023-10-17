Delivery-date: Tue, 17 Oct 2023 16:56:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUU-00BspE-Rn
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:56:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslUT-0004sS-J4
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:56:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=63ry8cyheQDfAdR8d8sGVj9NNYceckKyI5/Xxg6jnzc=; b=pMG6QoxMZ9SX/W26rTk7BQd/UO
	bnnprNZGEytKNS4wk5JueIH2/Qkur7PGgsWC0y3TZsC0QFgXxzxMflP6hPsaSvPy3Pet50hVaJc3v
	OGqwiCK72lfqENuBBcsK9yuXpIk/bfqpajmJOx4DVfgZfCJiUzHmuSgde1smSzJ7JPCsi3EzCHiRy
	B2RzgVRx0Oxs3GF0leaisvYkfdmcIaqd6kl3lFm6PTPqe0qXOZw9876KgH2sjq0hEo49ZGabbjaiq
	/cnAQSRpjWf58OLzdJqhcMqWp3cY/R+Ya1Me4X9R0p91dvnEappOx3FXwRo2ihrwqggSt1kpqvlRH
	SSijpJag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslTC-00CfY5-0u;
	Tue, 17 Oct 2023 14:54:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQF-00CchZ-30
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:51:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=63ry8cyheQDfAdR8d8sGVj9NNYceckKyI5/Xxg6jnzc=; b=FcDVED8No2xtqnrpkRefmmIm0k
	NOhB6JpLa3R6a8Pir8keFGRGPwYz9mkBdeTH3DWPLP/2cO3qPkJDLHHHxNUW9xJ1uXJUCL5SqHde/
	fA5dfGzNaPtWZ0QQj0pPZYSEYjrGNaxyemyNMtsDvrZEoDcQw6ysukx+GT8nEILZ8wYKrUH8QqU5q
	hF6VuCL5cnU6znFknEuosIGATFe4JaGNYV0RGfb5zf3E2T8RhORY40BlAMBj1hNe76otLBaISJIws
	W95QksWd1NSze73VZQ4nuykpMcA6fq/ND74P6xF/OWclqHfTbZAhbhbt1qKi0Lcwc0o+l5oXXWXHU
	fipwG0cQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ8-007AEd-05
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-P3
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:14 +0200
Message-Id: <20231017145131.3069283-13-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155144_243934_880C2E48 
X-CRM114-Status: UNSURE (   8.48  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 12/29] ARM: boards: i.MX8M: make use of new flexspi-imx8m{m,p}-cfg.h header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use the new config header to make it more user-friendly.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg | 3 +--
 arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg | 3 +--
 arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg | 3 +--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
index a89243a78aed..d1d223a8ee7a 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
@@ -6,6 +6,5 @@ loadaddr 0x007e1000
 max_load_size 0x3f000
 ivtofs 0x400
 
-flexspi_ivtofs 0x1000
-flexspi_fcfbofs 0x0
+#include <mach/imx/flexspi-imx8mm-cfg.h>
 #include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
index 755140e7ce51..f47ea082667c 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
@@ -6,6 +6,5 @@ loadaddr 0x912000
 max_load_size 0x3f000
 ivtofs 0x0
 
-flexspi_ivtofs 0x0
-flexspi_fcfbofs 0x400
+#include <mach/imx/flexspi-imx8mp-cfg.h>
 #include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
index 6b05c2c38c03..c896c9f24832 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
@@ -6,6 +6,5 @@ loadaddr 0x920000
 max_load_size 0x3f000
 ivtofs 0x0
 
-flexspi_ivtofs 0x0
-flexspi_fcfbofs 0x400
+#include <mach/imx/flexspi-imx8mp-cfg.h>
 #include <mach/imx/habv4-imx8-gencsf.h>
-- 
2.39.2



