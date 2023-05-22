Delivery-date: Mon, 22 May 2023 07:26:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y4L-009J2G-E6
	for lore@lore.pengutronix.de; Mon, 22 May 2023 07:26:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q0y4J-0002GI-56
	for lore@pengutronix.de; Mon, 22 May 2023 07:26:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fL2je2PFz4B6f/tmD0tQN3BbNKTLc9exxHUsgP7MBQE=; b=HJJQjV2GJ0OVWXaIv41ci1fjW5
	O+wZc8cBXe1ROd3n4qw1nlUKpcUF3yRLvjvxhP3SxsOSCnQW4YqrPR1FndpE5jQY2Fc2w7qabILqx
	7pjxJIVlhGgE7RDsGhBqNRAgorRytFDT4MzoQ5JDd6pStGGjmhQvQarJT1qtsYfXo6lrAxQMInFtS
	ZlADHPtWuwRMghas2qABrOxMYCyhsz0bdGsVM/PO0Tn3YCv0DQH80q+KN1naAu34ze6gpajO+rMri
	5Ffm9fVMJz+eEZXI8d3H7gZb7FnFS+ofcvphY48cPhe2HdjZbV09joTEtjdwLHi/6ZX5DxX74K5eL
	N8xw0ndg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y3C-005O4H-1t;
	Mon, 22 May 2023 05:25:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0y39-005O3U-1p
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 05:25:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y38-00024K-7y; Mon, 22 May 2023 07:25:38 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y36-001vuy-AH; Mon, 22 May 2023 07:25:36 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q0y35-004MHs-F4; Mon, 22 May 2023 07:25:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
	jbe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 May 2023 07:25:26 +0200
Message-Id: <20230522052526.1038966-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522052526.1038966-1-a.fatoum@pengutronix.de>
References: <20230522052526.1038966-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_222539_602379_2A09C1E0 
X-CRM114-Status: GOOD (  14.00  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFT PATCH 2/2] mtd: cfi-flash: call ctrlc() during CFI reads
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Memory mapped flash access can be quite slow on older processors. For
writing and erasing, we already call resched() indirectly to feed the
watchdog, so let's do this when reading as well. This fixes an issue
of short running watchdogs triggering on PowerPC, because kernel boot
takes too long.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/nor/cfi_flash.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index f1555a72a42e..10542c710118 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -25,7 +25,9 @@
 #include <io.h>
 #include <errno.h>
 #include <progress.h>
+#include <string.h>
 #include <linux/err.h>
+#include <linux/sizes.h>
 #include <asm/unaligned.h>
 #include <linux/mtd/concat.h>
 #include "cfi_flash.h"
@@ -891,10 +893,16 @@ static int cfi_mtd_read(struct mtd_info *mtd, loff_t from, size_t len,
 		size_t *retlen, u8 *buf)
 {
 	struct flash_info *info = container_of(mtd, struct flash_info, mtd);
+	const void *src = info->base + from;
+	size_t i;
+
+	for (i = 0; i < len; i = size_add(i, SZ_1M)) {
+		buf = mempcpy(buf, src + i, min_t(size_t, len, SZ_1M));
+		if (ctrlc())
+			return -EINTR;
+	}
 
-	memcpy(buf, info->base + from, len);
 	*retlen = len;
-
 	return 0;
 }
 
-- 
2.39.2



