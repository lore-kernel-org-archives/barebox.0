Delivery-date: Mon, 14 Apr 2025 08:23:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DEH-000Wlw-2K
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:23:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DEH-000716-5q
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:23:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YojonIkpLza47Qb9zcmTscZi2xmpcKOS2hV40Bfh5wo=; b=bpJBjPm5Mr/jq/meJ15HI9zat/
	vtawAaD3C6FE3NLXSFIabtHr36DGHfJP7W24zNymB10WYrXQQD48DCsYFaxZ7wHSK04zIZeJkCift
	vxoP+3hhdjLneFVIZ+7iZ2IwbkQ987/FByM4hhqF91oEcCpOWQCEZC6j1mfwymjgMU6vpvX4G88mU
	9aml8ctWo9sq4cHXGrvoXX6scqzlXKtUQaaPCSR7gEY4ZseglpfrIW9gpH17zFhPBhew4diGMxlrP
	E/nygUlKmwlYMIBqrvszK1gCcWVRJ3Y40YgzRcLPbvZLcHZbTyQ2Mvi2JsvgGLRgd7t53ZGhzeUG4
	fiqeiLgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DDp-00000000mm7-33KU;
	Mon, 14 Apr 2025 06:23:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DDl-00000000mjs-3Kri
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:23:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DDk-0006mX-FD; Mon, 14 Apr 2025 08:23:04 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DDk-000CgH-0v;
	Mon, 14 Apr 2025 08:23:04 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DDk-00BPy5-0c;
	Mon, 14 Apr 2025 08:23:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:23:03 +0200
Message-Id: <20250414062303.2721390-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_232305_831841_5CE4AF29 
X-CRM114-Status: GOOD (  12.10  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: have dev_platform_ioremap_resource return error pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

devm_request_mem_region doesn't return NULL on error on Linux and thus
it should neither in barebox. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c  | 2 ++
 include/linux/device.h | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index edba037fa2dd..4e361a96c9ee 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -587,6 +587,8 @@ void __iomem *dev_request_mem_region(struct device *dev, int num)
 	struct resource *res;
 
 	res = dev_request_mem_resource(dev, num);
+	if (!IS_ERR(res) && WARN_ON(IS_ERR_VALUE(res->start)))
+		return IOMEM_ERR_PTR(res->start);
 	if (IS_ERR(res))
 		return ERR_CAST(res);
 
diff --git a/include/linux/device.h b/include/linux/device.h
index 66294910abb3..661d8b24730e 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -39,7 +39,7 @@ static inline void __iomem *dev_platform_ioremap_resource(struct device *dev,
 	 * so we don't need to do anything besides requesting the regions
 	 * and can leave the memory attributes unchanged.
 	 */
-	return dev_request_mem_region_err_null(dev, resource);
+	return dev_request_mem_region(dev, resource);
 }
 
 static inline void __iomem *devm_ioremap(struct device *dev,
-- 
2.39.5



