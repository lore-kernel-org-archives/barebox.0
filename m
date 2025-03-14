Delivery-date: Fri, 14 Mar 2025 12:02:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2oX-00DyMn-0A
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 12:02:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2oV-0002Ot-RB
	for lore@pengutronix.de; Fri, 14 Mar 2025 12:02:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e2XNstDr7zUwNeCNoK5KucQInywg/CGjSxl8ov1CAJk=; b=ZDzsrmnuHWbZzqj6kgopu4iwWw
	jjuX6oUloFAklOPZhsbgSV/XL/jng1D4/ww9JxpWV3xF4UPCo7E431ekUM0BamrnIsXKrdPwHNrgq
	fQTLGh3WbFNs5GmupJz4nP81od9EyHQQfwxPZnMucRvG3+4j59B8mf23xW8jnTrEbUkFQAC2nP656
	mdwYgy3e65fl/+A+sdjKOtOVE7QMm0rsxYIU14AVPjI5/rONAgWVOiYwILVS7D63a5Mwg7S9xW+NF
	isQ2mWvijizGBl/31murDDKYa4dxadV/4gFDxJ1mjKCmiqASGqhlwLs7geSLQh/hOj6qArrqat7tb
	V2iDk9TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2ny-0000000DvpA-1P4g;
	Fri, 14 Mar 2025 11:02:18 +0000
Received: from zdiv.net ([46.226.106.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2TI-0000000DsoY-2Ov9
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 10:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741948849;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=e2XNstDr7zUwNeCNoK5KucQInywg/CGjSxl8ov1CAJk=;
	b=lnY2LGkoqES7GEbJ9YeboMAMFIo+LqVtpRZYQi3WUQBeutec9F4AWHr5HUge/L1jp7pYZN
	WBKYrNY4jLl+vUwOoW5J0YSgjBM5j36lv+Dzp6SKtOenzvK7nB3/sRn+YlDyOGWoHGqvuI
	gFBDxfYAGWiN7jKbZLg7b0sO/i5Q2fClEGiEaeOk/ufrW81KRw903LLKlZw3XJ5DgVGoUU
	Yxlzc4CfglcT3nPU3u4cuydCSwahoMGqZRbIkURBzQFDcnAhtkPas5xapYbHluNwwuecqm
	aX4XA6wa/rtEv/GuktijnXsyQTmQWOK3FDoSCqNBE94mNLsZC8NYDy/2VWl1cQ==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 2056654a (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 11:40:49 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 11:40:29 +0100
Message-ID: <20250314104034.13637-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314104034.13637-1-jmaselbas@zdiv.net>
References: <20250314104034.13637-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_034056_869692_5E6EE642 
X-CRM114-Status: UNSURE (   8.06  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] dma-devices: k3-udma: cleanup headers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove include of `asm/cache.h` as it is not used.
Also remove the duplicated include `soc/ti/ti_sci_protocol.h`.
Add the include `common.h` for the missing declaration of sprintf.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/dma/ti/k3-udma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index 761898867d..8f46364145 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -5,8 +5,8 @@
  */
 #define pr_fmt(fmt) "udma: " fmt
 
-#include <asm/cache.h>
 #include <io.h>
+#include <common.h>
 #include <malloc.h>
 #include <linux/bitops.h>
 #include <linux/sizes.h>
@@ -21,7 +21,6 @@
 #include <linux/bitmap.h>
 #include <driver.h>
 #include <linux/device.h>
-#include <soc/ti/ti_sci_protocol.h>
 
 #include "k3-udma-hwdef.h"
 #include "k3-psil-priv.h"
-- 
2.48.1



