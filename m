Delivery-date: Tue, 22 Apr 2025 10:38:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799F-003yW3-28
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:38:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799B-0001VB-6m
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:38:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=I+ldn4FqEnfudLTVusizEFhR8GRM18CRZkgvAs8HpDM=; b=PG0kAsZVNjkDSscNm7cb5M3k7/
	w92qJ/wtm2jmxvnn+bFbiOT9ALDzG0R3LBLhDqnX1SU5eXtP1xvQFNvCQd43vI8vuw9iqXcLXjZW+
	7qtUW9uksZDCiIk7824XmjZh3HTTwK9VEi8j2m59bkJGVSr9PVFwEbIkU5O4wOP+ky4i+h+6ix13x
	46Ix+FJjngihh8KjnLBDGaGsK3CUGDWSGwvAZF4RNOo00gct+Yeq6RS8zewngx3uF8WDVzzWxEhoc
	uZze4VCkMluR19hruT7VsmnyRSqQd3LI8ygezriPA7d/gbdr0nFUn8WZvTCoaFDbxoL9vpJZsol9t
	aQme6liA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798d-00000006M6p-0rTx;
	Tue, 22 Apr 2025 08:37:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Td-00000006C6C-14jU
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:55:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Tc-0000Wk-4s
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:55:32 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Tb-001VvQ-36
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Tb-000v3v-2o
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:55:30 +0200
Message-Id: <20250422075531.219284-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005533_295980_0376C8E1 
X-CRM114-Status: UNSURE (   9.77  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mfd: syscon: make mfd/syscon.h header self-contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Including the header in new files can currently break the build if
suitable headers aren't included beforehand.

Make it self-contained and while at it, switch over to SPDX.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/mfd/syscon.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
index f22d4e620b05..288dd464b7c6 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -1,20 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* SPDX-FileCopyrightText: (C) 2012 Freescale Semiconductor, Inc. */
+/* SPDX-FileCopyrightText: (C) (C) 2012 Linaro Ltd. */
 /* System Control Driver
  *
  * Based on linux driver by:
- *  Copyright (C) 2012 Freescale Semiconductor, Inc.
- *  Copyright (C) 2012 Linaro Ltd.
  *  Author: Dong Aisheng <dong.aisheng@linaro.org>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
  */
 
 #ifndef __MFD_SYSCON_H__
 #define __MFD_SYSCON_H__
 
+#include <linux/compiler.h>
+#include <linux/err.h>
+
 struct regmap;
+struct device_node;
 
 #ifdef CONFIG_MFD_SYSCON
 void __iomem *syscon_base_lookup_by_phandle
-- 
2.39.5



