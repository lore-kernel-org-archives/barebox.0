Delivery-date: Thu, 09 Nov 2023 12:49:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13Xh-0048qZ-1t
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 12:49:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r13Xh-0003PJ-LV
	for lore@pengutronix.de; Thu, 09 Nov 2023 12:49:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UYg+6IDWRT3IGYe3TWy7/e0CDrIr7G3EPKswT2soj0g=; b=XosnZO32jJhu9fT7elqaZOfzf2
	NDqRlUfpviFwiwAcW3ZEDildfc/IGVIjQG7xp3os+67vdMHhKDo/ZGirShMg2mVg357aRItw6ZzSs
	bApjrRQxL6cAFU52t9Dxu0HjG/uBhJRnEakxensZ1NQiKy3OwCnTjBLHKZPxofYFsUqXkUFcbVSU+
	jfRn9rTHJOildJmxnVoY17y56PeCJKYqcSOpUX1IXKmxBVWsGCb6GJQDb5FT57q9zzBM5qBI1/uKx
	2rJGcZeWYRVHzyDzv2zEGZVoRiwgpVopXTmVVzx5qrBJduj88BhPUZ+GROfEtaG4OfVWAgMUz9wZf
	pAt/IADQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Wf-0069y5-0h;
	Thu, 09 Nov 2023 11:48:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Wb-0069vI-1r
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 11:48:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13Wa-00037S-Dx; Thu, 09 Nov 2023 12:48:40 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13Wa-007ld3-1G; Thu, 09 Nov 2023 12:48:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r13WZ-005gsl-34;
	Thu, 09 Nov 2023 12:48:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 12:48:38 +0100
Message-Id: <20231109114838.1356467-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_034841_612838_CDA062EB 
X-CRM114-Status: UNSURE (   9.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] usb: dwc2: use linux/spinlock.h for stubs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have dummy definitions for common spin lock operations,
so reuse them instead of defining them in the driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/dwc2/gadget.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/usb/dwc2/gadget.c b/drivers/usb/dwc2/gadget.c
index 00323d2d9029..3c06c438b65d 100644
--- a/drivers/usb/dwc2/gadget.c
+++ b/drivers/usb/dwc2/gadget.c
@@ -1,18 +1,15 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 #include <dma.h>
 #include <linux/usb/gadget.h>
+#include <linux/spinlock.h>
 #include "dwc2.h"
 
 #define to_dwc2 gadget_to_dwc2
 #define dwc2_set_bit(d, r, b)	dwc2_writel(d, (b) | dwc2_readl(d, r), r)
 #define dwc2_clear_bit(d, r, b)	dwc2_writel(d, ~(b) & dwc2_readl(d, r), r)
 
-#define spin_lock(lock)
-#define spin_unlock(lock)
 #define local_irq_save(flags)(void)(flags)
 #define local_irq_restore(flags) (void)(flags)
-#define spin_lock_irqsave(lock, flags) (void)(flags)
-#define spin_unlock_irqrestore(lock, flags) (void)(flags)
 
 static void kill_all_requests(struct dwc2 *, struct dwc2_ep *, int);
 
-- 
2.39.2



