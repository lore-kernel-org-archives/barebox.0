Delivery-date: Tue, 19 Dec 2023 14:02:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZja-004Ypl-1E
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:02:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZjZ-0001dG-RO
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:02:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IX2zB2G90ZelcHDPxKTw7GwvZXh2jEwCPFsa8juRHok=; b=dS2GJG8Ydj1AYxhIv0QDIQYu4i
	GCOowmVCmwII4OEcDSo63tWf9X6Sns5JAjgDdZBCm9evQPO2oL3SVOWsRiGIhvKSLK7x0Xi3aRebW
	CSibt2CT46HxeleCBlWLHAzsxgFEoxxdwdh5Yfc5TLDXl19ikF1zgGjQ8IrIFd6/HeW7gT1VBk0fX
	Wp9sV7RUAAWGZTKWTOlsbxX8tGrZLfmXhPlfTdc/FLfQajzK/nzr1tmJr9psdkNkmlo2n2lV+cOmh
	Xmp1GQlhKgb0wCc8/LrXkyF8ZshC0qzfAe+RPMUtc4FLY4/Powjhotwv27NOXiueVMxo2KViQP+tp
	mQepGCEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZiQ-00E7qc-09;
	Tue, 19 Dec 2023 13:00:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZiN-00E7pc-0d
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:00:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiE-0000gE-2v; Tue, 19 Dec 2023 14:00:42 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiC-0001Kp-IF; Tue, 19 Dec 2023 14:00:41 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZiD-000158-1v;
	Tue, 19 Dec 2023 14:00:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:00:39 +0100
Message-Id: <20231219130040.4115-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219130040.4115-1-s.hauer@pengutronix.de>
References: <20231219130040.4115-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_050051_230104_F9685988 
X-CRM114-Status: GOOD (  11.21  )
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
Subject: [PATCH 3/4] pblimage: use roundup() from kernel.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have roundup() defined in linux/kernel.h, so use it instead
of adding a local definition.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/pblimage.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/pblimage.c b/scripts/pblimage.c
index d0a589f2fe..e8108bbb17 100644
--- a/scripts/pblimage.c
+++ b/scripts/pblimage.c
@@ -14,12 +14,12 @@
 #include <getopt.h>
 #include <endian.h>
 #include <byteswap.h>
+#include <linux/kernel.h>
 
 #include "common.h"
 #include "common.c"
 #include "../crypto/crc32.c"
 
-#define roundup(x, y)		((((x) + ((y) - 1)) / (y)) * (y))
 #define PBL_ACS_CONT_CMD	0x81000000
 #define PBL_ADDR_24BIT_MASK	0x00ffffff
 
-- 
2.39.2



