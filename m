Delivery-date: Wed, 11 Jan 2023 18:42:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf79-0091aE-M9
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 18:42:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFf77-0005hZ-8p
	for lore@pengutronix.de; Wed, 11 Jan 2023 18:42:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iclwFaVVtytKTytWkngMxmYgZZXZ5+qXtA2BuH0buXo=; b=rAB1mIs98sSp243MhyPqEngyvU
	bi4neYh54LpqPIPUAM7dQz2sBqiEm0OgGK/+P0pZG00xoy5oog+euUmzertpbfr4D9EY7O1V/bwz6
	uHQmarnPAvc0n614SrdfH9kVBhnHNWcKBfx7R51vM6jtpxXDfvEdJ02mLFb5LzyL/kfIC7Xqxfrsx
	Gl7hZaXpNy/WCzkheqdtC5aHWxLSOPpDWrSdnLSx1FTrwg6wHUYvpnnFefxKq6oLb9PdppivINHfn
	KvBHefbAtUj8aigfqVPjL+0KaHEjBCAdynY0+w1VpClDZcdqZFzyM/Kb1GoHd4ZDUVaTVPamElnDY
	0gnc0L0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5n-00CTQk-0Y; Wed, 11 Jan 2023 17:40:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFf5S-00CTHT-Pw
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 17:40:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5Q-00052b-G3; Wed, 11 Jan 2023 18:40:28 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5P-005M6G-NV; Wed, 11 Jan 2023 18:40:27 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFf5O-007DGT-GO; Wed, 11 Jan 2023 18:40:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 18:40:16 +0100
Message-Id: <20230111174023.1719129-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
References: <20230111174023.1719129-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_094030_899448_C6672F03 
X-CRM114-Status: GOOD (  12.30  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/15] driver: implement dev_request_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dev_request_resource is useful for porting kernel drivers that use
devm_request_source on a resource retrieved via <linux/of_address.h>.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c | 19 +++++++++++++++----
 include/driver.h      |  3 +++
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 839a8513fc25..efbffcdddbcb 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -453,8 +453,19 @@ struct resource *dev_get_resource_by_name(struct device *dev,
 	return ERR_PTR(-ENOENT);
 }
 
-struct resource *dev_request_mem_resource_by_name(struct device *dev,
-						  const char *name)
+static struct resource *dev_request_iomem_resource(struct device *dev,
+						   const struct resource *res)
+{
+	return request_iomem_region(dev_name(dev), res->start, res->end);
+}
+
+int dev_request_resource(struct device *dev, const struct resource *res)
+{
+	return PTR_ERR_OR_ZERO(dev_request_iomem_resource(dev, res));
+}
+EXPORT_SYMBOL(dev_request_resource);
+
+struct resource *dev_request_mem_resource_by_name(struct device *dev, const char *name)
 {
 	struct resource *res;
 
@@ -462,7 +473,7 @@ struct resource *dev_request_mem_resource_by_name(struct device *dev,
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
-	return request_iomem_region(dev_name(dev), res->start, res->end);
+	return dev_request_iomem_resource(dev, res);
 }
 EXPORT_SYMBOL(dev_request_mem_resource_by_name);
 
@@ -487,7 +498,7 @@ struct resource *dev_request_mem_resource(struct device *dev, int num)
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
-	return request_iomem_region(dev_name(dev), res->start, res->end);
+	return dev_request_iomem_resource(dev, res);
 }
 
 void __iomem *dev_request_mem_region_err_null(struct device *dev, int num)
diff --git a/include/driver.h b/include/driver.h
index e1b1ebde5b5f..b7d6ea1e52c1 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -220,6 +220,9 @@ struct resource *dev_get_resource_by_name(struct device *dev,
 					  unsigned long type,
 					  const char *name);
 
+int dev_request_resource(struct device *dev,
+			 const struct resource *res);
+
 /*
  * exlusively request register base 'name' for a device
  */
-- 
2.30.2



