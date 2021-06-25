Delivery-date: Fri, 25 Jun 2021 09:46:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgXz-0007sH-Cn
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:46:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgXx-0005lP-8P
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:46:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOkKX+ifkIUiSWTxljxjKH9ykAdGCkI21tfvpffGJDc=; b=1FpyaDM3BO/4wk
	9YzeCcKGTmgOLyH2UwXAu4eIax7eXYaQhc+tmVZdmfzgusJi0UV5IVXFORRGIT3FUd2LDQu2EK+Px
	MZ8fn9NpQrG9FWfEjyUOvOkC5w8j3TtNS9nkYLq3U7q67RLbQ+jBqHq02zP5ugo+/jFpAzn9NhtBx
	iNgOD8NdMLX+0dokjEcf3M7i5Vx7TnZeNEcMBSvCWVKKn3E4wFcmsTzjKoq3+HwNJyUW5qh09sYmV
	Y3p0sot6nT9XXoNPfCUfWSConGiy0E5G/tzxIBPJDj6tZNyexhGz3B0BMCUxyWX/BWzKkpq4nuXIV
	ED5AdEV9utL5NoUXX1Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgWU-0005u3-PG; Fri, 25 Jun 2021 07:45:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDg-00HZ1b-4K
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:48 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002QW-8A; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000cz-A1; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:23 +0200
Message-Id: <20210625072540.32717-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002544_358156_9C019636 
X-CRM114-Status: GOOD (  16.52  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/19] of: platform: remove check of already added devices
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

