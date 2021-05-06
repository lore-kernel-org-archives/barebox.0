Delivery-date: Thu, 06 May 2021 11:31:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLa-0001Xu-4o
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:31:06 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLX-0000Cw-94
	for lore@pengutronix.de; Thu, 06 May 2021 11:31:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AOkKX+ifkIUiSWTxljxjKH9ykAdGCkI21tfvpffGJDc=; b=JB/NGzDlC31pGa+y1uYHzr3zl
	xDLDxN/ojdPgRgJ8Y3VfpY2BepthwnrGTJTbBmAmjC4cTRoHush2hd9BIu2F3pLVq3P/GPAPqkNc0
	10w1kP0LP/7Bp23ntWZIhJEXiyLM3+6ZlSpXR/Xzox37mCQy3DXBss9tl7DCUG5ZnLjz5i7/lv3E+
	fcveCX4fpyawFYFG0TR65QpwYvcCtG8coHy5wWwgeB9BV5ek/2xm0xC4dqd2DSRbufXVcgXfkvVjH
	YPijFIB7zIzoy8k7fXWg+X6lghPMvEmahTdxI7+s7lrSjMvnvXVhjaxzvEj+7QA9bXWCc1NwEJe8S
	VcD0d4fpA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaKS-003o4h-3g; Thu, 06 May 2021 09:29:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJk-003nqk-7P
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=hirWDcG7YnCysIkkTqHyhc5ql3iFAxNXVrWDs8fqQ74=; b=xxjTNE0qPfMmgwYM2S5jnMfKdS
 v6RvE904hJD81AshzuCokyWideH5fxJhDBqWpKsP9N3QGyWNJrj4ZMN9gVOPPfxWvV4c+bJmAceW8
 +EHPCdkrbS74/R5JxRDRbEroEAFlAZlmu3diyUnmb/hyylw0myfsvp5Y2SIWj3mM1H15ExGoD4lgP
 Y2zS642SKlMHRWp8C72G1qFS0/F32gcUYlvAIP8mBAHvTs30979/wTvBvUcIJawOIgRyiHUAFQlVT
 8aUIkhzwaDv/p7jg6HsOuKiENKgvtwc3nr/Xp3UXIVaKVua44VOsxWcT1oMsB4Nf2+Nc6yLeQwoGy
 LqrW5tWQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJe-005uFV-Te
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:11 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007p6-2q; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001lC-Cg; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:46 +0200
Message-Id: <20210506092901.25461-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022907_015883_1CC272C0 
X-CRM114-Status: GOOD (  16.39  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/17] of: platform: remove check of already added devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

This check is a relict of the early barebox device tree days, where
devices were added by machine and/or board code too. The check ensured
too not populate the same device twice. Nowadays _real_ hardware devices
(devices with hardware resources) which are not auto enumerable should
only be added using the device tree. Remove the check to cleanup the
code and to remove looping over each device every time
of_platform_device_create() is called instead of keeping it for legacy
boards/machines. Those legacy boards/machines should be converted
instead.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-3-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 31 +------------------------------
 1 file changed, 1 insertion(+), 30 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 21c7cce1a5..51781798c6 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -101,7 +101,7 @@ struct device_d *of_platform_device_create(struct device_node *np,
 	struct device_d *dev;
 	struct resource *res = NULL, temp_res;
 	resource_size_t resinval;
-	int i, j, ret, num_reg = 0, match;
+	int i, ret, num_reg = 0;
 
 	if (!of_device_is_available(np))
 		return NULL;
@@ -121,35 +121,6 @@ struct device_d *of_platform_device_create(struct device_node *np,
 				return NULL;
 			}
 		}
-
-		/*
-		 * A device may already be registered as platform_device.
-		 * Instead of registering the same device again, just
-		 * add this node to the existing device.
-		 */
-		for_each_device(dev) {
-			if (!dev->resource)
-				continue;
-
-			for (i = 0, match = 0; i < num_reg; i++)
-				for (j = 0; j < dev->num_resources; j++)
-					if (dev->resource[j].start ==
-						res[i].start &&
-					    dev->resource[j].end ==
-						res[i].end) {
-						match++;
-						break;
-					}
-
-			/* check if all address resources match */
-			if (match == num_reg) {
-				debug("connecting %s to %s\n",
-					np->name, dev_name(dev));
-				dev->device_node = np;
-				free(res);
-				return dev;
-			}
-		}
 	}
 
 	/* setup generic device info */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

