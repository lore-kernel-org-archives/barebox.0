Delivery-date: Mon, 08 Nov 2021 08:54:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTj-0005st-NW
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 08:54:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzTi-0004CE-8G
	for lore@pengutronix.de; Mon, 08 Nov 2021 08:54:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lo/3UrgkcOjrNHqWUwnai7Iuirb3BE1PVCCca9Gt7XI=; b=B3z13FMksEBDsr
	QkKbvS1W9hG444SNgqIoTwYhfd9GkoLRPtm2wVTJ5iVOFINzbyw1914zkk9T7U7YEodD1HNMb7w8m
	jynw16P32og/sUcOhBl63F8PYG6XjLcqtVbtorON3/6i/AysVHjTjQsqgTn/H6/VTk4L8AxPbmChG
	OKVOgYuPbG8856+vZpYv6PE+ADa+pfLU4ESe46M6WGUX2GH4QgHYgZONGaoUkz+wr/8Mkz9B4/TAo
	0Hx79jX9p44h9mYBdEix99w1hBzlzSitRmerK2dSyV7lQn1OEHmq54j7oJ63McmoOQLATeCVf+x0h
	sMxfzLELOvnSlflRs9BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjzSS-00Fdnw-Pb; Mon, 08 Nov 2021 07:52:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjzS4-00FdcP-O5
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 07:52:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRv-0003kj-EN; Mon, 08 Nov 2021 08:52:15 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mjzRu-009viZ-R0; Mon, 08 Nov 2021 08:52:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Nov 2021 08:52:01 +0100
Message-Id: <20211108075209.2366770-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211107_235224_817561_F37ED836 
X-CRM114-Status: GOOD (  10.21  )
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
Subject: [PATCH 1/9] fixup! scripts/common: Add write_full() and read_full()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These files are already in the same directory as common.h and common.c.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/rkimage.c         | 4 ++--
 scripts/socfpga_mkimage.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 7262f320eb1e..6e68d508ac96 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -13,8 +13,8 @@
 #include <errno.h>
 #include <stdbool.h>
 
-#include "../common.h"
-#include "../common.c"
+#include "common.h"
+#include "common.c"
 #include "rockchip.h"
 
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof(arr[0]))
diff --git a/scripts/socfpga_mkimage.c b/scripts/socfpga_mkimage.c
index d37ca8585a21..e88e75962f9c 100644
--- a/scripts/socfpga_mkimage.c
+++ b/scripts/socfpga_mkimage.c
@@ -10,8 +10,8 @@
 #include <fcntl.h>
 #include <endian.h>
 
-#include "../common.h"
-#include "../common.c"
+#include "common.h"
+#include "common.c"
 
 #define VALIDATION_WORD 0x31305341
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

