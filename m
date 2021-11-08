Delivery-date: Mon, 08 Nov 2021 08:54:08 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTk-0005tS-5Z
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 08:54:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTi-0004CR-MY
	for lore@pengutronix.de; Mon, 08 Nov 2021 08:54:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vybe8V47qqRCYRj0n+Y2U3QPvSy2GWALbu16gjcauLM=; b=yN4i8TAGgfjv9v
	ynb2Ma+eyxjbTC2bhH2qE+El2qgD8h1obZzZ3Lsm9Vg1p+hiV1O2ajb9VH5pqxfqR/cBwgT1/GxgB
	QNeQfug2loizulK5QwdiR6c09imNKBlf3OxNM6rmPUfATKAX8SuvRt0dbe3Wvg0dwpLEqqh/mHqjZ
	w1YV3kh37Y6XPZz7UWkQjBfJ6PXMfrZl3h5Xm/YEs9+0vBNOqk4P9oa6l04/s0IbIZW+1UQRc5AQ/
	JRXa+r26+zHgIxIFbrCmmiR2RyJt/43ATtSfcqIroXXD/WSSmXjTjznn7odQ37Fho8UpkuecBXT4D
	gMrBMVgl5THH1tQ7AxzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjzSA-00Fdeb-99; Mon, 08 Nov 2021 07:52:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjzRz-00FdZ3-1F
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 07:52:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRv-0003kk-FB; Mon, 08 Nov 2021 08:52:15 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRu-009vib-RR; Mon, 08 Nov 2021 08:52:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Nov 2021 08:52:02 +0100
Message-Id: <20211108075209.2366770-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
References: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_235219_117081_768F994A 
X-CRM114-Status: GOOD (  11.05  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] fixup! scripts: Add rk-usb-loader tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This file is already in the same directory as common.h and common.c.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/rk-usb-loader.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/rk-usb-loader.c b/scripts/rk-usb-loader.c
index c742023c60d9..9c2367ed2891 100644
--- a/scripts/rk-usb-loader.c
+++ b/scripts/rk-usb-loader.c
@@ -27,8 +27,8 @@
 #include <fcntl.h>
 #include <libusb.h>
 
-#include "../common.h"
-#include "../common.c"
+#include "common.h"
+#include "common.c"
 #include "rockchip.h"
 
 static void log_error(char *fmt, ...)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

