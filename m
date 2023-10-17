Delivery-date: Tue, 17 Oct 2023 16:55:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTR-00BsfL-ME
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:55:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTP-0003cN-I3
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:55:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Yn+LhGnXMmaI0uLwxlYEyn7+hriUaxAG8kwIHeayDE=; b=g+F0iFxvnUoEdwtLFEHYMUjFm/
	aQKcH8hD9u+HLjiyFQ513ThFh6/j5AHte7dLHAhy6hE72XUE7H6kPlhIIOSWLn2w92Lxl4vSAkRum
	DFAETS4PFn7F1fwuZYNF8UGot9OSipdfmGjq3stgn7Vnj7FLGRZIaNSFTubmBrlH8ZQVYdm7j7T6H
	R4T3E10rOuLs3Ql1gd/BI/WItv8XNp9uYm5x+byvd2Qum7CEHZNWzevoDUkWRxI4KZaZtELKSsFww
	EnLuuooq7wVbq35Kx+3e4FhaG+FDDQl8IqnY9c0OBaJa0/dOAkubHGD14+HKX63vHWH2yjN0oiUHt
	7No0SPUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslSD-00CemZ-2K;
	Tue, 17 Oct 2023 14:53:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ4-00CcMS-2w
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:45 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-Lo
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:12 +0200
Message-Id: <20231017145131.3069283-11-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_075140_973030_C4386448 
X-CRM114-Status: UNSURE (   6.97  )
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
Subject: [PATCH v2 10/29] ARM: boards: i.MX8M: add HAB image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

This adds the habv4-imx8-gencsf.h header to include HAB image commands
which are enabled if CONFIG_HABV4 is enabled.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
[m.felsch@pengutronix.de: split commit]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg | 1 +
 arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg | 1 +
 arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
index d6a536053e7d..a89243a78aed 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
@@ -8,3 +8,4 @@ ivtofs 0x400
 
 flexspi_ivtofs 0x1000
 flexspi_fcfbofs 0x0
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
index a9b592e6242b..755140e7ce51 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
@@ -8,3 +8,4 @@ ivtofs 0x0
 
 flexspi_ivtofs 0x0
 flexspi_fcfbofs 0x400
+#include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
index 3bb44d199c6a..6b05c2c38c03 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mp-evk/flash-header-imx8mp-evk.imxcfg
@@ -8,3 +8,4 @@ ivtofs 0x0
 
 flexspi_ivtofs 0x0
 flexspi_fcfbofs 0x400
+#include <mach/imx/habv4-imx8-gencsf.h>
-- 
2.39.2



