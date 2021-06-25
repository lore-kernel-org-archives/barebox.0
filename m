Delivery-date: Fri, 25 Jun 2021 09:44:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgVl-0007nx-UJ
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:44:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgVk-00052z-DA
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:44:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSOuf2g8uCFTW3Q+YoFmrIA/pWYZxKTqgxTMFbc5Wxk=; b=I23tNRtKQskmSP
	PLta0qTAnEXHvmBSRV0OQYmDR/lla3emyUawmsbjSIZqH9K/Anp0wxVsgZudobEAF3gbvDcusBGBP
	xR+aOO4TchLtCVVOiD9gm2VpmgrSgWy0SeoYgXHtD/hDJF1EOUNCXclx0IAPMnsjayWHdmOvTTsjX
	vYuNvcwr1tfBNpyw6wNOzkNaQNuNwiREiy4UCxSJ4kky3PcOzyzE259gZ7/HTw157toJMwe8OmpCj
	rzkK609yMPGwJhduA0SJAsQGJu6QgE894hTBYnRoyd9olHblfoz+dNUZ87cnuR0IbAQoJBe2qSB8i
	c5X+xeJmTZ/9DGALVWyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgUP-0004ni-2I; Fri, 25 Jun 2021 07:43:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDg-00HZ1h-4Y
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002Qh-Iu; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000dT-Em; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:33 +0200
Message-Id: <20210625072540.32717-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002544_389083_E92925F4 
X-CRM114-Status: GOOD (  13.06  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/19] pinctrl: Add deep probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds deep probe support for pinctrl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 84ac61f2d9..7e88391ff3 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -76,7 +76,7 @@ static struct pinctrl_device *find_pinctrl(struct device_node *node)
 	return NULL;
 }
 
-static int pinctrl_config_one(struct device_node *np)
+static int pinctrl_config_one(struct device_node *for_node, struct device_node *np)
 {
 	struct pinctrl_device *pdev;
 	struct device_node *pinctrl_node = np;
@@ -89,6 +89,9 @@ static int pinctrl_config_one(struct device_node *np)
 			break;
 	}
 
+	if (pinctrl_node != for_node)
+		of_device_ensure_probed(pinctrl_node);
+
 	pdev = find_pinctrl(pinctrl_node);
 	if (pdev)
 		return pdev->ops->set_state(pdev, np);
@@ -151,7 +154,7 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
 			}
 
 			/* Parse the node */
-			ret = pinctrl_config_one(np_config);
+			ret = pinctrl_config_one(np, np_config);
 			if (ret < 0)
 				goto err;
 		}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

