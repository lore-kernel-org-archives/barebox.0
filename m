Delivery-date: Tue, 18 Mar 2025 09:25:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGf-000xq7-2Q
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 09:25:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuSGe-0004iM-JH
	for lore@pengutronix.de; Tue, 18 Mar 2025 09:25:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nb1/uJjjATiUtGO3Qf0p5f6wzOxZ00uj9OYPDBlRDrA=; b=Y23x2DcSUQ6sy0sQt1if5eL6o5
	DDHS8MdugdUUW1DWMBA5Sj3lf6kW52PIpI32jd+GTLdFWqP+445VY4HOubDV2qzNELbZzIGxMCfHx
	OoEzVUhuBLtGQPsCjm4NrRMxYecFe2sbDzzjv3Vtfzi2x6w8kvU8264BMnevhj2tMOAlA9jD9gOec
	HHmeVccL3oV4MMR23sNoKPuENjPE7u35y1BY2vJCWQW2P8+kKdDy0C+OY+BhstfHMIqvluAG4H+4A
	zFuzAXsw3jGZTshrQZ4xIeQkSBUiMd7bWPxuKoNIzKGdM1KaDQxc9+44LJiFK0rNoTPj45Uv4U3HV
	E7XKOAkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSGF-00000005A35-2ZjB;
	Tue, 18 Mar 2025 08:25:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuSGD-00000005A1f-3ywv
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 08:25:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-0004Q5-Mo; Tue, 18 Mar 2025 09:25:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-000OTU-0C;
	Tue, 18 Mar 2025 09:25:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuSG4-001lFs-1H;
	Tue, 18 Mar 2025 09:25:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Mar 2025 09:25:05 +0100
Message-Id: <20250318082507.419785-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250318082507.419785-1-a.fatoum@pengutronix.de>
References: <20250318082507.419785-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_012517_988549_B0F0ADEF 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] amba: drop unused hepers for creating AMBA devices outside OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All amba devices created for upstream boards are instantiated from
device tree. The headers have functions that can be used from board
code, but are unused, so let's drop them and make AMBA OF-only.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/amba/bus.c       | 21 ---------------------
 include/linux/amba/bus.h | 23 -----------------------
 2 files changed, 44 deletions(-)

diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index cf43aaa76ea1..6463366fafc5 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -162,27 +162,6 @@ int amba_device_add(struct amba_device *dev)
 	return ret;
 }
 
-struct amba_device *
-amba_aphb_device_add(struct device *parent, const char *name, int id,
-		     resource_size_t base, size_t size,
-		     void *pdata, unsigned int periphid)
-{
-	struct amba_device *dev;
-	int ret;
-
-	dev = amba_device_alloc(name, id, base, size);
-
-	dev->periphid = periphid;
-	dev->dev.platform_data = pdata;
-	dev->dev.parent = parent;
-
-	ret = amba_device_add(dev);
-	if (ret)
-		return ERR_PTR(ret);
-
-	return dev;
-}
-
 /**
  *	amba_device_alloc - allocate an AMBA device
  *	@name: sysfs name of the AMBA device
diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index cc24b38e8300..7cbc4e653eac 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -74,29 +74,6 @@ void amba_device_put(struct amba_device *);
 int amba_device_add(struct amba_device *);
 int amba_device_register(struct amba_device *, struct resource *);
 
-struct amba_device *
-amba_aphb_device_add(struct device *parent, const char *name, int id,
-		     resource_size_t base, size_t size,
-		     void *pdata, unsigned int periphid);
-
-static inline struct amba_device *
-amba_apb_device_add(struct device *parent, const char *name, int id,
-		    resource_size_t base, size_t size,
-		    void *pdata, unsigned int periphid)
-{
-	return amba_aphb_device_add(parent, name, id, base, size, pdata,
-				    periphid);
-}
-
-static inline struct amba_device *
-amba_ahb_device_add(struct device *parent, const char *name, int id,
-		    resource_size_t base, size_t size,
-		    void *pdata, unsigned int periphid)
-{
-	return amba_aphb_device_add(parent, name, id, base, size, pdata,
-				    periphid);
-}
-
 static inline void __iomem *amba_get_mem_region(struct amba_device *dev)
 {
 	return dev->base;
-- 
2.39.5



