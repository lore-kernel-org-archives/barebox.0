Delivery-date: Fri, 02 Jun 2023 09:51:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYt-0070tT-FR
	for lore@lore.pengutronix.de; Fri, 02 Jun 2023 09:51:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4zYq-0000ts-M8
	for lore@pengutronix.de; Fri, 02 Jun 2023 09:51:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lS+QQ3FBZJlq3jqhWmd1N+p5TcJCSyOeRsvUXezbo+s=; b=nkQfYBEnbe7mz0jtrEmriO39gV
	dHTfH1UBf+w3naNSG8ZP2lZbowL8S91dyu84Fyusvid2HcmthsSIcrxJovlZ/IjXH0WuKQCb0WlRM
	G3sJ6xxZZrt95EdOVuxoFcRb+2A7i3Biba3l+F5tKed9GA2AcHeAEUK/vxXoV9jEhpTC/goI2LcqT
	xq4jVcf/zy/qD1x68AAUvXV40bbUl4OmVpG0Zy5CJ47m6sm/V0N+JLwj4XB+yxcZNfxlf+hI8DMli
	etBT0cDFBb0OkQtIpTbgAQbSkxBkqne7H8ReLCa79W689smidH7dWbjxXcgVI7G1VyhNKzwa2r+21
	QRwh5yrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXf-0063gE-2d;
	Fri, 02 Jun 2023 07:49:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4zXX-0063az-0E
	for barebox@lists.infradead.org;
	Fri, 02 Jun 2023 07:49:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1q4zXU-00006c-O3; Fri, 02 Jun 2023 09:49:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri,  2 Jun 2023 09:49:20 +0200
Message-Id: <20230602074921.2687669-10-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230602074921.2687669-1-m.felsch@pengutronix.de>
References: <20230602074921.2687669-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_004939_218277_B202EA0E 
X-CRM114-Status: GOOD (  10.29  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/10] OF: gpio: fix device_node leakage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Drop the device_node after we are done.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/of_gpio.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index c20133bbfd..76398f7542 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -76,16 +76,17 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 	if (!dev) {
 		pr_debug("%s: unable to find device of node %s\n",
 			 __func__, gpiospec.np->full_name);
-		return -EPROBE_DEFER;
+		ret = -EPROBE_DEFER;
+		goto out;
 	}
 
 	ret = gpio_get_num(dev, gpiospec.args[0]);
 	if (ret == -EPROBE_DEFER)
-		return ret;
+		goto out;
 	if (ret < 0) {
 		pr_err("%s: unable to get gpio num of device %s: %d\n",
 			__func__, dev_name(dev), ret);
-		return ret;
+		goto out;
 	}
 
 	if (flags) {
@@ -93,6 +94,9 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 		of_gpio_flags_quirks(np, propname, flags, index);
 	}
 
+out:
+	of_node_put(gpiospec.np);
+
 	return ret;
 }
 EXPORT_SYMBOL(of_get_named_gpio_flags);
-- 
2.39.2



