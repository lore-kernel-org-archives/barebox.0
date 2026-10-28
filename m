Delivery-date: Wed, 28 Oct 2026 10:25:21 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzuK-004Gyv-2i
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:25:21 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A8385201E0D
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:25:20 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=v1lp7+yc;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XAmPcldp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179521; a=rsa-sha256;
	cv=pass;
	b=XtiYEQd4rk19Si+zRJewu60P9Sgy+sR4arcHyS/rAiA5ovtSg/wy7Ts82AYu9vEXFe3nww
	Vll6YoVhIR+Vb24/3nhkz4ouwf2n9serPWVClReRxl+muRvvgXVPl9vYHjxBSE0u6CnWWy
	1GMyrTUBbA/B9dCPvkmmx1zC+4OM2EPCdsgNMkHIRRS4s4acxI6Kfk6sQ9HtJ96TsapAuB
	Zp3LrHOCtw9ZQaTWGThYrCczDyjXwbkDwVsyBEviDKmhgheD9ZS0B7W2GVCSQyo/5RTW2t
	Zxog+iZIY0mGKptv7KjcjfvOyPJTpOjZKir7NnjS79JJeBJLI8ODDW8IsO1FCw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=v1lp7+yc;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XAmPcldp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179521;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kvYy4uO/zLv0qEKQjmM1bC9a3hp+cX1Cw52At5PEaow=;
	b=SJyqLE4tYPzoxJSnJsCBzM6ZDwC2KjhWGImjB0JSkDZEnFOD/2b5ywt/fywXKw41boE14T
	MPo51orncqdggeqlAruxKVVYaCPrrg4SfMLYnkUvYxrVn4i2jr2SN41RrwKnVBNxxbF4u8
	b/sFFJ7b7CkhRnwED938N3iNQXNM+O7KC7ULpUBqsUkWFqPCCye8LkojjPyJrcaYNkjXDk
	dmNjAI5ll2UEvTN3OHuxFQ2Uyv3uPK39gOE8cWuW9o5go9Vc+GM0A+nYYTBIkuSzFvP/F4
	w1vpGnAp+ILX2WLoK12xAbYo6Vxfl8OoZT8nt3RmbLFWaYDI4sCbtGEFaRnmxw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=kvYy4uO/zLv0qEKQjmM1bC9a3hp+cX1Cw52At5PEaow=; b=v1lp7+ycSj8Weq
	jzQJXwo6AniZwFRdEwvOhRtmCqVkQn6kJh9sIncoauSzbu3guWjPIrxdFkJKjJyOcvheeFpYgMuXO
	XTjo+If/HzN09Qi4o1++DBr+jexXylkw0W6dEnE3n1MLEl3WHnT3iFiuZ+PeGkjfc2qWIYcs6xHBZ
	3lFGtqM+GIiEulDyiMPFoDntynV6soM23jHZ9jtrHp03gfeGM8o3Eke7bewKqkufBgFiX024HoHes
	/nDPEmwg8fvQaTvW67CG0RC4auUSslSofQnfj0ZYv0BWX+2w9TReTOXuQznWieh0nXnc5QMtMoFh8
	Ex34jclItPUSlYe/sBvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzu5-00000006eYF-2oL9;
	Wed, 28 Oct 2026 09:25:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztw-00000006eIa-2CHa
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 390D6202964;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kvYy4uO/zLv0qEKQjmM1bC9a3hp+cX1Cw52At5PEaow=;
	b=XAmPcldpRoiDn5YmPwR2u7u5hJ5j0n3rO0f4BalHPWnzVHAGRzsFhwOwawxYHt5quqroUJ
	N82GImK39TK+4MtIrRPwcC73gbs7bOKCz/bI0G1GkRITFX9XKN9qj4g6Um9owVqym5u1Ed
	AZja8LEDJbMQIbI/H0Lvo5PkSE3L47IJqLeVnywyRB520UBmV2KWv/2dMY8stvx8ct5kjs
	GDQ5DUZsHyyNLpg5NLSD7saHJ0Y6I0shFu18Bpyk7kMVW543fvzkMzDU8o2v7nRnrXjuoj
	waVzVjMUe7LwM4QP9SJfRvynvtXOlvCBXHb3QPkUT6qmbKIAZPJJSI8otcqxyA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179486; a=rsa-sha256;
	cv=none;
	b=L2745FuLjcpmE8rxzVY2eHWQXSTNzwf9cvZ4/9iIAl9hihRexXp+DUKZ5d0N4se3A6ZtLB
	l/tDV501xmqFHMaeGz0iCwhhC5Y19v3rlCKGn+fo/G65yphcsgYRHHeIiv8aRj6r6eCQgD
	hF/t7ohxV6F1aRuXw0qFbUelV1M9G5gy9ilXMrRF+vUpMXTqkz70j6RT/Mm8JzPeTfZOQg
	860Q1HhpodbbtCGZ3blKKnzuCKdCkxKGJv1I8vwXiQSYBl7p+Exa9o0z19zYEMTF1hzAEL
	NHwm304JnoyVU4/7o2GcaALAo9yiSYJWqoP4lD8rDl6TUddxMw2KPsdo/ZAEXg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kvYy4uO/zLv0qEKQjmM1bC9a3hp+cX1Cw52At5PEaow=;
	b=LwDbt589CRQvuKN6S+UopJN9obVVj4h5gboG8gPYQViiVmDlJbz3maDH4GF/ijpTo1os20
	ttAdDGvElt/DlQseBWvFwpj/H2Lf1HG/HYfqtiq3LAN8QIwiEbvNeWA0AkogugFKZEd6r2
	I39b0U4gUzOPAEvlhNF9Lprh3YLwoswzdVG3RkziUmzAv/fFPNzPTJAa/I5IulekpS8977
	Lru7HKNDbkHCHw1NoKpO6D+9W9m5iyJBf3jNi7uLQ3ezsAbU3HVBkVaXq6JLyfLDqpr6Qh
	svLEFYv+MlxbzA5WT9+SM0zujiUihqWY66nw7+Ap8zyX+I4Aoq5n8CA/lsBudA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 1E3C77420DE;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 18/19] driver: make dev_platform_get_and_ioremap_resource() device-managed
