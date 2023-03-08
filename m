Delivery-date: Wed, 08 Mar 2023 10:36:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZqDx-00DM3U-Gm
	for lore@lore.pengutronix.de; Wed, 08 Mar 2023 10:36:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZqDx-0001Hf-1m
	for lore@pengutronix.de; Wed, 08 Mar 2023 10:36:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LWGB4lc3paGC9CwMeg3nQ+VxJkUt147N/m7D0c2kE34=; b=zggH4FFvd/5Y8yIa9oeJ0e793S
	+YTF0FnRD9gz+2AjFLhVZhc0b6IMHx+qi7Cs6WKvKieBCzUsI5QO5tygOh8bEwR0JuI2FLWt9mDt+
	XyjoQ+H2c6uhNPJUoQS5P1WDiL+0gseBPkW8F34ozblZEjMQ7jHsBWjz45W6E7wRsKvpdYts6KtcB
	15c72yBv7ZmByMdGvoeQZ1QlmaBgfB5/Vu93vJv96OPCH4U/25cdNIMAreiYrqqt7A8lc4/77cGYa
	HhcCDVd2/JPNlkBHF9xSlQxRdvr1OolCOJGNSHKPTP1FHI6gLZ4BFaNlpX9Kfux5VK4EzhbFP1t81
	mmNo9vYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZqCY-004DY8-Ay; Wed, 08 Mar 2023 09:35:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZqCT-004DVd-5d
	for barebox@lists.infradead.org; Wed, 08 Mar 2023 09:35:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pZqCL-0000xQ-AL; Wed, 08 Mar 2023 10:35:01 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZqCK-002gSt-M9; Wed, 08 Mar 2023 10:35:00 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZqCK-00B49b-1h; Wed, 08 Mar 2023 10:35:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Mar 2023 10:34:57 +0100
Message-Id: <20230308093457.2637532-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_013509_227587_DA7B7706 
X-CRM114-Status: GOOD (  12.32  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] power: reset: Fix array out of bounds access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In reboot_mode_register() we iterate over the properties of the given
node in order to count the valid properties. The count is then used to
allocate arrays which are then filled in another iteration loop over the
properties. In that loop we use the array entries before we actually
realize that the property is invalid and shall be skipped. That means
we access an out of bounds array entry when the very last property in
the node is invalid. In my case this blew up when enabling
CONFIG_OF_OVERLAY_LIVE which results in an additional phandle = <xy>
property in the node.

Fix this by simply allocating one array entry more than finally needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/power/reset/reboot-mode.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 375ef0adcb..7f940a2d88 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -139,8 +139,13 @@ int reboot_mode_register(struct reboot_mode_driver *reboot,
 
 	reboot->nmodes = nmodes;
 	reboot->nelems = nelems;
-	reboot->magics = xzalloc(nmodes * nelems * sizeof(u32));
-	reboot->modes = xzalloc(nmodes * sizeof(const char *));
+
+	/*
+	 * Allocate one entry more than necessary, because in the loop below
+	 * we use an entry before we realize that the property is not valid.
+	 */
+	reboot->magics = xzalloc((nmodes + 1) * nelems * sizeof(u32));
+	reboot->modes = xzalloc((nmodes + 1) * sizeof(const char *));
 
 	reboot_mode_print(reboot, "registering magic", reboot_mode);
 
-- 
2.30.2



