Delivery-date: Mon, 25 Jul 2022 09:45:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFsm4-002pf7-RA
	for lore@lore.pengutronix.de; Mon, 25 Jul 2022 09:45:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oFsm2-00069C-Rx
	for lore@pengutronix.de; Mon, 25 Jul 2022 09:45:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nG2chORB2bbNISS8orrS2pSIFTK4dugwuI7nrcgTHRI=; b=z8On3ls6XurxdBTAnsFPUSqTvQ
	kcbNuIFd6NtEcsIdIyTPmjB9LdyjyFkz9pQgpoDzJ3Xt5Az3hqabEkM2j1xzZlmmTCilEgoGYwFN3
	LrkWIbP+0OJzSYYqrjDNmY2Pekq3uE7p6Z3Q2WEmemXuz3z0fdsIJF+L4kDC/nc09wdis7mYz6Yp2
	Na4oKBSk8tRbmOWfSkRjSN6gl/s4omOnMWgOJ7Y8tp+eY1dlG7IBTpT36SGvIQWrZu0aUdPPSDDLl
	TQ+xTEY9CFkFb/lQ1W76kCupCu+av0me9dG/O0ptcI8raDYHxFUfzLO3LWLiNfWc/hEJZHGMOiKno
	Aw9vIfFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFskK-006GJF-AE; Mon, 25 Jul 2022 07:43:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFskF-006GCZ-02
	for barebox@lists.infradead.org; Mon, 25 Jul 2022 07:43:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oFsk6-0005zz-Vj; Mon, 25 Jul 2022 09:43:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFsk6-0034Wm-8y; Mon, 25 Jul 2022 09:43:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oFsk5-00B7n0-JD; Mon, 25 Jul 2022 09:43:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Jul 2022 09:43:00 +0200
Message-Id: <20220725074259.2651494-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220725_004315_058467_F62931D3 
X-CRM114-Status: UNSURE (   9.49  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] driver: disassociate dev from device_node on unregister_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Reusing the same device node with of_platform_device_create
after unregistering an old device doesn't work, because the device_node
-> device_d association added along with deep probe isn't cleared.
Resolve this.

Fixes: 46afd4bf8fa6 ("of: platform: Keep track of populated platform devices")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 4898e0114d56..e7288f6a61cc 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -265,6 +265,8 @@ int unregister_device(struct device_d *old_dev)
 	/* remove device from parents child list */
 	if (old_dev->parent)
 		list_del(&old_dev->sibling);
+	if (dev_of_node(old_dev))
+		old_dev->device_node->dev = NULL;
 
 	return 0;
 }
-- 
2.30.2



