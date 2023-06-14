Delivery-date: Wed, 14 Jun 2023 12:09:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRK-006UMt-6G
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 12:09:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9NRH-00069W-Gx
	for lore@pengutronix.de; Wed, 14 Jun 2023 12:09:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ApH4CYxZptoO4iAjWDdV2FKGPlawfu0Cy4f35ICWx3Q=; b=i37M8vSFtdmUQa108WSItbICQC
	bqQP/CtCGDqs6tbdRLpydnMiu8MinWNysNW4rHTtBcThvKaXlOrcft7RYC9WP6ShTBMUavdtkdPf0
	t/4ATQXqDuC4yCoWqUVshhzc7XmiD4F4bGCLQcc8EbUNAKlAmYa993K3UfHPZTsSmZbKIJrnmqp3p
	S7g1VPeJ06lxnHSFBJfHwUavPu4to/ZtEUptee41qJy5nM+cLKWI4MLB1Xb48Al1Tk11ByXI5LYfc
	1w47nDFd1H1R5uy300n1YxbhepXn5sqjrDqs00bq/YhDFX4nxgFub6/e/papVh3zn4XSp/E7jesSu
	0WZ11RGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ7-00BAVw-3B;
	Wed, 14 Jun 2023 10:08:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9NQ0-00BAQs-2r
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 10:08:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-0005cY-Ti; Wed, 14 Jun 2023 12:07:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPt-007Kbp-8r; Wed, 14 Jun 2023 12:07:53 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9NPr-00E9v6-NH; Wed, 14 Jun 2023 12:07:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Jules Maselbas <jmaselbas@kalray.eu>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jun 2023 12:07:46 +0200
Message-Id: <20230614100747.3368109-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
References: <20230614100747.3368109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_030800_961411_6B627B1B 
X-CRM114-Status: GOOD (  11.91  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/10] OF: gpio: call of_node_put in of_get_named_gpio_flags
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

This aligns us with the Linux implementation. There's no functional
change though, because of_node_put is a stub in barebox (same as when
compiling kernel without CONFIG_OF_DYNAMIC enabled).

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - reword commit message to make it clearer that patch is a no-op
    in barebox
---
 drivers/of/of_gpio.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index c20133bbfd6f..76398f75422f 100644
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



