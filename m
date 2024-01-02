Delivery-date: Tue, 02 Jan 2024 12:02:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcXZ-000UnG-1R
	for lore@lore.pengutronix.de;
	Tue, 02 Jan 2024 12:02:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKcXY-0002kZ-DQ
	for lore@pengutronix.de; Tue, 02 Jan 2024 12:02:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FN9XquJMWEClQYjGnsICA9z4X2kYFfGFrz05LHO9ayQ=; b=U8YPHULzXZFOD6ieeda3uhPn3E
	9ZX9CvLHAcITy0jkWldbKIcSeTc4bvTi/Y+B3lVj/ki2s0CgxTN+I2GRlH9UaNPru69S62T95/c/s
	sE9ErVVlV9Ge8v6o98+f1ZsobnQGdfSb8X2DpxIbF3+f9NZ0zYILZ51ucTQ9QzE7vq1HBKwVd/oYk
	CR5LYDuM7ohdf0teXsPjnAKHRP66u/SWDjzu0EUHvMsLHiMrHhuDktVcSelJzD8Yncf3ISI7K3jQl
	2KqCPskniQek6/cEud2ZGZIbj0H/1dYrtmLJi97HR3+NS+FQKwHi7f8mGXgxtrhhtxF+LYDLepCMO
	M8mLht+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWZ-007f66-0c;
	Tue, 02 Jan 2024 11:01:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKcWV-007f4L-2X
	for barebox@lists.infradead.org;
	Tue, 02 Jan 2024 11:01:29 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rKcWU-0002Cz-GC
	for barebox@lists.infradead.org; Tue, 02 Jan 2024 12:01:26 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  2 Jan 2024 12:01:16 +0100
Message-Id: <20240102110118.280032-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240102110118.280032-1-m.felsch@pengutronix.de>
References: <20240102110118.280032-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240102_030127_837603_C24EC627 
X-CRM114-Status: UNSURE (   8.47  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] ARM: boars: i.MX8MQ: align SPDX header with other imxcfg files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Align the SPDX-License-Identifier information with the other .imxcfg
files. While on it add a space to separate the gencsf header from the
the remaining options. No functional changes.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg     | 3 ++-
 arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
index 0f68c25b91f0..f82759f8499a 100644
--- a/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
+++ b/arch/arm/boards/mnt-reform/flash-header-mnt-reform.imxcfg
@@ -1,8 +1,9 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+# SPDX-License-Identifier: GPL-2.0-only
 
 soc imx8mq
 
 loadaddr 0x007E1000
 max_load_size 0x3F000
 ivtofs 0x400
+
 #include <mach/imx/habv4-imx8-gencsf.h>
diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
index 0f68c25b91f0..f82759f8499a 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
@@ -1,8 +1,9 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+# SPDX-License-Identifier: GPL-2.0-only
 
 soc imx8mq
 
 loadaddr 0x007E1000
 max_load_size 0x3F000
 ivtofs 0x400
+
 #include <mach/imx/habv4-imx8-gencsf.h>
-- 
2.39.2



