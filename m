Delivery-date: Wed, 28 Oct 2026 10:29:47 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzyd-004H5m-0Z
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:47 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 158FE202921
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:47 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wHMOqSpi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=alAsA51j;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179787; a=rsa-sha256;
	cv=pass;
	b=d/MsdZMnaGb2r+3CmamfrE/kUxla1E/b5gptnBb+ekMNbmHlIIpEGGHl+oGjmyo8udVaiu
	68QeUAxJGzzNUJ52ryS9CyzCfcR5GFCU9/Qv3IJ4PPLb4jm6um5BTB2mutQL/5RiepRRgO
	jVf1SpQLVRV6siJJ4Y73YnivuOA1ZsU3l53u7nwn9R2spQGgBDZlKL2ZpSuz5SEvQO9K7+
	bupQA2Zf4POmNTiCyCQ27v3VfXfu92583ZUSs6KGRT0QITHodUXmSDf+vwQZSb4eXB0DQT
	Yl/fUQhHv7bREu/FtpEvhfIdDFQD/X+NjQz00InrxZPE/LS/KIZQDbturZ7qBQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wHMOqSpi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=alAsA51j;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179787;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=DCyTfB92HlsfXc4ZaIFR2m2LMHO9vHDacw87YNV0YJM=;
	b=Snb+Av11yMXTBuLJZsNKL/omlA5RHD4mR8FrJvLyb93ATjdsTgJ+9LCJn2wv9A+T8GyMFJ
	DQCXdR2q3/4r1wd1mipMJPbLwrCdG0p6EcPxACcjdm5JKfVyBcawS+1z+AUdi+aWdwt6G0
	bBqFPVZvaU28jPsAZqHEaH6ZCvVs2Mah9ryTMyhLAck2rRb9tAiOo7QT+ktRjLFZjOgVI1
	iGaPc8uKTZj8DfXmzJs6zFLwJmqjZ+FmmM52GbMlV0rYgUTHOlW1CiUeParmSRJ9wUSe2w
	tGg0uASolIoWpguzBdMkayXZAXIIIZrnHwcHr+QpvLgysrYb458v5nky6SzyOQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=DCyTfB92HlsfXc4ZaIFR2m2LMHO9vHDacw87YNV0YJM=; b=wHMOqSpi0KETcq
	MXpwWnFAPJtA7ZvrHnahPOW5S8TTjg5PDSWkqtzJFTQeN11/wElV2uPkpAGsxOks1YPipH333CUM1
	1gVZX4f+oceoDIWlqfef0MlYOJCQE1pJkC2ffLFwAVw+NNgNBpTmwRytEFQ8A+PJ25vITKpxxe816
	JMTB94326bcFdNL4MG6sztLOGFYtorn/9K/FBrioglyzCGD8d+4lECUqoqhuX6k8ugLiTJIWPH/i/
	6NBU/++G2H/4gXX3xgY8mjPWEKtSIkpevF/tFFv9S50adbJuk/Y2dff+KJkMgIeg1PmqHMpsehblO
	RbLh867MnJSZ8ZzI9O7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzu6-00000006eZU-0mUw;
	Wed, 28 Oct 2026 09:25:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztw-00000006eIZ-2Iqw
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:25:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2CF2F202963;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DCyTfB92HlsfXc4ZaIFR2m2LMHO9vHDacw87YNV0YJM=;
	b=alAsA51jeq+fuZcdKKBCnEoQZ3Mc/3GiRKeM1daU7fPicoCNgciyJWyoKJld6qfiagx8h9
	q55r5L2mIRy6vFtLzP1/SqnL3yFxPOv0J8IGheTXbXui+v1WKohmrHvj9/0x8BOAPzH58Y
	rAlnE0BopqB2Rr00s0Lw0FU6bqnUaMCPq/4eU2qb2S3YUycT7cwXAhB0ComgTNxu0HuEvB
	ieBuoqxOdDGJ6HkhKbahVhuEOdU3nqI+20lcxwoZuwtHczTu5mYLlgH+io9usPJ0Wek4Ij
	JlcvWA8bf/z060HUyC0RTYMbCVLzsEn5mxFj2l5fJXjLEtbNxbFKhBYaIU7NNQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179486; a=rsa-sha256;
	cv=none;
	b=aKBcw8ijC9q3d82FlYRYC3exla7V5zHcTQHIoeRV6K9meUZVk4rC2LYjb9GEgH59tE9i1E
	sJQcSjW4ls0YVpRcEhHpnlAsM0UIlZzqFp1jl8fGdcrmW3DHOv29UepsqB+LvYwrzF+7QI
	sx7+k4dZUnWfQtBLRyQL+Jd+BhXycywNtrYv5P+Is4JvC5QLRbgSGyx5wrFdeRHQi7AmfK
	40gO/P/dp2us662CSO+GR1c5Pd4cENjKJtwncQpYf17/yxqQJyf3AmwIEyzLEnpnvoEtDo
	figOop6j/GRc1+s8TZSeatJL9n/RkL2ukYulztocLdk0l6XfViXt+uhuja2h4g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DCyTfB92HlsfXc4ZaIFR2m2LMHO9vHDacw87YNV0YJM=;
	b=Iw9Kq2wLTsXgMzSMYWtrrBbGpaQWvpkh0SqOsLXZOJoG8ND4DX2e9gnQwYDMnW4fNv+KGe
	33qsW1akikSjg4ezhKz+WHbppOhvdqRaoycKKx1671yuc+uaVGxr/H1b1TgBrvmqgoFbdi
	QuZ0ftpaDlba880pTIW07lSTCzaZ78COp03zaFPuUu3ISnHcuprHEVtgFsNO7rxOK+J85x
	xFIg65DpiAN2wP0mddSYZwZfVad9GG6ZbJ8zTtatS+Y49oQxQOjMYb0U3Zli5tVNaGCM0o
	INozpG4iN/EzK4ESRi+s1/7i3rX40g7wvR7S9QYGtnYQ1MATt7kWOw6ZYxHGgw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 1253C7427BC;
	Wed, 28 Oct 2026 10:24:46 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 17/19] treewide: rename dev_platform_ioremap_resource() to devm_platform_ioremap_resource()
