Delivery-date: Thu, 11 Dec 2025 20:34:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTmQK-00APAA-13
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 20:34:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTmQJ-00080d-Pd
	for lore@pengutronix.de; Thu, 11 Dec 2025 20:34:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cb/FnRDqfRPp331tfNsLhAlP/dLo3iyd9NhPLJqRuRc=; b=fzSuHZB5gei1nRHAYQzH2r3KFS
	Xf05DfCgFg6+pUll8dOIA1k6Wkt1oJ+TiNKNVJNAEkpp+lAEs8WuiG7HzJ5FXLorO/J55imo6+Dcq
	8RmCzF5Y8Pdp/whgDp3X3xNBdcfbe88lWbI0kCBpEF4GizYnhQjzaoqW+Jo0TNzZdkBTDN2cKpFW5
	mAFVCbJo/cFw9oyo9j5wKr3hw5owiqJPUQcF0gd4ytHkwiAT/KI+we3PcXZGbnARAD0YuSiyTM3IJ
	l1HJO+vJxRKF6ByvptS5/auMbk6wl78rVmnTOsw0pIgPekE2jl6oLFQrfDu9gbJxi5TB9ujClNQ9A
	dnOw13Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmPo-0000000HALP-0cEn;
	Thu, 11 Dec 2025 19:33:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmPl-0000000HAKc-2KpU
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:33:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTmPk-0007qb-33; Thu, 11 Dec 2025 20:33:24 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTmPj-005B24-2t;
	Thu, 11 Dec 2025 20:33:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTmPj-0000000GVHo-3IqH;
	Thu, 11 Dec 2025 20:33:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 20:33:21 +0100
Message-ID: <20251211193322.3932207-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_113325_600789_38231B15 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] net: fsl_enetc: fix missing dmb() symbols on non-ARM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver uses dmb(), which we only define on ARM systems, add a stub
to allow the driver to build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/fsl_enetc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/fsl_enetc.c b/drivers/net/fsl_enetc.c
index df5a9a4c0bf8..174c2ed0451d 100644
--- a/drivers/net/fsl_enetc.c
+++ b/drivers/net/fsl_enetc.c
@@ -10,11 +10,17 @@
 #include <linux/pci.h>
 #include <linux/io.h>
 #include <linux/mdio.h>
-#include <asm/system.h>
 #include <of_net.h>
 #include <asm/unaligned.h>
 #include <io-64-nonatomic-lo-hi.h>
 
+#ifdef CONFIG_ARM
+#include <asm/system.h>
+#else
+#include <linux/bug.h>
+#define dmb()	BUG()
+#endif
+
 #include "fsl_enetc.h"
 
 /* MDIO wrappers, we're using these to drive internal MDIO to get to serdes */
-- 
2.47.3



