Delivery-date: Fri, 17 Sep 2021 19:43:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRHtU-0001NI-9F
	for lore@lore.pengutronix.de; Fri, 17 Sep 2021 19:43:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRHtT-0006yw-AW
	for lore@pengutronix.de; Fri, 17 Sep 2021 19:43:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPCWFq+0SPclNmiqwI4xKEdp5tFrX0hQG5AktwcUnSI=; b=lOSL7Zzf0QjVGQ
	Iy/O7301i3pWJz+sTh3wW09uJHpsoxGhyWpv+SQmbQbIkKeyDVUOPt0lwvd2Sfb3+1C4DHv0v9xrq
	PNnW2zCDq8B+H64VQAkfVFrolsNlJAMX1NwGZfLXz+3LmTB+0VbaYLFtwQM7hoBSjHq9RmJPJ/ktv
	FJ0G9xtz81jtsaE0mlrXPtgw4qCWkfL+2IFrxW/8+UueSrpFwdIYP21DR4+sIJjlYHIvFEg98v/Kl
	VsmoiOGNLmn0u7VkDk3pN4tXCZpUNzfzq/ex3kDcRsW+QyEZi3vnry6nMtZK+J34SyShPpSAmMaLc
	kCRVZMovsjO84TbNbUiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRHrv-00EkdK-ID; Fri, 17 Sep 2021 17:41:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRHrq-00EkcN-Nn
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 17:41:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mRHrh-0006g3-G5; Fri, 17 Sep 2021 19:41:33 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mRHrg-0006oy-Vu; Fri, 17 Sep 2021 19:41:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de, Trent Piepho <trent.piepho@igorinstitute.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 Sep 2021 19:41:26 +0200
Message-Id: <20210917174127.23345-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210917174127.23345-1-a.fatoum@pengutronix.de>
References: <20210917174127.23345-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_104142_833986_43E0BA89 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] scripts: omap3-usb-loader: make proper use of
 pkg-config --cflags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pkg-config --cflags libusb-1.0 should ensure <libusb.h> would be found.
Command's output is used to compile omap3-usb-loader.c, but because the
file does #include <libusb-1.0/libusb.h>, it will probably not find the
header in the directory added to search path by pkg-config and depend on
other directories in the search path. Fix this. We already expect users
to have proper pkg-config files, so linking works, so it's not too much
to ask to expect the pkg-config file that should already exist to yield
proper --cflags as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new alternate commit after Trent's feedback
---
 scripts/omap3-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/omap3-usb-loader.c b/scripts/omap3-usb-loader.c
index 599a93856ac3..0f352c8453fc 100644
--- a/scripts/omap3-usb-loader.c
+++ b/scripts/omap3-usb-loader.c
@@ -28,7 +28,7 @@
 #include <errno.h>
 #include <libgen.h>		/* for basename */
 
-#include <libusb-1.0/libusb.h>		/* the main event */
+#include <libusb.h>		/* the main event */
 
 /* Device specific defines (OMAP)
  * Primary source: http://www.ti.com/lit/pdf/sprugn4
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

