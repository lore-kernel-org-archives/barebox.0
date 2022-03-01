Delivery-date: Tue, 01 Mar 2022 09:48:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyAw-00ECJW-7B
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 09:48:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOyAu-00071F-Or
	for lore@pengutronix.de; Tue, 01 Mar 2022 09:48:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1Ex/3ZEaiutml912IoVmn5x+3FopFrnvkdwjYbvXfik=; b=QFbVxmHeP+aPek
	mOfSsWGvO8u8wOOO2IiKwlTns1Okjd7V8Rv0Iy+z8+qvSmc34FooxBoXP3y70do+SvL1Pw0LkC6QF
	QnjVDS8AnVumfyUJWhkj5EBLNjZAQQjfKY6ulcxCSJ9xueHCemslsBIT9qME7ktw2aOVvmF80jyJO
	sUeXz88XGLsM+dVJjMRJOcSEY3ZQf4AE9JcYR3Wvp2QQIjwrK/GYR8qbvwjPh86KwG3GayhiNzGWr
	mrPzf5E+sF50p1lH5LKDflVEQ0M761ptq9XwwNDVphJ746pe/iaqoBMlcfGM/jOLru81pWIQYndSV
	XDQh+i3KbYAFwZFp2OuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOy9f-00Ffk8-B3; Tue, 01 Mar 2022 08:46:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOy9a-00FfhM-Fd
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 08:46:43 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOy9X-0006ve-MF; Tue, 01 Mar 2022 09:46:39 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nOy9X-003mA5-7e; Tue, 01 Mar 2022 09:46:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  1 Mar 2022 09:46:38 +0100
Message-Id: <20220301084638.900036-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_004642_542501_22390184 
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] regulator: fix memory leak #2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix memory leak of propname.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index d3c43ce9a3..827ccee9d5 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -197,14 +197,14 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	struct device_node *node, *node_parent;
 	int ret;
 
-	propname = basprintf("%s-supply", supply);
-
 	/*
 	 * If the device does have a device node return the dummy regulator.
 	 */
 	if (!dev->device_node)
 		return NULL;
 
+	propname = basprintf("%s-supply", supply);
+
 	/*
 	 * If the device node does not contain a supply property, this device doesn't
 	 * need a regulator. Return the dummy regulator in this case.
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

