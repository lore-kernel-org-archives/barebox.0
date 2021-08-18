Delivery-date: Wed, 18 Aug 2021 15:00:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLBS-0006DC-20
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 15:00:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLBN-0001D3-BC
	for lore@pengutronix.de; Wed, 18 Aug 2021 15:00:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jnbdh3KEaa/3ruTv6yLPDeNlJ7lyYeu17r4kKYBqVwk=; b=p92INVEjtGH2iR
	RaJSuIVz6j0aUX/1bNY7lDOhk/G4RktZEunjxx6a7WHnN0NbzWSDoJOYmOLCJMk/s/Z+TloNX4cAP
	4fhZ3S2uvVCFkM5FSCGbv0EEtYwiEUeA9PvsPdv0tkQCe33gaY/yf0xmbK+m+9jp2nkbsrcQ4bBBv
	i9Lwqb1zooPNTLPp50Na77f0C+48q6UWoHRsmKh4Bkms9JEvZ0idl/ztjv4bBDrStJkfNnbIIipHH
	CtUpePUwaSEyLSJ/fF0ynpPHatEk9L3vUkX1oVx/3GSLOy74MT4wwzXh75/VABY7lsVDGqhxh+LyV
	ImuOQvTADrER8vOJUaVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGL9i-005b8Q-Ut; Wed, 18 Aug 2021 12:58:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGL9d-005b7h-TL
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 12:58:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGL9c-0000uQ-KU
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 14:58:48 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGL9c-0007t2-3t
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 14:58:48 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGL9c-002Llm-38
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 14:58:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 18 Aug 2021 14:58:48 +0200
Message-Id: <20210818125848.560293-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_055849_991719_3ADE2D69 
X-CRM114-Status: GOOD (  11.01  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: zynqmp: use std_file_update as update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The update handler for zynqmp copies the boot.bin file into an existing
fat partition. There is already a better implementation by
bbu_register_std_file_update(). Drop the custom implementation.

Keep the previous functions with its signature to have an obvious common
update handler for all ZynqMP boards.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-zynqmp/zynqmp-bbu.c | 40 +++----------------------------
 1 file changed, 3 insertions(+), 37 deletions(-)

diff --git a/arch/arm/mach-zynqmp/zynqmp-bbu.c b/arch/arm/mach-zynqmp/zynqmp-bbu.c
index d1197c01dc41..7ac8c2b8a994 100644
--- a/arch/arm/mach-zynqmp/zynqmp-bbu.c
+++ b/arch/arm/mach-zynqmp/zynqmp-bbu.c
@@ -4,45 +4,11 @@
  */
 
 #include <common.h>
-#include <libfile.h>
 #include <mach/zynqmp-bbu.h>
 
-static int zynqmp_bbu_handler(struct bbu_handler *handler,
-		struct bbu_data *data)
-{
-	int ret = 0;
-
-	ret = bbu_confirm(data);
-	if (ret)
-		return ret;
-
-	ret = copy_file(data->imagefile, data->devicefile, 1);
-	if (ret < 0) {
-		pr_err("update failed: %s", strerror(-ret));
-		return ret;
-	}
-
-	return ret;
-}
-
 int zynqmp_bbu_register_handler(const char *name, char *devicefile,
-		unsigned long flags)
+				unsigned long flags)
 {
-	struct bbu_handler *handler;
-	int ret = 0;
-
-	if (!name || !devicefile)
-		return -EINVAL;
-
-	handler = xzalloc(sizeof(*handler));
-	handler->name = name;
-	handler->devicefile = devicefile;
-	handler->flags = flags;
-	handler->handler = zynqmp_bbu_handler;
-
-	ret = bbu_register_handler(handler);
-	if (ret)
-		free(handler);
-
-	return ret;
+	return bbu_register_std_file_update(name, flags, devicefile,
+					    filetype_zynq_image);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

