Delivery-date: Fri, 16 Apr 2021 12:01:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLHg-0001DV-Qy
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 12:01:08 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLHf-0007Rk-VL
	for lore@pengutronix.de; Fri, 16 Apr 2021 12:01:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=83Qt5zKbiOC3QuuexRnPXQctI4hC1G2WkhUqb4xzxsc=; b=hGYq009T4lY0RFrroMMrqBqAZ
	Mo0JIAktYMj7EPjxPvZ8BtcZCNzhp7UY7YF1EWchJwuuH56upsnZd0+Dpz3IwbYlCEXXzFYF4p59A
	He6KxU8zYnVcryWm2dM2v0hChcLimo3O5auPgovlb+b4gXAQ7mdBlmGfqFkKZmhcO5d6GkE6xbHC7
	TDr8Wcfaqx1x7kaIl1AbWfwVTBSkkGq8iKKLWcFgVFAijpbVTmtlQ/w6YiiMvGlCDhKYo5LpGbSJb
	IjTiaWEp4J24hq+Kr36re9oAx7uDINTFdt+7qLG7Gc457QaCmxtNNzqPMWBzH1SgDjP6FmR+TMN5z
	sHRTRCafQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLG5-001eis-1X; Fri, 16 Apr 2021 09:59:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7Y-001cW6-Eb
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=WIq5rRivSP9k65s6qazNoe1sBhqbACZdV+SKTT64CXs=; b=s+vj+SbcgDyaHjQqw0gzrqMBuB
 IT6G96fgsyhKbEXCYVxINVTMn4SSTZW3xocclYPQNEuex74LW1PpzhPRUHHOiN79Zlm2iLeYhKxHo
 RJke2vBbYT0YLOMw2mUR/wG7GjZHpif69vDRylqN3M1zcSXk83fUEY/DE8MSO1Qk8k3CTeLhu9uAP
 h4yxcgijC7SHOokBrLloAJKmOre5pq2YsqI6C0G0fGta9VG0cw9hyOM3imT0UXwcbp502HrNSpW13
 AalGg7QytTnkVh7Ela4kR+Oc/0M/rX3LcSP+JKZib1Ql77yiT5HmLLw11XuUtj9hVjygPGEF10Q40
 0EprzFgw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7V-009G0D-Kg
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051I-4p; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001DQ-Q4; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:29 +0200
Message-Id: <20210416094943.3648-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025037_707790_0A6977EE 
X-CRM114-Status: GOOD (  17.00  )
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
Subject: [PATCH 03/17] of: platform: Keep track of populated platform devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Linux does not allow to populate the same of device more than once.
Linux uses the OF_POPULATED flag for that purpose. Align the logic with
the current linux state with the exception that we are returning the
already created device. This is needed for the later added deep-probe
mechanism.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-4-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 20 +++++++++++++++++++-
 include/of.h          |  1 +
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 51781798c6..01de6f98af 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -106,6 +106,13 @@ struct device_d *of_platform_device_create(struct device_node *np,
 	if (!of_device_is_available(np))
 		return NULL;
 
+	/*
+	 * Linux uses the OF_POPULATED flag to skip already populated/created
+	 * devices.
+	 */
+	if (np->dev)
+		return np->dev;
+
 	/* count the io resources */
 	if (of_can_translate_address(np))
 		while (of_address_to_resource(np, num_reg, &temp_res) == 0)
@@ -141,8 +148,10 @@ struct device_d *of_platform_device_create(struct device_node *np,
 		(num_reg) ? &dev->resource[0].start : &resinval);
 
 	ret = platform_device_register(dev);
-	if (!ret)
+	if (!ret) {
+		np->dev = dev;
 		return dev;
+	}
 
 	free(dev);
 	if (num_reg)
@@ -223,6 +232,13 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	if (!of_device_is_available(np))
 		return NULL;
 
+	/*
+	 * Linux uses the OF_POPULATED flag to skip already populated/created
+	 * devices.
+	 */
+	if (np->dev)
+		return np->dev;
+
 	dev = xzalloc(sizeof(*dev));
 
 	/* setup generic device info */
@@ -246,6 +262,8 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	if (ret)
 		goto amba_err_free;
 
+	np->dev = &dev->dev;
+
 	return &dev->dev;
 
 amba_err_free:
diff --git a/include/of.h b/include/of.h
index 645f429bde..1f68d78b24 100644
--- a/include/of.h
+++ b/include/of.h
@@ -35,6 +35,7 @@ struct device_node {
 	struct list_head parent_list;
 	struct list_head list;
 	phandle phandle;
+	struct device_d *dev;
 };
 
 struct of_device_id {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