Date: Wed, 28 Oct 2026 10:14:52 +0100
Message-ID: <20261028092442.3300753-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022457_085067_CC942F3B 
X-CRM114-Status: GOOD (  17.69  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> dev_platform_get_and_ioremap_resource()
    has the same -EBUSY problem on deferred probe. Implement it on top of devm_request_mem_resource()
    as well, move it to devres.c and give it the Linux name, which [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: A8385201E0D
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: cx4qpu6zhiibp8n8apmrfik3398o9q37

From: Ahmad Fatoum <a.fatoum@barebox.org>

dev_platform_get_and_ioremap_resource() has the same -EBUSY problem on
deferred probe. Implement it on top of devm_request_mem_resource() as
well, move it to devres.c and give it the Linux name, which leaves
devm_platform_ioremap_resource() as a thin wrapper like upstream.

Assisted-by: Claude:opus-5-1m
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/devres.c                         | 25 ++++++++++++++++--
 drivers/base/driver.c                         | 26 -------------------
 drivers/hw_random/timeriomem-rng.c            |  2 +-
 drivers/mfd/atmel-flexcom.c                   |  2 +-
 drivers/phy/rockchip/phy-rockchip-usbdp.c     |  2 +-
 drivers/spi/spi-fsl-qspi.c                    |  2 +-
 drivers/video/rockchip/dw-mipi-dsi-rockchip.c |  2 +-
 include/driver.h                              |  6 ++---
 8 files changed, 31 insertions(+), 36 deletions(-)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index cfa6cd3e3d9e..f1cf8e465074 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -207,16 +207,18 @@ struct resource *devm_request_mem_resource(struct device *dev, int num)
 EXPORT_SYMBOL(devm_request_mem_resource);
 
 /**
- * devm_platform_ioremap_resource() - request and map resource 'num' for a device
+ * devm_platform_get_and_ioremap_resource() - request and map resource 'num'
  * @dev: device to request the memory resource for
  * @num: index of the memory resource
+ * @out_res: where to store the requested resource, may be NULL
  *
  * barebox maps everything outside the RAM banks suitably for MMIO, so this
  * only requests the device-managed region.
  *
  * Return: a pointer to the registers or an ERR_PTR() on failure.
  */
-void __iomem *devm_platform_ioremap_resource(struct device *dev, int num)
+void __iomem *devm_platform_get_and_ioremap_resource(struct device *dev, int num,
+						     struct resource **out_res)
 {
 	struct resource *res;
 
@@ -233,6 +235,25 @@ void __iomem *devm_platform_ioremap_resource(struct device *dev, int num)
 	if (WARN_ON(IS_ERR_VALUE(res->start)))
 		return IOMEM_ERR_PTR(-EINVAL);
 
+	if (out_res)
+		*out_res = res;
+
 	return IOMEM(res->start);
 }
+EXPORT_SYMBOL(devm_platform_get_and_ioremap_resource);
+
+/**
+ * devm_platform_ioremap_resource() - request and map resource 'num' for a device
+ * @dev: device to request the memory resource for
+ * @num: index of the memory resource
+ *
+ * Like devm_platform_get_and_ioremap_resource(), but without handing the
+ * resource out.
+ *
+ * Return: a pointer to the registers or an ERR_PTR() on failure.
+ */
+void __iomem *devm_platform_ioremap_resource(struct device *dev, int num)
+{
+	return devm_platform_get_and_ioremap_resource(dev, num, NULL);
+}
 EXPORT_SYMBOL(devm_platform_ioremap_resource);
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index f87ecb200feb..33dad6ab6b16 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -557,32 +557,6 @@ void __iomem *dev_request_mem_region_by_name(struct device *dev,
 }
 EXPORT_SYMBOL(dev_request_mem_region_by_name);
 
-void __iomem *dev_platform_get_and_ioremap_resource(struct device *dev,
-						    int num,
-						    struct resource **out_res)
-{
-	struct resource *res;
-
-	res = dev_request_mem_resource(dev, num);
-	if (IS_ERR(res))
-		return IOMEM_ERR_PTR(PTR_ERR(res));
-
-	/* As everything is mapped 1:1 by default, drivers on unlucky
-	 * platforms can end up successfully requesting memory, but
-	 * getting a base address that looks like an error pointer.
-	 * Let's warn loudly about this case, as these drivers
-	 * should be using dev_request_mem_resource instead.
-	 */
-	if (WARN_ON(IS_ERR_VALUE(res->start)))
-		return IOMEM_ERR_PTR(-EINVAL);
-
-	if (out_res)
-		*out_res = res;
-
-	return IOMEM(res->start);
-}
-EXPORT_SYMBOL(dev_platform_get_and_ioremap_resource);
-
 struct resource *dev_request_mem_resource(struct device *dev, int num)
 {
 	struct resource *res;
diff --git a/drivers/hw_random/timeriomem-rng.c b/drivers/hw_random/timeriomem-rng.c
index 8d4705830653..4936c3c9676f 100644
--- a/drivers/hw_random/timeriomem-rng.c
+++ b/drivers/hw_random/timeriomem-rng.c
@@ -93,7 +93,7 @@ static int timeriomem_rng_probe(struct device *dev)
 	if (!priv)
 		return -ENOMEM;
 
-	priv->io_base = dev_platform_get_and_ioremap_resource(dev, 0, &res);
+	priv->io_base = devm_platform_get_and_ioremap_resource(dev, 0, &res);
 	if (IS_ERR(priv->io_base))
 		return PTR_ERR(priv->io_base);
 
diff --git a/drivers/mfd/atmel-flexcom.c b/drivers/mfd/atmel-flexcom.c
index 11daeafc5ffe..a7a650690e3f 100644
--- a/drivers/mfd/atmel-flexcom.c
+++ b/drivers/mfd/atmel-flexcom.c
@@ -35,7 +35,7 @@ static int atmel_flexcom_probe(struct device *dev)
 	if (opmode < ATMEL_FLEXCOM_MODE_USART || opmode > ATMEL_FLEXCOM_MODE_TWI)
 		return -EINVAL;
 
-	base = dev_platform_get_and_ioremap_resource(dev, 0, NULL);
+	base = devm_platform_get_and_ioremap_resource(dev, 0, NULL);
 	if (IS_ERR(base))
 		return dev_err_probe(dev, PTR_ERR(base), "Could not get memory region\n");
 
diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 9b08e60bbf6f..fee565cb231c 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1053,7 +1053,7 @@ static int rk_udphy_probe(struct device *dev)
 	if (!udphy->cfgs)
 		return dev_err_probe(dev, -EINVAL, "missing match data\n");
 
-	base = dev_platform_get_and_ioremap_resource(dev, 0, &res);
+	base = devm_platform_get_and_ioremap_resource(dev, 0, &res);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
diff --git a/drivers/spi/spi-fsl-qspi.c b/drivers/spi/spi-fsl-qspi.c
index cda0b06a5446..029f267453bc 100644
--- a/drivers/spi/spi-fsl-qspi.c
+++ b/drivers/spi/spi-fsl-qspi.c
@@ -798,7 +798,7 @@ static int fsl_qspi_probe(struct device *dev)
 		goto err_put_ctrl;
 	}
 
-	q->ahb_addr = dev_platform_get_and_ioremap_resource(dev, 1, &res);
+	q->ahb_addr = devm_platform_get_and_ioremap_resource(dev, 1, &res);
 	if (IS_ERR(q->ahb_addr)) {
 		ret = PTR_ERR(q->ahb_addr);
 		goto err_put_ctrl;
diff --git a/drivers/video/rockchip/dw-mipi-dsi-rockchip.c b/drivers/video/rockchip/dw-mipi-dsi-rockchip.c
index f065ebcefa00..ace989427422 100644
--- a/drivers/video/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/video/rockchip/dw-mipi-dsi-rockchip.c
@@ -1032,7 +1032,7 @@ static int dw_mipi_dsi_rockchip_probe(struct device *dev)
 	if (!dsi)
 		return -ENOMEM;
 
-	dsi->base = dev_platform_get_and_ioremap_resource(dev, 0, &res);
+	dsi->base = devm_platform_get_and_ioremap_resource(dev, 0, &res);
 	if (IS_ERR(dsi->base)) {
 		DRM_DEV_ERROR(dev, "Unable to get dsi registers\n");
 		return PTR_ERR(dsi->base);
diff --git a/include/driver.h b/include/driver.h
index 4005804bb1a9..e065e89547c9 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -196,9 +196,9 @@ struct resource *dev_request_mem_resource_by_name(struct device *dev,
 /* Like dev_request_mem_resource(), but released when the device goes away */
 struct resource *devm_request_mem_resource(struct device *dev, int num);
 
-void __iomem *dev_platform_get_and_ioremap_resource(struct device *dev,
-						    int num,
-						    struct resource **out_res);
+void __iomem *devm_platform_get_and_ioremap_resource(struct device *dev,
+						     int num,
+						     struct resource **out_res);
 
 /*
  * exlusively request register base 'num' for a device
-- 
2.47.3



