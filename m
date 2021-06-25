Delivery-date: Fri, 25 Jun 2021 09:45:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgWX-0007pP-Ci
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:45:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgWV-0005CS-DB
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:45:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LhciLq1sRwRYqPGcfaH8T9W4COCUfAnRyMKenQhHxI=; b=vqZ2xbt/MCH82o
	3zdDryRPwwgnytBGSL567DNjqWBdEArz6JD5yjhw1OuU+oXNMf9+BKkQ8sdh2MkKLlbzj4qJxZuPY
	b9XzuS5VvJgze/sglBo+BHE0C4jihTxciQj42xnk0Um2rcVrUkQGquAa/zu13x4mXsc46beOP2KI5
	URB7lZzFikeC2rWlEFme8/VY5ewab9/CieeIHeT3pcJbfe/KmdPpyg+0TGPbxKLDP1cFsw6d4K7mA
	uZKRFKcGnacH7Cn38FYE0XpBal/ktwsQGMW7FR06BmBsk6HMuDyiwjHO3ZmmAAjauU2a8p92Fpa7k
	gI8iu/Ht1fVpUiuZJ1kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgV8-0005A7-BG; Fri, 25 Jun 2021 07:43:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDg-00HZ1d-4N
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:48 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002QX-AK; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000d2-AZ; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:24 +0200
Message-Id: <20210625072540.32717-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002544_397090_BC7377AD 
X-CRM114-Status: GOOD (  17.13  )
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
Subject: [PATCH 03/19] of: platform: Keep track of populated platform devices
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
index d67a40bd19..84d6e9b682 100644
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