Date: Wed, 28 Oct 2026 10:14:51 +0100
Message-ID: <20261028092442.3300753-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022457_076829_699D7626 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Now that it's device-managed,
    give dev_platform_ioremap_resource() the Linux name, so ported drivers can
    use it unchanged. Assisted-by: Claude:opus-5-1m Signed-off-by: Ahmad Fatoum
    <a.fatoum@barebox.org> --- drivers/base/devres.c | 6 +++--- drivers/hw_random/atmel-rng.c
    | 2 +- drivers/hw_random/bcm2835-rng.c | 2 +- driver [...] 
 
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
X-Rspamd-Queue-Id: 158FE202921
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
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
X-Stat-Signature: uys3e7i18kqzprsimxjmwn5aac7imuz9

From: Ahmad Fatoum <a.fatoum@barebox.org>

Now that it's device-managed, give dev_platform_ioremap_resource() the
Linux name, so ported drivers can use it unchanged.

Assisted-by: Claude:opus-5-1m
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/devres.c                            | 6 +++---
 drivers/hw_random/atmel-rng.c                    | 2 +-
 drivers/hw_random/bcm2835-rng.c                  | 2 +-
 drivers/hw_random/iproc-rng200.c                 | 2 +-
 drivers/hw_random/omap-rng.c                     | 2 +-
 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c | 2 +-
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c           | 2 +-
 drivers/pmdomain/imx/imx93-blk-ctrl.c            | 2 +-
 drivers/pmdomain/imx/imx93-pd.c                  | 2 +-
 drivers/pwm/pwm-imx-tpm.c                        | 2 +-
 drivers/pwm/pwm-rockchip.c                       | 2 +-
 drivers/usb/dwc3/dwc3-imx8mp.c                   | 2 +-
 include/linux/device.h                           | 2 +-
 13 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/base/devres.c b/drivers/base/devres.c
