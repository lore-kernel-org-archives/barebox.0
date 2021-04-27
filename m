Delivery-date: Tue, 27 Apr 2021 22:24:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGR-0006XZ-1l
	for lore@lore.pengutronix.de; Tue, 27 Apr 2021 22:24:59 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbUGP-000673-Vi
	for lore@pengutronix.de; Tue, 27 Apr 2021 22:24:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VR7yQ9juzQIAtFyn+TJQA09j10oaI6Sk8gTMyBccgoA=; b=BvtS8dO7eA8yB1K6KKKKwJeWN
	cjqT0+glX2Ipf6XxuAu3+zkVFkNqnABpBqarO8iQEQ3aBhDkocmVEgz7pNkUbyvlPypASbvgFTT8l
	wbQ1/G5zpFQtpzKbOnGGqyusHjxOVRr2DxMJcHR1wMgC0V9oC5EoFjTTBPol3Y0XWe3NwmejKUdk5
	eqRNdoSAgy95AK1hctBk7RVu5lDCP3eKbpjR13ZD3exokQd+buUsRjjz1ahW29bzzQ+dlalaUeZ+4
	u7TvJ24eJPwr0idNes6FqQTBAAXwbEzP5Q4rC1N9f5MAR5E5/LmamUb93xJrtRj2f1L/ZH9ddS6+Y
	ToBIpLJzA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbUF1-002Bqs-Sh; Tue, 27 Apr 2021 20:23:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEv-002BqT-RS
 for barebox@desiato.infradead.org; Tue, 27 Apr 2021 20:23:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=LvYePqLHOWErm2LH2Hc8kdvzlUr/wLhPDQveg3wXjr0=; b=4xt0kT3tX9RUvoK3JlH/ZkJ8qA
 iZCnHllquku4FeTEDlHWJXXLbs4PdUba3LhrG4BTTXV0I5oYScNmBudq/bbkXNzTcXUjEPtdEjFrj
 iM13FkBVYVWENRGvIWzjHUEixAhvwM9DI4w7CQIvsT+UMB+HqihGGfqnuwOPl4QqykeZ5TJcqruqg
 vjKss4OLDpKxIEAaD6rDEG9EULBG28Y/LMAvXjIMhCii/fJT4Vm3tZJpmXa2QQzw4D32b4NXECYm6
 m+28pEIVnDa4izsGHGLQbW+tde/yGH+fgGOTDqCRfN2Uphe4Qo0eih2x42r58AWn9GQWYEhxW0YPw
 DFvrgWvQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbUEt-00GyHn-9B
 for barebox@lists.infradead.org; Tue, 27 Apr 2021 20:23:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEo-0005Xb-Pu; Tue, 27 Apr 2021 22:23:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lbUEm-00016i-2h; Tue, 27 Apr 2021 22:23:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Apr 2021 22:23:05 +0200
Message-Id: <20210427202309.32077-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210427202309.32077-1-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_132323_361077_7AAE88CD 
X-CRM114-Status: GOOD (  13.56  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/12] gpio: gpio-generic-platform: remove unused non-DT
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have nothing in-tree matching against either "basic-mmio-gpio"
or "basic-mmio-gpio-be" and none should be added, because new platforms
should probe from device tree. Remove the unused the non-DT support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpio-generic.c | 22 +---------------------
 1 file changed, 1 insertion(+), 21 deletions(-)

diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index 8259b799f9a7..f381ddbf4e79 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -337,7 +337,6 @@ static int bgpio_dev_probe(struct device_d *dev)
 	unsigned long flags = 0;
 	int err;
 	struct bgpio_chip *bgc;
-	struct bgpio_pdata *pdata = dev->platform_data;
 
 	r = dev_get_resource_by_name(dev, IORESOURCE_MEM, "dat");
 	if (IS_ERR(r))
@@ -373,12 +372,6 @@ static int bgpio_dev_probe(struct device_d *dev)
 	if (err)
 		return err;
 
-	if (pdata) {
-		bgc->gc.base = pdata->base;
-		if (pdata->ngpio > 0)
-			bgc->gc.ngpio = pdata->ngpio;
-	}
-
 	dev->priv = bgc;
 
 	return gpiochip_add(&bgc->gc);
@@ -391,18 +384,6 @@ static void bgpio_dev_remove(struct device_d *dev)
 	bgpio_remove(bgc);
 }
 
-static struct platform_device_id bgpio_id_table[] = {
-	{
-		.name		= "basic-mmio-gpio",
-		.driver_data	= 0,
-	},
-	{
-		.name		= "basic-mmio-gpio-be",
-		.driver_data	= BGPIOF_BIG_ENDIAN,
-	},
-	{ }
-};
-
 static struct of_device_id __maybe_unused bgpio_of_match[] = {
 	{
 		.compatible = "wd,mbl-gpio",
@@ -413,8 +394,7 @@ static struct of_device_id __maybe_unused bgpio_of_match[] = {
 
 static struct driver_d bgpio_driver = {
 	.name		= "basic-mmio-gpio",
-	.id_table	= bgpio_id_table,
-	.of_compatible	= DRV_OF_COMPAT(bgpio_of_match),
+	.of_compatible	= bgpio_of_match,
 	.probe		= bgpio_dev_probe,
 	.remove		= bgpio_dev_remove,
 };
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

