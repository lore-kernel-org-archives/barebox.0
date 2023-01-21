Delivery-date: Sat, 21 Jan 2023 15:46:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8g-0012jm-7F
	for lore@lore.pengutronix.de; Sat, 21 Jan 2023 15:46:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJF8d-0000Ke-Mb
	for lore@pengutronix.de; Sat, 21 Jan 2023 15:46:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5503QKT++3jt0HAOBpddg1jCr8NQHRuHOrJbAcHUTew=; b=pIBCamrS+ptol58ElkJfLeq2EN
	WeRVtRf8yUDkSYzH6ddNVv4NL0P9DB31DjzlpBAov4GfWV4swyCufKWg2AhS15FIug2n10JzPtHL9
	rNXaw3DAG3nxcR4WjCohErpM43gQv7ZeH1XX3oSfkGw24AbPwpQgSyGtL4mAU1ar3zTrCffyHbBHj
	gnmsZHHef7RegAMVP/2glsAzZxOJuBoE9lvTZsR+17D0ryIH4u9J7MgTyRZ8paKNrqwmoFaMHYJzp
	447MIzarNMTwmOSW3iKv3C0WhTeiNUMUozbMoerTu3u9tIC1IPKj323oKtPl84aBT65x4fX84iRMU
	p/U9ff6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF7C-00DyKW-NW; Sat, 21 Jan 2023 14:45:06 +0000
Received: from out-158.mta0.migadu.com ([2001:41d0:1004:224b::9e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJF76-00DyHF-SK
	for barebox@lists.infradead.org; Sat, 21 Jan 2023 14:45:02 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674312298;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5503QKT++3jt0HAOBpddg1jCr8NQHRuHOrJbAcHUTew=;
	b=UC5+8jArdp06sl8L8NyFEDj0vGN7iGFAgamUyDup5w73TibacBx4nQvEcq2X+YbvCBDmAo
	bRmpex1dylHx/H0EQGRHomGNyIooJxKyhRdyo+HhjkZvPy2sCU+y+kHE5U6P3q7f7OS+fA
	H2Cq83ZKx5cxGcuvNSN1pfRjvjRf3zcTbIOjgHVQZUZW/5G23eozQyVLUG/zPnr+kWEkrP
	8MB+p/POy/S7l4hlSSwT0oMeA+AwT9oVAnK6DI9keljIBwoYs2F/0b/1rm35dgkflvSGJ3
	LMCMFx6JmMfBU9HfFKqArR5rojz2mE1PBhHJ1VUzWCda9S0SHwdwBikyI2weQA==
From: John Watts <contact@jookia.org>
To: barebox@lists.infradead.org
Cc: John Watts <contact@jookia.org>
Date: Sun, 22 Jan 2023 01:44:26 +1100
Message-Id: <20230121144429.3524905-5-contact@jookia.org>
In-Reply-To: <20230121144429.3524905-1-contact@jookia.org>
References: <20230121144429.3524905-1-contact@jookia.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230121_064501_100341_723DC4CE 
X-CRM114-Status: UNSURE (   9.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] ddr: fsl: Remove includes to fsl-specific code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is in preparation for use for generic SPD calculations.

Signed-off-by: John Watts <contact@jookia.org>
---
 drivers/ddr/fsl/ddr1_dimm_params.c | 3 +--
 drivers/ddr/fsl/ddr2_dimm_params.c | 3 +--
 drivers/ddr/fsl/ddr3_dimm_params.c | 3 +--
 drivers/ddr/fsl/ddr4_dimm_params.c | 3 +--
 include/ddr_dimms.h                | 2 ++
 5 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/ddr/fsl/ddr1_dimm_params.c b/drivers/ddr/fsl/ddr1_dimm_params.c
index 9a7f26bd49..3f8759c351 100644
--- a/drivers/ddr/fsl/ddr1_dimm_params.c
+++ b/drivers/ddr/fsl/ddr1_dimm_params.c
@@ -3,9 +3,8 @@
  * Copyright 2008 Freescale Semiconductor, Inc.
  */
 #include <common.h>
-#include <soc/fsl/fsl_ddr_sdram.h>
 #include <linux/log2.h>
-#include "fsl_ddr.h"
+#include <ddr_dimms.h>
 
 /*
  * Calculate the Density of each Physical Rank.
diff --git a/drivers/ddr/fsl/ddr2_dimm_params.c b/drivers/ddr/fsl/ddr2_dimm_params.c
index 6f17d55c1f..eb27dbee50 100644
--- a/drivers/ddr/fsl/ddr2_dimm_params.c
+++ b/drivers/ddr/fsl/ddr2_dimm_params.c
@@ -4,9 +4,8 @@
  */
 
 #include <common.h>
-#include <soc/fsl/fsl_ddr_sdram.h>
 #include <linux/log2.h>
-#include "fsl_ddr.h"
+#include <ddr_dimms.h>
 
 /*
  * Calculate the Density of each Physical Rank.
diff --git a/drivers/ddr/fsl/ddr3_dimm_params.c b/drivers/ddr/fsl/ddr3_dimm_params.c
index cfea35ca05..0526f0b435 100644
--- a/drivers/ddr/fsl/ddr3_dimm_params.c
+++ b/drivers/ddr/fsl/ddr3_dimm_params.c
@@ -9,8 +9,7 @@
  */
 
 #include <common.h>
-#include <soc/fsl/fsl_ddr_sdram.h>
-#include "fsl_ddr.h"
+#include <ddr_dimms.h>
 
 /*
  * Calculate the Density of each Physical Rank.
diff --git a/drivers/ddr/fsl/ddr4_dimm_params.c b/drivers/ddr/fsl/ddr4_dimm_params.c
index 41c63f3613..d711863bbb 100644
--- a/drivers/ddr/fsl/ddr4_dimm_params.c
+++ b/drivers/ddr/fsl/ddr4_dimm_params.c
@@ -11,8 +11,7 @@
  */
 
 #include <common.h>
-#include <soc/fsl/fsl_ddr_sdram.h>
-#include "fsl_ddr.h"
+#include <ddr_dimms.h>
 
 /*
  * Calculate the Density of each Physical Rank.
diff --git a/include/ddr_dimms.h b/include/ddr_dimms.h
index 3ec6209ae1..ea5ec85b82 100644
--- a/include/ddr_dimms.h
+++ b/include/ddr_dimms.h
@@ -7,6 +7,8 @@
 #ifndef _DDR_DIMMS_H_
 #define _DDR_DIMMS_H_
 
+#include <ddr_spd.h>
+
 /* Parameters for a DDR dimm computed from the SPD */
 struct dimm_params {
 
-- 
2.39.0