index f68b8e7b6590..cfa6cd3e3d9e 100644
--- a/drivers/base/devres.c
+++ b/drivers/base/devres.c
@@ -207,7 +207,7 @@ struct resource *devm_request_mem_resource(struct device *dev, int num)
 EXPORT_SYMBOL(devm_request_mem_resource);
 
 /**
- * dev_platform_ioremap_resource() - request and map resource 'num' for a device
+ * devm_platform_ioremap_resource() - request and map resource 'num' for a device
  * @dev: device to request the memory resource for
  * @num: index of the memory resource
  *
@@ -216,7 +216,7 @@ EXPORT_SYMBOL(devm_request_mem_resource);
  *
  * Return: a pointer to the registers or an ERR_PTR() on failure.
  */
-void __iomem *dev_platform_ioremap_resource(struct device *dev, int num)
+void __iomem *devm_platform_ioremap_resource(struct device *dev, int num)
 {
 	struct resource *res;
 
@@ -235,4 +235,4 @@ void __iomem *dev_platform_ioremap_resource(struct device *dev, int num)
 
 	return IOMEM(res->start);
 }
-EXPORT_SYMBOL(dev_platform_ioremap_resource);
+EXPORT_SYMBOL(devm_platform_ioremap_resource);
diff --git a/drivers/hw_random/atmel-rng.c b/drivers/hw_random/atmel-rng.c
index bdd2139b08a5..0c6355b3d83c 100644
--- a/drivers/hw_random/atmel-rng.c
+++ b/drivers/hw_random/atmel-rng.c
@@ -106,7 +106,7 @@ static int atmel_trng_probe(struct device *dev)
 	if (!trng)
 		return -ENOMEM;
 
-	trng->base = dev_platform_ioremap_resource(dev, 0);
+	trng->base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(trng->base))
 		return PTR_ERR(trng->base);
 
diff --git a/drivers/hw_random/bcm2835-rng.c b/drivers/hw_random/bcm2835-rng.c
index d82331c950d2..76d3c13335f0 100644
--- a/drivers/hw_random/bcm2835-rng.c
+++ b/drivers/hw_random/bcm2835-rng.c
@@ -146,7 +146,7 @@ static int bcm2835_rng_probe(struct device *dev)
 		return -ENOMEM;
 
 	/* map peripheral */
-	priv->base = dev_platform_ioremap_resource(dev, 0);
+	priv->base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(priv->base))
 		return PTR_ERR(priv->base);
 
diff --git a/drivers/hw_random/iproc-rng200.c b/drivers/hw_random/iproc-rng200.c
index 4cb3573a7d20..22cdeebeba46 100644
--- a/drivers/hw_random/iproc-rng200.c
+++ b/drivers/hw_random/iproc-rng200.c
@@ -169,7 +169,7 @@ static int iproc_rng200_probe(struct device *dev)
 		return -ENOMEM;
 
 	/* Map peripheral */
-	priv->base = dev_platform_ioremap_resource(dev, 0);
+	priv->base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(priv->base)) {
 		dev_err(dev, "failed to remap rng regs\n");
 		return PTR_ERR(priv->base);
diff --git a/drivers/hw_random/omap-rng.c b/drivers/hw_random/omap-rng.c
index e6974d7769f4..7a299f49a523 100644
--- a/drivers/hw_random/omap-rng.c
+++ b/drivers/hw_random/omap-rng.c
@@ -373,7 +373,7 @@ static int omap_rng_probe(struct device *dev)
 	dev->priv = priv;
 	priv->dev = dev;
 
-	priv->base = dev_platform_ioremap_resource(dev, 0);
+	priv->base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(priv->base)) {
 		ret = PTR_ERR(priv->base);
 		goto err_ioremap;
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 161c9d7c0d1c..905d292816c7 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -698,7 +698,7 @@ static int inno_dsidphy_probe(struct device *dev)
 	inno->pdata = device_get_match_data(inno->dev);
 	dev_set_drvdata(dev, inno);
 
-	inno->phy_base = dev_platform_ioremap_resource(dev, 0);
+	inno->phy_base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(inno->phy_base))
 		return PTR_ERR(inno->phy_base);
 
