Delivery-date: Wed, 17 Nov 2021 12:40:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnJIW-0001uj-0v
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 12:40:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnJIU-0000gm-Rb
	for lore@pengutronix.de; Wed, 17 Nov 2021 12:40:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BIFNgiEGidu1pcSAxz/G9+jhMUWkKSltch3vB7ccQCQ=; b=tVvbY14RABn+EN
	UHAGir24KyTkhEZhPTz5bGSBtNOW93G3T7hFoRUgkIjYo/WrsgD4HlMYEa7y3SeFYaQfmrGKhc0Fj
	kFbdy8ybVSd6jPhP7ySAGiCbq2169I1NNapEW6EDRNjfKVw8EyFVt7zUK4kOJy++memJx6wNRMBpk
	DjEfdWIuMlH1ZN6dLggWfSyf4IiRL3QvzJpllAiDZmiFYxmLRhy5nuEEyPtgPoNzS5zmClfWbcHYu
	Q/v08Af4mbwzF3tAa+OzB0kfzuwl5frVvNAPMekksuOon+FYawUe46RGI1WJ/WIxHA817VB4/ty3u
	dLO9YixfEWg3l3yN5uJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnJHJ-004dCS-8d; Wed, 17 Nov 2021 11:39:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnJHE-004dAx-Gx
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 11:38:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <rhi@pengutronix.de>)
 id 1mnJHB-0000IE-Kr; Wed, 17 Nov 2021 12:38:53 +0100
Received: from rhi by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <rhi@pengutronix.de>)
 id 1mnJHB-008UEP-5n; Wed, 17 Nov 2021 12:38:53 +0100
From: Roland Hieber <rhi@pengutronix.de>
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 17 Nov 2021 12:38:49 +0100
Message-Id: <20211117113851.2022669-1-rhi@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_033856_585194_4D8FDB48 
X-CRM114-Status: UNSURE (   9.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] drivers: mci-bcm2835: remove useless comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The comment serves no purpose anymore since the previously following
license blurb was migrated to an SPDX license identifier.

Fixes: 28f4a6a4df76f0f1581d (2021-10-30, "drivers: add missing SPDX-License-Identifier")
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 drivers/mci/mci-bcm2835.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/mci/mci-bcm2835.c b/drivers/mci/mci-bcm2835.c
index 4913dc27f8a3..7203cd1dacda 100644
--- a/drivers/mci/mci-bcm2835.c
+++ b/drivers/mci/mci-bcm2835.c
@@ -10,8 +10,6 @@
  * timing workarounds) obviously extracted from the Linux kernel at:
  * https://github.com/raspberrypi/linux.git rpi-3.6.y
  *
- * The Linux kernel code has the following (c)
- *
  * Author: Wilhelm Lundgren <wilhelm.lundgren@cybercom.com>
  */
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

