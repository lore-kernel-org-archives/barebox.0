Delivery-date: Mon, 12 Jun 2023 15:03:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD1-003qcT-7O
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCy-0000k0-Ir
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HnHPdjPhx8v3ijgCz4gPJIlTKyzN4K+CyzimxUYtgCs=; b=dbHlr2PmK8j4qcEXn62Gu/UFZ+
	OWuBS/1jwR6I69VLSo7Ze0xDXhS7we5Z178c4VFNERa1prEtrrABiM+Qgra/zm43Hd0t5vFkte+SF
	tPInMfgm1MnajHN+Wp62L+CJ2KHWjEfLwwWwmUNuoshfyiEXXTwKlV5QH/pXHhH9hRUFktFEDgG7V
	vjGBw6p9wJAq+5rHhpywjFbLo+GMbTnELIyTgrGSccIiYgFmef8j7jVhEyHMspzAfva2L3uXgY09z
	IsJREkbqJy8QpoqSYRWYaZottn+5Q/ZI6d0x8NUoiT/9hamURbwbo8lbnVtAdJriVFEdR2/OpBBXP
	X/eKJe2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCM-0047Qi-01;
	Mon, 12 Jun 2023 13:03:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC8-0047Dh-1T
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-0008M6-8B; Mon, 12 Jun 2023 15:02:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC6-006tW1-JU; Mon, 12 Jun 2023 15:02:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJR-5Q; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:27 +0200
Message-Id: <20230612130239.1087599-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060252_491194_051D594E 
X-CRM114-Status: UNSURE (   9.72  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/19] video: bochs: remove dependency on PCI header in common part
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bochs_hw is the common code that's called into from both PCI and ISA
Bochs drivers. It has no need to include the PCI header, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/bochs/bochs_hw.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/video/bochs/bochs_hw.c b/drivers/video/bochs/bochs_hw.c
index 48de5ea0bd7a..60439ddee576 100644
--- a/drivers/video/bochs/bochs_hw.c
+++ b/drivers/video/bochs/bochs_hw.c
@@ -8,7 +8,6 @@
 
 #include <common.h>
 #include <driver.h>
-#include <linux/pci.h>
 #include <fb.h>
 #include "../edid.h"
 #include "bochs_hw.h"
-- 
2.39.2