diff --git a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
index 3db26e91b31b..9f32bed5a319 100644
--- a/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
+++ b/drivers/pmdomain/imx/imx8mp-blk-ctrl.c
@@ -409,7 +409,7 @@ static int imx8mp_blk_ctrl_probe(struct device *dev)
 	bc_data = of_device_get_match_data(dev);
 	num_domains = bc_data->num_domains;
 
-	base = dev_platform_ioremap_resource(dev, 0);
+	base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
diff --git a/drivers/pmdomain/imx/imx93-blk-ctrl.c b/drivers/pmdomain/imx/imx93-blk-ctrl.c
index 242e3047fc0c..1d296023d2f6 100644
--- a/drivers/pmdomain/imx/imx93-blk-ctrl.c
+++ b/drivers/pmdomain/imx/imx93-blk-ctrl.c
@@ -208,7 +208,7 @@ static int imx93_blk_ctrl_probe(struct device *dev)
 
 	bc_data = of_device_get_match_data(dev);
 
-	base = dev_platform_ioremap_resource(dev, 0);
+	base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
diff --git a/drivers/pmdomain/imx/imx93-pd.c b/drivers/pmdomain/imx/imx93-pd.c
index 3222fc17e9d0..faab1bcb7c80 100644
--- a/drivers/pmdomain/imx/imx93-pd.c
+++ b/drivers/pmdomain/imx/imx93-pd.c
@@ -93,7 +93,7 @@ static int imx93_pd_probe(struct device *dev)
 	if (!domain)
 		return -ENOMEM;
 
-	domain->addr = dev_platform_ioremap_resource(dev, 0);
+	domain->addr = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(domain->addr))
 		return PTR_ERR(domain->addr);
 
diff --git a/drivers/pwm/pwm-imx-tpm.c b/drivers/pwm/pwm-imx-tpm.c
index f2b0b8b9038e..9d71b5113b88 100644
--- a/drivers/pwm/pwm-imx-tpm.c
+++ b/drivers/pwm/pwm-imx-tpm.c
@@ -352,7 +352,7 @@ static int pwm_imx_tpm_probe(struct device *dev)
 	u32 val;
 	int i;
 
-	base = dev_platform_ioremap_resource(dev, 0);
+	base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
index b302a84d5f3f..9b208467f2ee 100644
--- a/drivers/pwm/pwm-rockchip.c
+++ b/drivers/pwm/pwm-rockchip.c
@@ -261,7 +261,7 @@ static int rockchip_pwm_probe(struct device *dev)
 	if (!pc)
 		return -ENOMEM;
 
-	pc->base = dev_platform_ioremap_resource(dev, 0);
+	pc->base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(pc->base))
 		return PTR_ERR(pc->base);
 
diff --git a/drivers/usb/dwc3/dwc3-imx8mp.c b/drivers/usb/dwc3/dwc3-imx8mp.c
index d165b95a2eec..71bcd68b0a31 100644
--- a/drivers/usb/dwc3/dwc3-imx8mp.c
+++ b/drivers/usb/dwc3/dwc3-imx8mp.c
@@ -109,7 +109,7 @@ static int dwc3_imx8mp_probe(struct device *dev)
 
 	dwc3_imx->dev = dev;
 
-	dwc3_imx->hsio_blk_base = dev_platform_ioremap_resource(dev, 0);
+	dwc3_imx->hsio_blk_base = devm_platform_ioremap_resource(dev, 0);
 	if (IS_ERR(dwc3_imx->hsio_blk_base))
 		return PTR_ERR(dwc3_imx->hsio_blk_base);
 
diff --git a/include/linux/device.h b/include/linux/device.h
index 2b33580cd573..6654bf97f91d 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -146,7 +146,7 @@ static inline int devm_add_action_or_reset(struct device *dev,
 #define driver_unregister unregister_driver
 
 
-void __iomem *dev_platform_ioremap_resource(struct device *dev, int num);
+void __iomem *devm_platform_ioremap_resource(struct device *dev, int num);
 
 static inline void __iomem *devm_ioremap(struct device *dev,
 					 resource_size_t start,
-- 
2.47.3



