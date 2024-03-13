Delivery-date: Wed, 13 Mar 2024 11:57:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIW-004HRe-19
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:57:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMIU-0000z2-GG
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:57:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CBZSKFsMYmNWg+M4KF5DFcjJXkrMu8eETMV4mgEaDi8=; b=ZRCKpgajTJgQoZBCO86S5xXKdT
	N5UVpoj5GxF2yWj5ukTrPKb7UajzKBWVOEI7QvBGu8KSPjwqMGTWj54dC8meYyou114CHkzqp2wBU
	npIvIQQbW9K3REh6SzLECHTTGssrXD/TH1Q76FiZJqaqT9dF6dKUmYPA+AGgADQoOJk0cxW2CsfBt
	qKeHkQdN2vrIWZCiWW/K1C1DkcUAP8IjW5b1ez7T8sNR+95f93yJ9gkBcNXa+4YC8y7MVD+XPndks
	CBF3heQT6B9g3v8yJb5+850NVL6DkxTuhWIqx5bVQIAPJQcRxZ/xsmzRCObFL1wV+QeK/GP3vwSFP
	zjgEdmCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHr-00000009kSH-3XHL;
	Wed, 13 Mar 2024 10:56:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMHi-00000009kKj-0PaY
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:56:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-0008P8-Tg; Wed, 13 Mar 2024 11:56:32 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHg-006619-HE; Wed, 13 Mar 2024 11:56:32 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkMHf-004FrF-32;
	Wed, 13 Mar 2024 11:56:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:56:22 +0100
Message-Id: <20240313105631.686778-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313105631.686778-1-a.fatoum@pengutronix.de>
References: <20240313105631.686778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035634_304644_F354E957 
X-CRM114-Status: GOOD (  12.15  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/12] driver: implement dev_platform_get_and_ioremap_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To simplify porting of Linux drivers that make use of this function, add
an implementation to barebox. This was so far not done, because AT91 has
I/O memory regions that conflict with the error pointers.

Therefore, we emit a warning if we run into such a conflict.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c | 19 +++++++++++++++++++
 include/driver.h      |  4 ++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index b2d428b70550..fbc5cbebe0ab 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -538,6 +538,25 @@ void __iomem *dev_request_mem_region_by_name(struct device *dev,
 }
 EXPORT_SYMBOL(dev_request_mem_region_by_name);
 
+void __iomem *dev_platform_get_and_ioremap_resource(struct device *dev,
+						    int num,
+						    struct resource **out_res)
+{
+	struct resource *res;
+
+	res = dev_request_mem_resource(dev, num);
+	if (IS_ERR(res))
+		return IOMEM_ERR_PTR(PTR_ERR(res));
+	else if (WARN_ON(IS_ERR_VALUE(res->start)))
+		return IOMEM_ERR_PTR(-EINVAL);
+
+	if (out_res)
+		*out_res = res;
+
+	return IOMEM(res->start);
+}
+EXPORT_SYMBOL(dev_platform_get_and_ioremap_resource);
+
 struct resource *dev_request_mem_resource(struct device *dev, int num)
 {
 	struct resource *res;
diff --git a/include/driver.h b/include/driver.h
index 7ff65d63946d..a61b9dca2285 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -289,6 +289,10 @@ struct resource *dev_request_mem_resource(struct device *dev, int num);
 struct resource *dev_request_mem_resource_by_name(struct device *dev,
 						  const char *name);
 
+void __iomem *dev_platform_get_and_ioremap_resource(struct device *dev,
+						    int num,
+						    struct resource **out_res);
+
 /*
  * exlusively request register base 'num' for a device
  * will return NULL on error
-- 
2.39.2



