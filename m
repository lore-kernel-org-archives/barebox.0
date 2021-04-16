Delivery-date: Fri, 16 Apr 2021 12:00:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLGh-0001CE-Km
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 12:00:07 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLGg-000721-H8
	for lore@pengutronix.de; Fri, 16 Apr 2021 12:00:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AOkKX+ifkIUiSWTxljxjKH9ykAdGCkI21tfvpffGJDc=; b=i1fhHRf3LGj+p6F/FlkMJu3nw
	3AWbND+UhWvQQecpq968n+KqDfrVSmKCHJbyAVcNuNnbHmWv9ClvsdadQ7KXlkrgCz/OwApRoos0y
	LOh+akzo0ahM4lma9t4iH+RSsF250Eqpjz4cdZLI74ABKsg8CVLPnjKzYKY0xU7PzbMxR62tdHGbt
	MfLZVmTVfmu7jOmTNG9OkDnz+ybUJato5/Czrio1zrJ0HKDxZ1/PCQ9Jb1AbuC3k76e+IqBPWczQ5
	RgiPoODvCnlnvKxwdKOMQ3aZJKRh+U+pZYFPXe8wSu1bLbXafr0jszzh5bF0i5LKicAb2Hv6tuA2c
	5ykEA8YaQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLEu-001eN3-TA; Fri, 16 Apr 2021 09:58:17 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7R-001cVB-Cs
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=hirWDcG7YnCysIkkTqHyhc5ql3iFAxNXVrWDs8fqQ74=; b=0GDBie95uA5S+VcKBoaIQnu0ON
 PttudYl3yU5HVjJ8qjSWvUeriwsMIrY9yo6x9bShCP8PYJlAunoGjHwRlp2ZsaFARwLTyLuEqgxDM
 5aIBnvvF2jh3fhFVs9OPt6O/tNsUQ9OAS3CaEENGgxhUe98nqDhPyLrysZbnhDsZjG6G+RXxqMUih
 1pQ0DTcpSW3c0PBbSYPNu+CQ/qQ3eigwOejhk4+cb0nZA/Y/cRBLDlnYUDGf43AVRPBdacVBECO6a
 vXLdGHuuZTHeaNhq7+NWDzhoQEVnWLs/qOVGRZ+LJBOZbjVx85HjsNpOad3Tf5z5v2isnMAMfll//
 55VqnZJA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7N-009Fya-IO
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051G-1a; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001DN-PZ; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:28 +0200
Message-Id: <20210416094943.3648-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025029_672442_B871038D 
X-CRM114-Status: GOOD (  16.47  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
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

