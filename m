Delivery-date: Fri, 19 Mar 2021 14:12:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv4-0007Pr-98
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 14:12:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv0-0006ua-DK
	for lore@pengutronix.de; Fri, 19 Mar 2021 14:12:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SnGWlMlTgDbJe5mr2adWTbtRQhq2tQ4i2kzBSlWLMxc=; b=H9PGkMgp461mQBpPYma1Fw+yI
	6DZXjDDkQ+7+xnR6bYEkb+X2TOnnqtRQItqpkQfM30xk/8eE9I4bKecQvtsCuB32yfU05p5l9NuIA
	QzzutuiKvcZ/1Ae7qOJz2WICNVg1zcEM8OwJO1wRVQ+V9hHqlgB4rGXEY7mssAy4JGmVrbcD8ZA0q
	pcnuG8N3W/nxlkbJwdeYJsLOvQF1MqXnMp2etxkClVg/fhcaqafwQLcHlA1uPuPRMgxufRlvQiiOq
	UvsdbnRVEwnfUfWMMQmjw2xz+u+Of6R/HuQTUVYsIHS35LyG6W7FS8GZ5iuNq5O7zD0oSiKAq+gdN
	yoGVLl2fg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEtn-007SHL-Ki; Fri, 19 Mar 2021 13:10:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNEtP-007SAl-Ca
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 13:10:24 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtN-0006KF-EP; Fri, 19 Mar 2021 14:10:17 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-0000ys-C1; Fri, 19 Mar 2021 14:10:16 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-00AxXz-BF; Fri, 19 Mar 2021 14:10:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Fri, 19 Mar 2021 14:10:10 +0100
Message-Id: <20210319131016.2612134-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210319131016.2612134-1-m.tretter@pengutronix.de>
References: <20210319131016.2612134-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_131019_537903_F25201E3 
X-CRM114-Status: GOOD (  11.99  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] net: phy: dp83867: convert driver to spdx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/net/phy/dp83867.c | 10 +---------
 1 file changed, 1 insertion(+), 9 deletions(-)

diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
index 8131e8c9d6c6..153b60def320 100644
--- a/drivers/net/phy/dp83867.c
+++ b/drivers/net/phy/dp83867.c
@@ -1,16 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Driver for the Texas Instruments DP83867 PHY
  *
  * Copyright (C) 2015 Texas Instruments Inc.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
  */
 
 #include <common.h>
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

